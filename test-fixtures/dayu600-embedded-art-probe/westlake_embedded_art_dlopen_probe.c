#include <jni.h>
#include <sys/socket.h>
#include <sys/select.h>
#include <poll.h>
#include <setjmp.h>
#include <signal.h>
#include <sys/mman.h>
#include <ucontext.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_TRUNC 512
#define O_APPEND 1024
#define LOG_MODE 438
#define RTLD_NOW 2
#define RTLD_GLOBAL 256
#define RTLD_DEFAULT ((void*)0)

extern void *dlopen(const char *filename, int flags);
extern void *dlsym(void *handle, const char *symbol);
extern char *dlerror(void);
extern char *getenv(const char *name);
extern int setenv(const char *name, const char *value, int overwrite);
extern int unsetenv(const char *name);
extern long long strtoll(const char *nptr, char **endptr, int base);
extern unsigned long long strtoull(const char *nptr, char **endptr, int base);
extern long double strtold(const char *nptr, char **endptr);

/* ---------------------------------------------------------------------------
 * [W-001 / wall #43] mmap CD-rescue interposer.
 *
 * Board libandroidfw's statically-linked libziparchive maps a large real apk's
 * central directory via android::base::MappedFile::FromFd -> mmap(fd, PROT_READ,
 * MAP_SHARED, <large byte offset>). On this OHOS/musl board that mmap returns
 * EINVAL for the CD of big signed apks (uptodown CD@15050189, framework-res
 * CD@34946341) while succeeding for the small prepared apk (2048-2-9 CD@2051829),
 * so ZipAssetsProvider::Create => NULL, the AssetManager2 stays empty, and the
 * first real resource access (nativeGetResourceName) SIGBUSes on null+8.
 * Evidence: evidence/W-001/2026-07-11-real-wall-zip-cd-mmap-einval.txt.
 *
 * We are already the LD_PRELOAD sidecar, so libandroidfw's undefined `mmap`
 * (nm -D: `U mmap`) resolves to the definition below. Every call is forwarded
 * verbatim to the raw mmap syscall; ONLY when a read-only, file-backed,
 * kernel-chosen-address map FAILS do we rescue it by preading the same window
 * into an anonymous private map. All success paths (all of ART's own mmaps) are
 * byte-for-byte unchanged, so this cannot destabilise the runtime. It fixes OUR
 * loader at runtime without rebuilding libandroidfw and without touching the apk
 * (preserves #53's unmodified-apk invariant). Reversible: delete this block.
 *
 * Freestanding (-nostdlib): the real syscalls are issued via inline `svc #0`, so
 * there is no libc dependency and no recursion back into this interposer. arm64
 * syscall numbers: mmap=222, munmap=215, pread64=67.
 * ------------------------------------------------------------------------- */
#define WL_SYS_mmap    222
#define WL_SYS_munmap  215
#define WL_SYS_pread64 67
#define WL_PROT_READ   0x1
#define WL_PROT_WRITE  0x2
#define WL_MAP_PRIVATE 0x2
#define WL_MAP_ANON    0x20

volatile long westlake_cd_mmap_rescues = 0;  /* observability: # of rescued maps */
static volatile int westlake_ctor_vm_rc = -9999;

__attribute__((visibility("default"))) int westlake_embedded_art_last_vm_rc(void)
{
    return westlake_ctor_vm_rc;
}

static long wl_syscall6(long n, long a0, long a1, long a2, long a3, long a4, long a5)
{
    register long x8 __asm__("x8") = n;
    register long x0 __asm__("x0") = a0;
    register long x1 __asm__("x1") = a1;
    register long x2 __asm__("x2") = a2;
    register long x3 __asm__("x3") = a3;
    register long x4 __asm__("x4") = a4;
    register long x5 __asm__("x5") = a5;
    __asm__ __volatile__("svc #0"
        : "+r"(x0)
        : "r"(x8), "r"(x1), "r"(x2), "r"(x3), "r"(x4), "r"(x5)
        : "memory", "cc");
    return x0;
}

/* kernel returns the mapping address on success, or a value in [-4095,-1]
 * (== -errno) on failure. */
static int wl_syscall_failed(long r) { return (unsigned long)r > (unsigned long)(-4096L); }

void *mmap(void *addr, unsigned long length, int prot, int flags, int fd, long offset)
{
    long r = wl_syscall6(WL_SYS_mmap, (long)addr, (long)length, prot, flags, fd, offset);
    if (!wl_syscall_failed(r)) {
        return (void *)r;                      /* success: verbatim pass-through */
    }
    /* Rescue only a read-only, file-backed, kernel-addressed map (the CD case).
     * Such a mapping is always safely replaceable by an anonymous private copy;
     * writable/shared or fixed-address maps are left to fail as normal. */
    if (fd >= 0 && addr == 0 && (prot & WL_PROT_READ) && !(prot & WL_PROT_WRITE) &&
        length != 0) {
        long m = wl_syscall6(WL_SYS_mmap, 0, (long)length, WL_PROT_READ | WL_PROT_WRITE,
                             WL_MAP_PRIVATE | WL_MAP_ANON, -1, 0);
        if (wl_syscall_failed(m)) {
            return (void *)-1;                 /* anon backing alloc failed */
        }
        unsigned long done = 0;
        while (done < length) {
            long n = wl_syscall6(WL_SYS_pread64, fd, m + (long)done,
                                 (long)(length - done), offset + (long)done, 0, 0);
            if (n <= 0) {                      /* short / failed read -> give up cleanly */
                wl_syscall6(WL_SYS_munmap, m, (long)length, 0, 0, 0, 0);
                return (void *)-1;
            }
            done += (unsigned long)n;
        }
        westlake_cd_mmap_rescues++;
        return (void *)m;                      /* caller munmaps `length` later (anon-safe) */
    }
    return (void *)-1;                          /* other failures: normal MAP_FAILED */
}

static long syscall3(long n, long a, long b, long c);
static void log_text(const char *s);
static void log_int(const char *prefix, int value);
static unsigned long slen(const char *s);
static int describe_pending_exception(JNIEnv *env, const char *prefix);
static int register_trace_natives_on(JNIEnv *env, jclass trace_class, const char *label);
static void reregister_trace_via_assetmanager_loader(JNIEnv *env);
static void c_write_heartbeat(const char *path, const char *text);

/* MotionEvent native stub implementations for RegisterNatives */
static jlong stub_MotionEvent_nativeInitialize(JNIEnv *env, jclass clazz,
    jlong ptr, jint seqNum, jint action, jint flags,
    jint metaState, jint buttonState, jint edgeFlags,
    jint downTime, jint eventTime, jfloat x, jfloat y,
    jfloat rawX, jfloat rawY, jlong metaState2, jlong windowHandle,
    jint numPointers, jobjectArray props, jobjectArray coords)
{
    (void)env; (void)clazz; (void)ptr; (void)seqNum; (void)action;
    (void)flags; (void)metaState; (void)buttonState; (void)edgeFlags;
    (void)downTime; (void)eventTime; (void)x; (void)y;
    (void)rawX; (void)rawY; (void)metaState2; (void)windowHandle;
    (void)numPointers; (void)props; (void)coords;
    return 0x1337L;
}
static void stub_MotionEvent_nativeGetFinalize(JNIEnv *env, jclass clazz)
{
    (void)env; (void)clazz;
}

/* JNIEXPORT C-linkage functions — OHOS ART finds these by symbol name (dlsym).
 * These match the canonical JNI naming convention so nativeInitialize can be
 * resolved without needing RegisterNatives. */
__attribute__((visibility("default")))
JNIEXPORT jlong JNICALL Java_android_view_MotionEvent_nativeInitialize(
    JNIEnv *env, jclass clazz,
    jlong ptr, jint seqNum, jint action, jint flags,
    jint metaState, jint buttonState, jint edgeFlags,
    jint downTime, jint eventTime, jfloat x, jfloat y,
    jfloat rawX, jfloat rawY, jlong metaState2, jlong windowHandle,
    jint numPointers, jobjectArray props, jobjectArray coords)
{
    return stub_MotionEvent_nativeInitialize(env, clazz, ptr, seqNum, action,
        flags, metaState, buttonState, edgeFlags, downTime, eventTime,
        x, y, rawX, rawY, metaState2, windowHandle, numPointers, props, coords);
}
__attribute__((visibility("default")))
JNIEXPORT void JNICALL Java_android_view_MotionEvent_nativeGetFinalize(
    JNIEnv *env, jclass clazz)
{
    stub_MotionEvent_nativeGetFinalize(env, clazz);
}

static int westlake_errno_slot = 0;
static const char westlake_progname[] = "westlake-embedded-art-probe";
static const char westlake_default_heavy_bridge_path[] =
    "/data/local/tmp/westlake-dayu600/sidecars/libwestlake_dayu600_bridge_heavy.so";
static const char westlake_default_root[] = "/data/local/tmp/westlake-dayu600";
static void *westlake_art_handle = 0;
static void *westlake_create_vm_symbol = 0;
static void *westlake_find_class_symbol = 0;
static void *westlake_heavy_bridge_handle = 0;
static void *westlake_android_runtime_handle = 0;
static JavaVM *g_probe_vm = 0;
static jobject g_ivs_ctx = 0;  /* framework Context for InputVerifyStage (global ref) */
__attribute__((visibility("default"))) char __sF[3 * 256];
__attribute__((visibility("default"))) void *westlake_executils_vtable[16]
    __asm__("_ZTVN3art9ExecUtilsE") = {0};

__attribute__((visibility("default"))) jobjectArray Westlake_UnixFileSystem_list(
    JNIEnv *env, jobject self, jobject file)
{
    (void)env;
    (void)self;
    (void)file;
    return 0;
}

__attribute__((visibility("default"))) void Java_java_lang_System_registerNatives(
    JNIEnv *env, jclass klass)
{
    (void)env;
    (void)klass;
}

__attribute__((visibility("default"))) jlong Java_java_lang_System_currentTimeMillis(
    JNIEnv *env, jclass klass)
{
    (void)env;
    (void)klass;
    return 123456789LL;
}

__attribute__((visibility("default"))) jlong Java_java_lang_System_nanoTime(
    JNIEnv *env, jclass klass)
{
    (void)env;
    (void)klass;
    return 123456789000000LL;
}

__attribute__((visibility("default"))) jobjectArray Java_java_lang_System_specialProperties(
    JNIEnv *env, jclass klass)
{
    (void)klass;
    jclass string_class = (*env)->FindClass(env, "java/lang/String");
    if (string_class == 0 || (*env)->ExceptionCheck(env)) {
        return 0;
    }
    return (*env)->NewObjectArray(env, 0, string_class, 0);
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeAsyncTraceBegin(
    JNIEnv *env, jclass klass, jlong tag, jstring name, jint cookie)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)name;
    (void)cookie;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeAsyncTraceEnd(
    JNIEnv *env, jclass klass, jlong tag, jstring name, jint cookie)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)name;
    (void)cookie;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeAsyncTraceForTrackBegin(
    JNIEnv *env, jclass klass, jlong tag, jstring track, jstring name, jint cookie)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)track;
    (void)name;
    (void)cookie;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeAsyncTraceForTrackEnd(
    JNIEnv *env, jclass klass, jlong tag, jstring track, jint cookie)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)track;
    (void)cookie;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeInstant(
    JNIEnv *env, jclass klass, jlong tag, jstring name)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)name;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeInstantForTrack(
    JNIEnv *env, jclass klass, jlong tag, jstring track, jstring name)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)track;
    (void)name;
}

__attribute__((visibility("default"))) jboolean Java_android_os_Trace_nativeIsTagEnabled(
    JNIEnv *env, jclass klass, jlong tag)
{
    (void)env;
    (void)klass;
    (void)tag;
    return 0;
}

__attribute__((visibility("default"))) jlong Java_android_os_Trace_nativeGetEnabledTags(
    JNIEnv *env, jclass klass)
{
    (void)env;
    (void)klass;
    return 0;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeSetAppTracingAllowed(
    JNIEnv *env, jclass klass, jboolean allowed)
{
    (void)env;
    (void)klass;
    (void)allowed;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeSetTracingEnabled(
    JNIEnv *env, jclass klass, jboolean enabled)
{
    (void)env;
    (void)klass;
    (void)enabled;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeTraceBegin(
    JNIEnv *env, jclass klass, jlong tag, jstring name)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)name;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeTraceCounter(
    JNIEnv *env, jclass klass, jlong tag, jstring name, jlong value)
{
    (void)env;
    (void)klass;
    (void)tag;
    (void)name;
    (void)value;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeTraceEnd(
    JNIEnv *env, jclass klass, jlong tag)
{
    (void)env;
    (void)klass;
    (void)tag;
}

__attribute__((visibility("default"))) int *__errno(void)
{
    return &westlake_errno_slot;
}

__attribute__((visibility("default"))) const char *getprogname(void)
{
    return westlake_progname;
}

__attribute__((visibility("default"))) void setprogname(const char *name)
{
    (void)name;
}

__attribute__((visibility("default"))) long sysconf(int name)
{
    if (name == 0x0028 || name == 0x0027) {
        return 4096;
    }
    if (name == 0x0054 || name == 0x0055) {
        return 8;
    }
    return 1;
}

__attribute__((visibility("default"))) void __assert2(
    const char *file, int line, const char *function, const char *failed_expression)
{
    (void)file;
    (void)line;
    (void)function;
    log_text("__assert2 called");
    if (failed_expression != 0) {
        log_text(failed_expression);
    }
    syscall3(93, 125, 0, 0);
}

__attribute__((visibility("default"))) char *__gnu_strerror_r(int errnum, char *buf, unsigned long buflen)
{
    (void)errnum;
    const char *msg = "westlake_errno";
    unsigned long i = 0;
    if (buf != 0 && buflen != 0) {
        while (msg[i] != 0 && i + 1 < buflen) {
            buf[i] = msg[i];
            i++;
        }
        buf[i] = 0;
        return buf;
    }
    return (char *)msg;
}

__attribute__((visibility("default"))) long long strtoll_l(const char *nptr, char **endptr, int base, void *locale)
{
    (void)locale;
    return strtoll(nptr, endptr, base);
}

__attribute__((visibility("default"))) unsigned long long strtoull_l(const char *nptr, char **endptr, int base, void *locale)
{
    (void)locale;
    return strtoull(nptr, endptr, base);
}

__attribute__((visibility("default"))) long double strtold_l(const char *nptr, char **endptr, void *locale)
{
    (void)locale;
    return strtold(nptr, endptr);
}

static int westlake_strcmp(const char *a, const char *b)
{
    unsigned long i = 0;
    while (a[i] != 0 && b[i] != 0 && a[i] == b[i]) {
        i++;
    }
    return ((unsigned char)a[i]) - ((unsigned char)b[i]);
}

__attribute__((visibility("default"))) int strcoll_l(const char *a, const char *b, void *locale)
{
    (void)locale;
    return westlake_strcmp(a, b);
}

__attribute__((visibility("default"))) unsigned long strxfrm_l(char *dst, const char *src, unsigned long n, void *locale)
{
    (void)locale;
    unsigned long len = slen(src);
    if (dst != 0 && n != 0) {
        unsigned long i = 0;
        while (src[i] != 0 && i + 1 < n) {
            dst[i] = src[i];
            i++;
        }
        dst[i] = 0;
    }
    return len;
}

__attribute__((visibility("default"))) unsigned long strftime_l(
    char *s, unsigned long max, const char *format, const void *tm, void *locale)
{
    (void)s;
    (void)max;
    (void)format;
    (void)tm;
    (void)locale;
    return 0;
}

__attribute__((visibility("default"))) int isdigit_l(int c, void *locale) { (void)locale; return c >= '0' && c <= '9'; }
__attribute__((visibility("default"))) int isxdigit_l(int c, void *locale) { (void)locale; return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F'); }
__attribute__((visibility("default"))) int islower_l(int c, void *locale) { (void)locale; return c >= 'a' && c <= 'z'; }
__attribute__((visibility("default"))) int isupper_l(int c, void *locale) { (void)locale; return c >= 'A' && c <= 'Z'; }
__attribute__((visibility("default"))) int tolower_l(int c, void *locale) { (void)locale; return (c >= 'A' && c <= 'Z') ? c + 32 : c; }
__attribute__((visibility("default"))) int toupper_l(int c, void *locale) { (void)locale; return (c >= 'a' && c <= 'z') ? c - 32 : c; }

__attribute__((visibility("default"))) int __register_atfork(
    void (*prepare)(void), void (*parent)(void), void (*child)(void), void *dso)
{
    (void)prepare;
    (void)parent;
    (void)child;
    (void)dso;
    return 0;
}

__attribute__((visibility("default"))) int android_get_device_api_level(void)
{
    return 35;
}

__attribute__((visibility("default"))) void android_set_abort_message(const char *msg)
{
    (void)msg;
}

__attribute__((visibility("default"))) int __system_property_get(const char *name, char *value)
{
    (void)name;
    if (value != 0) {
        value[0] = 0;
    }
    return 0;
}

// sigemptyset64 / sigaddset64 / sigprocmask64 / pthread_sigmask64 / sigwait64
// all provided by Android NDK (API 28+) — no stubs needed.

static int westlake_sigprocmask64(int how, const void *set, void *oldset)
{
    (void)how;
    (void)set;
    if (oldset != 0) {
        sigemptyset((sigset_t *)oldset);
    }
    return 0;
}

static int westlake_pthread_sigmask64(int how, const void *set, void *oldset)
{
    return westlake_sigprocmask64(how, set, oldset);
}

__attribute__((visibility("default"))) unsigned long westlake_vixl_cpu_features_combine4(
    int a, int b, int c, int d) __asm__("_ZN4vixl11CPUFeatures7CombineENS0_7FeatureES1_S1_S1_");
__attribute__((visibility("default"))) unsigned long westlake_vixl_cpu_features_combine4(
    int a, int b, int c, int d)
{
    (void)a;
    (void)b;
    (void)c;
    (void)d;
    return 0;
}

__attribute__((visibility("default"))) unsigned long westlake_vixl_pop_lowest_index(void)
    __asm__("_ZN4vixl7aarch6410CPURegList14PopLowestIndexEv");
__attribute__((visibility("default"))) unsigned long westlake_vixl_pop_lowest_index(void)
{
    return 0;
}

__attribute__((visibility("default"))) unsigned long westlake_vixl_acquire_next_available(void *scope, void *list)
    __asm__("_ZN4vixl7aarch6423UseScratchRegisterScope20AcquireNextAvailableEPNS0_10CPURegListE");
__attribute__((visibility("default"))) unsigned long westlake_vixl_acquire_next_available(void *scope, void *list)
{
    (void)scope;
    (void)list;
    return 0;
}

// sigwait64 provided by Android NDK (API 28+) — no stub needed

__attribute__((visibility("default"))) unsigned long android_fdsan_create_owner_tag(int type, unsigned long tag)
{
    (void)type;
    return tag;
}

__attribute__((visibility("default"))) void android_fdsan_exchange_owner_tag(int fd, unsigned long expected, unsigned long tag)
{
    (void)fd;
    (void)expected;
    (void)tag;
}

__attribute__((visibility("default"))) int android_fdsan_close_with_tag(int fd, unsigned long tag)
{
    (void)tag;
    return (int)syscall3(57, fd, 0, 0);
}

static long syscall3(long n, long a, long b, long c)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x2 __asm__("x2") = c;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x8) : "memory");
    return x0;
}

static long syscall4(long n, long a, long b, long c, long d)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x2 __asm__("x2") = c;
    register long x3 __asm__("x3") = d;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x3), "r"(x8) : "memory");
    return x0;
}

static unsigned long slen(const char *s)
{
    unsigned long n = 0;
    if (s == 0) {
        return 0;
    }
    while (s[n] != 0) {
        n++;
    }
    return n;
}

static int streq(const char *a, const char *b)
{
    unsigned long i = 0;
    if (a == 0 || b == 0) {
        return 0;
    }
    while (a[i] != 0 && b[i] != 0) {
        if (a[i] != b[i]) {
            return 0;
        }
        i++;
    }
    return a[i] == 0 && b[i] == 0;
}

static char *append_text(char *dst, unsigned long cap, unsigned long *pos, const char *src)
{
    if (dst == 0 || cap == 0 || pos == 0 || src == 0) {
        return dst;
    }
    while (*src != 0 && *pos + 1 < cap) {
        dst[*pos] = *src;
        *pos = *pos + 1;
        src++;
    }
    dst[*pos] = 0;
    return dst;
}

static const char *westlake_root(void)
{
    char *root = getenv("WESTLAKE_ROOT");
    if (root == 0 || root[0] == 0) {
        return westlake_default_root;
    }
    return root;
}

static const char *westlake_exec_root(void)
{
    char *root = getenv("WESTLAKE_EXEC_ROOT");
    return (root == 0 || root[0] == 0) ? westlake_root() : root;
}

static int westlake_uses_substrate_layout(void)
{
    char *layout = getenv("WESTLAKE_LAYOUT");
    return streq(layout, "substrate");
}

static int westlake_uses_framework_shim(void)
{
    char *omit = getenv("WESTLAKE_OMIT_FRAMEWORK_SHIM");
    return !(omit && streq(omit, "1"));
}

/* The 2048 game apk is a self-contained R8-minified test app. Placing it on the
 * shared boot/app classpath pollutes the namespace with obfuscated short names
 * (a.a, d1.h, ...) that collide with any OTHER app launched on top — real Android
 * never puts one app on another app's classpath. Gate it so only the 2048 stage
 * (which sets WESTLAKE_INCLUDE_GAME_APK=1) pays for it; every other run gets a
 * clean parent loader. */
static int westlake_includes_game_apk(void)
{
    char *inc = getenv("WESTLAKE_INCLUDE_GAME_APK");
    return inc && streq(inc, "1");
}

static char *build_root_path(char *dst, unsigned long cap, const char *suffix)
{
    unsigned long pos = 0;
    append_text(dst, cap, &pos, westlake_root());
    append_text(dst, cap, &pos, suffix);
    return dst;
}

/* [DAYU600] -Ximage:<root>/boot.art — ART expands this to <root>/arm64/boot.art, loading
 * the arm64 boot image (with the FieldVarHandle fixup) so VarHandle-dependent classes are
 * pre-initialized instead of hitting the broken imageless clinit. Enabled only when
 * WESTLAKE_BOOT_IMAGE=1. */
static char *build_image_option(void)
{
    static char opt[512];
    unsigned long pos = 0;
    append_text(opt, sizeof(opt), &pos, "-Ximage:");
    append_text(opt, sizeof(opt), &pos, westlake_root());
    append_text(opt, sizeof(opt), &pos, "/boot.art");
    return opt;
}

static char *build_default_heavy_bridge_path(void)
{
    static char path[512];
    if (westlake_uses_substrate_layout()) {
        return build_root_path(path, sizeof(path),
            "/android/lib64/sidecars/libwestlake_dayu600_bridge_heavy.so");
    }
    return (char *)westlake_default_heavy_bridge_path;
}

/* [5583 app-lane] exec dlopen with FLAT-then-lane fallback. An installed-HAP app
 * process on 5583 may ONLY dlopen paths inside the bundle native-lib dir: ANY
 * path under filesDir fails EINVAL — even a SYMLINK whose realpath is a blessed
 * bundle file, and even when that file is already mapped (artboot glue diag,
 * 2026-07-17). So the lane-shaped "$EXEC_ROOT/<rel>" form (filesDir symlinks)
 * can never work in the app lane; only FLAT "$EXEC_ROOT/<soname>" does (glue
 * points WESTLAKE_EXEC_ROOT at the bundle lib dir). The shell lane keeps a real
 * lane-shaped root, where the flat form simply misses and the lane form loads.
 * Trying flat first therefore serves both lanes with one contract. */
static void *dlopen_exec(const char *lane_rel, const char *soname, int flags)
{
    char path[768];
    unsigned long pos;
    const char *root = westlake_exec_root();
    void *h;
    pos = 0; path[0] = 0;
    append_text(path, sizeof(path), &pos, root);
    append_text(path, sizeof(path), &pos, "/");
    append_text(path, sizeof(path), &pos, soname);
    h = dlopen(path, flags);
    if (h != 0) {
        log_text("exec load ok (flat):");
        log_text(path);
        return h;
    }
    (void)dlerror();
    pos = 0; path[0] = 0;
    append_text(path, sizeof(path), &pos, root);
    append_text(path, sizeof(path), &pos, "/");
    append_text(path, sizeof(path), &pos, lane_rel);
    h = dlopen(path, flags);
    if (h != 0) {
        log_text("exec load ok (lane):");
        log_text(path);
    }
    return h;
}

static char *build_bootclasspath_option(void)
{
    static char option[4096];
    unsigned long pos = 0;
    const char *root = westlake_root();
    append_text(option, sizeof(option), &pos, "-Xbootclasspath:");
    if (westlake_uses_substrate_layout()) {
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/stringfactory.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/core-oj-fieldfix.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/core-libart.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/core-icu4j.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/conscrypt.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/bouncycastle.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/core-jars/apache-xml.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/adapter-mainline-stubs.jar:");
        if (westlake_uses_framework_shim()) {
            append_text(option, sizeof(option), &pos, root);
            append_text(option, sizeof(option), &pos, "/apks/dayu600-framework-shim.dex:");
        }
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/framework.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/adapter-runtime-bcp.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/dayu600-androidx-overlay-stub.dex:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/dayu600-apk-probe.dex:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/upscreen-render-ivs.dex.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/upscreen-render.dex.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/android/framework/oh-adapter-framework.jar:");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/icu-data.jar");
        if (westlake_includes_game_apk()) {
            append_text(option, sizeof(option), &pos, ":");
            append_text(option, sizeof(option), &pos, root);
            append_text(option, sizeof(option), &pos, "/apks/2048-2-9.apk");
        }
        return option;
    }
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/stringfactory.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/core-oj-fieldfix.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/core-libart.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/core-icu4j.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/conscrypt.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/bouncycastle.jar:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/core-jars/apache-xml.jar:");
    if (westlake_uses_framework_shim()) {
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/framework-jars/dayu600-framework-shim.dex:");
    }
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/framework-jars/android-35-ctor-noop.dex:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/apks/dayu600-androidx-overlay-stub.dex:");
    append_text(option, sizeof(option), &pos, root);
    append_text(option, sizeof(option), &pos, "/apks/dayu600-apk-probe.dex");
    if (westlake_includes_game_apk()) {
        append_text(option, sizeof(option), &pos, ":");
        append_text(option, sizeof(option), &pos, root);
        append_text(option, sizeof(option), &pos, "/apks/2048-2-9.apk");
    }
    return option;
}

static char *build_classpath_value(void)
{
    static char value[4096];
    unsigned long pos = 0;
    const char *root = westlake_root();
    if (westlake_uses_substrate_layout()) {
        if (westlake_uses_framework_shim()) {
            append_text(value, sizeof(value), &pos, root);
            append_text(value, sizeof(value), &pos, "/apks/dayu600-framework-shim.dex:");
        }
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/android/framework/framework.jar:");
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/dayu600-androidx-overlay-stub.dex:");
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/dayu600-apk-probe.dex:");
        // Agent-D3 input+upscreen harness: WestlakeUpscreen + InputVerifyStage
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/upscreen-render-ivs.dex.jar:");
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/upscreen-render.dex.jar:");
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/icu-data.jar");
        if (westlake_includes_game_apk()) {
            append_text(value, sizeof(value), &pos, ":");
            append_text(value, sizeof(value), &pos, root);
            append_text(value, sizeof(value), &pos, "/apks/2048-2-9.apk");
        }
        return value;
    }
    if (westlake_uses_framework_shim()) {
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/framework-jars/dayu600-framework-shim.dex:");
    }
    append_text(value, sizeof(value), &pos, root);
    append_text(value, sizeof(value), &pos, "/apks/dayu600-androidx-overlay-stub.dex:");
    append_text(value, sizeof(value), &pos, root);
    append_text(value, sizeof(value), &pos, "/apks/dayu600-apk-probe.dex");
    // Agent-D3: inputVerifyStage in upscreen-render-ivs.dex.jar
    append_text(value, sizeof(value), &pos, ":");
    append_text(value, sizeof(value), &pos, root);
    append_text(value, sizeof(value), &pos, "/apks/upscreen-render-ivs.dex.jar");
    if (westlake_includes_game_apk()) {
        append_text(value, sizeof(value), &pos, ":");
        append_text(value, sizeof(value), &pos, root);
        append_text(value, sizeof(value), &pos, "/apks/2048-2-9.apk");
    }
    return value;
}

static char *build_classpath_option(void)
{
    static char option[2304];
    unsigned long pos = 0;
    append_text(option, sizeof(option), &pos, "-Djava.class.path=");
    append_text(option, sizeof(option), &pos, build_classpath_value());
    return option;
}

static void log_text(const char *s)
{
    static char log_path[1200];
    if (log_path[0] == 0) {
        const char *root = getenv("WESTLAKE_ROOT");
        unsigned long pos = 0;
        if (root != 0 && root[0] != 0) {
            append_text(log_path, sizeof(log_path), &pos, root);
            append_text(log_path, sizeof(log_path), &pos,
                "/apks/probe-logs/embedded-art.log");
        } else {
            append_text(log_path, sizeof(log_path), &pos,
                "/data/local/tmp/westlake-embedded-art-dlopen-probe.log");
        }
    }
    long fd = syscall4(56, AT_FDCWD,
        (long)log_path,
        O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        return;
    }
    syscall3(64, fd, (long)s, slen(s));
    syscall3(64, fd, (long)"\n", 1);
    syscall3(57, fd, 0, 0);
}

static void log_int(const char *prefix, int value)
{
    char buf[96];
    unsigned int pos = 0;
    for (unsigned int i = 0; prefix[i] != 0 && pos + 1 < sizeof(buf); i++) {
        buf[pos++] = prefix[i];
    }
    if (value < 0 && pos + 1 < sizeof(buf)) {
        buf[pos++] = '-';
        value = -value;
    }
    char digits[16];
    unsigned int dpos = 0;
    do {
        digits[dpos++] = (char)('0' + (value % 10));
        value /= 10;
    } while (value != 0 && dpos < sizeof(digits));
    while (dpos > 0 && pos + 1 < sizeof(buf)) {
        buf[pos++] = digits[--dpos];
    }
    buf[pos] = 0;
    log_text(buf);
}

static void log_jstring(JNIEnv *env, jstring value)
{
    if (env == 0 || value == 0) {
        return;
    }
    const char *text = (*env)->GetStringUTFChars(env, value, 0);
    if (text == 0 || (*env)->ExceptionCheck(env)) {
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
        return;
    }
    log_text(text);
    (*env)->ReleaseStringUTFChars(env, value, text);
}

static void log_native_env_value(const char *name)
{
    char line[768];
    unsigned long pos = 0;
    char *value = getenv(name);
    append_text(line, sizeof(line), &pos, "native getenv ");
    append_text(line, sizeof(line), &pos, name);
    append_text(line, sizeof(line), &pos, "=");
    append_text(line, sizeof(line), &pos, value == 0 ? "<null>" : value);
    log_text(line);
}

static void log_java_env_value(JNIEnv *env, jclass system_class, jmethodID getenv_method,
    const char *name)
{
    if (env == 0 || system_class == 0 || getenv_method == 0 || name == 0) {
        return;
    }

    char label[160];
    unsigned long pos = 0;
    append_text(label, sizeof(label), &pos, "java System.getenv ");
    append_text(label, sizeof(label), &pos, name);
    append_text(label, sizeof(label), &pos, "=");

    jstring key = (*env)->NewStringUTF(env, name);
    if (key == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "java getenv NewStringUTF failed");
        log_text(label);
        log_text("<key-failed>");
        return;
    }

    jstring value = (jstring)(*env)->CallStaticObjectMethod(env, system_class,
        getenv_method, key);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, label);
        return;
    }
    log_text(label);
    if (value == 0) {
        log_text("<null>");
        return;
    }
    log_jstring(env, value);
}

static void log_activity_env_probe(JNIEnv *env)
{
    static const char *names[] = {
        "WESTLAKE_ROOT",
        "ANDROID_ROOT",
        "ANDROID_DATA",
        "ANDROID_EXPAND",
        "ANDROID_STORAGE",
        "EXTERNAL_STORAGE",
        "ANDROID_ART_ROOT",
        "ANDROID_I18N_ROOT",
        "ANDROID_TZDATA_ROOT",
        "DOWNLOAD_CACHE",
        "HOME",
        "TMPDIR"
    };

    log_text("activity env probe begin");
    for (unsigned int i = 0; i < sizeof(names) / sizeof(names[0]); i++) {
        log_native_env_value(names[i]);
    }

    jclass system_class = (*env)->FindClass(env, "java/lang/System");
    if (system_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "activity env probe FindClass System failed");
        return;
    }
    jmethodID getenv_method = (*env)->GetStaticMethodID(
        env, system_class, "getenv", "(Ljava/lang/String;)Ljava/lang/String;");
    if (getenv_method == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "activity env probe System.getenv lookup failed");
        return;
    }
    for (unsigned int i = 0; i < sizeof(names) / sizeof(names[0]); i++) {
        log_java_env_value(env, system_class, getenv_method, names[i]);
    }
    log_text("activity env probe end");
}

static int wants_java_stack_trace(void)
{
    char *flag = getenv("WESTLAKE_JAVA_STACK");
    return flag != 0 && flag[0] == '1';
}

static int wants_exception_describe(void)
{
    char *flag = getenv("WESTLAKE_EXCEPTION_DESCRIBE");
    return flag != 0 && flag[0] == '1';
}

static int describe_pending_exception(JNIEnv *env, const char *prefix)
{
    if (env == 0 || !(*env)->ExceptionCheck(env)) {
        return 0;
    }
    log_text(prefix);
    jthrowable throwable = (*env)->ExceptionOccurred(env);
    if (wants_exception_describe()) {
        log_text("ExceptionDescribe begin");
        (*env)->ExceptionDescribe(env);
        log_text("ExceptionDescribe end");
    }
    (*env)->ExceptionClear(env);
    if (throwable != 0) {
        jclass throwable_class = (*env)->FindClass(env, "java/lang/Throwable");
        if (throwable_class != 0 && !(*env)->ExceptionCheck(env)) {
            jmethodID to_string = (*env)->GetMethodID(
                env, throwable_class, "toString", "()Ljava/lang/String;");
            if (to_string != 0 && !(*env)->ExceptionCheck(env)) {
                jstring message = (jstring)(*env)->CallObjectMethod(env, throwable, to_string);
                if (message != 0 && !(*env)->ExceptionCheck(env)) {
                    log_jstring(env, message);
                }
            }
        }
        if (wants_java_stack_trace() && throwable_class != 0 && !(*env)->ExceptionCheck(env)) {
            jmethodID print_stack = (*env)->GetMethodID(
                env, throwable_class, "printStackTrace", "()V");
            if (print_stack != 0 && !(*env)->ExceptionCheck(env)) {
                log_text("Throwable.printStackTrace begin");
                (*env)->CallVoidMethod(env, throwable, print_stack);
                if ((*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("Throwable.printStackTrace failed");
                } else {
                    log_text("Throwable.printStackTrace end");
                }
            }
        }
        if (wants_java_stack_trace() && throwable_class != 0 && !(*env)->ExceptionCheck(env)) {
            jmethodID get_stack = (*env)->GetMethodID(
                env, throwable_class, "getStackTrace", "()[Ljava/lang/StackTraceElement;");
            if (get_stack != 0 && !(*env)->ExceptionCheck(env)) {
                jobjectArray stack = (jobjectArray)(*env)->CallObjectMethod(
                    env, throwable, get_stack);
                if (stack != 0 && !(*env)->ExceptionCheck(env)) {
                    jsize count = (*env)->GetArrayLength(env, stack);
                    jclass element_class = (*env)->FindClass(env, "java/lang/StackTraceElement");
                    jmethodID element_to_string = 0;
                    if (element_class != 0 && !(*env)->ExceptionCheck(env)) {
                        element_to_string = (*env)->GetMethodID(
                            env, element_class, "toString", "()Ljava/lang/String;");
                    }
                    if (element_to_string != 0 && !(*env)->ExceptionCheck(env)) {
                        if (count > 32) {
                            count = 32;
                        }
                        for (jsize i = 0; i < count; i++) {
                            jobject element = (*env)->GetObjectArrayElement(env, stack, i);
                            if (element == 0 || (*env)->ExceptionCheck(env)) {
                                (*env)->ExceptionClear(env);
                                continue;
                            }
                            jstring line = (jstring)(*env)->CallObjectMethod(
                                env, element, element_to_string);
                            if (line != 0 && !(*env)->ExceptionCheck(env)) {
                                log_text("  at");
                                log_jstring(env, line);
                            }
                            if ((*env)->ExceptionCheck(env)) {
                                (*env)->ExceptionClear(env);
                            }
                        }
                    }
                }
            }
        }
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
    }
    return 1;
}

static int wants_heavy_bridge_at(const char *timing)
{
    char *enabled = getenv("WESTLAKE_LOAD_HEAVY_BRIDGE");
    if (enabled == 0 || enabled[0] != '1') {
        return 0;
    }

    char *configured = getenv("WESTLAKE_HEAVY_BRIDGE_TIMING");
    if (configured == 0 || configured[0] == 0) {
        configured = "afterStage";
    }
    return streq(configured, timing);
}

static int load_heavy_bridge_if_requested(const char *timing)
{
    if (!wants_heavy_bridge_at(timing)) {
        return 0;
    }
    if (westlake_heavy_bridge_handle != 0) {
        log_text("heavy bridge already loaded");
        return 0;
    }

    const char *path = getenv("WESTLAKE_HEAVY_BRIDGE_PATH");
    if (path == 0 || path[0] == 0) {
        path = build_default_heavy_bridge_path();
    }

    log_text("heavy bridge dlopen begin");
    log_text(timing);
    log_text(path);
    westlake_heavy_bridge_handle = dlopen(path, RTLD_NOW | RTLD_GLOBAL);
    if (westlake_heavy_bridge_handle == 0) {
        log_text("heavy bridge dlopen failed");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
        }
        return 41;
    }

    log_text("heavy bridge dlopen ok");
    return 0;
}

typedef jint (*jni_create_java_vm_fn)(JavaVM **p_vm, void **p_env, void *vm_args);
typedef jint (*jni_onload_fn)(JavaVM *vm, void *reserved);
typedef jclass (*westlake_find_class_fn)(JNIEnv *env, const char *class_name);
typedef int (*westlake_android_runtime_start_reg_fn)(JNIEnv *env);

static jclass westlake_native_find_class(JNIEnv *env, jclass clazz, jstring class_name_j)
{
    (void)clazz;
    if (env == 0 || class_name_j == 0 || westlake_find_class_symbol == 0) {
        return 0;
    }
    const char *class_name = (*env)->GetStringUTFChars(env, class_name_j, 0);
    if (class_name == 0 || (*env)->ExceptionCheck(env)) {
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
        return 0;
    }
    westlake_find_class_fn find_class = (westlake_find_class_fn)westlake_find_class_symbol;
    jclass result = find_class(env, class_name);
    (*env)->ReleaseStringUTFChars(env, class_name_j, class_name);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return 0;
    }
    return result;
}

static void westlake_native_register_trace(JNIEnv *env, jclass clazz, jclass trace_class)
{
    (void)clazz;
    if (trace_class == 0) {
        log_text("nativeRegisterTraceNatives null");
        return;
    }
    register_trace_natives_on(env, trace_class, "Java nativeRegisterTraceNatives");
}

static int westlake_str_contains(const char *hay, const char *needle)
{
    if (hay == 0 || needle == 0) {
        return 0;
    }
    for (; *hay; hay++) {
        const char *h = hay;
        const char *n = needle;
        while (*h && *n && *h == *n) {
            h++;
            n++;
        }
        if (*n == 0) {
            return 1;
        }
    }
    return 0;
}

static jobject westlake_new_string_from_bytes(JNIEnv *env, jclass string_cls, jbyteArray path_bytes)
{
    if (string_cls == 0 || path_bytes == 0) {
        return 0;
    }
    jsize n = (*env)->GetArrayLength(env, path_bytes);
    if (n <= 0 || n > 1023) {
        return 0;
    }
    /* Always construct via string_cls ctor — boot NewStringUTF breaks dual-String boards. */
    jmethodID str_ctor = (*env)->GetMethodID(env, string_cls, "<init>", "([BII)V");
    if (str_ctor != 0 && !(*env)->ExceptionCheck(env)) {
        jobject o = (*env)->NewObject(env, string_cls, str_ctor, path_bytes, 0, n);
        if (o != 0 && !(*env)->ExceptionCheck(env)) {
            return o;
        }
        (*env)->ExceptionClear(env);
    } else {
        (*env)->ExceptionClear(env);
    }
    str_ctor = (*env)->GetMethodID(env, string_cls, "<init>", "([B)V");
    if (str_ctor == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return 0;
    }
    return (*env)->NewObject(env, string_cls, str_ctor, path_bytes);
}

/* Append via ApkAssets.loadFromPath + AssetManager.setApkAssets — skips addAssetPath SOE.
 * Builds framework String via NewObject(string_cls, byte[]) — dual-String safe. */
static jclass westlake_string_class_for_loader(JNIEnv *env, jobject loader)
{
    if (loader == 0) {
        return (*env)->FindClass(env, "java/lang/String");
    }
    jclass cl_cls = (*env)->FindClass(env, "java/lang/ClassLoader");
    jmethodID load = (*env)->GetMethodID(env, cl_cls, "loadClass", "(Ljava/lang/String;)Ljava/lang/Class;");
    if (load == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return (*env)->FindClass(env, "java/lang/String");
    }
    jstring jname = (*env)->NewStringUTF(env, "java.lang.String");
    jclass string_cls = (jclass)(*env)->CallObjectMethod(env, loader, load, jname);
    if (string_cls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("westlake_string_class_for_loader failed, boot String");
        return (*env)->FindClass(env, "java/lang/String");
    }
    return string_cls;
}

static jobject westlake_loader_for_am(JNIEnv *env, jobject am)
{
    jclass am_runtime = (*env)->GetObjectClass(env, am);
    jclass class_cls = (*env)->FindClass(env, "java/lang/Class");
    jmethodID get_cl = (*env)->GetMethodID(env, class_cls, "getClassLoader", "()Ljava/lang/ClassLoader;");
    if (get_cl == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return 0;
    }
    return (*env)->CallObjectMethod(env, am_runtime, get_cl);
}

/* [W-005 2026-07-19] AOSP libc++ exports std::__1::__libcpp_verbose_abort(const char*, ...);
 * OHOS's libc++ does not, so relocating a stock AOSP libandroidfw.so into this process
 * fails with "symbol not found". This probe is LD_PRELOADed with RTLD_GLOBAL, so defining
 * the mangled name here satisfies the relocation for every later dlopen. It is only ever
 * reached on a libc++ hard-abort path, where trapping is the correct behaviour anyway. */
__attribute__((visibility("default")))
void _ZNSt3__122__libcpp_verbose_abortEPKcz(const char *fmt, ...)
{
    (void)fmt;
    __builtin_trap();
}

/* [W-005 2026-07-19] bionic _FORTIFY_SOURCE shims. Stock AOSP libs (libandroidfw,
 * libbase, libutils, libcutils ...) are compiled against bionic and reference its
 * __*_chk / __*_2 fortified entry points, which musl does not provide -> "symbol not
 * found" at relocation time. Each one below is the documented bionic behaviour minus
 * the compile-time size check, which we cannot reconstruct anyway. Exported from this
 * LD_PRELOADed .so so every later dlopen resolves against them. */
extern int open(const char *, int, ...);
extern int openat(int, const char *, int, ...);
extern void *memcpy(void *, const void *, unsigned long);
extern void *memmove(void *, const void *, unsigned long);
extern void *memset(void *, int, unsigned long);
extern unsigned long strlen(const char *);
extern char *strcpy(char *, const char *);
extern char *strcat(char *, const char *);
extern char *strncpy(char *, const char *, unsigned long);
extern long read(int, void *, unsigned long);
extern int vsnprintf(char *, unsigned long, const char *, __builtin_va_list);

#define WL_EXPORT __attribute__((visibility("default")))
WL_EXPORT int __open_2(const char *p, int f) { return open(p, f); }
WL_EXPORT int __openat_2(int d, const char *p, int f) { return openat(d, p, f); }
WL_EXPORT void *__memcpy_chk(void *d, const void *s, unsigned long n, unsigned long b)
{ (void)b; return memcpy(d, s, n); }
WL_EXPORT void *__memmove_chk(void *d, const void *s, unsigned long n, unsigned long b)
{ (void)b; return memmove(d, s, n); }
WL_EXPORT void *__memset_chk(void *d, int c, unsigned long n, unsigned long b)
{ (void)b; return memset(d, c, n); }
WL_EXPORT unsigned long __strlen_chk(const char *s, unsigned long b)
{ (void)b; return strlen(s); }
WL_EXPORT char *__strcpy_chk(char *d, const char *s, unsigned long b)
{ (void)b; return strcpy(d, s); }
WL_EXPORT char *__strcat_chk(char *d, const char *s, unsigned long b)
{ (void)b; return strcat(d, s); }
WL_EXPORT char *__strncpy_chk(char *d, const char *s, unsigned long n, unsigned long b)
{ (void)b; return strncpy(d, s, n); }
WL_EXPORT long __read_chk(int fd, void *buf, unsigned long n, unsigned long b)
{ (void)b; return read(fd, buf, n); }
WL_EXPORT int __vsnprintf_chk(char *s, unsigned long n, int flag, unsigned long b,
                              const char *fmt, __builtin_va_list ap)
{ (void)flag; (void)b; return vsnprintf(s, n, fmt, ap); }

/* bionic exposes CMSG_NXTHDR as a real function (__cmsg_nxthdr); musl only has the
 * macro, so libbase.so fails to relocate. Bridge one to the other. */
WL_EXPORT struct cmsghdr *__cmsg_nxthdr(struct msghdr *msg, struct cmsghdr *cmsg)
{
    return CMSG_NXTHDR(msg, cmsg);
}

/* bionic's newer property API (libbase uses find + read_callback rather than the
 * legacy __system_property_get this file already stubs). The handle is opaque to
 * callers, so a slot carrying the name is enough; reads go through the existing
 * __system_property_get implementation above. */
struct wl_prop_info { char name[96]; };
static struct wl_prop_info g_wl_props[96];
static int g_wl_prop_n = 0;

/* MUST return NULL for properties that do not exist. Handing back a live handle for
 * every name makes libbase believe every property is present but empty, and its
 * GetProperty/GetBoolProperty path then spins (measured: libbase mapped, one thread at
 * 100% CPU, VM init never completes). Probe the legacy getter first and only vend a
 * handle when there is a real value. */
WL_EXPORT const void *__system_property_find(const char *name)
{
    int i;
    unsigned int j;
    char probe[92];
    if (name == 0 || name[0] == 0) return 0;
    probe[0] = 0;
    if (__system_property_get(name, probe) <= 0 || probe[0] == 0) return 0;
    for (i = 0; i < g_wl_prop_n; i++) {
        if (streq(g_wl_props[i].name, name)) return &g_wl_props[i];
    }
    if (g_wl_prop_n >= (int)(sizeof(g_wl_props) / sizeof(g_wl_props[0]))) return 0;
    for (j = 0; j + 1 < sizeof(g_wl_props[0].name) && name[j] != 0; j++) {
        g_wl_props[g_wl_prop_n].name[j] = name[j];
    }
    g_wl_props[g_wl_prop_n].name[j] = 0;
    return &g_wl_props[g_wl_prop_n++];
}

WL_EXPORT void __system_property_read_callback(const void *pi,
    void (*cb)(void *, const char *, const char *, unsigned int), void *cookie)
{
    char val[92];
    const struct wl_prop_info *p = (const struct wl_prop_info *)pi;
    if (p == 0 || cb == 0) return;
    val[0] = 0;
    __system_property_get(p->name, val);
    cb(cookie, p->name, val, 1u);
}

WL_EXPORT int __system_property_read(const void *pi, char *name, char *value)
{
    const struct wl_prop_info *p = (const struct wl_prop_info *)pi;
    unsigned int j;
    if (p == 0) return 0;
    if (name != 0) {
        for (j = 0; j + 1 < sizeof(p->name) && p->name[j] != 0; j++) name[j] = p->name[j];
        name[j] = 0;
    }
    if (value == 0) return 0;
    value[0] = 0;
    return __system_property_get(p->name, value);
}

/* Remaining bionic property entry points libbase/libcutils reference. Writes are
 * accepted and dropped (this lane has no property service); the readers above are
 * what actually matter for resource/asset bring-up. */
WL_EXPORT int __system_property_set(const char *name, const char *value)
{ (void)name; (void)value; return 0; }
/* The serial MUST advance on every read. A constant serial means "value never changed",
 * and any caller doing the standard wait-for-change loop then spins at 100% CPU forever
 * (observed: single thread, State R, no progress). */
static unsigned int g_wl_prop_serial = 1u;
WL_EXPORT unsigned int __system_property_serial(const void *pi)
{ (void)pi; return ++g_wl_prop_serial; }
WL_EXPORT int __system_property_wait(const void *pi, unsigned int old_serial,
                                     unsigned int *new_serial, const void *timeout)
{
    (void)pi; (void)old_serial; (void)timeout;
    if (new_serial) *new_serial = ++g_wl_prop_serial;
    return 1;   /* bionic: true == "the serial moved", so the waiter proceeds */
}
WL_EXPORT unsigned int __system_property_area_serial(void) { return 1u; }
WL_EXPORT int __system_properties_init(void) { return 0; }
WL_EXPORT int __system_property_foreach(
    void (*cb)(const void *, void *), void *cookie)
{ (void)cb; (void)cookie; return 0; }

/* bionic fdsan (file-descriptor ownership sanitizer) — libcutils/libbase call into it
 * on every fd close. musl has no equivalent; making the whole API a no-op is safe:
 * fdsan only ever *detects* double-close, it is not load-bearing.
 * NOTE: the OH sysroot already declares/provides create_owner_tag,
 * exchange_owner_tag, close_with_tag and android_get_device_api_level, so redefining
 * those is a compile error; only the genuinely absent ones are stubbed here. */
WL_EXPORT unsigned long android_fdsan_get_owner_tag(int fd) { (void)fd; return 0ul; }
WL_EXPORT unsigned int android_fdsan_get_tag_type(unsigned long tag) { (void)tag; return 0u; }
WL_EXPORT unsigned long android_fdsan_get_tag_value(unsigned long tag) { return tag; }
WL_EXPORT int android_get_application_target_sdk_version(void) { return 35; }

/* bionic fortifies the fd_set macros into real calls; musl keeps them as macros. */
WL_EXPORT void __FD_SET_chk(int fd, fd_set *s, unsigned long n)
{ (void)n; if (s) FD_SET(fd, s); }
WL_EXPORT void __FD_CLR_chk(int fd, fd_set *s, unsigned long n)
{ (void)n; if (s) FD_CLR(fd, s); }
WL_EXPORT int __FD_ISSET_chk(int fd, const fd_set *s, unsigned long n)
{ (void)n; return s ? FD_ISSET(fd, (fd_set *)s) : 0; }

/* The rest of bionic's _FORTIFY_SOURCE surface, batched so the staged AOSP closure
 * stops failing one symbol per run. All are the plain libc call with the compile-time
 * size argument(s) discarded — the check they encode cannot be reconstructed here. */
extern unsigned long strlcpy(char *, const char *, unsigned long);
extern unsigned long strlcat(char *, const char *, unsigned long);
extern char *strchr(const char *, int);
extern char *strrchr(const char *, int);
extern char *realpath(const char *, char *);
extern long readlink(const char *, char *, unsigned long);
extern long readlinkat(int, const char *, char *, unsigned long);
extern char *getcwd(char *, unsigned long);
extern long pread(int, void *, unsigned long, long);
extern int snprintf(char *, unsigned long, const char *, ...);
extern int vsprintf(char *, const char *, __builtin_va_list);
extern int poll(struct pollfd *, unsigned long, int);

WL_EXPORT char *__strncpy_chk2(char *d, const char *s, unsigned long n,
                               unsigned long dl, unsigned long sl)
{ (void)dl; (void)sl; return strncpy(d, s, n); }
WL_EXPORT unsigned long __strlcpy_chk(char *d, const char *s, unsigned long n,
                                      unsigned long b)
{ (void)b; return strlcpy(d, s, n); }
WL_EXPORT unsigned long __strlcat_chk(char *d, const char *s, unsigned long n,
                                      unsigned long b)
{ (void)b; return strlcat(d, s, n); }
WL_EXPORT char *__strchr_chk(const char *s, int c, unsigned long b)
{ (void)b; return strchr(s, c); }
WL_EXPORT char *__strrchr_chk(const char *s, int c, unsigned long b)
{ (void)b; return strrchr(s, c); }
WL_EXPORT char *__realpath_chk(const char *p, char *out, unsigned long b)
{ (void)b; return realpath(p, out); }
WL_EXPORT long __readlink_chk(const char *p, char *b, unsigned long n, unsigned long z)
{ (void)z; return readlink(p, b, n); }
WL_EXPORT long __readlinkat_chk(int d, const char *p, char *b, unsigned long n,
                                unsigned long z)
{ (void)z; return readlinkat(d, p, b, n); }
WL_EXPORT char *__getcwd_chk(char *b, unsigned long n, unsigned long z)
{ (void)z; return getcwd(b, n); }

/* bionic linker-namespace API (libapexsupport / libvndksupport / libbinder). musl has
 * no namespaces, so everything degrades to the single flat namespace this lane already
 * is. These must live in the LD_PRELOADed probe rather than a side .so: OHOS musl does
 * not feed RTLD_GLOBAL dlopen'd symbols into a later dlopen's resolution scope, but a
 * genuinely preloaded object is in the global scope proper (that is how the FORTIFY
 * shims above already reach the staged AOSP libs). */
WL_EXPORT void *android_get_exported_namespace(const char *name) { (void)name; return 0; }
WL_EXPORT void *android_create_namespace(const char *n, const char *ld, const char *dp,
                                         unsigned long t, const char *pp, void *parent)
{ (void)n; (void)ld; (void)dp; (void)t; (void)pp; (void)parent; return 0; }
WL_EXPORT int android_link_namespaces(void *from, void *to, const char *libs)
{ (void)from; (void)to; (void)libs; return 1; }
WL_EXPORT int android_link_namespaces_all_libs(void *from, void *to)
{ (void)from; (void)to; return 1; }

/* Android's libnativehelper AFileDescriptor_* API. The resource JNI code uses it to get
 * at the int behind a java.io.FileDescriptor; OHOS has no libnativehelper, so implement
 * it directly against the well-known `descriptor` field. */
WL_EXPORT int AFileDescriptor_getFd(JNIEnv *env, jobject fileDescriptor)
{
    if (env == 0 || fileDescriptor == 0) return -1;
    jclass c = (*env)->GetObjectClass(env, fileDescriptor);
    if (c == 0) { (*env)->ExceptionClear(env); return -1; }
    jfieldID f = (*env)->GetFieldID(env, c, "descriptor", "I");
    if (f == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return -1; }
    return (int)(*env)->GetIntField(env, fileDescriptor, f);
}
WL_EXPORT void AFileDescriptor_setFd(JNIEnv *env, jobject fileDescriptor, int fd)
{
    if (env == 0 || fileDescriptor == 0) return;
    jclass c = (*env)->GetObjectClass(env, fileDescriptor);
    if (c == 0) { (*env)->ExceptionClear(env); return; }
    jfieldID f = (*env)->GetFieldID(env, c, "descriptor", "I");
    if (f == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return; }
    (*env)->SetIntField(env, fileDescriptor, f, (jint)fd);
}
WL_EXPORT jobject AFileDescriptor_create(JNIEnv *env)
{
    if (env == 0) return 0;
    jclass c = (*env)->FindClass(env, "java/io/FileDescriptor");
    if (c == 0) { (*env)->ExceptionClear(env); return 0; }
    jmethodID ctor = (*env)->GetMethodID(env, c, "<init>", "()V");
    if (ctor == 0) { (*env)->ExceptionClear(env); return 0; }
    jobject o = (*env)->NewObject(env, c, ctor);
    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return 0; }
    return o;
}

/* SHA-1, BoringSSL-compatible entry points. libincfs is the only consumer in the staged
 * closure and it needs exactly these three; pulling in the real libcrypto for them costs
 * a BoringSSL that crashes during its own load on this musl runtime (isolated by loading
 * the chain one library at a time: everything up to wlz.so is fine, wlcrypto.so dies).
 * This is the genuine algorithm, not a stub — a wrong digest would corrupt silently.
 * The context must stay within BoringSSL's SHA_CTX (96 bytes) since callers allocate it. */
struct wl_sha1_ctx { unsigned int h[5]; unsigned int nl, nh; unsigned char buf[64]; unsigned int n; };

static void wl_sha1_block(struct wl_sha1_ctx *c, const unsigned char *p)
{
    unsigned int w[80], a, b, d, e, f, k, t;
    int i;
    unsigned int cc;
    for (i = 0; i < 16; i++)
        w[i] = ((unsigned int)p[i * 4] << 24) | ((unsigned int)p[i * 4 + 1] << 16) |
               ((unsigned int)p[i * 4 + 2] << 8) | (unsigned int)p[i * 4 + 3];
    for (i = 16; i < 80; i++) {
        t = w[i - 3] ^ w[i - 8] ^ w[i - 14] ^ w[i - 16];
        w[i] = (t << 1) | (t >> 31);
    }
    a = c->h[0]; b = c->h[1]; cc = c->h[2]; d = c->h[3]; e = c->h[4];
    for (i = 0; i < 80; i++) {
        if (i < 20)      { f = (b & cc) | ((~b) & d);      k = 0x5A827999u; }
        else if (i < 40) { f = b ^ cc ^ d;                 k = 0x6ED9EBA1u; }
        else if (i < 60) { f = (b & cc) | (b & d) | (cc & d); k = 0x8F1BBCDCu; }
        else             { f = b ^ cc ^ d;                 k = 0xCA62C1D6u; }
        t = ((a << 5) | (a >> 27)) + f + e + k + w[i];
        e = d; d = cc; cc = (b << 30) | (b >> 2); b = a; a = t;
    }
    c->h[0] += a; c->h[1] += b; c->h[2] += cc; c->h[3] += d; c->h[4] += e;
}

WL_EXPORT int SHA1_Init(void *ctx)
{
    struct wl_sha1_ctx *c = (struct wl_sha1_ctx *)ctx;
    if (c == 0) return 0;
    c->h[0] = 0x67452301u; c->h[1] = 0xEFCDAB89u; c->h[2] = 0x98BADCFEu;
    c->h[3] = 0x10325476u; c->h[4] = 0xC3D2E1F0u;
    c->nl = 0; c->nh = 0; c->n = 0;
    return 1;
}

WL_EXPORT int SHA1_Update(void *ctx, const void *data, unsigned long len)
{
    struct wl_sha1_ctx *c = (struct wl_sha1_ctx *)ctx;
    const unsigned char *p = (const unsigned char *)data;
    unsigned long i;
    if (c == 0 || (p == 0 && len != 0)) return 0;
    for (i = 0; i < len; i++) {
        c->buf[c->n++] = p[i];
        if (c->n == 64) { wl_sha1_block(c, c->buf); c->n = 0; }
        c->nl += 8;
        if (c->nl < 8) c->nh++;
    }
    return 1;
}

WL_EXPORT int SHA1_Final(unsigned char *out, void *ctx)
{
    struct wl_sha1_ctx *c = (struct wl_sha1_ctx *)ctx;
    unsigned int nl, nh;
    int i;
    if (c == 0 || out == 0) return 0;
    nl = c->nl; nh = c->nh;
    c->buf[c->n++] = 0x80;
    if (c->n > 56) {
        while (c->n < 64) c->buf[c->n++] = 0;
        wl_sha1_block(c, c->buf); c->n = 0;
    }
    while (c->n < 56) c->buf[c->n++] = 0;
    c->buf[56] = (unsigned char)(nh >> 24); c->buf[57] = (unsigned char)(nh >> 16);
    c->buf[58] = (unsigned char)(nh >> 8);  c->buf[59] = (unsigned char)nh;
    c->buf[60] = (unsigned char)(nl >> 24); c->buf[61] = (unsigned char)(nl >> 16);
    c->buf[62] = (unsigned char)(nl >> 8);  c->buf[63] = (unsigned char)nl;
    wl_sha1_block(c, c->buf);
    for (i = 0; i < 5; i++) {
        out[i * 4]     = (unsigned char)(c->h[i] >> 24);
        out[i * 4 + 1] = (unsigned char)(c->h[i] >> 16);
        out[i * 4 + 2] = (unsigned char)(c->h[i] >> 8);
        out[i * 4 + 3] = (unsigned char)c->h[i];
    }
    return 1;
}

/* BSD fts(3): bionic ships it, musl does not, and libselinux imports it for recursive
 * relabeling. Nothing on the resource path walks trees, so report an empty traversal.
 * NOTE: an earlier attempt at this spun libselinux at 100% CPU — that was actually the
 * un-renamed AOSP libs colliding with ART's own libbase, not fts. With the wl* renaming
 * in place the collision is gone. */
static int g_wl_fts_handle;
WL_EXPORT void *fts_open(char *const *argv, int opts, void *cmp)
{ (void)argv; (void)opts; (void)cmp; return &g_wl_fts_handle; }
WL_EXPORT void *fts_read(void *ftsp) { (void)ftsp; return 0; }
WL_EXPORT void *fts_children(void *ftsp, int opts) { (void)ftsp; (void)opts; return 0; }
WL_EXPORT int fts_set(void *ftsp, void *f, int opts)
{ (void)ftsp; (void)f; (void)opts; return 0; }
WL_EXPORT int fts_close(void *ftsp) { (void)ftsp; return 0; }

/* android::AndroidRuntime::getJNIEnv() — lives in libandroid_runtime.so, which this lane
 * does not (and should not) carry. The resource JNI code only wants the calling thread's
 * env, and the probe already owns the VM handle. */
WL_EXPORT JNIEnv *_ZN7android14AndroidRuntime9getJNIEnvEv(void)
{
    JNIEnv *e = 0;
    if (g_probe_vm == 0) return 0;
    if ((*g_probe_vm)->GetEnv(g_probe_vm, (void **)&e, JNI_VERSION_1_6) != JNI_OK) return 0;
    return e;
}

/* libincfs is the only consumer of libselinux in the staged closure, and it wants a
 * single symbol. The real libselinux drags in BSD fts(3), which musl lacks; shimming
 * fts makes libselinux spin (100% CPU, no progress) and replacing the whole library
 * breaks other consumers. So libincfs's DT_NEEDED is repointed away from libselinux
 * and the one symbol is served from here instead. Nothing on the resource/asset path
 * relabels files. */
WL_EXPORT int selinux_android_restorecon(const char *pathname, unsigned int flags)
{ (void)pathname; (void)flags; return 0; }


WL_EXPORT long __pread_chk(int fd, void *b, unsigned long n, long off, unsigned long z)
{ (void)z; return pread(fd, b, n, off); }
WL_EXPORT long __pread64_chk(int fd, void *b, unsigned long n, long off, unsigned long z)
{ (void)z; return pread(fd, b, n, off); }
WL_EXPORT int __snprintf_chk(char *s, unsigned long n, int flag, unsigned long b,
                             const char *fmt, ...)
{
    __builtin_va_list ap; int r;
    (void)flag; (void)b;
    __builtin_va_start(ap, fmt);
    r = vsnprintf(s, n, fmt, ap);
    __builtin_va_end(ap);
    return r;
}
WL_EXPORT int __vsprintf_chk(char *s, int flag, unsigned long b, const char *fmt,
                             __builtin_va_list ap)
{ (void)flag; (void)b; return vsprintf(s, fmt, ap); }
WL_EXPORT int __sprintf_chk(char *s, int flag, unsigned long b, const char *fmt, ...)
{
    __builtin_va_list ap; int r;
    (void)flag; (void)b;
    __builtin_va_start(ap, fmt);
    r = vsprintf(s, fmt, ap);
    __builtin_va_end(ap);
    return r;
}
WL_EXPORT int __poll_chk(struct pollfd *f, unsigned long n, int t, unsigned long b)
{ (void)b; return poll(f, n, t); }
#undef WL_EXPORT

static jint westlake_native_append_apk_assets(JNIEnv *env, jclass clazz,
    jobject am, jbyteArray path_bytes)
{
    (void)clazz;
    c_write_heartbeat("/data/local/tmp/w001-native-append.txt", "ENTER");
    log_text("nativeAppend ENTER");
    /* Temporary diagnostic: prove Java/JNI dispatch reaches this fn. */
    if (am != 0 && path_bytes != 0) {
        jsize plen = (*env)->GetArrayLength(env, path_bytes);
        log_int("nativeAppend pathLen=", (int)plen);
        if (plen > 0) {
            /* prove-enter marker: always succeed fingerprint for app path first */
            char p0 = 0;
            (*env)->GetByteArrayRegion(env, path_bytes, 0, 1, (jbyte *)&p0);
            if (p0 == '/') {
                c_write_heartbeat("/data/local/tmp/w001-native-append.txt", "DISPATCH_OK");
            }
        }
    }
    if (am == 0 || path_bytes == 0) {
        log_text("nativeAppendApkAssets null args");
        c_write_heartbeat("/data/local/tmp/w001-native-append.txt", "nullArgs");
        return -999;
    }
    jclass apk_cls = (*env)->FindClass(env, "android/content/res/ApkAssets");
    if (apk_cls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("nativeAppendApkAssets FindClass ApkAssets failed");
        return -999;
    }
    jobject loader = westlake_loader_for_am(env, am);
    jclass string_cls = westlake_string_class_for_loader(env, loader);
    jobject path_obj = westlake_new_string_from_bytes(env, string_cls, path_bytes);
    if (path_obj == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "nativeAppendApkAssets NewObject String failed");
        (*env)->ExceptionClear(env);
        return -998;
    }
    jmethodID load = (*env)->GetStaticMethodID(
        env, apk_cls, "loadFromPath", "(Ljava/lang/String;)Landroid/content/res/ApkAssets;");
    jobject apk = 0;
    int use_system = 0;
    {
        jsize pn = (*env)->GetArrayLength(env, path_bytes);
        char pbuf[256];
        if (pn > 0 && pn < (jsize)(sizeof(pbuf) - 1)) {
            (*env)->GetByteArrayRegion(env, path_bytes, 0, pn, (jbyte *)pbuf);
            pbuf[pn] = 0;
            if (westlake_str_contains(pbuf, "framework-res")) {
                use_system = 1;
            }
        }
    }
    if (use_system) {
        (*env)->ExceptionClear(env);
        load = (*env)->GetStaticMethodID(
            env, apk_cls, "loadFromPath", "(Ljava/lang/String;I)Landroid/content/res/ApkAssets;");
        if (load != 0 && !(*env)->ExceptionCheck(env)) {
            jint prop = 1;
            jfieldID pf = (*env)->GetStaticFieldID(env, apk_cls, "PROPERTY_SYSTEM", "I");
            if (pf != 0 && !(*env)->ExceptionCheck(env)) {
                prop = (*env)->GetStaticIntField(env, apk_cls, pf);
            } else {
                (*env)->ExceptionClear(env);
            }
            log_text("nativeAppendApkAssets calling loadFromPath(String,PROPERTY_SYSTEM)");
            apk = (*env)->CallStaticObjectMethod(env, apk_cls, load, path_obj, prop);
        }
    } else if (load != 0 && !(*env)->ExceptionCheck(env)) {
        log_text("nativeAppendApkAssets calling loadFromPath(String)");
        apk = (*env)->CallStaticObjectMethod(env, apk_cls, load, path_obj);
    } else {
        (*env)->ExceptionClear(env);
        load = (*env)->GetStaticMethodID(
            env, apk_cls, "loadFromPath", "(Ljava/lang/String;I)Landroid/content/res/ApkAssets;");
        if (load == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            log_text("nativeAppendApkAssets loadFromPath missing");
            return -999;
        }
        log_text("nativeAppendApkAssets calling loadFromPath(String,int)");
        apk = (*env)->CallStaticObjectMethod(env, apk_cls, load, path_obj, 0);
    }
    if (apk == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "nativeAppendApkAssets loadFromPath threw");
        (*env)->ExceptionClear(env);
        return -999;
    }
    jclass am_cls = (*env)->GetObjectClass(env, am);
    jfieldID m_apk = (*env)->GetFieldID(env, am_cls, "mApkAssets", "[Landroid/content/res/ApkAssets;");
    if (m_apk == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("nativeAppendApkAssets mApkAssets missing");
        return -999;
    }
    jobjectArray old_arr = (jobjectArray)(*env)->GetObjectField(env, am, m_apk);
    jsize old_len = 0;
    if (old_arr != 0) {
        old_len = (*env)->GetArrayLength(env, old_arr);
    }
    jobjectArray new_arr = (*env)->NewObjectArray(env, old_len + 1, apk_cls, 0);
    jsize i;
    for (i = 0; i < old_len; i++) {
        jobject o = (*env)->GetObjectArrayElement(env, old_arr, i);
        (*env)->SetObjectArrayElement(env, new_arr, i, o);
        if (o != 0) {
            (*env)->DeleteLocalRef(env, o);
        }
    }
    (*env)->SetObjectArrayElement(env, new_arr, old_len, apk);
    /* Sentinel AssetManager(boolean): setApkAssets() NPEs on null ArraySet — set field directly. */
    (*env)->SetObjectField(env, am, m_apk, new_arr);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "nativeAppendApkAssets SetObjectField mApkAssets threw");
        (*env)->ExceptionClear(env);
        return -999;
    }
    /* Refresh the native peer. A Java-array length is not a cookie/proof until
     * the adapter's AssetManager2 accepted the same ApkAssets array. */
    {
        jfieldID m_obj = (*env)->GetFieldID(env, am_cls, "mObject", "J");
        if (m_obj != 0 && !(*env)->ExceptionCheck(env)) {
            jlong ptr = (*env)->GetLongField(env, am, m_obj);
            if (ptr == 0) {
                log_text("nativeAppendApkAssets mObject is zero");
                return -999;
            }
            jmethodID native_set = (*env)->GetStaticMethodID(
                env, am_cls, "nativeSetApkAssets",
                "(J[Landroid/content/res/ApkAssets;ZZ)V");
            if (native_set != 0 && !(*env)->ExceptionCheck(env)) {
                (*env)->CallStaticVoidMethod(
                    env, am_cls, native_set, ptr, new_arr, JNI_TRUE, JNI_FALSE);
                if ((*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "nativeAppendApkAssets nativeSetApkAssets threw");
                    (*env)->ExceptionClear(env);
                    return -999;
                }
            } else {
                log_text("nativeAppendApkAssets nativeSetApkAssets(ZZ) missing");
                (*env)->ExceptionClear(env);
                return -999;
            }
        } else {
            log_text("nativeAppendApkAssets mObject missing");
            (*env)->ExceptionClear(env);
            return -999;
        }
    }
    log_int("nativeAppendApkAssets nativeSet=ok cookie=", (int)(old_len + 1));
    {
        char cbuf[24];
        int v = (int)(old_len + 1);
        unsigned int pos = 0;
        const char *prefix = "nativeSet=ok ck=";
        unsigned int pi = 0;
        while (prefix[pi] != 0 && pos + 1 < sizeof(cbuf)) {
            cbuf[pos++] = prefix[pi++];
        }
        if (v >= 10) cbuf[pos++] = (char)('0' + (v / 10));
        cbuf[pos++] = (char)('0' + (v % 10));
        cbuf[pos++] = '\n';
        cbuf[pos] = 0;
        c_write_heartbeat("/data/local/tmp/w001-native-append.txt", cbuf);
    }
    return (jint)(old_len + 1);
}

/* W-001 VLL trampoline: static shorty 'ILL' is unhandled at interpreter.cc:1189,
 * 'VLL' has a live branch (nativeWriteText proves it). Java gets no return value;
 * the per-call rc goes to w001-ckApp.txt / w001-ckFw.txt (path-routed), and the
 * only success proof stays 'nativeSet=ok ck=N' written by the worker above. */
static void westlake_native_w001_append_vll(JNIEnv *env, jclass clazz,
    jobject am, jbyteArray path_bytes)
{
    jint rc = westlake_native_append_apk_assets(env, clazz, am, path_bytes);
    const char *hb = "/data/local/tmp/w001-ckApp.txt";
    if (path_bytes != 0) {
        jsize pn = (*env)->GetArrayLength(env, path_bytes);
        char pbuf[256];
        if (pn > 0 && pn < (jsize)(sizeof(pbuf) - 1)) {
            (*env)->GetByteArrayRegion(env, path_bytes, 0, pn, (jbyte *)pbuf);
            pbuf[pn] = 0;
            if (westlake_str_contains(pbuf, "framework-res")) {
                hb = "/data/local/tmp/w001-ckFw.txt";
            }
        }
    }
    {
        char cbuf[16];
        unsigned int pos = 0;
        int v = (int)rc;
        cbuf[pos++] = 'r';
        cbuf[pos++] = 'c';
        cbuf[pos++] = '=';
        if (v < 0) {
            cbuf[pos++] = 'm';
            v = -v;
        }
        if (v >= 100) cbuf[pos++] = (char)('0' + (v / 100) % 10);
        if (v >= 10) cbuf[pos++] = (char)('0' + (v / 10) % 10);
        cbuf[pos++] = (char)('0' + (v % 10));
        cbuf[pos++] = '\n';
        cbuf[pos] = 0;
        c_write_heartbeat(hb, cbuf);
    }
}

static jint westlake_native_call_add_asset_path(JNIEnv *env, jclass clazz,
    jobject am, jbyteArray path_bytes, jclass string_cls)
{
    (void)clazz;
    if (am == 0 || path_bytes == 0 || string_cls == 0) {
        log_text("nativeCallAddAssetPath null am/path/stringClass");
        return -999;
    }
    jobject path_j = westlake_new_string_from_bytes(env, string_cls, path_bytes);
    if (path_j == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "nativeCallAddAssetPath NewObject String failed");
        (*env)->ExceptionClear(env);
        return -999;
    }
    jclass am_cls = (*env)->GetObjectClass(env, am);
    if (am_cls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("nativeCallAddAssetPath GetObjectClass failed");
        return -999;
    }
    jmethodID mid = (*env)->GetMethodID(env, am_cls, "addAssetPath", "(Ljava/lang/String;)I");
    if (mid == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("nativeCallAddAssetPath GetMethodID (I) failed");
        return -999;
    }
    jint cookie = (*env)->CallIntMethod(env, am, mid, path_j);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "nativeCallAddAssetPath CallIntMethod threw");
        (*env)->ExceptionClear(env);
        return -999;
    }
    log_int("nativeCallAddAssetPath cookie=", (int)cookie);
    return cookie;
}

static void westlake_native_write_text(JNIEnv *env, jclass clazz, jstring path_j, jstring text_j)
{
    (void)clazz;
    if (env == 0 || path_j == 0 || text_j == 0) {
        log_text("nativeWriteText invalid args");
        return;
    }

    const char *path = (*env)->GetStringUTFChars(env, path_j, 0);
    if (path == 0 || (*env)->ExceptionCheck(env)) {
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
        log_text("nativeWriteText path decode failed");
        return;
    }

    const char *text = (*env)->GetStringUTFChars(env, text_j, 0);
    if (text == 0 || (*env)->ExceptionCheck(env)) {
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
        (*env)->ReleaseStringUTFChars(env, path_j, path);
        log_text("nativeWriteText text decode failed");
        return;
    }

    long fd = syscall4(56, AT_FDCWD, (long)path,
        O_WRONLY | O_CREAT | O_TRUNC, LOG_MODE);
    if (fd < 0) {
        log_int("nativeWriteText open rc=", (int)fd);
        (*env)->ReleaseStringUTFChars(env, text_j, text);
        (*env)->ReleaseStringUTFChars(env, path_j, path);
        return;
    }
    syscall3(64, fd, (long)text, slen(text));
    syscall3(57, fd, 0, 0);

    (*env)->ReleaseStringUTFChars(env, text_j, text);
    (*env)->ReleaseStringUTFChars(env, path_j, path);
}

static int ensure_art_loaded(void)
{
    if (westlake_art_handle != 0 && westlake_create_vm_symbol != 0) {
        return 0;
    }
    westlake_art_handle = dlopen_exec("art/libwestlake_art.so",
        "libwestlake_art.so", RTLD_NOW | RTLD_GLOBAL);
    if (westlake_art_handle == 0) {
        log_text("dlopen libwestlake_art.so failed");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
        }
        return 21;
    }

    log_text("dlopen libwestlake_art.so ok");
    westlake_create_vm_symbol = dlsym(westlake_art_handle, "JNI_CreateJavaVM");
    if (westlake_create_vm_symbol == 0) {
        log_text("dlsym JNI_CreateJavaVM failed");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
        }
        return 22;
    }

    log_text("dlsym JNI_CreateJavaVM ok");
    westlake_find_class_symbol = dlsym(westlake_art_handle, "Westlake_FindClassInSystemLoader");
    if (westlake_find_class_symbol != 0) {
        log_text("dlsym Westlake_FindClassInSystemLoader ok");
    } else {
        log_text("dlsym Westlake_FindClassInSystemLoader missing");
    }
    return 0;
}

static void call_optional_onload(void *handle, const char *symbol, JavaVM *vm)
{
    jni_onload_fn onload = (jni_onload_fn)dlsym(handle, symbol);
    if (onload == 0) {
        log_text("optional JNI_OnLoad symbol missing");
        log_text(symbol);
        return;
    }
    log_text("optional JNI_OnLoad begin");
    log_text(symbol);
    jint rc = onload(vm, 0);
    log_int("optional JNI_OnLoad rc=", (int)rc);
}

static int call_android_runtime_start_reg(JNIEnv *env)
{
    if (env == 0) {
        return 0;
    }
    if (westlake_android_runtime_handle == 0) {
        const char *lane_rel = westlake_uses_substrate_layout()
            ? "android/lib64/liboh_android_runtime.so"
            : "lib64/liboh_android_runtime.so";
        log_text("android runtime dlopen begin");
        westlake_android_runtime_handle = dlopen_exec(lane_rel,
            "liboh_android_runtime.so", RTLD_NOW | RTLD_GLOBAL);
        if (westlake_android_runtime_handle == 0) {
            log_text("android runtime dlopen failed");
            char *err = dlerror();
            if (err != 0) {
                log_text(err);
            }
            return 0;
        }
        log_text("android runtime dlopen ok");
    }

    westlake_android_runtime_start_reg_fn start_reg =
        (westlake_android_runtime_start_reg_fn)dlsym(
            westlake_android_runtime_handle, "westlake_android_runtime_startReg");
    if (start_reg == 0) {
        log_text("android runtime startReg symbol missing");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
        }
        return 0;
    }
    log_text("android runtime startReg begin");
    int rc = start_reg(env);
    log_int("android runtime startReg rc=", rc);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "android runtime startReg left exception");
    }
    return rc;
}

static int seed_system_properties(JNIEnv *env)
{
    const char *pairs[] = {
        "java.home", "/system",
        "java.class.path", "",
        "java.library.path", "",
        "java.io.tmpdir", "/data/local/tmp",
        "file.encoding", "UTF-8",
        "sun.jnu.encoding", "UTF-8",
        "stdout.encoding", "UTF-8",
        "stderr.encoding", "UTF-8",
        "file.separator", "/",
        "path.separator", ":",
        "line.separator", "\n",
        "os.arch", "aarch64",
        "os.name", "Linux",
        "os.version", "OpenHarmony",
        "user.dir", "/data/local/tmp",
        "user.home", "/",
        "user.name", "shell",
        "user.language", "en",
        "user.country", "US",
        "java.version", "17",
        "java.vendor", "A2OH",
        "java.vm.name", "Westlake ART",
        "java.vm.version", "15",
        "java.vm.vendor", "A2OH",
    };
    int npairs = (int)(sizeof(pairs) / sizeof(pairs[0]) / 2);

    jclass props_class = (*env)->FindClass(env, "java/util/Properties");
    if (props_class == 0 || (*env)->ExceptionCheck(env)) {
        log_text("seed properties: Properties class failed");
        (*env)->ExceptionClear(env);
        return 31;
    }
    jmethodID props_ctor = (*env)->GetMethodID(env, props_class, "<init>", "()V");
    jmethodID set_property = (*env)->GetMethodID(
        env, props_class, "setProperty",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;");
    if (props_ctor == 0 || set_property == 0 || (*env)->ExceptionCheck(env)) {
        log_text("seed properties: Properties methods failed");
        (*env)->ExceptionClear(env);
        return 32;
    }
    jobject props = (*env)->NewObject(env, props_class, props_ctor);
    if (props == 0 || (*env)->ExceptionCheck(env)) {
        log_text("seed properties: NewObject Properties failed");
        (*env)->ExceptionClear(env);
        return 33;
    }

    for (int i = 0; i < npairs; i++) {
        jstring key = (*env)->NewStringUTF(env, pairs[i * 2]);
        jstring val = (*env)->NewStringUTF(env, pairs[i * 2 + 1]);
        if (key == 0 || val == 0 || (*env)->ExceptionCheck(env)) {
            log_text("seed properties: NewStringUTF failed");
            (*env)->ExceptionClear(env);
            return 34;
        }
        (*env)->CallObjectMethod(env, props, set_property, key, val);
        if ((*env)->ExceptionCheck(env)) {
            log_text("seed properties: setProperty threw");
            (*env)->ExceptionClear(env);
            return 35;
        }
        (*env)->DeleteLocalRef(env, key);
        (*env)->DeleteLocalRef(env, val);
    }

    jclass system_class = (*env)->FindClass(env, "java/lang/System");
    if (system_class == 0 || (*env)->ExceptionCheck(env)) {
        log_text("seed properties: System class failed");
        (*env)->ExceptionClear(env);
        return 36;
    }
    jfieldID props_field = (*env)->GetStaticFieldID(
        env, system_class, "props", "Ljava/util/Properties;");
    if (props_field == 0 || (*env)->ExceptionCheck(env)) {
        log_text("seed properties: System.props field failed");
        (*env)->ExceptionClear(env);
        return 37;
    }
    (*env)->SetStaticObjectField(env, system_class, props_field, props);
    if ((*env)->ExceptionCheck(env)) {
        log_text("seed properties: set System.props failed");
        (*env)->ExceptionClear(env);
        return 38;
    }

    jfieldID line_sep_field = (*env)->GetStaticFieldID(
        env, system_class, "lineSeparator", "Ljava/lang/String;");
    if (line_sep_field != 0 && !(*env)->ExceptionCheck(env)) {
        jstring newline = (*env)->NewStringUTF(env, "\n");
        if (newline != 0 && !(*env)->ExceptionCheck(env)) {
            (*env)->SetStaticObjectField(env, system_class, line_sep_field, newline);
        }
        if ((*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
        }
    } else if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
    }

    log_text("seed properties: ok");
    return 0;
}

// Crash recovery state for sigsetjmp/longjmp around startReg
static sigjmp_buf g_crash_jmp;
static volatile sig_atomic_t g_in_crash_region = 0;
static void g_crash_handler(int sig) {
    if (g_in_crash_region) {
        siglongjmp(g_crash_jmp, sig);
    }
}

/* Noice is first constructed with tiny bootstrap graphics stubs. Once the real
 * Activity/View tree exists, bind only the HWUI registrars required to record
 * that tree and submit it through WestlakeUpscreen. Running the full 54-entry
 * AndroidRuntime registrar before app startup can block in unrelated codecs and
 * system-service probes; this late, narrow set keeps the foreground path bounded. */

/* [5583] selective per-entry hwui binding. The libhwui registrars call
 * jniRegisterNativeMethods and ASSERT (SIGTRAP, uncatchable) when it returns <0,
 * killing the process before we learn WHICH class/entry failed (measured:
 * register_android_graphics_Canvas on framework.jar c3a06db5, 2026-07-17).
 * The JNINativeMethod tables themselves sit in libhwui's RELRO and are
 * RELR-relocated at load, so we read them at runtime and register entry by
 * entry, logging and skipping failures. Table vaddrs are harvested from the
 * registrar prologues of the PINNED libhwui (sha256 c9ed61d0…); a different
 * libhwui needs a re-harvest. Gated on WESTLAKE_HWUI_SELECTIVE=1. */
typedef struct { const void *dli_fname; void *dli_fbase; const void *dli_sname; void *dli_saddr; } WlDlInfo;
extern int dladdr(const void *addr, WlDlInfo *info);
/* hilog sink for the selective binder: resolved LAZILY (the probe is -nostdlib;
 * a hard OH_LOG_Print import fails RTLD_NOW relocation because hilog_ndk.z.so is
 * not in the app process' global symbol scope). First call tries to grab it from
 * the already-loaded hilog_ndk; unavailable => file-log only. */
static void hlog_sel(const char *s) {
    static int resolved = 0;
    static void (*fn)(int, int, unsigned int, const char *, const char *, ...) = 0;
    if (!resolved) {
        resolved = 1;
        void *h = dlopen("libhilog_ndk.z.so", RTLD_NOW | 4 /*RTLD_NOLOAD*/);
        if (h == 0) h = dlopen("libhilog.z.so", RTLD_NOW | 4);
        if (h == 0) h = dlopen("libhilog.so", RTLD_NOW | 4);
        if (h != 0) fn = (void (*)(int, int, unsigned int, const char *, const char *, ...))
            dlsym(h, "OH_LOG_Print");
    }
    if (fn != 0) fn(0, 6, 0xA100, "WLSEL", "%{public}s", s);
}

struct wl_hwui_table { const char *cls; unsigned long vaddr; int count; };
static const struct wl_hwui_table WL_HWUI_TABLES[] = {
    /* minimal record set first (2026-07-18): record dies silently ~1s after the
     * full 12-class registration — bisect whether re-binding the bootstrap-stubbed
     * classes (Paint bootstrap / RenderNode minimal / Trace) destabilizes the VM.
     * The other classes are re-enabled by editing this table back. */
    /* Harvested 2026-07-19 from register_android_view_ThreadedRenderer: the
       RegisterMethodsOrDie call site loads x2 = 0x479000+312 and w3 = 72.
       Needed once resources came alive -- initForSystemProcess() reaches
       HardwareRenderer.nSetIsSystemOrPersistent, and calling the registrar
       wholesale SIGTRAPs on the first bad entry. */
    {"android/graphics/HardwareRenderer",    0x479138, 72},
    {"android/graphics/RenderNode",          0x47a210, 90},
    {"android/graphics/RecordingCanvas",     0x48a9e0, 12},
    {"android/graphics/Canvas",              0x478838, 33},
    {"android/graphics/BaseCanvas",          0x478b50, 32},
    {"android/graphics/BaseRecordingCanvas", 0x478b50, 32},
    /* Re-enabled 2026-07-19: with MainActivity.onCreate through, TextView/Drawable
       construction reaches Paint's natives. Unbound they warn ("unhandled
       @CriticalNative shorty 'FJ' ... Paint.nGetTextSize") and return typed zeros, so
       the Paint carries a null native pointer that a genuinely-bound Canvas native then
       dereferences -> SIGSEGV. The binder skips absent classes/entries one by one, so
       the two inner classes below cost nothing when framework.jar lacks them. */
    {"android/graphics/Paint",               0x477220, 85},
    {"android/graphics/Path",                0x477bf8, 43},
    {"android/graphics/Region",              0x478028, 23},
    {"android/graphics/Shader",              0x478370, 1},
    /* Enabled 2026-07-19: Bitmap.createBitmap() goes through ColorSpace.get(SRGB), which
       returns null with these unbound -> "can't create bitmap without a color space", and
       that blocks the software-render path. The binder skips a class it cannot FindClass,
       so leaving them listed costs nothing if framework.jar lacks them. */
    /* Harvested 2026-07-20 from register_android_graphics_Bitmap (0x28adc4):
         28ae10  adrp x2, 0x475000
         28ae14  add  x2, x2, #3288      -> table 0x475cd8
         28ae18  mov  w3, #46            -> 46 entries
       Needed for the software-render path: Bitmap.nativeCreate is otherwise unregistered
       and createBitmap dies with UnsatisfiedLinkError. */
    {"android/graphics/Bitmap",              0x475cd8, 46},
    {"android/graphics/Matrix$ExtraNatives", 0x479c68, 2},
    {"android/graphics/ColorSpace$Rgb$Native", 0x478e50, 2},
    /* Harvested 2026-07-20 from the four font registrars in libhwui. The older
       "Typeface EXCLUDED: clinit SIGSEGVs (Minikin)" note referred to *calling*
       register_android_graphics_Typeface, which drags in init_FontUtils and its
       side effects. Per-entry binding off the harvested table does none of that,
       and Typeface's Java clinit is already observed to complete cleanly on this
       substrate (sDynamicTypefaceCache is non-null, sSystemFontMap is an empty map).
       Needed because TextView inflation calls Typeface.create(null, style) and dies
       on a null sDefaultTypeface -- this lane has no AOSP font assets and no system
       server to push a font map, so we build the default from a board TTF instead.
         register_android_graphics_Typeface           0x4784c0 x17
         register_android_graphics_FontFamily         0x4768a8 x7   (legacy)
         register_android_graphics_fonts_Font$Builder 0x47b6f0 x4
         register_android_graphics_fonts_Font         0x47b750 x15
         ..._fonts_FontFamily$Builder                 0x47b630 x4
         ..._fonts_FontFamily                         0x47b690 x4  (count reuses w3=4) */
    {"android/graphics/Typeface",                 0x4784c0, 17},
    {"android/graphics/FontFamily",               0x4768a8, 7},
    {"android/graphics/fonts/Font$Builder",       0x47b6f0, 4},
    {"android/graphics/fonts/Font",               0x47b750, 15},
    {"android/graphics/fonts/FontFamily$Builder", 0x47b630, 4},
    {"android/graphics/fonts/FontFamily",         0x47b690, 4},
};

/* Call an AArch64 function that returns a non-trivially-destructible class by value
 * (sk_sp<T>): AAPCS64 passes the return slot in x8, which C cannot express. The operands
 * land in callee-saved registers because every caller-saved one is clobbered, so they
 * survive the call. */
/* Force the harness surface above the system UI.
 *
 * On this board nothing the lane draws reaches the screen -- not noice, and not the
 * triangle reference that historically produced full-screen evidence -- even though the
 * render service accepts the node (CreateNodeAndSurface + "attach to display, screen id: 0")
 * and the blit flushes 2.3M pixels with rc=0. The occlusion list puts our node next to
 * SCBWallpaper/SCBDesktop, so the likely difference is z-order, not compositing.
 *
 * The renderer that creates the node is prebuilt, but it reaches RSNode::SetPositionZ
 * through the dynamic symbol table, and this probe is LD_PRELOADed -- so interpose it and
 * hand the real implementation a much larger Z. Off unless WL_FORCE_Z is set, and the value
 * is taken from the variable so it can be swept without a rebuild.
 *
 * The mangled name is a valid C identifier, so it can be defined directly. */
/* The node pointer the prebuilt renderer never exposes, captured from AttachToDisplay so
 * the blit can mark it dirty once the frame is actually in the buffer. */
static void *g_wl_surface_node;
/* Snapshot of the last frame, so repeat submissions do not need the Java pixel array. */
static int *g_wl_last_frame;

/* Ask the compositor to redraw the harness surface.
 *
 * hilog shows RS drawing our SurfaceNodeDrawable twice, but both times immediately after
 * attach -- long before the pipeline produces a frame ~50s later -- and then screen 0 goes
 * to ClearFrameBuffers. So the node is composited, just never again after our content
 * lands. Touch a node property to dirty it and flush the transaction, which is what a
 * normal producer's buffer-available notification would have triggered. */
static void wl_surface_mark_dirty(void)
{
    if (g_wl_surface_node == 0) { log_text("dirty: no node captured"); return; }
    static void (*set_alpha)(void *, float);
    static void (*flush_tx)(void);
    static int resolved;
    if (!resolved) {
        resolved = 1;
        set_alpha = (void (*)(void *, float))dlsym(RTLD_DEFAULT,
                "_ZN4OHOS5Rosen6RSNode8SetAlphaEf");
        flush_tx = (void (*)(void))dlsym(RTLD_DEFAULT,
                "_ZN4OHOS5Rosen13RSTransaction24FlushImplicitTransactionEv");
    }
    /* Alternate the alpha so the value genuinely changes -- an identical write may be
     * dropped as a no-op before it ever reaches the server. */
    static int flip;
    if (set_alpha != 0) {
        set_alpha(g_wl_surface_node, (flip++ & 1) ? 0.99f : 1.0f);
        log_text("dirty: SetAlpha toggled");
    } else log_text("dirty: SetAlpha symbol missing");
    if (flush_tx != 0) { flush_tx(); log_text("dirty: transaction flushed"); }
    else log_text("dirty: FlushImplicitTransaction symbol missing");
}

/* Give the harness surface a size before it is attached.
 *
 * The prebuilt renderer creates the node, sets Z and attaches it, but its dynamic symbol
 * table shows no SetBounds/SetFrame call -- so the node reaches the compositor with no
 * geometry, which matches the symptom exactly: the render service accepts the node and
 * lists it in the occlusion set, the blit flushes a full buffer with rc=0, and nothing
 * appears (not for noice, and not for the triangle reference either).
 *
 * AttachToDisplay is a member function, so interposing it hands us the node pointer that
 * the renderer never exposes. Set bounds and frame from the real buffer size, then chain to
 * the real implementation so the whole thing rides the same implicit transaction. */
__attribute__((visibility("default")))
void _ZN4OHOS5Rosen13RSSurfaceNode15AttachToDisplayEm(void *self, unsigned long screen)
{
    static void (*real)(void *, unsigned long);
    static void (*set_bounds)(void *, float, float, float, float);
    static void (*set_frame)(void *, float, float, float, float);
    if (real == 0) {
        real = (void (*)(void *, unsigned long))dlsym((void *)-1L,
                "_ZN4OHOS5Rosen13RSSurfaceNode15AttachToDisplayEm");
        set_bounds = (void (*)(void *, float, float, float, float))dlsym(RTLD_DEFAULT,
                "_ZN4OHOS5Rosen6RSNode9SetBoundsEffff");
        set_frame = (void (*)(void *, float, float, float, float))dlsym(RTLD_DEFAULT,
                "_ZN4OHOS5Rosen6RSNode8SetFrameEffff");
    }
    g_wl_surface_node = self;
    float bw = 1200.0f, bh = 1920.0f;
    const char *ws = getenv("WL_SURFACE_W");
    const char *hs = getenv("WL_SURFACE_H");
    if (ws != 0 && ws[0] != 0) { float t = 0; for (const char *p = ws; *p >= '0' && *p <= '9'; p++) t = t * 10 + (*p - '0'); if (t > 0) bw = t; }
    if (hs != 0 && hs[0] != 0) { float t = 0; for (const char *p = hs; *p >= '0' && *p <= '9'; p++) t = t * 10 + (*p - '0'); if (t > 0) bh = t; }
    if (set_bounds != 0) { set_bounds(self, 0.0f, 0.0f, bw, bh); log_text("attach: SetBounds applied"); }
    else log_text("attach: SetBounds symbol missing");
    if (set_frame != 0) set_frame(self, 0.0f, 0.0f, bw, bh);
    /* Two more properties the prebuilt renderer never sets, either of which makes a node
     * that is present in the scene graph draw nothing: visibility and alpha. Both are
     * cheap to assert, so do not leave them to whatever the default happens to be. */
    {
        static void (*set_visible)(void *, unsigned char);
        static void (*set_alpha)(void *, float);
        if (set_visible == 0) {
            set_visible = (void (*)(void *, unsigned char))dlsym(RTLD_DEFAULT,
                    "_ZN4OHOS5Rosen6RSNode10SetVisibleEb");
            set_alpha = (void (*)(void *, float))dlsym(RTLD_DEFAULT,
                    "_ZN4OHOS5Rosen6RSNode8SetAlphaEf");
        }
        if (set_visible != 0) { set_visible(self, 1); log_text("attach: SetVisible(true)"); }
        else log_text("attach: SetVisible symbol missing");
        if (set_alpha != 0) { set_alpha(self, 1.0f); log_text("attach: SetAlpha(1.0)"); }

        /* RSSurfaceNode carries two independent "present but do not draw" switches. Neither
         * is set by the prebuilt renderer, so both are left at whatever the node was
         * constructed with -- and either one alone reproduces exactly what we see: the node
         * is created, attached and listed in the occlusion set, yet nothing is composited. */
        static void (*mark_ui_hidden)(void *, unsigned char);
        static void (*set_skip_draw)(void *, unsigned char);
        static int resolved;
        if (!resolved) {
            resolved = 1;
            mark_ui_hidden = (void (*)(void *, unsigned char))dlsym(RTLD_DEFAULT,
                    "_ZN4OHOS5Rosen13RSSurfaceNode12MarkUIHiddenEb");
            set_skip_draw = (void (*)(void *, unsigned char))dlsym(RTLD_DEFAULT,
                    "_ZN4OHOS5Rosen13RSSurfaceNode11SetSkipDrawEb");
        }
        if (mark_ui_hidden != 0) { mark_ui_hidden(self, 0); log_text("attach: MarkUIHidden(false)"); }
        else log_text("attach: MarkUIHidden symbol missing");
        if (set_skip_draw != 0) { set_skip_draw(self, 0); log_text("attach: SetSkipDraw(false)"); }
        else log_text("attach: SetSkipDraw symbol missing");

        /* RS also has an explicit "composite as a top layer" path (the mechanism behind
         * always-on-top overlays). Our node attaches to displayRenderNodeTop but is never
         * composited, so ask for that path directly. The enum value is not documented here,
         * so it is swept from the environment rather than guessed once. */
        const char *cl = getenv("WL_COMPOSITE_LAYER");
        if (cl != 0 && cl[0] != 0) {
            static void (*set_composite)(void *, int);
            if (set_composite == 0) set_composite = (void (*)(void *, int))dlsym(RTLD_DEFAULT,
                    "_ZN4OHOS5Rosen13RSSurfaceNode17SetCompositeLayerENS0_14TopLayerZOrderE");
            if (set_composite != 0) {
                int cv = 0;
                for (const char *p = cl; *p >= '0' && *p <= '9'; p++) cv = cv * 10 + (*p - '0');
                set_composite(self, cv);
                log_int("attach: SetCompositeLayer=", cv);
            } else {
                log_text("attach: SetCompositeLayer symbol missing");
            }
        }
    }
    log_int("attach: screen=", (int)screen);
    if (real != 0) real(self, screen);
}

__attribute__((visibility("default")))
void _ZN4OHOS5Rosen6RSNode12SetPositionZEf(void *self, float z)
{
    static void (*real)(void *, float);
    /* RTLD_NEXT needs _GNU_SOURCE, which this sysroot's headers do not tolerate here; the
     * value is stable on aarch64 musl/bionic, so use it directly. */
    if (real == 0) real = (void (*)(void *, float))dlsym((void *)-1L,
            "_ZN4OHOS5Rosen6RSNode12SetPositionZEf");
    const char *forced = getenv("WL_FORCE_Z");
    if (forced != 0 && forced[0] != 0) {
        float nz = 0.0f;
        for (const char *p = forced; *p >= '0' && *p <= '9'; p++) nz = nz * 10.0f + (*p - '0');
        log_int("setPositionZ: forced from/to(int)=", (int)z);
        log_int("  ->", (int)nz);
        z = nz;
    }
    if (real != 0) real(self, z);
}

static void *wl_call_sret_nullary(void *fn)
{
    void *out = 0;
    void *outp = &out;
    __asm__ volatile(
        "mov x8, %[o]\n\t"
        "blr %[f]\n\t"
        :
        : [f] "r"(fn), [o] "r"(outp)
        : "x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11",
          "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x30", "memory", "cc");
    return out;
}

/* VMRuntime.notifyNativeAllocationsInternal() resolves to a NULL entry point on this
 * substrate, and the interpreter calls it anyway -- the jump to 0 shows up as
 * "SIGBUS fault_addr=0, pc=0". Paint.<init> reaches it on every construction via
 * NativeAllocationRegistry.registerNativeAllocation -> VMRuntime.notifyNativeAllocation,
 * so the first TextView inflated kills the process. The method only hints to the GC that
 * native memory was allocated; dropping the hint costs nothing but GC timing accuracy. */
static void westlake_stub_notify_native_alloc(JNIEnv *env, jobject self)
{
    (void)env; (void)self;
}

static void westlake_neutralise_notify_native_allocations(JNIEnv *env)
{
    jclass vmr = (*env)->FindClass(env, "dalvik/system/VMRuntime");
    if (vmr == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("vmrt: FindClass VMRuntime failed");
        return;
    }
    JNINativeMethod m = {"notifyNativeAllocationsInternal", "()V",
                         (void *)westlake_stub_notify_native_alloc};
    jint rc = (*env)->RegisterNatives(env, vmr, &m, 1);
    if (rc != 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("vmrt: notifyNativeAllocationsInternal stub FAILED");
        hlog_sel("vmrt: notifyNativeAllocationsInternal stub FAILED");
    } else {
        log_text("vmrt: notifyNativeAllocationsInternal stubbed");
        hlog_sel("vmrt: notifyNativeAllocationsInternal stubbed");
    }
}

/* Instruction-cache maintenance after writing code. __builtin___clear_cache emits a call to
 * __clear_cache, which this sysroot's libc does not provide (the .so then fails to relocate
 * at load time), so issue the architectural sequence directly. Line sizes come from CTR_EL0,
 * which is readable at EL0. */
static void wl_clear_icache(unsigned char *start, unsigned char *end)
{
    unsigned long ctr;
    __asm__ volatile("mrs %0, ctr_el0" : "=r"(ctr));
    unsigned long dline = 4UL << ((ctr >> 16) & 0xf);
    unsigned long iline = 4UL << (ctr & 0xf);
    unsigned long p;
    for (p = (unsigned long)start & ~(dline - 1); p < (unsigned long)end; p += dline)
        __asm__ volatile("dc cvau, %0" :: "r"(p) : "memory");
    __asm__ volatile("dsb ish" ::: "memory");
    for (p = (unsigned long)start & ~(iline - 1); p < (unsigned long)end; p += iline)
        __asm__ volatile("ic ivau, %0" :: "r"(p) : "memory");
    __asm__ volatile("dsb ish\n\tisb" ::: "memory");
}

/* Materialise a 64-bit constant into Xd as movz + 3x movk. */
static void wl_emit_mov64(unsigned int *p, int rd, unsigned long long v)
{
    p[0] = 0xD2800000u | (0u << 21) | ((unsigned int)((v >>  0) & 0xffff) << 5) | (unsigned int)rd;
    p[1] = 0xF2800000u | (1u << 21) | ((unsigned int)((v >> 16) & 0xffff) << 5) | (unsigned int)rd;
    p[2] = 0xF2800000u | (2u << 21) | ((unsigned int)((v >> 32) & 0xffff) << 5) | (unsigned int)rd;
    p[3] = 0xF2800000u | (3u << 21) | ((unsigned int)((v >> 48) & 0xffff) << 5) | (unsigned int)rd;
}

/* Reroute libhwui's SkFontMgr::makeFromStream to OHOS Skia's makeFromFile.
 *
 * The two libraries were built against different libc++ ABI namespaces (__n1 vs __h), so
 * makeFromStream -- which takes std::unique_ptr<SkStreamAsset> and virtual-dispatches into
 * the OHOS vtable -- cannot be called across the boundary; it is why every font comes back
 * null even with a real font manager installed. makeFromFile takes only (const char*, int),
 * so it crosses cleanly, and it is verified working on this board.
 *
 * The cost is that the stream argument is discarded: every font request resolves to the one
 * file bound at /system/fonts/Roboto-Regular.ttf. That is enough for a default typeface --
 * text renders in that face regardless of which family was asked for.
 *
 * this (x0) and the x8 return slot pass through untouched; only x1/x2 are rewritten. */
static int wl_patch_make_from_stream(unsigned char *hbase, void *skia, const char *path,
                                     unsigned long off)
{
    void *mff = dlsym(skia, "_ZNK9SkFontMgr12makeFromFileEPKci");
    if (mff == 0) { log_text("fontpatch: makeFromFile missing"); return 0; }

    unsigned char *target = hbase + off;
    unsigned long pagesz = 4096;
    unsigned char *page = (unsigned char *)((unsigned long)target & ~(pagesz - 1));
    /* Two pages: the patch can straddle a boundary. */
    if (mprotect(page, pagesz * 2, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        log_text("fontpatch: mprotect failed");
        return 0;
    }
    unsigned int code[10];
    wl_emit_mov64(&code[0], 1, (unsigned long long)(unsigned long)path);  /* x1 = path   */
    code[4] = 0xD2800002u;                                               /* movz x2, #0 */
    wl_emit_mov64(&code[5], 16, (unsigned long long)(unsigned long)mff);  /* x16 = fn    */
    code[9] = 0xD61F0200u;                                               /* br x16      */
    for (int i = 0; i < 10; i++) ((unsigned int *)target)[i] = code[i];
    wl_clear_icache(target, target + sizeof(code));
    log_text("fontpatch: makeFromStream rerouted to makeFromFile");
    hlog_sel("fontpatch: makeFromStream rerouted to makeFromFile");
    return 1;
}

/* Same x8 return-slot convention, for a const member call with two arguments:
 * this -> x0, args -> x1/x2. */
static void *wl_call_sret_this2(void *fn, void *self, const void *a1, long a2)
{
    void *out = 0;
    void *outp = &out;
    __asm__ volatile(
        "mov x8, %[o]\n\t"
        "mov x0, %[s]\n\t"
        "mov x1, %[p]\n\t"
        "mov x2, %[i]\n\t"
        "blr %[f]\n\t"
        :
        : [f] "r"(fn), [o] "r"(outp), [s] "r"(self), [p] "r"(a1), [i] "r"(a2)
        : "x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11",
          "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x30", "memory", "cc");
    return out;
}

static jint westlake_hwui_register_selective(JNIEnv *env)
{
    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) {
        log_text("selective hwui: dlopen libhwui.so failed"); hlog_sel("selective hwui: dlopen libhwui.so failed");
        char *e = dlerror(); if (e != 0) log_text(e); hlog_sel(e);
        return -1;
    }
    /* libhwui's JNI helpers reach back into the VM through GraphicsJNI::getJNIEnv(), which
     * asserts on mJavaVM. Normally AndroidRuntime::startReg sets it while running the
     * per-class registrars; we bind entries straight off the harvested tables and never
     * call those, so it stays null and the first callback aborts the process:
     *   Assertion failed: mJavaVM != nullptr (libs/hwui/jni/Graphics.cpp: getJNIEnv: 33)
     * Hit first via the font path (minikin calls back into JNI), but it is a general
     * precondition for any hwui native that touches the VM, so set it before binding. */
    {
        void (*set_java_vm)(JavaVM *) =
            (void (*)(JavaVM *))dlsym(hwui, "_ZN11GraphicsJNI9setJavaVMEP7_JavaVM");
        if (set_java_vm != 0 && g_probe_vm != 0) {
            set_java_vm(g_probe_vm);
            log_text("selective hwui: GraphicsJNI::setJavaVM done");
            hlog_sel("selective hwui: GraphicsJNI::setJavaVM done");
        } else {
            log_text("selective hwui: setJavaVM unavailable");
            hlog_sel("selective hwui: setJavaVM unavailable");
        }
    }

    /* Give libhwui a font manager that can actually parse fonts.
     * This libhwui was ported against OHOS's Skia, and its SkFontMgr_New_Custom_Empty()
     * is a stub that forwards to SkFontMgr::RefEmpty() -- an *empty* manager whose
     * makeFromStream() always returns null. That is why every font is rejected: minikin
     * never gets a typeface, so FontFamily.nAddFontWeightStyle returns false and
     * setRobotoTypefaceForTest asserts. OHOS's own Skia exports the real
     * SkFontMgr::RefDefault(), so swap that into the function-local static that
     * android::FreeTypeFontMgr() caches:
     *   0x48d968  cached sk_sp<SkFontMgr>     0x48d970  its __cxa_guard byte
     * Call FreeTypeFontMgr() first so the guard is set the normal way, then overwrite the
     * pointer -- cheaper and less fragile than forging the guard ourselves. The ref we
     * take is deliberately never released; the manager lives as long as the process. */
    {
        unsigned char *hbase = 0;
        void *iso = dlsym(hwui, "_ZN7android10uirenderer10Properties15isolatedProcessE");
        if (iso != 0) hbase = (unsigned char *)iso - 0x48b1e0UL;
        void *ftm = dlsym(hwui, "_ZN7android15FreeTypeFontMgrEv");
        void *skia = dlopen("libskia_canvaskit.z.so", RTLD_NOW | RTLD_GLOBAL);
        void *refdef = skia != 0 ? dlsym(skia, "_ZN9SkFontMgr10RefDefaultEv") : 0;
        if (hbase != 0 && ftm != 0 && refdef != 0) {
            (void)wl_call_sret_nullary(ftm);          /* run the normal init path */
            void *real = wl_call_sret_nullary(refdef);
            void **slot = (void **)(hbase + 0x48d968UL);
            log_int("selective hwui: fontmgr empty=", *slot != 0);
            if (real != 0) {
                /* Does an OHOS Skia object work at all when driven from libhwui? The two
                 * were built against different libc++ ABI namespaces (__n1 vs __h), so any
                 * call crossing a std type is undefined. makeFromFile takes a plain char*,
                 * so it isolates the question "is this manager usable" from "does the std
                 * ABI line up". If this returns null the Skia boundary is not viable. */
                void *mff = dlsym(skia, "_ZNK9SkFontMgr12makeFromFileEPKci");
                if (mff != 0) {
                    void *tf = wl_call_sret_this2(mff, real,
                            "/system/fonts/Roboto-Regular.ttf", 0);
                    log_int("selective hwui: skia makeFromFile nonnull=", tf != 0);
                    hlog_sel(tf != 0 ? "skia makeFromFile OK" : "skia makeFromFile NULL");
                } else {
                    log_text("selective hwui: makeFromFile symbol missing");
                }
                *slot = real;
                /* Both overloads matter and they have different callers:
                 *   0x3e9848  (..., const SkFontArguments&)  <- FontFamily.nAddFontWeightStyle
                 *   0x3e97a8  (..., int ttcIndex)            <- Typeface::setRobotoTypefaceForTest
                 * Argument shapes agree for our purposes: x1 and x2 are both overwritten. */
                wl_patch_make_from_stream(hbase, skia,
                        "/system/fonts/Roboto-Regular.ttf", 0x3e9848UL);
                wl_patch_make_from_stream(hbase, skia,
                        "/system/fonts/Roboto-Regular.ttf", 0x3e97a8UL);
                log_text("selective hwui: fontmgr swapped to OHOS RefDefault");
                hlog_sel("selective hwui: fontmgr swapped to OHOS RefDefault");
            } else {
                log_text("selective hwui: RefDefault returned null");
                hlog_sel("selective hwui: RefDefault returned null");
            }
        } else {
            log_int("selective hwui: fontmgr swap unavailable hbase=", hbase != 0);
            log_int("  ftm=", ftm != 0); log_int("  refdef=", refdef != 0);
        }
    }

    /* Install a native default typeface. Everything that rasterises or measures text calls
     * Typeface::resolveDefault(), which is LOG_ALWAYS_FATAL when both the Paint's typeface
     * and gDefaultTypeface are null -- that is the SIGTRAP that kills the run during
     * TextView measurement. setRobotoTypefaceForTest() is the only exported entry that sets
     * gDefaultTypeface; it opens a hardcoded /system/fonts/Roboto-Regular.ttf, which the
     * runner bind-mounts into place. With this set, a Java-side Typeface carrying no native
     * peer becomes harmless: every native call resolves to this default instead. */
    if (getenv("WL_FONT_DEFAULT") != 0) {
        void (*set_roboto)(void) =
            (void (*)(void))dlsym(hwui, "_ZN7android8Typeface24setRobotoTypefaceForTestEv");
        if (set_roboto != 0) {
            log_text("selective hwui: setRobotoTypefaceForTest enter");
            hlog_sel("selective hwui: setRobotoTypefaceForTest enter");
            set_roboto();
            log_text("selective hwui: setRobotoTypefaceForTest done");
            hlog_sel("selective hwui: setRobotoTypefaceForTest done");
        } else {
            log_text("selective hwui: setRobotoTypefaceForTest missing");
            hlog_sel("selective hwui: setRobotoTypefaceForTest missing");
        }
    }

    westlake_neutralise_notify_native_allocations(env);

    void *sym = dlsym(hwui, "_ZN7android32register_android_graphics_CanvasEP7_JNIEnv");
    WlDlInfo di; di.dli_fname = 0; di.dli_fbase = 0; di.dli_sname = 0; di.dli_saddr = 0;
    if (sym == 0 || dladdr(sym, &di) == 0 || di.dli_fbase == 0) {
        log_text("selective hwui: cannot locate libhwui base"); hlog_sel("selective hwui: cannot locate libhwui base");
        return -1;
    }
    char *base = (char *)di.dli_fbase;
    int total_bound = 0, total_skip = 0;
    int ntab = (int)(sizeof(WL_HWUI_TABLES) / sizeof(WL_HWUI_TABLES[0]));
    for (int t = 0; t < ntab; t++) {
        const struct wl_hwui_table *T = &WL_HWUI_TABLES[t];
        /* in-vivo harvest check: dump entry[0] of each table BEFORE using it, so
         * a wrong vaddr shows up as garbage strings in the log instead of
         * corrupting the VM with bogus RegisterNatives. */
        {
            const JNINativeMethod *tab0 = (const JNINativeMethod *)(base + T->vaddr);
            char msg[320]; unsigned long mp = 0;
            append_text(msg, sizeof(msg), &mp, "selective hwui: table ");
            append_text(msg, sizeof(msg), &mp, T->cls);
            append_text(msg, sizeof(msg), &mp, " entry0=");
            append_text(msg, sizeof(msg), &mp, tab0[0].name ? tab0[0].name : "(null)");
            append_text(msg, sizeof(msg), &mp, " ");
            append_text(msg, sizeof(msg), &mp, tab0[0].signature ? tab0[0].signature : "(null)");
            log_text(msg); hlog_sel(msg);
        }
        jclass c = (*env)->FindClass(env, T->cls);
        if (c == 0) {
            log_text("selective hwui: FindClass FAILED (class skipped):"); hlog_sel("selective hwui: FindClass FAILED (class skipped):");
            log_text(T->cls); hlog_sel(T->cls);
            if ((*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, T->cls);
                (*env)->ExceptionClear(env);
            }
            total_skip += T->count;
            continue;
        }
        const JNINativeMethod *tab = (const JNINativeMethod *)(base + T->vaddr);
        int bound = 0, skipped = 0;
        for (int i = 0; i < T->count; i++) {
            JNINativeMethod one = tab[i];
            if (one.name == 0 || one.signature == 0 || one.fnPtr == 0) {
                skipped++;
                log_text("selective hwui: NULL table slot (harvest off?) — class aborted"); hlog_sel("selective hwui: NULL table slot (harvest off?) — class aborted");
                log_text(T->cls); hlog_sel(T->cls);
                break;
            }
            /* 2026-07-18: nCreate/nGetNativeFinalizer back to REAL — the fake-handle
             * experiment showed record() dies at setPosition derefing the fake ptr.
             * (The bootstrap minimal set is fully superseded by this table now.) */
            jint rc = (*env)->RegisterNatives(env, c, &one, 1);
            if (rc != 0 || (*env)->ExceptionCheck(env)) {
                skipped++;
                char msg[320]; unsigned long mp = 0;
                append_text(msg, sizeof(msg), &mp, "selective hwui: skip entry ");
                append_text(msg, sizeof(msg), &mp, T->cls);
                append_text(msg, sizeof(msg), &mp, "#");
                append_text(msg, sizeof(msg), &mp, one.name);
                log_text(msg); hlog_sel(msg);
                if ((*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, msg);
                    (*env)->ExceptionClear(env);
                }
            } else {
                bound++;
            }
        }
        log_text(T->cls); hlog_sel(T->cls);
        log_int("  selective bound=", bound);
        log_int("  selective skipped=", skipped);
        total_bound += bound; total_skip += skipped;
        /* wl-obs: per-table DONE marker — a run dying mid-registration leaves its
         * last marker in embedded-art.log (survives process death, unlike hilog). */
        {
            char dmsg[320]; unsigned long dp = 0;
            append_text(dmsg, sizeof(dmsg), &dp, "sel done ");
            append_text(dmsg, sizeof(dmsg), &dp, T->cls);
            log_text(dmsg);
        }
    }
    log_int("selective hwui total bound=", total_bound);
    log_int("selective hwui total skipped=", total_skip);
    log_text("selective hwui RETURN");
    return total_skip;
}

/* [5583 2026-07-19] The frozen renderer sets android::uirenderer::Properties::isolatedProcess
 * = true at the top of nativeInit. In hwui that flag is the "no GPU in this process" switch,
 * and with it set the RenderThread never brings up a GL context, so syncAndDrawFrame produces
 * no swap (board evidence: nativeLastSwapArgb stays -1 and the composited layer is empty even
 * though the RSSurfaceNode is attached to display 0). The flag is an exported 1-byte global and
 * the GL context is created lazily on the first frame, so flipping it back between nativeInit
 * and nativeDrawFrame is enough. Returns 1 if it flipped, 0 if the symbol was not found. */
#ifndef RTLD_NEXT
/* musl only exposes RTLD_NEXT under _GNU_SOURCE; the value is fixed by the ABI. */
#define RTLD_NEXT ((void *)-1L)
#endif

/* [5583 2026-07-19] EGL call tracing. hwui's RenderThread SIGTRAPs immediately after
 * eglCreateContext and libhwui's own __android_log_assert writes the reason nowhere we can
 * read. We are LD_PRELOADed, so libhwui's PLT calls to these bind here first; forward to the
 * real implementation via RTLD_NEXT and log the outcome. Gated on WL_EGL_TRACE=1. */
static int wl_egl_trace(void) {
    static int t = -1;
    if (t < 0) t = streq(getenv("WL_EGL_TRACE"), "1") ? 1 : 0;
    return t;
}

/* [5583 2026-07-19] eglGetProcAddress with a dlsym fallback.
 * Between eglMakeCurrent and eglCreateWindowSurface hwui runs GrGLMakeNativeInterface(),
 * and RenderThread::requireGlContext asserts on it with LOG_ALWAYS_FATAL_IF(!glInterface)
 * -- a message-less assert, which is exactly why the SIGTRAP reason appears in no log.
 * Skia assembles that interface via eglGetProcAddress; OHOS's EGL wrapper is entitled to
 * return NULL for CORE (non-extension) entry points, which sinks the whole interface.
 * We are LD_PRELOADed, so libhwui's PLT call lands here: forward first, and on NULL fall
 * back to dlsym'ing the GLES/EGL front-ends directly. */
static void *wl_gl_handle(const char *soname)
{
    void *h = dlopen(soname, RTLD_NOW | RTLD_GLOBAL);
    return h;
}

/* libhwui links the GL entry points directly (its UND list has glGetString/glGetIntegerv
 * but no eglGetProcAddress), so Skia assembles its interface from these. A NULL from
 * glGetString sinks GrGLMakeNativeInterface() and trips the message-less
 * LOG_ALWAYS_FATAL_IF -- trace them to see whether GL is actually live on this thread. */
/* Sequence-numbered trace of the remaining GL/EGL queries Skia makes while assembling its
 * interface. The last one logged before the SIGTRAP is the frame we cannot otherwise see,
 * because the assert that kills us carries no message. */
static void wl_gl_seq(const char *what, unsigned int arg, long val)
{
    static int n;
    if (!wl_egl_trace() || n >= 40) return;
    n++;
    static const char hx[] = "0123456789abcdef";
    char m[160]; unsigned long p = 0;
    append_text(m, sizeof(m), &p, "WLGL# ");
    append_text(m, sizeof(m), &p, what);
    append_text(m, sizeof(m), &p, " arg=0x");
    for (int i = 7; i >= 0; i--) m[p++] = hx[(arg >> (i * 4)) & 0xf];
    append_text(m, sizeof(m), &p, " val=");
    if (val < 0) { m[p++] = '-'; val = -val; }
    char d[24]; int di = 0;
    do { d[di++] = (char)('0' + (val % 10)); val /= 10; } while (val > 0);
    while (di > 0) m[p++] = d[--di];
    m[p] = 0;
    log_text(m); hlog_sel(m);
}

void glGetIntegerv(unsigned int pname, int *params)
{
    static void (*real)(unsigned int, int *);
    if (real == 0) real = (void (*)(unsigned int, int *))dlsym(RTLD_NEXT, "glGetIntegerv");
    if (real == 0) { if (params) *params = 0; return; }
    real(pname, params);
    wl_gl_seq("glGetIntegerv", pname, params ? (long)*params : -1);
}

const char *eglQueryString(void *dpy, int name)
{
    static const char *(*real)(void *, int);
    if (real == 0) real = (const char *(*)(void *, int))dlsym(RTLD_NEXT, "eglQueryString");
    if (real == 0) return 0;
    const char *r = real(dpy, name);
    wl_gl_seq("eglQueryString", (unsigned int)name, r ? (long)1 : (long)0);
    return r;
}

const unsigned char *glGetString(unsigned int name)
{
    static const unsigned char *(*real)(unsigned int);
    static int n;
    if (real == 0) real = (const unsigned char *(*)(unsigned int))dlsym(RTLD_NEXT, "glGetString");
    if (real == 0) {
        if (wl_egl_trace()) { log_text("WLGL glGetString: no real impl"); hlog_sel("WLGL glGetString: no real impl"); }
        return 0;
    }
    const unsigned char *r = real(name);
    if (wl_egl_trace() && n < 8) {
        n++;
        char m[160]; unsigned long p = 0;
        append_text(m, sizeof(m), &p, "WLGL glGetString(0x");
        static const char hx[] = "0123456789abcdef";
        for (int i = 7; i >= 0; i--) m[p++] = hx[(name >> (i * 4)) & 0xf];
        append_text(m, sizeof(m), &p, ") = ");
        append_text(m, sizeof(m), &p, r ? (const char *)r : "(null)");
        m[p] = 0;
        log_text(m); hlog_sel(m);
    }
    return r;
}

void *eglGetProcAddress(const char *name)
{
    static void *(*real)(const char *);
    static void *g3, *g2, *eg;
    static int misses, recovered;
    if (real == 0) real = (void *(*)(const char *))dlsym(RTLD_NEXT, "eglGetProcAddress");
    void *r = real ? real(name) : 0;
    if (r != 0) return r;
    if (g3 == 0) g3 = wl_gl_handle("libGLESv3.so");
    if (g2 == 0) g2 = wl_gl_handle("libGLESv2.so");
    if (eg == 0) eg = wl_gl_handle("libEGL.so");
    if (g3) r = dlsym(g3, name);
    if (r == 0 && g2) r = dlsym(g2, name);
    if (r == 0 && eg) r = dlsym(eg, name);
    if (wl_egl_trace()) {
        if (r != 0) {
            if (recovered < 12) {
                recovered++;
                char m[128]; unsigned long p = 0;
                append_text(m, sizeof(m), &p, "WLEGL getProcAddress recovered via dlsym: ");
                append_text(m, sizeof(m), &p, name);
                log_text(m); hlog_sel(m);
            }
        } else if (misses < 12) {
            misses++;
            char m[128]; unsigned long p = 0;
            append_text(m, sizeof(m), &p, "WLEGL getProcAddress MISS: ");
            append_text(m, sizeof(m), &p, name);
            log_text(m); hlog_sel(m);
        }
    }
    return r;
}

void *eglCreatePbufferSurface(void *dpy, void *config, const int *attrib_list)
{
    static void *(*real)(void *, void *, const int *);
    if (real == 0) real = (void *(*)(void *, void *, const int *))
        dlsym(RTLD_NEXT, "eglCreatePbufferSurface");
    if (real == 0) { if (wl_egl_trace()) hlog_sel("WLEGL pbuffer: no real impl"); return 0; }
    void *r = real(dpy, config, attrib_list);
    if (wl_egl_trace()) {
        static int (*egl_err)(void);
        if (egl_err == 0) egl_err = (int (*)(void))dlsym(RTLD_NEXT, "eglGetError");
        log_int("WLEGL eglCreatePbufferSurface ok=", r != 0);
        if (r == 0 && egl_err) log_int("WLEGL   eglGetError=", egl_err());
        hlog_sel(r != 0 ? "WLEGL pbuffer OK" : "WLEGL pbuffer FAILED");
    }
    return r;
}

unsigned int eglMakeCurrent(void *dpy, void *draw, void *read, void *ctx)
{
    static unsigned int (*real)(void *, void *, void *, void *);
    if (real == 0) real = (unsigned int (*)(void *, void *, void *, void *))
        dlsym(RTLD_NEXT, "eglMakeCurrent");
    if (real == 0) return 0;
    unsigned int r = real(dpy, draw, read, ctx);
    if (wl_egl_trace()) {
        log_int("WLEGL eglMakeCurrent ok=", (int)r);
        hlog_sel(r ? "WLEGL makeCurrent OK" : "WLEGL makeCurrent FAILED");
    }
    return r;
}

void *eglCreateWindowSurface(void *dpy, void *config, void *win, const int *attrib_list)
{
    static void *(*real)(void *, void *, void *, const int *);
    if (real == 0) real = (void *(*)(void *, void *, void *, const int *))
        dlsym(RTLD_NEXT, "eglCreateWindowSurface");
    if (real == 0) return 0;
    void *r = real(dpy, config, win, attrib_list);
    if (wl_egl_trace()) {
        log_int("WLEGL eglCreateWindowSurface ok=", r != 0);
        hlog_sel(r != 0 ? "WLEGL windowSurface OK" : "WLEGL windowSurface FAILED");
    }
    return r;
}

/* [5583 2026-07-19] Own presentation path, bypassing hwui entirely.
 *
 * Both libhwui builds on this board are OFFSCREEN-ONLY: their UND tables have
 * eglCreatePbufferSurface but NO eglCreateWindowSurface / eglCreatePlatformWindowSurface /
 * eglSwapBuffers, and no OH_NativeWindow_* at all. RenderProxy::setSurface() therefore can
 * never put a frame on a window -- no configuration fixes a missing code path.
 *
 * The renderer does export westlake_ohos_make_display_window (GLOBAL FUNC), which builds an
 * RSSurfaceNode on display 0 and hands back an OHNativeWindow. From there the public OHOS NDK
 * (OH_NativeWindow_NativeWindowRequestBuffer / GetBufferHandleFromNative / FlushBuffer) is
 * enough to write pixels ourselves. This native takes an ARGB_8888 int[] -- the app's view
 * tree rendered by a software Canvas -- and blits it. Passing a null array paints a test
 * pattern instead, which proves the path without needing the Java side to work yet. */
/* Mirrors BufferHandle from <native_window/buffer_handle.h>: six int32 then a uint64 usage
 * (8-aligned, so it lands at 24) and virAddr at 32. Getting this wrong reads plausible-looking
 * garbage -- the first attempt used a made-up prefix and saw width=1920/stride=9216000, i.e.
 * the real height and size. */
typedef struct {
    int fd, width, stride, height, size, format;
    unsigned long long usage;
    void *virAddr;
} wl_bh_head;

static void *wl_display_window(int w, int h)
{
    static void *win;
    if (win != 0) return win;
    void *rend = dlopen("libwestlake_upscreen_renderer.so", RTLD_NOW | RTLD_GLOBAL);
    if (rend == 0) {
        rend = dlopen_exec("android/lib64/libwestlake_upscreen_renderer.so",
                           "libwestlake_upscreen_renderer.so", RTLD_NOW | RTLD_GLOBAL);
    }
    if (rend == 0) { log_text("blit: renderer dlopen failed"); return 0; }
    void *(*mk)(int, int, int *, int *) = (void *(*)(int, int, int *, int *))
        dlsym(rend, "westlake_ohos_make_display_window");
    if (mk == 0) { log_text("blit: make_display_window not exported"); return 0; }
    int ow = 0, oh = 0;
    win = mk(w, h, &ow, &oh);
    log_int("blit: make_display_window ow=", ow);
    log_int("blit: make_display_window oh=", oh);
    log_int("blit: window ptr nonnull=", win != 0);
    return win;
}

/* Signature is ()I on purpose. The interpreter's static-JNI chain has no 'ILII' branch, so
 * an (int[],int,int)I native is silently dropped and returns 0 -- indistinguishable from
 * success. Inputs therefore travel through static fields on the probe class instead. */
static jint westlake_native_blit_argb(JNIEnv *env, jclass clazz)
{
    jintArray pixels = 0;
    jint w = 0, h = 0;
    {
        jfieldID fw = (*env)->GetStaticFieldID(env, clazz, "sBlitW", "I");
        jfieldID fh = (*env)->GetStaticFieldID(env, clazz, "sBlitH", "I");
        jfieldID fp = (*env)->GetStaticFieldID(env, clazz, "sBlitPixels", "[I");
        if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
        if (fw) w = (*env)->GetStaticIntField(env, clazz, fw);
        if (fh) h = (*env)->GetStaticIntField(env, clazz, fh);
        if (fp) pixels = (jintArray)(*env)->GetStaticObjectField(env, clazz, fp);
        if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
    }
    log_int("blit: w=", (int)w);
    log_int("blit: h=", (int)h);
    log_int("blit: pixels nonnull=", pixels != 0);
    if (w <= 0 || h <= 0) { w = 1200; h = 1920; }
    void *win = wl_display_window(w, h);
    if (win == 0) return 1;

    int32_t (*req)(void *, void **, int *) = (int32_t (*)(void *, void **, int *))
        dlsym(RTLD_DEFAULT, "OH_NativeWindow_NativeWindowRequestBuffer");
    void *(*gethandle)(void *) = (void *(*)(void *))
        dlsym(RTLD_DEFAULT, "OH_NativeWindow_GetBufferHandleFromNative");
    /* Region is passed by value; it is two ints plus a pointer, and every field zero means
     * "whole surface", so a zeroed 32-byte blob is a safe stand-in for the struct. */
    int32_t (*flush)(void *, void *, int, void *, void *, void *, void *) =
        (int32_t (*)(void *, void *, int, void *, void *, void *, void *))
        dlsym(RTLD_DEFAULT, "OH_NativeWindow_NativeWindowFlushBuffer");
    if (req == 0 || gethandle == 0 || flush == 0) { log_text("blit: NDK window symbols missing"); return 2; }

    void *buf = 0;
    int fence = -1;
    int32_t rc = req(win, &buf, &fence);
    log_int("blit: RequestBuffer rc=", (int)rc);
    if (rc != 0 || buf == 0) return 3;

    wl_bh_head *bh = (wl_bh_head *)gethandle(buf);
    if (bh == 0) { log_text("blit: null buffer handle"); return 4; }
    /* virAddr is only populated when the producer already mapped the buffer; for a freshly
     * requested GPU buffer it is null and the CPU mapping has to be made from handle->fd. */
    unsigned char *dst = (unsigned char *)bh->virAddr;
    void *mapped = 0;
    long map_len = 0;
    if (dst == 0 && bh->fd >= 0 && bh->size > 0) {
        map_len = bh->size;
        mapped = mmap(0, (size_t)map_len, PROT_READ | PROT_WRITE, MAP_SHARED, bh->fd, 0);
        if (mapped == MAP_FAILED) { mapped = 0; log_text("blit: mmap failed"); }
        dst = (unsigned char *)mapped;
        log_int("blit: mmap fd=", bh->fd);
        log_int("blit: mmap ok=", dst != 0);
    }
    log_int("blit: bh.width=", bh->width);
    log_int("blit: bh.height=", bh->height);
    log_int("blit: bh.stride=", bh->stride);
    log_int("blit: virAddr nonnull=", dst != 0);
    if (dst == 0) return 5;

    int bw = bh->width  > 0 ? bh->width  : w;
    int bhh = bh->height > 0 ? bh->height : h;
    int stride = bh->stride > 0 ? bh->stride : bw * 4;

    if (pixels == 0) {
        /* Test pattern: opaque vertical colour bands, so a screenshot shows unmistakably
         * that WE wrote this buffer and it reached the panel. */
        for (int y = 0; y < bhh; y++) {
            unsigned char *row = dst + (long)y * stride;
            for (int x = 0; x < bw; x++) {
                unsigned char *px = row + (long)x * 4;
                int band = (x * 6) / (bw > 0 ? bw : 1);
                px[0] = (band & 1) ? 0xFF : 0x20;        /* B */
                px[1] = (band & 2) ? 0xFF : 0x20;        /* G */
                px[2] = (band & 4) ? 0xFF : 0x20;        /* R */
                px[3] = 0xFF;                            /* A */
            }
        }
    } else {
        jint *src = (*env)->GetIntArrayElements(env, pixels, 0);
        if (src == 0) { log_text("blit: GetIntArrayElements failed"); return 6; }
        int rows = h < bhh ? h : bhh;
        int cols = w < bw ? w : bw;
        for (int y = 0; y < rows; y++) {
            unsigned char *row = dst + (long)y * stride;
            const jint *srow = src + (long)y * w;
            for (int x = 0; x < cols; x++) {
                unsigned int argb = (unsigned int)srow[x];
                unsigned char *px = row + (long)x * 4;
                px[0] = (unsigned char)(argb & 0xFF);          /* B */
                px[1] = (unsigned char)((argb >> 8) & 0xFF);   /* G */
                px[2] = (unsigned char)((argb >> 16) & 0xFF);  /* R */
                px[3] = (unsigned char)((argb >> 24) & 0xFF);  /* A */
            }
        }
        (*env)->ReleaseIntArrayElements(env, pixels, src, 0);
    }

    unsigned char region[32];
    for (int i = 0; i < 32; i++) region[i] = 0;
    /* Keep a copy of the frame so it can be resent without touching the Java array again
     * (the jint* is released as soon as the first flush is done). */
    if (g_wl_last_frame == 0) g_wl_last_frame = (int *)malloc((size_t)w * (size_t)h * 4);
    if (g_wl_last_frame != 0 && dst != 0) {
        for (int y = 0; y < (int)h; y++) {
            unsigned int *srow = (unsigned int *)(dst + (long)y * stride);
            for (int x = 0; x < (int)w; x++) g_wl_last_frame[(long)y * (long)w + x] = (int)srow[x];
        }
    }
    rc = flush(win, buf, -1, (void *)region, 0, 0, 0);
    log_int("blit: FlushBuffer rc=", (int)rc);
    wl_surface_mark_dirty();

    /* Send the same frame again a few times.
     * The pipeline produces exactly one frame ~50s after the node is attached, and hilog
     * shows RS drawing the SurfaceNodeDrawable only in the first moments after attach,
     * then parking screen 0 at ClearFrameBuffers. If the first buffer after that idle
     * period is dropped (no consumer listener, or it lands between composition passes),
     * a single flush can never be seen. Repeat so a dropped first frame is not the end
     * of it. Off unless WL_BLIT_REPEAT is set. */
    {
        const char *rep = getenv("WL_BLIT_REPEAT");
        int n = 0;
        if (rep != 0) for (const char *p = rep; *p >= '0' && *p <= '9'; p++) n = n * 10 + (*p - '0');
        for (int k = 1; k < n; k++) {
            void *buf2 = 0; int fence2 = -1;
            if (req(win, &buf2, &fence2) != 0 || buf2 == 0) {
                log_int("blit-repeat: request failed at ", k);
                break;
            }
            wl_bh_head *bh2 = (wl_bh_head *)gethandle(buf2);
            if (bh2 != 0 && g_wl_last_frame != 0) {
                unsigned char *d2 = (unsigned char *)bh2->virAddr;
                void *m2 = 0;
                if (d2 == 0 && bh2->fd >= 0 && bh2->size > 0) {
                    m2 = mmap(0, (size_t)bh2->size, PROT_READ | PROT_WRITE, MAP_SHARED, bh2->fd, 0);
                    if (m2 == MAP_FAILED) m2 = 0;
                    d2 = (unsigned char *)m2;
                }
                if (d2 != 0) {
                    int bw2 = bh2->width > 0 ? bh2->width : (int)w;
                    int bh2h = bh2->height > 0 ? bh2->height : (int)h;
                    int st2 = bh2->stride > 0 ? bh2->stride : bw2 * 4;
                    for (int y = 0; y < bh2h && y < (int)h; y++) {
                        unsigned int *row = (unsigned int *)(d2 + (long)y * st2);
                        for (int x = 0; x < bw2 && x < (int)w; x++) {
                            row[x] = (unsigned int)g_wl_last_frame[(long)y * (long)w + x];
                        }
                    }
                }
                if (m2 != 0) munmap(m2, (size_t)bh2->size);
            }
            flush(win, buf2, -1, (void *)region, 0, 0, 0);
            wl_surface_mark_dirty();
        }
        if (n > 1) log_int("blit-repeat: frames=", n);
    }
    if (mapped != 0) munmap(mapped, (size_t)map_len);
    return rc == 0 ? 0 : 7;
}

/* [5583 2026-07-20] Allocate a ColorSpace.Rgb WITHOUT running its constructor.
 *
 * On this substrate ColorSpace.get(Named.X) returns null for all 19 named spaces -- the
 * backing table was never populated -- and building one by hand is circular: Rgb's
 * constructor calls isSrgb(), which dereferences get(Named.SRGB) and NPEs on the null.
 * JNI AllocObject creates the instance with no constructor at all, which is enough to put a
 * non-null placeholder in the SRGB slot; the real Rgb can then be constructed normally
 * (isSrgb() reads a null mOetf off the placeholder and simply answers "not sRGB", which is
 * harmless) and swapped in over it.
 *
 * Signature is ()Ljava/lang/Object; -- shorty "L". Anything with a richer shorty risks being
 * dropped by the interpreter's static-JNI chain and returning a typed zero, which reads
 * exactly like success. */
/* Generic constructor-less allocation. Class name comes from a static String field so the
 * signature stays ()Ljava/lang/Object; -- richer shorties get dropped by the interpreter's
 * static-JNI chain and silently return null, which is indistinguishable from a real failure. */
/* [5583 2026-07-20] Mutable Bitmap.copy that bypasses the broken boolean marshal.
 *
 * Proven on-board: a boolean argument does not survive the interpreter's JNI marshal, so
 * Bitmap.copy(cfg, true) always returns an IMMUTABLE bitmap and Canvas rejects it -- with no
 * way to fix that from Java. The selective binder already harvested libhwui's Bitmap
 * JNINativeMethod table (0x475cd8, 46 entries), which holds the real function pointers, so
 * call nativeCopy from here with the C ABI and a hard-coded JNI_TRUE.
 *
 * Input: static field sCopySrc (the source Bitmap). Signature stays ()Ljava/lang/Object;. */
static jobject westlake_native_mutable_copy(JNIEnv *env, jclass clazz)
{
    jfieldID sf = (*env)->GetStaticFieldID(env, clazz, "sCopySrc", "Ljava/lang/Object;");
    if (sf == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return 0; }
    jobject src = (*env)->GetStaticObjectField(env, clazz, sf);
    if (src == 0) { log_text("mutCopy: no source bitmap"); return 0; }

    jclass bmCls = (*env)->GetObjectClass(env, src);
    jfieldID np = (*env)->GetFieldID(env, bmCls, "mNativePtr", "J");
    if (np == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mutCopy: mNativePtr not found");
        return 0;
    }
    jlong ptr = (*env)->GetLongField(env, src, np);
    log_int("mutCopy: srcPtr nonzero=", ptr != 0);
    if (ptr == 0) return 0;

    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) { log_text("mutCopy: dlopen libhwui failed"); return 0; }
    void *anchor = dlsym(hwui, "_ZN7android10uirenderer10Properties15isolatedProcessE");
    if (anchor == 0) { log_text("mutCopy: cannot locate libhwui base"); return 0; }
    unsigned char *base = (unsigned char *)anchor - 0x48b1e0UL;
    JNINativeMethod *tab = (JNINativeMethod *)(base + 0x475cd8UL);

    void *fn = 0;
    for (int i = 0; i < 46; i++) {
        if (tab[i].name != 0 && streq(tab[i].name, "nativeCopy")) { fn = tab[i].fnPtr; break; }
    }
    if (fn == 0) { log_text("mutCopy: nativeCopy not in harvested table"); return 0; }

    /* nativeCopy(JNIEnv*, jclass, jlong nativeBitmap, jint dstConfig, jboolean isMutable) */
    typedef jobject (*copy_fn)(JNIEnv *, jclass, jlong, jint, jboolean);
    jobject out = ((copy_fn)fn)(env, bmCls, ptr, 5 /* ARGB_8888 */, JNI_TRUE);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "mutCopy nativeCopy threw");
        (*env)->ExceptionClear(env);
        out = 0;
    }
    log_int("mutCopy: result nonnull=", out != 0);
    return out;
}

static jobject westlake_native_alloc_by_name(JNIEnv *env, jclass clazz)
{
    /* Take the Class object from Java, not a name: FindClass here resolves through the
     * probe class's loader, which cannot see the app's dex (observed: "FindClass failed" for
     * androidx.fragment.app.c0). The Java side resolves it with the right classloader. */
    jfieldID cf = (*env)->GetStaticFieldID(env, clazz, "sAllocClass", "Ljava/lang/Class;");
    if (cf == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("allocByName: sAllocClass field missing");
        return 0;
    }
    jclass target = (jclass)(*env)->GetStaticObjectField(env, clazz, cf);
    if (target == 0) { log_text("allocByName: sAllocClass not set"); return 0; }
    jobject o = (*env)->AllocObject(env, target);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "allocByName AllocObject threw");
        (*env)->ExceptionClear(env);
        o = 0;
    }
    log_int("allocByName ok=", o != 0);
    return o;
}

/* Font.Builder(ByteBuffer) insists on a *direct* buffer, and both Java routes to one are
 * dead in this lane: Typeface.createFromFile goes through FileChannel.map, whose
 * allocationGranularity is 0 here (divide by zero), and ByteBuffer.put(byte[]) needs
 * libcore.io.Memory natives, which no library in this lane implements at all. Read the
 * file here and hand back a NewDirectByteBuffer instead.
 * The mapping is deliberately never freed: minikin keeps referencing the font bytes for
 * the lifetime of the Typeface, so this allocation is owned by the process, not by us.
 * Zero-arg like the other probe natives -- the interpreter's argument marshalling is not
 * trustworthy for every shorty, so the path is passed through a static field. */
static jobject westlake_native_direct_buffer_from_file(JNIEnv *env, jclass clazz)
{
    jfieldID pf = (*env)->GetStaticFieldID(env, clazz, "sDirectBufPath", "Ljava/lang/String;");
    if (pf == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("dbuf: sDirectBufPath field missing");
        return 0;
    }
    jstring js = (jstring)(*env)->GetStaticObjectField(env, clazz, pf);
    if (js == 0) { log_text("dbuf: sDirectBufPath not set"); return 0; }
    const char *path = (*env)->GetStringUTFChars(env, js, 0);
    if (path == 0) { log_text("dbuf: GetStringUTFChars failed"); return 0; }

    jobject out = 0;
    int fd = open(path, O_RDONLY);
    if (fd < 0) {
        log_text("dbuf: open failed");
        log_text(path);
    } else {
        off_t end = lseek(fd, 0, SEEK_END);
        lseek(fd, 0, SEEK_SET);
        if (end > 0) {
            size_t len = (size_t)end;
            unsigned char *mem = (unsigned char *)malloc(len);
            if (mem != 0) {
                size_t got = 0;
                while (got < len) {
                    ssize_t n = read(fd, mem + got, len - got);
                    if (n <= 0) break;
                    got += (size_t)n;
                }
                if (got == len) {
                    out = (*env)->NewDirectByteBuffer(env, mem, (jlong)len);
                    if ((*env)->ExceptionCheck(env)) {
                        describe_pending_exception(env, "dbuf NewDirectByteBuffer");
                        (*env)->ExceptionClear(env);
                        out = 0;
                    }
                    log_int("dbuf: bytes=", (int)len);
                } else {
                    log_text("dbuf: short read");
                    free(mem);
                }
            } else {
                log_text("dbuf: malloc failed");
            }
        } else {
            log_text("dbuf: empty file");
        }
        close(fd);
    }
    (*env)->ReleaseStringUTFChars(env, js, path);
    log_int("dbuf ok=", out != 0);
    return out;
}

/* FontFamily.nAddFontWeightStyle has shorty 'ZJLIII', which this interpreter has no
 * hand-written branch for: the call is dropped and returns false, so every font is
 * "rejected" before minikin ever sees it. Same escape as westlake_native_mutable_copy --
 * take the function pointer straight out of the harvested libhwui table and call it with
 * the real C ABI, bypassing the interpreter's JNI dispatch entirely.
 * Zero-arg by convention; arguments arrive through static fields on the probe class. */
static jint westlake_native_add_font_weight_style(JNIEnv *env, jclass clazz)
{
    jfieldID bf = (*env)->GetStaticFieldID(env, clazz, "sFfBuilderPtr", "J");
    jfieldID qf = (*env)->GetStaticFieldID(env, clazz, "sFfBuffer", "Ljava/lang/Object;");
    if (bf == 0 || qf == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("addFont: static fields missing");
        return 0;
    }
    jlong builder = (*env)->GetStaticLongField(env, clazz, bf);
    jobject buf = (*env)->GetStaticObjectField(env, clazz, qf);
    if (builder == 0 || buf == 0) { log_text("addFont: builder or buffer not set"); return 0; }

    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) { log_text("addFont: dlopen libhwui failed"); return 0; }
    void *anchor2 = dlsym(hwui, "_ZN7android10uirenderer10Properties15isolatedProcessE");
    if (anchor2 == 0) { log_text("addFont: cannot locate libhwui base"); return 0; }
    unsigned char *base = (unsigned char *)anchor2 - 0x48b1e0UL;
    /* register_android_graphics_FontFamily: table 0x4768a8, 7 entries. */
    JNINativeMethod *tab = (JNINativeMethod *)(base + 0x4768a8UL);

    void *fn = 0;
    for (int i = 0; i < 7; i++) {
        if (tab[i].name != 0 && streq(tab[i].name, "nAddFontWeightStyle")) { fn = tab[i].fnPtr; break; }
    }
    if (fn == 0) { log_text("addFont: nAddFontWeightStyle not in harvested table"); return 0; }

    /* libhwui's own ALOGE diagnostics have no sink in this lane, so re-check here what the
     * native would have complained about: a null direct-buffer address, a negative
     * capacity, or font bytes that never arrived (sfnt magic). */
    {
        void *addr = (*env)->GetDirectBufferAddress(env, buf);
        jlong cap = (*env)->GetDirectBufferCapacity(env, buf);
        log_int("addFont: dbuf addr nonnull=", addr != 0);
        log_int("addFont: dbuf capacity=", (int)cap);
        if (addr != 0 && cap >= 4) {
            unsigned char *m = (unsigned char *)addr;
            log_int("addFont: magic0=", m[0]); log_int("addFont: magic1=", m[1]);
            log_int("addFont: magic2=", m[2]); log_int("addFont: magic3=", m[3]);
        }
    }

    /* nAddFontWeightStyle(JNIEnv*, jclass, jlong builderPtr, jobject buffer,
                           jint ttcIndex, jint weight, jint italic) */
    typedef jboolean (*add_fn)(JNIEnv *, jclass, jlong, jobject, jint, jint, jint);
    jboolean ok = ((add_fn)fn)(env, clazz, builder, buf, 0, 400, 0);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "addFont nAddFontWeightStyle threw");
        (*env)->ExceptionClear(env);
        ok = JNI_FALSE;
    }
    log_int("addFont: ok=", ok != 0);
    return ok ? 1 : 0;
}

/* Build a Canvas for a bitmap without going through Java at all.
 * Canvas(Bitmap) and Canvas.setBitmap() both refuse unless bitmap.isMutable() is true, and
 * on this substrate that call always returns false through the interpreter's direct-call
 * boolean marshal -- reflection on the same method returns true, and Bitmap carries no
 * mIsMutable field to settle it, so the bitmap is mutable and only the dispatch lies. The
 * no-arg Canvas() constructor is not a way out either (it dies before returning). So
 * allocate the object without a constructor and give it a native peer straight from
 * libhwui's nInitRaster, which does the real work the constructor would have done. */
static jobject westlake_native_make_canvas(JNIEnv *env, jclass clazz)
{
    jfieldID bf = (*env)->GetStaticFieldID(env, clazz, "sCanvasBitmap", "Ljava/lang/Object;");
    if (bf == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mkCanvas: sCanvasBitmap field missing");
        return 0;
    }
    jobject bitmap = (*env)->GetStaticObjectField(env, clazz, bf);
    if (bitmap == 0) { log_text("mkCanvas: bitmap not set"); return 0; }

    jclass cCls = (*env)->FindClass(env, "android/graphics/Canvas");
    if (cCls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mkCanvas: FindClass Canvas failed");
        return 0;
    }

    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) { log_text("mkCanvas: dlopen libhwui failed"); return 0; }
    void *anchor3 = dlsym(hwui, "_ZN7android10uirenderer10Properties15isolatedProcessE");
    if (anchor3 == 0) { log_text("mkCanvas: cannot locate libhwui base"); return 0; }
    unsigned char *base = (unsigned char *)anchor3 - 0x48b1e0UL;
    JNINativeMethod *tab = (JNINativeMethod *)(base + 0x478838UL);   /* Canvas, 33 entries */

    void *fn = 0;
    for (int i = 0; i < 33; i++) {
        if (tab[i].name != 0 && streq(tab[i].name, "nInitRaster")) { fn = tab[i].fnPtr; break; }
    }
    if (fn == 0) { log_text("mkCanvas: nInitRaster not in harvested table"); return 0; }

    /* Harvested signature is nInitRaster(J)J -- it takes the bitmap's native handle, not
     * the Bitmap object. Passing the jobject dereferences garbage and SIGSEGVs. */
    jclass bmCls = (*env)->GetObjectClass(env, bitmap);
    jfieldID bnp = (*env)->GetFieldID(env, bmCls, "mNativePtr", "J");
    if (bnp == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mkCanvas: Bitmap.mNativePtr not found");
        return 0;
    }
    jlong bmptr = (*env)->GetLongField(env, bitmap, bnp);
    log_int("mkCanvas: bitmap handle nonzero=", bmptr != 0);
    if (bmptr == 0) return 0;

    typedef jlong (*init_fn)(JNIEnv *, jclass, jlong);
    jlong ptr = ((init_fn)fn)(env, cCls, bmptr);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "mkCanvas nInitRaster threw");
        (*env)->ExceptionClear(env);
        return 0;
    }
    log_int("mkCanvas: nInitRaster nonzero=", ptr != 0);
    if (ptr == 0) return 0;

    jobject canvas = (*env)->AllocObject(env, cCls);
    if (canvas == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mkCanvas: AllocObject failed");
        return 0;
    }
    jfieldID nw = (*env)->GetFieldID(env, cCls, "mNativeCanvasWrapper", "J");
    if (nw == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("mkCanvas: mNativeCanvasWrapper not found");
        return 0;
    }
    (*env)->SetLongField(env, canvas, nw, ptr);
    /* Density 0 means "no scaling", which is what we want for a raw off-screen blit. */
    jfieldID df = (*env)->GetFieldID(env, cCls, "mDensity", "I");
    if (df != 0) (*env)->SetIntField(env, canvas, df, 0);
    (*env)->ExceptionClear(env);
    log_text("mkCanvas: ok");
    return canvas;
}

static jobject westlake_native_alloc_colorspace_rgb(JNIEnv *env, jclass clazz)
{
    (void)clazz;
    jclass rgb = (*env)->FindClass(env, "android/graphics/ColorSpace$Rgb");
    if (rgb == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("allocCS: FindClass ColorSpace$Rgb failed");
        return 0;
    }
    jobject o = (*env)->AllocObject(env, rgb);
    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); o = 0; }
    log_int("allocCS: alloc ok=", o != 0);
    return o;
}

static void wl_install_segv_diag(void);

/* No-op stand-in for natives whose only job is bookkeeping we do not need. */
static void wl_vmruntime_noop(JNIEnv *env, jclass clazz) { (void)env; (void)clazz; }

/* [5583 2026-07-20] Run libhwui's real Bitmap registrar.
 *
 * The selective binder registers method tables but never executes the registrar body, and
 * that body is where the JNI globals live (gBitmap_class and friends). Binding alone
 * therefore gets nativeCreate called and then killed by
 * "JNI DETECTED ERROR IN APPLICATION: java_class == null ... in call to GetMethodID".
 * Calling the exported registrar is safe here specifically because the selective pass already
 * proved all 46 entries resolve (bound=46 skipped=0) -- the wholesale-registrar SIGTRAP only
 * fires when an entry mismatches. */
/* Probe shim: report a generous string-pool size (see note at the call site). */
static jint wl_stringblock_get_size(JNIEnv *env, jclass clazz, jlong ptr)
{
    (void)env; (void)clazz; (void)ptr;
    return 4096;
}

/* [5583 2026-07-20] Re-run wlresjni's real StringBlock registrar.
 *
 * OHBridge installs 4 StringBlock stubs at VM bring-up ("StringBlock stubs: 4/4"), and those
 * land AFTER wlresjni's registrar, so the real implementations get overwritten and the ones
 * OHBridge does not stub (nativeGetSize) end up unregistered. Re-running the registrar puts
 * the real set back, which the layout re-inflate needs. */
static jint westlake_native_register_stringblock(JNIEnv *env, jclass clazz)
{
    (void)clazz;
    void *rj = dlopen("wlresjni.so", RTLD_NOW | RTLD_GLOBAL);
    if (rj == 0) {
        rj = dlopen_exec("android/lib64/wlresjni.so", "wlresjni.so", RTLD_NOW | RTLD_GLOBAL);
    }
    if (rj == 0) { log_text("sbReg: dlopen wlresjni failed"); return 0; }
    void (*reg)(JNIEnv *) = (void (*)(JNIEnv *))
        dlsym(rj, "_ZN7android36register_android_content_StringBlockEP7_JNIEnv");
    if (reg == 0) { log_text("sbReg: registrar symbol missing"); return 0; }
    /* Do not swallow: if RegisterNatives inside the registrar failed, the reason is the whole
     * answer to why nativeGetSize stays unresolved. */
    reg(env);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "sbReg registrar threw");
        (*env)->ExceptionClear(env);
        log_text("sbReg: registrar raised (see above)");
        return 2;
    }
    /* Probe the outcome directly: resolve the method and see whether ART now has code for it. */
    {
        jclass sb = (*env)->FindClass(env, "android/content/res/StringBlock");
        if (sb == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            log_text("sbReg: FindClass StringBlock failed");
        } else {
            jmethodID mid = (*env)->GetStaticMethodID(env, sb, "nativeGetSize", "(J)I");
            if (mid == 0 || (*env)->ExceptionCheck(env)) {
                (*env)->ExceptionClear(env);
                log_text("sbReg: nativeGetSize NOT declared static (J)I on this framework");
                mid = (*env)->GetMethodID(env, sb, "nativeGetSize", "(J)I");
                if (mid == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("sbReg: nativeGetSize not found as instance method either");
                } else {
                    log_text("sbReg: nativeGetSize is an INSTANCE method");
                }
            } else {
                log_text("sbReg: nativeGetSize resolved as static (J)I");
            }
        }
    }
    /* wlresjni's registrar builds its table at runtime and does not include nativeGetSize
     * (registrar ran, threw nothing, yet the call still ULEs). StringBlock uses this value for
     * bounds checks and to size its string cache array, so a fixed generous value is enough to
     * get inflate moving -- it is a PROBE shim, not a correct implementation: if anything ever
     * iterates 0..size it will read past the real pool. Gated so it is easy to take back out. */
    if (streq(getenv("WL_SB_SIZE_SHIM"), "1")) {
        jclass sb2 = (*env)->FindClass(env, "android/content/res/StringBlock");
        if (sb2 != 0 && !(*env)->ExceptionCheck(env)) {
            JNINativeMethod nm2 = {"nativeGetSize", "(J)I", (void *)wl_stringblock_get_size};
            jint rc2 = (*env)->RegisterNatives(env, sb2, &nm2, 1);
            if (rc2 != 0 || (*env)->ExceptionCheck(env)) {
                (*env)->ExceptionClear(env);
                log_text("sbReg: nativeGetSize shim RegisterNatives failed");
            } else {
                log_text("sbReg: nativeGetSize shim installed");
            }
        } else {
            (*env)->ExceptionClear(env);
        }
    }
    log_text("sbReg: StringBlock registrar re-run");
    return 1;
}

static jint westlake_native_register_bitmap_jni(JNIEnv *env, jclass clazz)
{
    (void)clazz;
    static int done;
    if (done) return 2;
    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) { log_text("bitmapJni: dlopen libhwui failed"); return 0; }
    void (*reg)(JNIEnv *) = (void (*)(JNIEnv *))
        dlsym(hwui, "_Z32register_android_graphics_BitmapP7_JNIEnv");
    if (reg == 0) { log_text("bitmapJni: registrar symbol missing"); return 0; }
    /* [5583 2026-07-20] Give VMRuntime.notifyNativeAllocationsInternal a real entry.
     *
     * Bitmap.<init> -> NativeAllocationRegistry.registerNativeAllocation calls it, and its JNI
     * entry is null on this substrate, so the interpreter branches to address 0
     * (fault_addr=0 pc=0). Three attempts to guard that inside the interpreter all missed --
     * the call takes a dispatch path none of the guards sit on. Registering a no-op is the
     * same selective-binding trick the rest of this lane uses, needs no ART rebuild, and is
     * semantically correct here: the notification only nudges the GC's native-allocation
     * accounting, which this short-lived process does not depend on. */
    {
        jclass vmr = (*env)->FindClass(env, "dalvik/system/VMRuntime");
        if (vmr == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            log_text("vmrNoop: FindClass VMRuntime failed");
        } else {
            JNINativeMethod nm = {"notifyNativeAllocationsInternal", "()V",
                                  (void *)wl_vmruntime_noop};
            jint rc = (*env)->RegisterNatives(env, vmr, &nm, 1);
            if (rc != 0 || (*env)->ExceptionCheck(env)) {
                (*env)->ExceptionClear(env);
                log_text("vmrNoop: RegisterNatives failed");
            } else {
                log_text("vmrNoop: notifyNativeAllocationsInternal bound to no-op");
            }
        }
    }

    /* The blit path never calls nativeClearHwuiIsolated, so arm the trap/segv diagnostics
     * here instead -- and it must happen after the VM is up, or ART's sigchain owns the
     * handlers and ours is never dispatched. */
    wl_install_segv_diag();
    log_text("bitmapJni: calling real registrar");
    reg(env);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "bitmapJni registrar threw");
        (*env)->ExceptionClear(env);
    }
    log_text("bitmapJni: registrar returned");
    done = 1;
    return 1;
}

static jint westlake_native_clear_hwui_isolated(JNIEnv *env, jclass clazz)
{
    (void)env; (void)clazz;
    const jboolean isolated = 0;   /* only ever used to clear the flag */
    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) {
        hwui = dlopen_exec("android/lib64/libhwui.so", "libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    }
    if (hwui == 0) { log_text("hwui isolated: dlopen failed"); hlog_sel("hwui isolated: dlopen failed"); return 2; }
    unsigned char *flag = (unsigned char *)dlsym(
        hwui, "_ZN7android10uirenderer10Properties15isolatedProcessE");
    if (flag == 0) {
        /* Fall back to a global-scope lookup: the lane loads libhwui through several
         * paths and the handle we just got may not be the one carrying the symbol. */
        flag = (unsigned char *)dlsym(RTLD_DEFAULT,
            "_ZN7android10uirenderer10Properties15isolatedProcessE");
    }
    if (flag == 0) { log_text("hwui isolated: symbol not found"); hlog_sel("hwui isolated: symbol not found"); return 3; }
    log_int("hwui isolatedProcess was=", (int)*flag);
    *flag = isolated ? 1 : 0;
    log_int("hwui isolatedProcess now=", (int)*flag);
    /* DeviceInfo is the real reason the renderer sets isolatedProcess: updateDisplayInfo()
     * starts with `if (Properties::isolatedProcess) return;` and otherwise goes to
     * SurfaceComposerClient::getInternalDisplayToken(), which does not exist on OHOS
     * (that is the LOG_ALWAYS_FATAL at DeviceInfo::updateDisplayInfo+0x70/+0x180, reached
     * via getWideColorType()). Bailing out leaves DeviceInfo with zeroed display metrics,
     * so nothing downstream has a sane size/refresh rate. Seed it by hand through the
     * exported setters instead -- panel is 1200x1920@60 on this board. */
    {
        void (*set_w)(int)   = (void (*)(int))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo8setWidthEi");
        void (*set_h)(int)   = (void (*)(int))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo9setHeightEi");
        void (*set_rr)(float)= (void (*)(float))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo14setRefreshRateEf");
        void (*set_de)(float)= (void (*)(float))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo10setDensityEf");
        void (*set_mt)(int)  = (void (*)(int))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo17setMaxTextureSizeEi");
        void (*set_vs)(long) = (void (*)(long))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo22setAppVsyncOffsetNanosEl");
        void (*set_pd)(long) = (void (*)(long))dlsym(hwui, "_ZN7android10uirenderer10DeviceInfo28setPresentationDeadlineNanosEl");
        int seeded = 0;
        if (set_w)  { set_w(1200); seeded++; }
        if (set_h)  { set_h(1920); seeded++; }
        if (set_rr) { set_rr(60.0f); seeded++; }
        if (set_de) { set_de(2.0f); seeded++; }
        if (set_mt) { set_mt(16383); seeded++; }
        if (set_vs) { set_vs(0L); seeded++; }
        if (set_pd) { set_pd(16666666L); seeded++; }
        log_int("hwui DeviceInfo seeded fields=", seeded);
    }

    /* Re-arm the trap diagnostics HERE, not at probe init: ART's sigchain takes over the
     * signal handlers when the VM comes up, so a handler installed before that never runs.
     * Installed at this point it is the one the chain dispatches to, which is what finally
     * makes the message-less hwui assert visible (and, with WL_TRAP_SKIP=1, survivable). */
    wl_install_segv_diag();
    return 1;
}

static jint westlake_native_register_hwui_render(JNIEnv *env, jclass clazz)
{
    (void)clazz;
    if (streq(getenv("WESTLAKE_HWUI_SELECTIVE"), "1")) {
        return westlake_hwui_register_selective(env);
    }
    void *hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
    if (hwui == 0) {
        log_text("Noice HWUI subset: dlopen libhwui.so failed");
        char *e = dlerror(); if (e != 0) log_text(e);
        return -1;
    }
    struct wl_reg { const char *name; const char *sym; } regs[] = {
        {"Canvas", "_ZN7android32register_android_graphics_CanvasEP7_JNIEnv"},
        {"ColorSpace", "_ZN7android36register_android_graphics_ColorSpaceEP7_JNIEnv"},
        {"Matrix", "_ZN7android32register_android_graphics_MatrixEP7_JNIEnv"},
        {"Paint", "_ZN7android31register_android_graphics_PaintEP7_JNIEnv"},
        {"Path", "_ZN7android30register_android_graphics_PathEP7_JNIEnv"},
        {"Region", "_ZN7android32register_android_graphics_RegionEP7_JNIEnv"},
        {"Shader", "_Z32register_android_graphics_ShaderP7_JNIEnv"},
        {"Typeface", "_Z34register_android_graphics_TypefaceP7_JNIEnv"},
        {"RenderNode", "_ZN7android32register_android_view_RenderNodeEP7_JNIEnv"},
        {"DisplayListCanvas", "_ZN7android39register_android_view_DisplayListCanvasEP7_JNIEnv"},
    };
    int failures = 0;
    int n = (int)(sizeof(regs) / sizeof(regs[0]));
    for (int i = 0; i < n; i++) {
        typedef int (*reg_fn)(JNIEnv *);
        reg_fn fn = (reg_fn)dlsym(hwui, regs[i].sym);
        log_text(regs[i].name);
        if (fn == 0) { failures++; continue; }
        int rc = fn(env);
        if ((*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, regs[i].name);
            (*env)->ExceptionClear(env);
            failures++;
        } else if (rc != 0) {
            failures++;
        }
    }
    log_int("Noice HWUI subset failures=", failures);
    return failures;
}

static void westlake_AssetManager_nativeSetConfiguration_noop(
    JNIEnv *env, jclass clazz, jlong asset_manager,
    jint mcc, jint mnc, jstring locale,
    jint orientation, jint touchscreen, jint density, jint keyboard,
    jint keyboard_hidden, jint navigation, jint screen_width, jint screen_height,
    jint smallest_width_dp, jint width_dp, jint height_dp, jint screen_layout,
    jint ui_mode, jint color_mode, jint grammatical_gender, jint major_version)
{
    (void)env; (void)clazz; (void)asset_manager; (void)mcc; (void)mnc; (void)locale;
    (void)orientation; (void)touchscreen; (void)density; (void)keyboard;
    (void)keyboard_hidden; (void)navigation; (void)screen_width; (void)screen_height;
    (void)smallest_width_dp; (void)width_dp; (void)height_dp; (void)screen_layout;
    (void)ui_mode; (void)color_mode; (void)grammatical_gender; (void)major_version;
}

static void westlake_AssetManager_nativeApplyStyle_noop(
    JNIEnv *env, jclass clazz, jlong ptr, jlong theme, jint def_style_attr,
    jint def_style_res, jlong parser, jintArray attrs, jlong out_values, jlong out_indices)
{
    (void)env; (void)clazz; (void)ptr; (void)theme; (void)def_style_attr;
    (void)def_style_res; (void)parser; (void)attrs; (void)out_values; (void)out_indices;
}

static void westlake_AssetManager_nativeThemeApplyStyle_noop(
    JNIEnv *env, jclass clazz, jlong ptr, jlong theme, jint style, jboolean force)
{
    (void)env; (void)clazz; (void)ptr; (void)theme; (void)style; (void)force;
}

static void westlake_AssetManager_nativeThemeCopy_noop(
    JNIEnv *env, jclass clazz, jlong dst_asset, jlong dst_theme, jlong src_asset, jlong src_theme)
{
    (void)env; (void)clazz; (void)dst_asset; (void)dst_theme; (void)src_asset; (void)src_theme;
}

static volatile jlong westlake_rendernode_next = 0x52000000LL;

__attribute__((visibility("default"))) void westlake_RenderNode_finalizer_noop(void *native_ptr)
{
    (void)native_ptr;
}

__attribute__((visibility("default"))) jlong Java_android_graphics_RenderNode_nCreate(
    JNIEnv *env, jclass clazz, jstring name)
{
    (void)env; (void)clazz; (void)name;
    return ++westlake_rendernode_next;
}

__attribute__((visibility("default"))) jlong Java_android_graphics_RenderNode_nGetNativeFinalizer(
    JNIEnv *env, jclass clazz)
{
    (void)env; (void)clazz;
    return (jlong)(void *)&westlake_RenderNode_finalizer_noop;
}

static jfloat westlake_RenderNode_nGetElevation(jlong render_node)
{
    (void)render_node;
    return 0.0f;
}

static jboolean westlake_RenderNode_nSetElevation(jlong render_node, jfloat elevation)
{
    (void)render_node;
    (void)elevation;
    return 0;
}

static jboolean westlake_RenderNode_nGetClipToOutline(jlong render_node)
{
    (void)render_node;
    return 0;
}

static jboolean westlake_RenderNode_nSetClipToOutline(jlong render_node, jboolean clip)
{
    (void)render_node;
    (void)clip;
    return 0;
}

static volatile jlong westlake_paint_next = 0x53000000LL;

__attribute__((visibility("default"))) void westlake_Paint_finalizer_noop(void *native_ptr)
{
    (void)native_ptr;
}

__attribute__((visibility("default"))) jlong Java_android_graphics_Paint_nInit(
    JNIEnv *env, jclass clazz)
{
    (void)env; (void)clazz;
    return ++westlake_paint_next;
}

__attribute__((visibility("default"))) jlong Java_android_graphics_Paint_nInitWithPaint(
    JNIEnv *env, jclass clazz, jlong paint)
{
    (void)env; (void)clazz; (void)paint;
    return ++westlake_paint_next;
}

__attribute__((visibility("default"))) jlong Java_android_graphics_Paint_nGetNativeFinalizer(
    JNIEnv *env, jclass clazz)
{
    (void)env; (void)clazz;
    return (jlong)(void *)&westlake_Paint_finalizer_noop;
}

static jint westlake_Paint_nGetFlags(jlong p) { (void)p; return 1283; }
static void westlake_Paint_nSetFlags(jlong p, jint v) { (void)p; (void)v; }
static jint westlake_Paint_nSetTextLocales(JNIEnv *env, jclass c, jlong p, jstring s)
{ (void)env; (void)c; (void)p; (void)s; return 0; }
static void westlake_Paint_nSetTextLocalesByMinikinLocaleListId(jlong p, jint v)
{ (void)p; (void)v; }
static void westlake_Paint_nSetInt(jlong p, jint v) { (void)p; (void)v; }
static void westlake_Paint_nSetBool(jlong p, jboolean v) { (void)p; (void)v; }
static void westlake_Paint_nSetFloat(jlong p, jfloat v) { (void)p; (void)v; }
static void westlake_Paint_nSetLong(jlong p, jlong v) { (void)p; (void)v; }
static void westlake_Paint_nSetColorLong(jlong p, jlong cs, jlong color)
{ (void)p; (void)cs; (void)color; }
static jlong westlake_Paint_nSetLongReturn(jlong p, jlong v) { (void)p; return v; }
static jboolean westlake_Paint_false_J(jlong p) { (void)p; return 0; }
static jboolean westlake_Paint_true_J(jlong p) { (void)p; return 1; }
static jint westlake_Paint_zeroI_J(jlong p) { (void)p; return 0; }
static jfloat westlake_Paint_zeroF_J(jlong p) { (void)p; return 0.0f; }
static jfloat westlake_Paint_oneF_J(jlong p) { (void)p; return 1.0f; }
static jfloat westlake_Paint_textSize_J(jlong p) { (void)p; return 16.0f; }

static int register_system_natives(JNIEnv *env)
{
    jclass system_class = (*env)->FindClass(env, "java/lang/System");
    if (system_class == 0 || (*env)->ExceptionCheck(env)) {
        log_text("RegisterNatives System class failed");
        (*env)->ExceptionClear(env);
        return 41;
    }
    JNINativeMethod methods[] = {
        {"currentTimeMillis", "()J", (void *)Java_java_lang_System_currentTimeMillis},
        {"nanoTime", "()J", (void *)Java_java_lang_System_nanoTime},
        {"specialProperties", "()[Ljava/lang/String;",
            (void *)Java_java_lang_System_specialProperties},
    };
    jint rc = (*env)->RegisterNatives(
        env, system_class, methods, (jint)(sizeof(methods) / sizeof(methods[0])));
    if (rc != 0 || (*env)->ExceptionCheck(env)) {
        log_text("RegisterNatives System failed");
        (*env)->ExceptionClear(env);
        return 42;
    }
    log_text("RegisterNatives System ok");

    /* AssetManager/addAssetPath touches android.os.Trace; board libandroid_runtime
     * may not have registered these. Explicit RegisterNatives so W-001 early oracle
     * does not UnsatisfiedLinkError on nativeIsTagEnabled. */
    jclass trace_class = (*env)->FindClass(env, "android/os/Trace");
    if (trace_class == 0 || (*env)->ExceptionCheck(env)) {
        log_text("RegisterNatives Trace class missing (ok if unused)");
        (*env)->ExceptionClear(env);
    } else {
        if (register_trace_natives_on(env, trace_class, "boot FindClass Trace") != 0) {
            /* already logged */
        }
    }

    /* HAP-safe Resources bootstrap: OHBridge's generic nativeSetConfiguration
     * trampoline is not callable under this interpreter and SIGBUSes. Configuration
     * is advisory for our fixed 1200x1920 probe, so register an exact-signature no-op. */
    {
        jclass am_class = (*env)->FindClass(env, "android/content/res/AssetManager");
        if (am_class != 0 && !(*env)->ExceptionCheck(env)) {
            JNINativeMethod m[] = {
                {
                    "nativeSetConfiguration",
                    "(JIILjava/lang/String;IIIIIIIIIIIIIIII)V",
                    (void *)westlake_AssetManager_nativeSetConfiguration_noop
                },
                {
                    "nativeApplyStyle",
                    "(JJIIJ[IJJ)V",
                    (void *)westlake_AssetManager_nativeApplyStyle_noop
                },
                {
                    "nativeThemeApplyStyle",
                    "(JJIZ)V",
                    (void *)westlake_AssetManager_nativeThemeApplyStyle_noop
                },
                {
                    "nativeThemeCopy",
                    "(JJJJ)V",
                    (void *)westlake_AssetManager_nativeThemeCopy_noop
                },
            };
            jint arc = (*env)->RegisterNatives(env, am_class, m, 4);
            if (arc == 0 && !(*env)->ExceptionCheck(env))
                log_text("RegisterNatives AssetManager theme noops ok");
            else {
                log_text("RegisterNatives AssetManager theme noops failed");
                (*env)->ExceptionClear(env);
            }
        } else {
            (*env)->ExceptionClear(env);
        }
    }

    /* Noice foreground bring-up now reaches real android.view.View construction.
     * On DAYU600's mixed OHOS/Android graphics stack, RenderNode.nCreate SIGBUSes
     * in the platform native renderer before Java layout can be built. The probe
     * does not render through Android HWUI; it only needs stable Java View objects,
     * so return an opaque fake native handle and a no-op finalizer. */
    {
        jclass rn_class = (*env)->FindClass(env, "android/graphics/RenderNode");
        if (rn_class != 0 && !(*env)->ExceptionCheck(env)) {
            JNINativeMethod rn[] = {
                {"nCreate", "(Ljava/lang/String;)J",
                    (void *)Java_android_graphics_RenderNode_nCreate},
                {"nGetNativeFinalizer", "()J",
                    (void *)Java_android_graphics_RenderNode_nGetNativeFinalizer},
                {"nGetElevation", "(J)F",
                    (void *)westlake_RenderNode_nGetElevation},
                {"nSetElevation", "(JF)Z",
                    (void *)westlake_RenderNode_nSetElevation},
                {"nGetClipToOutline", "(J)Z",
                    (void *)westlake_RenderNode_nGetClipToOutline},
                {"nSetClipToOutline", "(JZ)Z",
                    (void *)westlake_RenderNode_nSetClipToOutline},
            };
            jint rrc = (*env)->RegisterNatives(env, rn_class, rn, 6);
            if (rrc == 0 && !(*env)->ExceptionCheck(env))
                log_text("RegisterNatives RenderNode minimal ok");
            else {
                log_text("RegisterNatives RenderNode minimal failed");
                (*env)->ExceptionClear(env);
            }
        } else {
            (*env)->ExceptionClear(env);
        }
    }
    {
        jclass paint_class = (*env)->FindClass(env, "android/graphics/Paint");
        if (paint_class != 0 && !(*env)->ExceptionCheck(env)) {
            JNINativeMethod pm[] = {
                {"nInit", "()J", (void *)Java_android_graphics_Paint_nInit},
                {"nInitWithPaint", "(J)J", (void *)Java_android_graphics_Paint_nInitWithPaint},
                {"nGetNativeFinalizer", "()J", (void *)Java_android_graphics_Paint_nGetNativeFinalizer},
                {"nGetFlags", "(J)I", (void *)westlake_Paint_nGetFlags},
                {"nSetFlags", "(JI)V", (void *)westlake_Paint_nSetFlags},
                {"nSetTextLocales", "(JLjava/lang/String;)I", (void *)westlake_Paint_nSetTextLocales},
                {"nSetTextLocalesByMinikinLocaleListId", "(JI)V", (void *)westlake_Paint_nSetTextLocalesByMinikinLocaleListId},
                {"nSetColor", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nSetColor", "(JJJ)V", (void *)westlake_Paint_nSetColorLong},
                {"nSetAlpha", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nSetTextSize", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetTextSize", "(J)F", (void *)westlake_Paint_textSize_J},
                {"nSetTypeface", "(JJ)V", (void *)westlake_Paint_nSetLong},
                {"nSetElegantTextHeight", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nIsElegantTextHeight", "(J)Z", (void *)westlake_Paint_false_J},
                {"nSetLinearText", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetSubpixelText", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetUnderlineText", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetStrikeThruText", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetFakeBoldText", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetFilterBitmap", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetAntiAlias", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetDither", "(JZ)V", (void *)westlake_Paint_nSetBool},
                {"nSetTextScaleX", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetTextScaleX", "(J)F", (void *)westlake_Paint_oneF_J},
                {"nSetTextSkewX", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetTextSkewX", "(J)F", (void *)westlake_Paint_zeroF_J},
                {"nSetLetterSpacing", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetLetterSpacing", "(J)F", (void *)westlake_Paint_zeroF_J},
                {"nSetWordSpacing", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetWordSpacing", "(J)F", (void *)westlake_Paint_zeroF_J},
                {"nSetHinting", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nGetHinting", "(J)I", (void *)westlake_Paint_zeroI_J},
                {"nSetStyle", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nGetStyle", "(J)I", (void *)westlake_Paint_zeroI_J},
                {"nSetTextAlign", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nGetTextAlign", "(J)I", (void *)westlake_Paint_zeroI_J},
                {"nSetStrokeWidth", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetStrokeWidth", "(J)F", (void *)westlake_Paint_zeroF_J},
                {"nSetStrokeMiter", "(JF)V", (void *)westlake_Paint_nSetFloat},
                {"nGetStrokeMiter", "(J)F", (void *)westlake_Paint_zeroF_J},
                {"nSetStrokeCap", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nGetStrokeCap", "(J)I", (void *)westlake_Paint_zeroI_J},
                {"nSetStrokeJoin", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nGetStrokeJoin", "(J)I", (void *)westlake_Paint_zeroI_J},
                {"nSetShader", "(JJ)J", (void *)westlake_Paint_nSetLongReturn},
                {"nSetColorFilter", "(JJ)J", (void *)westlake_Paint_nSetLongReturn},
                {"nSetXfermode", "(JI)V", (void *)westlake_Paint_nSetInt},
                {"nHasShadowLayer", "(J)Z", (void *)westlake_Paint_false_J},
            };
            jint prc = (*env)->RegisterNatives(env, paint_class, pm,
                (jint)(sizeof(pm) / sizeof(pm[0])));
            if (prc == 0 && !(*env)->ExceptionCheck(env))
                log_text("RegisterNatives Paint bootstrap ok");
            else {
                log_text("RegisterNatives Paint bootstrap failed");
                (*env)->ExceptionClear(env);
            }
        } else {
            (*env)->ExceptionClear(env);
        }
    }
    return 0;
}

static int call_appspawnx_init_child(JNIEnv *env)
{
    log_text("appSpawnXInit stage begin\n");
    jclass init_class = (*env)->FindClass(env, "com/android/internal/os/AppSpawnXInit");
    if (init_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "FindClass AppSpawnXInit failed");
        return 43;
    }
    jmethodID init_child = (*env)->GetStaticMethodID(env, init_class,
        "initChild", "()V");
    if (init_child == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "GetStaticMethodID AppSpawnXInit.initChild failed");
        return 44;
    }
    (*env)->CallStaticVoidMethod(env, init_class, init_child);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "AppSpawnXInit.initChild threw");
        return 49;
    }
    log_text("appSpawnXInit stage ok\n");
    return 0;
}

static int call_framework_class_probe(JNIEnv *env)
{
    const char *classes[] = {
        "android/app/ActivityThread",
        "android/app/LoadedApk",
        "android/app/ContextImpl",
        "android/app/servertransaction/ClientTransaction",
        "android/app/servertransaction/LaunchActivityItem",
        "android/app/servertransaction/ResumeActivityItem",
        "android/content/Intent",
        "android/content/pm/ActivityInfo",
        "android/content/pm/ApplicationInfo",
        "android/os/IBinder",
        "android/os/Handler",
        "android/os/Looper",
    };
    log_text("frameworkClassProbe stage begin\n");
    for (unsigned int i = 0; i < sizeof(classes) / sizeof(classes[0]); ++i) {
        jclass cls = (*env)->FindClass(env, classes[i]);
        if (cls == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            log_text("missing ");
            log_text(classes[i]);
            log_text("\n");
        } else {
            log_text("present ");
            log_text(classes[i]);
            log_text("\n");
            (*env)->DeleteLocalRef(env, cls);
        }
    }
    log_text("frameworkClassProbe stage ok\n");
    return 0;
}

static int call_activity_thread_method_probe(JNIEnv *env, int invoke_main)
{
    if (invoke_main) {
        log_text("activityThreadMainProbe stage begin\n");
    } else {
        log_text("activityThreadMethodProbe stage begin\n");
    }

    jclass thread_class = (*env)->FindClass(env, "android/app/ActivityThread");
    if (thread_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "FindClass ActivityThread failed");
        return 50;
    }

    jmethodID main_method = (*env)->GetStaticMethodID(
        env, thread_class, "main", "([Ljava/lang/String;)V");
    if (main_method == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "GetStaticMethodID ActivityThread.main failed");
        return 51;
    }

    log_text("ActivityThread.main method present\n");
    if (!invoke_main) {
        log_text("activityThreadMethodProbe stage ok\n");
        return 0;
    }

    jclass string_class = (*env)->FindClass(env, "java/lang/String");
    if (string_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "FindClass String failed for ActivityThread args");
        return 52;
    }
    jobjectArray args = (*env)->NewObjectArray(env, 0, string_class, 0);
    if (args == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "NewObjectArray ActivityThread args failed");
        return 53;
    }

    log_text("CallStaticVoidMethod ActivityThread.main begin\n");
    (*env)->CallStaticVoidMethod(env, thread_class, main_method, args);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "ActivityThread.main threw");
        return 54;
    }
    log_text("ActivityThread.main returned\n");
    return 0;
}

static int check_activity_step(JNIEnv *env, const char *label, int rc)
{
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, label);
        return rc;
    }
    log_text(label);
    log_text("ok");
    return 0;
}

static int call_activity_thread_step_probe(JNIEnv *env)
{
    log_text("activityThreadStepProbe stage begin\n");

    int rc = 0;
    char *skip_trace = getenv("WESTLAKE_SKIP_TRACE_STEP");
    int skip_trace_step = skip_trace && streq(skip_trace, "1");
    if (skip_trace_step) {
        log_text("step Trace.traceBegin skipped");
    } else {
        jclass trace_class = (*env)->FindClass(env, "android/os/Trace");
        if (trace_class == 0 || (*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "step Trace class failed");
            return 60;
        }
        jmethodID trace_begin = (*env)->GetStaticMethodID(
            env, trace_class, "traceBegin", "(JLjava/lang/String;)V");
        if (trace_begin == 0 || (*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "step Trace.traceBegin lookup failed");
            return 61;
        }
        jstring trace_name = (*env)->NewStringUTF(env, "ActivityThreadMain");
        (*env)->CallStaticVoidMethod(env, trace_class, trace_begin, (jlong)0x40, trace_name);
        rc = check_activity_step(env, "step Trace.traceBegin", 62);
        if (rc != 0) {
            return rc;
        }
    }

    jclass android_os_class = (*env)->FindClass(env, "android/app/ActivityThread$AndroidOs");
    if (android_os_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step ActivityThread$AndroidOs class failed");
        return 63;
    }
    jmethodID install = (*env)->GetStaticMethodID(env, android_os_class, "install", "()V");
    if (install == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step AndroidOs.install lookup failed");
        return 64;
    }
    (*env)->CallStaticVoidMethod(env, android_os_class, install);
    rc = check_activity_step(env, "step AndroidOs.install", 65);
    if (rc != 0) {
        return rc;
    }

    jclass close_guard_class = (*env)->FindClass(env, "dalvik/system/CloseGuard");
    if (close_guard_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step CloseGuard class failed");
        return 66;
    }
    jmethodID set_enabled = (*env)->GetStaticMethodID(
        env, close_guard_class, "setEnabled", "(Z)V");
    if (set_enabled == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step CloseGuard.setEnabled lookup failed");
        return 67;
    }
    (*env)->CallStaticVoidMethod(env, close_guard_class, set_enabled, (jboolean)JNI_FALSE);
    rc = check_activity_step(env, "step CloseGuard.setEnabled", 68);
    if (rc != 0) {
        return rc;
    }

    log_activity_env_probe(env);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "activity env probe left exception");
    }

    jclass env_class = (*env)->FindClass(env, "android/os/Environment");
    if (env_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Environment class failed");
        return 69;
    }
    jmethodID init_user = (*env)->GetStaticMethodID(env, env_class, "initForCurrentUser", "()V");
    if (init_user == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Environment.initForCurrentUser lookup failed");
        return 70;
    }
    (*env)->CallStaticVoidMethod(env, env_class, init_user);
    rc = check_activity_step(env, "step Environment.initForCurrentUser", 71);
    if (rc != 0) {
        return rc;
    }

    jclass user_handle_class = (*env)->FindClass(env, "android/os/UserHandle");
    if (user_handle_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step UserHandle class failed");
        return 72;
    }
    jmethodID my_user_id = (*env)->GetStaticMethodID(env, user_handle_class, "myUserId", "()I");
    if (my_user_id == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step UserHandle.myUserId lookup failed");
        return 73;
    }
    jint user_id = (*env)->CallStaticIntMethod(env, user_handle_class, my_user_id);
    rc = check_activity_step(env, "step UserHandle.myUserId", 74);
    if (rc != 0) {
        return rc;
    }

    jmethodID get_user_config = (*env)->GetStaticMethodID(
        env, env_class, "getUserConfigDirectory", "(I)Ljava/io/File;");
    if (get_user_config == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Environment.getUserConfigDirectory lookup failed");
        return 75;
    }
    jobject user_config_dir = (*env)->CallStaticObjectMethod(
        env, env_class, get_user_config, user_id);
    rc = check_activity_step(env, "step Environment.getUserConfigDirectory", 76);
    if (rc != 0) {
        return rc;
    }

    jclass cert_store_class = (*env)->FindClass(
        env, "com/android/org/conscrypt/TrustedCertificateStore");
    if (cert_store_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step TrustedCertificateStore class failed");
        return 77;
    }
    jmethodID set_user_dir = (*env)->GetStaticMethodID(
        env, cert_store_class, "setDefaultUserDirectory", "(Ljava/io/File;)V");
    if (set_user_dir == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step TrustedCertificateStore.setDefaultUserDirectory lookup failed");
        return 78;
    }
    (*env)->CallStaticVoidMethod(env, cert_store_class, set_user_dir, user_config_dir);
    rc = check_activity_step(env, "step TrustedCertificateStore.setDefaultUserDirectory", 79);
    if (rc != 0) {
        return rc;
    }

    jclass thread_class = (*env)->FindClass(env, "android/app/ActivityThread");
    if (thread_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step ActivityThread class failed");
        return 80;
    }
    jmethodID initialize_modules = (*env)->GetStaticMethodID(
        env, thread_class, "initializeMainlineModules", "()V");
    if (initialize_modules == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step initializeMainlineModules lookup failed");
        return 81;
    }
    (*env)->CallStaticVoidMethod(env, thread_class, initialize_modules);
    rc = check_activity_step(env, "step initializeMainlineModules", 82);
    if (rc != 0) {
        return rc;
    }

    jclass looper_class = (*env)->FindClass(env, "android/os/Looper");
    if (looper_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Looper class failed");
        return 83;
    }
    jmethodID prepare_main = (*env)->GetStaticMethodID(
        env, looper_class, "prepareMainLooper", "()V");
    if (prepare_main == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Looper.prepareMainLooper lookup failed");
        return 84;
    }
    (*env)->CallStaticVoidMethod(env, looper_class, prepare_main);
    rc = check_activity_step(env, "step Looper.prepareMainLooper", 85);
    if (rc != 0) {
        return rc;
    }

    jclass process_class = (*env)->FindClass(env, "android/os/Process");
    if (process_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Process class failed");
        return 86;
    }
    jmethodID set_argv0 = (*env)->GetStaticMethodID(
        env, process_class, "setArgV0", "(Ljava/lang/String;)V");
    if (set_argv0 == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step Process.setArgV0 lookup failed");
        return 87;
    }
    jstring pre_initialized = (*env)->NewStringUTF(env, "<pre-initialized>");
    (*env)->CallStaticVoidMethod(env, process_class, set_argv0, pre_initialized);
    rc = check_activity_step(env, "step Process.setArgV0", 88);
    if (rc != 0) {
        return rc;
    }

    jmethodID ctor = (*env)->GetMethodID(env, thread_class, "<init>", "()V");
    if (ctor == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step ActivityThread constructor lookup failed");
        return 89;
    }
    jobject thread = (*env)->NewObject(env, thread_class, ctor);
    rc = check_activity_step(env, "step ActivityThread.<init>", 90);
    if (rc != 0) {
        return rc;
    }

    jmethodID attach = (*env)->GetMethodID(env, thread_class, "attach", "(ZJ)V");
    if (attach == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "step ActivityThread.attach lookup failed");
        return 91;
    }
    (*env)->CallVoidMethod(env, thread, attach, (jboolean)JNI_FALSE, (jlong)0);
    rc = check_activity_step(env, "step ActivityThread.attach", 92);
    if (rc != 0) {
        return rc;
    }

    if (skip_trace_step) {
        log_text("step Trace.traceEnd skipped");
    } else {
        jclass trace_class = (*env)->FindClass(env, "android/os/Trace");
        if (trace_class == 0 || (*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "step Trace class for end failed");
            return 93;
        }
        jmethodID trace_end = (*env)->GetStaticMethodID(env, trace_class, "traceEnd", "(J)V");
        if (trace_end == 0 || (*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "step Trace.traceEnd lookup failed");
            return 93;
        }
        (*env)->CallStaticVoidMethod(env, trace_class, trace_end, (jlong)0x40);
        rc = check_activity_step(env, "step Trace.traceEnd", 94);
        if (rc != 0) {
            return rc;
        }
    }

    log_text("activityThreadStepProbe reached before Looper.loop\n");
    return 0;
}

typedef struct {
    JavaVM *vm;
    jclass probe_class;
    jmethodID main_method;
    jstring arg0;
    jstring arg1;
    jstring arg2;
    jint rc;
} embedded_fat_args;

/* Absolute-path heartbeat that does not go through Java (diagnoses fat-thread I/O). */
static void c_write_heartbeat(const char *path, const char *text)
{
    long fd = syscall4(56, AT_FDCWD, (long)path,
        O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        log_int("c_write_heartbeat open rc=", (int)fd);
        return;
    }
    syscall3(64, fd, (long)text, slen(text));
    syscall3(57, fd, 0, 0);
}

static void *embedded_fat_thread(void *opaque)
{
    embedded_fat_args *a = (embedded_fat_args *)opaque;
    JNIEnv *fat_env = 0;
    c_write_heartbeat("/data/local/tmp/w001-c-before-attach.txt", "before AttachCurrentThread");
    if ((*a->vm)->AttachCurrentThread(a->vm, (void **)&fat_env, 0) != 0 || fat_env == 0) {
        c_write_heartbeat("/data/local/tmp/w001-c-attach-fail.txt", "AttachCurrentThread failed");
        a->rc = 97;
        return 0;
    }
    c_write_heartbeat("/data/local/tmp/w001-c-before-java.txt", "before CallStaticIntMethod");
    /* Also exercise the same nativeWriteText path Java uses, from this thread. */
    {
        jstring pj = (*fat_env)->NewStringUTF(fat_env, "/data/local/tmp/w001-c-nativetest.txt");
        jstring tj = (*fat_env)->NewStringUTF(fat_env, "nativeWriteText from fat thread");
        if (pj != 0 && tj != 0 && !(*fat_env)->ExceptionCheck(fat_env)) {
            westlake_native_write_text(fat_env, a->probe_class, pj, tj);
        }
        if ((*fat_env)->ExceptionCheck(fat_env)) {
            describe_pending_exception(fat_env, "fat-thread nativeWriteText test threw");
            (*fat_env)->ExceptionClear(fat_env);
        }
    }
    a->rc = (*fat_env)->CallStaticIntMethod(
        fat_env, a->probe_class, a->main_method, a->arg0, a->arg1, a->arg2);
    if ((*fat_env)->ExceptionCheck(fat_env)) {
        describe_pending_exception(fat_env, "embeddedMainNoExit on fat stack threw");
        a->rc = 99;
        (*fat_env)->ExceptionClear(fat_env);
    }
    {
        char rcbuf[32];
        /* tiny itoa for heartbeat */
        int v = (int)a->rc;
        int neg = 0;
        unsigned int pos = 0;
        char tmp[16];
        unsigned int n = 0;
        if (v < 0) { neg = 1; v = -v; }
        do { tmp[n++] = (char)('0' + (v % 10)); v /= 10; } while (v && n < sizeof(tmp));
        if (neg) rcbuf[pos++] = '-';
        while (n > 0 && pos + 1 < sizeof(rcbuf)) rcbuf[pos++] = tmp[--n];
        rcbuf[pos] = 0;
        c_write_heartbeat("/data/local/tmp/w001-c-after-java.txt", rcbuf);
    }
    (*a->vm)->DetachCurrentThread(a->vm);
    return 0;
}

static int register_trace_natives_on(JNIEnv *env, jclass trace_class, const char *label)
{
    if (trace_class == 0) {
        return -1;
    }
    JNINativeMethod tmethods[] = {
        {"nativeGetEnabledTags", "()J",
            (void *)Java_android_os_Trace_nativeGetEnabledTags},
        {"nativeIsTagEnabled", "(J)Z",
            (void *)Java_android_os_Trace_nativeIsTagEnabled},
        {"nativeSetAppTracingAllowed", "(Z)V",
            (void *)Java_android_os_Trace_nativeSetAppTracingAllowed},
        {"nativeSetTracingEnabled", "(Z)V",
            (void *)Java_android_os_Trace_nativeSetTracingEnabled},
        {"nativeTraceBegin", "(JLjava/lang/String;)V",
            (void *)Java_android_os_Trace_nativeTraceBegin},
        {"nativeTraceEnd", "(J)V",
            (void *)Java_android_os_Trace_nativeTraceEnd},
        {"nativeTraceCounter", "(JLjava/lang/String;J)V",
            (void *)Java_android_os_Trace_nativeTraceCounter},
    };
    int registered = 0;
    int count = (int)(sizeof(tmethods) / sizeof(tmethods[0]));
    for (int i = 0; i < count; i++) {
        jint trc = (*env)->RegisterNatives(env, trace_class, &tmethods[i], 1);
        if (trc == 0 && !(*env)->ExceptionCheck(env)) {
            registered++;
        } else {
            (*env)->ExceptionClear(env);
        }
    }
    log_text(label);
    log_int("RegisterNatives Trace individual count=", registered);
    return registered > 0 ? 0 : -1;
}

/* P2 (user-authorized 2026-07-11, revised after crash): bind the boot Trace natives by
 * writing ptr_sized_fields_.data_ (== entry_point_from_jni_) directly on each ArtMethod.
 * This is exactly what ArtMethod::SetEntryPointFromJni does — the proven load-bearing
 * primitive in this tree (dalvikvm.cc:3361 "Route ThreadLocal.nextHashCode -> native"
 * does m.SetEntryPointFromJni(fn) under ScopedObjectAccess and it works).
 * We do NOT use the exported art::ClassLinker::RegisterNative: it routes through
 * Runtime::Current()->GetRuntimeCallbacks()->RegisterNativeMethod, which needs
 * mutator-lock / kRunnable thread state we do not hold in a raw JNI native -> it
 * segfaulted (probe died right after post-init RegisterNatives, before the heartbeat).
 * A plain field write needs no thread state or locks. jmethodID == ArtMethod*
 * (dalvikvm.cc:1548 reinterpret_cast, :3308 DecodeArtMethod); on 64-bit ART the JNI
 * code slot is data_ at offset 16 (declaring_class_ 4 + access_flags_ 4 +
 * dex_method_index_ 4 + method_index_ 2 + hotness/imt 2 = 16). The framework's Resources
 * ctor reads exactly this slot via GetEntryPointFromJni() in the interpreter ZJ branch
 * (interpreter.cc:2314). Writes a hex proof to /data/local/tmp/w001-p2.txt.
 * Returns: 0 re-call returned (no ULE); 1 re-call still ULE (quick path may differ from
 * the interpreter path — trust the oracle); 2 other exception; m4 no id; m9 n/a. */
#define WESTLAKE_ARTMETHOD_JNI_OFFSET 16
static int westlake_p2_direct_bind_trace(JNIEnv *env, jclass trace_class)
{
    struct trace_native { const char *name; const char *sig; const void *fn; };
    struct trace_native tb[] = {
        {"nativeGetEnabledTags", "()J", (const void *)Java_android_os_Trace_nativeGetEnabledTags},
        {"nativeIsTagEnabled", "(J)Z", (const void *)Java_android_os_Trace_nativeIsTagEnabled},
        {"nativeSetAppTracingAllowed", "(Z)V", (const void *)Java_android_os_Trace_nativeSetAppTracingAllowed},
        {"nativeSetTracingEnabled", "(Z)V", (const void *)Java_android_os_Trace_nativeSetTracingEnabled},
        {"nativeTraceBegin", "(JLjava/lang/String;)V", (const void *)Java_android_os_Trace_nativeTraceBegin},
        {"nativeTraceEnd", "(J)V", (const void *)Java_android_os_Trace_nativeTraceEnd},
        {"nativeTraceCounter", "(JLjava/lang/String;J)V", (const void *)Java_android_os_Trace_nativeTraceCounter},
    };
    unsigned int i;
    int poked = 0;
    jmethodID mid0;
    void *before0 = 0;
    void *after0 = 0;
    if (trace_class == 0) {
        return -9;
    }
    log_text("W001 P2 enter (field-poke SetEntryPointFromJni)");
    for (i = 0; i < sizeof(tb) / sizeof(tb[0]); i++) {
        jmethodID mid = (*env)->GetStaticMethodID(env, trace_class, tb[i].name, tb[i].sig);
        void **slot;
        if (mid == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            continue;
        }
        slot = (void **)((unsigned char *)mid + WESTLAKE_ARTMETHOD_JNI_OFFSET);
        if (i == 0) {
            before0 = *slot;
        }
        *slot = (void *)tb[i].fn;   /* == ArtMethod::SetEntryPointFromJni(fn) */
        poked++;
    }
    log_text("W001 P2 poked");
    mid0 = (*env)->GetStaticMethodID(env, trace_class, "nativeGetEnabledTags", "()J");
    if (mid0 == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return -4;
    }
    after0 = *(void **)((unsigned char *)mid0 + WESTLAKE_ARTMETHOD_JNI_OFFSET);
    /* proof the write took + offset is sane: mid, before/after @16, our fn, poked count */
    {
        static const char *HX = "0123456789abcdef";
        const void *vals[4];
        const char *labels[4];
        char dbg[192];
        unsigned int dp = 0;
        unsigned int vi;
        vals[0] = (const void *)mid0;                                       labels[0] = "mid=";
        vals[1] = before0;                                                  labels[1] = " b4@16=";
        vals[2] = after0;                                                   labels[2] = " now@16=";
        vals[3] = (const void *)Java_android_os_Trace_nativeGetEnabledTags; labels[3] = " ourfn=";
        for (vi = 0; vi < 4; vi++) {
            const char *lp = labels[vi];
            unsigned long uv = (unsigned long)vals[vi];
            int sh;
            while (*lp != 0 && dp + 1 < sizeof(dbg)) {
                dbg[dp++] = *lp++;
            }
            for (sh = 60; sh >= 0 && dp + 1 < sizeof(dbg); sh -= 4) {
                dbg[dp++] = HX[(uv >> sh) & 0xf];
            }
        }
        if (dp + 5 < sizeof(dbg)) {
            dbg[dp++] = ' '; dbg[dp++] = 'p'; dbg[dp++] = 'k'; dbg[dp++] = '=';
            dbg[dp++] = (char)('0' + (poked & 0xf));
        }
        if (dp + 1 < sizeof(dbg)) {
            dbg[dp++] = '\n';
        }
        dbg[dp] = 0;
        c_write_heartbeat("/data/local/tmp/w001-p2.txt", dbg);
    }
    log_text("W001 P2 recall begin");
    (*env)->CallStaticLongMethod(env, trace_class, mid0);
    if ((*env)->ExceptionCheck(env)) {
        jthrowable ex = (*env)->ExceptionOccurred(env);
        int rc = 2;
        jclass ule;
        (*env)->ExceptionClear(env);
        ule = (*env)->FindClass(env, "java/lang/UnsatisfiedLinkError");
        if (ule != 0 && ex != 0 && (*env)->IsInstanceOf(env, ex, ule)) {
            rc = 1;
        }
        (*env)->ExceptionClear(env);
        log_text("W001 P2 recall ULE/other");
        return rc;
    }
    log_text("W001 P2 recall ok (no ULE)");
    return 0;
}

/* Dual Trace classes: FindClass may bind the wrong one. Re-bind using AssetManager's loader. */
static void reregister_trace_via_assetmanager_loader(JNIEnv *env)
{
    jclass am_cls = (*env)->FindClass(env, "android/content/res/AssetManager");
    if (am_cls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("W001: AssetManager class missing for Trace rebind");
        return;
    }
    jclass class_cls = (*env)->FindClass(env, "java/lang/Class");
    if (class_cls == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return;
    }
    jmethodID get_cl = (*env)->GetMethodID(
        env, class_cls, "getClassLoader", "()Ljava/lang/ClassLoader;");
    if (get_cl == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return;
    }
    jobject loader = (*env)->CallObjectMethod(env, am_cls, get_cl);
    if (loader == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        log_text("W001: AssetManager ClassLoader null");
        return;
    }
    jclass loader_cls = (*env)->GetObjectClass(env, loader);
    jmethodID load_class = (*env)->GetMethodID(
        env, loader_cls, "loadClass", "(Ljava/lang/String;)Ljava/lang/Class;");
    if (load_class == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return;
    }
    jstring tname = (*env)->NewStringUTF(env, "android.os.Trace");
    jclass trace = (jclass)(*env)->CallObjectMethod(env, loader, load_class, tname);
    if (trace == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "W001: loadClass android.os.Trace via AM loader failed");
        (*env)->ExceptionClear(env);
        return;
    }
    register_trace_natives_on(env, trace, "W001: AM-loader Trace");
    /* Same dual-class issue for System.currentTimeMillis (Thread.join). */
    jstring sname = (*env)->NewStringUTF(env, "java.lang.System");
    jclass system = (jclass)(*env)->CallObjectMethod(env, loader, load_class, sname);
    if (system != 0 && !(*env)->ExceptionCheck(env)) {
        JNINativeMethod smethods[] = {
            {"currentTimeMillis", "()J", (void *)Java_java_lang_System_currentTimeMillis},
            {"nanoTime", "()J", (void *)Java_java_lang_System_nanoTime},
        };
        jint src = (*env)->RegisterNatives(env, system, smethods, 2);
        if (src != 0 || (*env)->ExceptionCheck(env)) {
            log_text("W001: AM-loader System RegisterNatives failed");
            (*env)->ExceptionClear(env);
        } else {
            log_text("W001: AM-loader System RegisterNatives ok");
        }
    } else {
        (*env)->ExceptionClear(env);
    }
}

/* Resolve android.os.Trace through the classloader that DEFINED anchor_cls, and
 * RegisterNatives on it. On imageless ART the boot classpath can hold two Trace
 * mirror::Class objects (core-libart.jar loaded via boot image AND via the tolerant-
 * JAR path); the Resources ctor links against whichever one Resources' own loader
 * resolves. FindClass from our probe frame reaches a DIFFERENT one, so binding it is
 * a no-op for the ctor. This targets the exact class Resources will use.
 * Returns the Trace jclass via *out_trace (local ref) and rc: 0 ok, -1 RegisterNatives
 * failed, -2 no anchor/class, -3 anchor loader null (boot-defined — see caller). */
static int bind_trace_via_class_loader(JNIEnv *env, const char *anchor_bin,
    const char *label, jclass *out_trace)
{
    if (out_trace != 0) { *out_trace = 0; }
    jclass anchor = (*env)->FindClass(env, anchor_bin);
    if (anchor == 0 || (*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        return -2;
    }
    jclass class_cls = (*env)->FindClass(env, "java/lang/Class");
    jmethodID get_cl = (*env)->GetMethodID(
        env, class_cls, "getClassLoader", "()Ljava/lang/ClassLoader;");
    if (get_cl == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return -2; }
    jobject loader = (*env)->CallObjectMethod(env, anchor, get_cl);
    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return -2; }
    if (loader == 0) {
        /* anchor is boot-defined; its Trace is reached via boot FindClass. */
        return -3;
    }
    jclass loader_cls = (*env)->GetObjectClass(env, loader);
    jmethodID load_class = (*env)->GetMethodID(
        env, loader_cls, "loadClass", "(Ljava/lang/String;)Ljava/lang/Class;");
    if (load_class == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return -2; }
    jstring tname = (*env)->NewStringUTF(env, "android.os.Trace");
    jclass trace = (jclass)(*env)->CallObjectMethod(env, loader, load_class, tname);
    if (trace == 0 || (*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); return -2; }
    if (out_trace != 0) { *out_trace = trace; }
    return register_trace_natives_on(env, trace, label);
}

/* W-001 (LOAD-BEARING FIX): register the sidecar itself as a *system* (null-classloader)
 * JNI library via art::JavaVMExt::LoadNativeLibrary, so ART's automatic JNI linking
 * (Libraries::FindNativeMethod) resolves our exported Java_android_os_Trace_* for EVERY
 * boot-defined (null-loader) Trace mirror::Class at once — including the one ResourcesImpl
 * reaches via ClassLinker::ResolveType, which no FindClass/loadClass handle can name.
 * This is the advisor-validated path: null-loader libs share the boot LinearAlloc, so a
 * single registration covers both dual Trace copies. LoadNativeLibrary is exported
 * (GLOBAL DEFAULT) from libwestlake_art.so; we dlsym it by its exact AOSP-15/libc++(__n1)
 * mangled name. std::string args use libc++ SSO (short-string) layout: a 24-byte,
 * 8-aligned buffer where byte0 = len<<1 (is_long bit = 0) and the chars follow at [1..].
 * We pass a SHORT path (<=22 chars) so SSO always applies (long layout's cap-encoding is
 * ABI-fragile). The launcher copies the sidecar to that short path; the constructor
 * re-entry guard makes the resulting second load a no-op.
 * Returns 0 ok / -1 LoadNativeLibrary returned false / -2 dlsym miss / -3 no vm/handle. */
static int westlake_register_sidecar_as_system_lib(JNIEnv *env)
{
    if (westlake_art_handle == 0 || g_probe_vm == 0) {
        return -3;
    }
    typedef unsigned char (*lnl_fn)(void *self, JNIEnv *env, const void *path_str,
        void *class_loader, void *caller, void *err_str);
    lnl_fn lnl = (lnl_fn)dlsym(westlake_art_handle,
        "_ZN3art9JavaVMExt17LoadNativeLibraryEP7_JNIEnvRKNSt4__n1"
        "12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP8_jobjectP7_jclassPS9_");
    if (lnl == 0) {
        log_text("W001 syslib: dlsym LoadNativeLibrary miss");
        return -2;
    }
    /* libc++ SSO std::string buffers (8-aligned for the union's size_t/ptr fields). */
    unsigned char path_str[24] __attribute__((aligned(8)));
    unsigned char err_str[24] __attribute__((aligned(8)));
    const char *path = "/data/local/tmp/w1.so"; /* 21 chars -> SSO */
    int i;
    for (i = 0; i < 24; i++) { path_str[i] = 0; err_str[i] = 0; }
    int n = 0;
    while (path[n] != 0) n++;
    path_str[0] = (unsigned char)(n << 1); /* short: is_long=0, size=n */
    for (i = 0; i < n; i++) { path_str[1 + i] = (unsigned char)path[i]; }
    /* err_str all-zero = empty short std::string (valid, no heap). */

    /* Diagnostic sink -> /data/local/tmp/w001-syslib.txt. Everything here is
     * segfault-safe: our own dlopen returns a plain char* dlerror, and we only
     * hex-dump / SSO-decode err_str (never dereference an uncertain long-string
     * pointer, which could crash the probe mid-oracle). */
    char diag[512];
    unsigned int dp = 0;
    #define DPUT(str) do { const char *dq=(str); while(*dq && dp+1<sizeof(diag)) diag[dp++]=*dq++; } while(0)
    DPUT("path=/data/local/tmp/w1.so\n");
    {
        void *hn = dlopen(path, RTLD_NOW | 4 /*RTLD_NOLOAD*/);
        DPUT(hn ? "noload=already-mapped\n" : "noload=not-mapped\n");
        (void)dlerror();
        void *h2 = dlopen(path, RTLD_NOW);
        if (h2 == 0) {
            char *e = dlerror();
            DPUT("selfdlopen=NULL err="); DPUT(e ? e : "(none)"); DPUT("\n");
        } else {
            DPUT("selfdlopen=ok\n");
        }
    }

    jclass obj_cls = (*env)->FindClass(env, "java/lang/Object");
    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); obj_cls = 0; }
    DPUT(obj_cls ? "objcls=ok\n" : "objcls=null\n");
    DPUT(g_probe_vm ? "vm=set\n" : "vm=null\n");

    unsigned char ok = lnl((void *)g_probe_vm, env, (const void *)path_str,
        0 /*class_loader = null => system/boot library*/,
        (void *)obj_cls /*caller = java.lang.Object (boot namespace)*/,
        (void *)err_str);
    if ((*env)->ExceptionCheck(env)) { DPUT("lnl-threw-exc\n"); (*env)->ExceptionClear(env); }
    DPUT(ok ? "lnl=true\n" : "lnl=false\n");

    /* Raw err_str std::string: 24 bytes hex + SSO-decoded text when short. */
    DPUT("errhex=");
    {
        const char *hx = "0123456789abcdef";
        for (i = 0; i < 24 && dp + 2 < (int)sizeof(diag); i++) {
            diag[dp++] = hx[(err_str[i] >> 4) & 0xf];
            diag[dp++] = hx[err_str[i] & 0xf];
        }
    }
    DPUT("\n");
    if ((err_str[0] & 1) == 0) {
        unsigned int sz = err_str[0] >> 1;
        DPUT("errmsg(sso)=");
        for (i = 0; i < (int)sz && i < 22 && dp + 1 < (int)sizeof(diag); i++) {
            char c = (char)err_str[1 + i];
            diag[dp++] = (c >= 32 && c < 127) ? c : '.';
        }
        DPUT("\n");
    } else {
        /* libc++ long std::string: {cap@0, size@8, data*@16}. LoadNativeLibrary
         * copies the C error into this std::string (heap-owned, alive because we
         * never destruct it) -> safe to read `size` bytes at the data pointer. */
        unsigned long sz = *(unsigned long *)(err_str + 8);
        char *msgp = *(char **)(err_str + 16);
        unsigned long k;
        DPUT("errmsg(long)=");
        if (msgp != 0) {
            for (k = 0; k < sz && k < 240 && dp + 1 < (int)sizeof(diag); k++) {
                char c = msgp[k];
                diag[dp++] = (c >= 32 && c < 127) ? c : '.';
            }
        }
        DPUT("\n");
    }
    #undef DPUT
    diag[dp] = 0;
    c_write_heartbeat("/data/local/tmp/w001-syslib.txt", diag);

    log_text(ok ? "W001 syslib: LoadNativeLibrary ok" : "W001 syslib: LoadNativeLibrary false");
    return ok ? 0 : -1;
}

/* W-001: bind android.os.Trace natives on EVERY Trace class handle we can reach —
 * boot FindClass, am-instance loader, AND (the load-bearing one) the loader that
 * defined android.content.res.Resources — right before the early oracle constructs
 * Resources. On imageless ART the dual-class hazard means RegisterNatives on the
 * wrong mirror::Class silently leaves nativeIsTagEnabled unbound (that is the
 * Resources-ctor UnsatisfiedLinkError). Writes to /data/local/tmp/w001-trace.txt:
 *   boot=<rc> amldr=<rc> res=<rc> same=<0|1>
 * where rc: 0 ok / m1 RegisterNatives failed / m2 no class / m3 loader null(boot),
 * and same = IsSameObject(bootTrace, resTrace) (1 => the two are the identical
 * mirror::Class; 0 => confirmed distinct boot-level Trace classes). */
static void westlake_native_w001_bind_trace(JNIEnv *env, jclass clazz, jobject am)
{
    (void)clazz;
    int rc_boot = -2;
    int rc_amldr = -2;
    int rc_res = -2;
    int same_br = -1;
    int rc_bcall = -9; /* call-test on boot_trace: 0 callable, 1 ULE, 2 other, -9 n/a */
    int rc_init = -9;  /* force-init Trace: 0 ok, 1 threw, -9 n/a */
    int rc_bcall2 = -9;/* call-test after force-init + re-register */
    int rc_crn = -9;   /* P2 direct ClassLinker::RegisterNative bind: 0 ULE cleared, 1 still ULE */
    /* LOAD-BEARING: register the sidecar as a null-loader system JNI library so ART
     * auto-links Java_android_os_Trace_* for the ResolveType-reached boot Trace that
     * no handle can name. The RegisterNatives-by-handle attempts below are kept as a
     * belt but cannot reach that class (proven: boot=0 didn't clear the ULE). */
    int rc_syslib = westlake_register_sidecar_as_system_lib(env);
    jclass boot_trace = (*env)->FindClass(env, "android/os/Trace");
    if (boot_trace != 0 && !(*env)->ExceptionCheck(env)) {
        rc_boot = register_trace_natives_on(env, boot_trace, "W001 bindTrace boot");
        /* DECISIVE: after registering on the FindClass Trace, actually CALL
         * nativeIsTagEnabled(0) on it. If it returns -> our class is genuinely bound
         * and the ULE proves the framework resolves a DIFFERENT Trace (true dual
         * class). If it ULEs here too -> RegisterNatives silently no-op'd on this
         * very class (registration bug, not dual class). */
        jmethodID mid = (*env)->GetStaticMethodID(env, boot_trace, "nativeIsTagEnabled", "(J)Z");
        if (mid != 0 && !(*env)->ExceptionCheck(env)) {
            (*env)->CallStaticBooleanMethod(env, boot_trace, mid, (jlong)0);
            if ((*env)->ExceptionCheck(env)) {
                jthrowable ex = (*env)->ExceptionOccurred(env);
                (*env)->ExceptionClear(env);
                rc_bcall = 2;
                jclass ule = (*env)->FindClass(env, "java/lang/UnsatisfiedLinkError");
                if (ule != 0 && ex != 0 && (*env)->IsInstanceOf(env, ex, ule)) {
                    rc_bcall = 1;
                }
                (*env)->ExceptionClear(env);
            } else {
                rc_bcall = 0;
            }
        } else {
            (*env)->ExceptionClear(env);
        }
        /* EXPERIMENT: is RegisterNatives failing to stick because the class isn't
         * initialized (link resets entry_point_from_jni_ to the dlsym stub)? Force
         * <clinit> by reading a static field, RE-register, then call again. If
         * bcall2=0 while bcall=1, registering post-init is the (non-forbidden) fix. */
        jfieldID tag = (*env)->GetStaticFieldID(env, boot_trace, "TRACE_TAG_ALWAYS", "J");
        if (tag == 0 || (*env)->ExceptionCheck(env)) {
            (*env)->ExceptionClear(env);
            tag = (*env)->GetStaticFieldID(env, boot_trace, "TRACE_TAG_APP", "J");
            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); tag = 0; }
        }
        if (tag != 0) {
            (*env)->GetStaticLongField(env, boot_trace, tag); /* triggers <clinit> */
            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); rc_init = 1; }
            else { rc_init = 0; }
        }
        /* re-register post-init, then re-call */
        register_trace_natives_on(env, boot_trace, "W001 bindTrace boot(post-init)");
        (*env)->ExceptionClear(env);
        jmethodID mid2 = (*env)->GetStaticMethodID(env, boot_trace, "nativeIsTagEnabled", "(J)Z");
        if (mid2 != 0 && !(*env)->ExceptionCheck(env)) {
            (*env)->CallStaticBooleanMethod(env, boot_trace, mid2, (jlong)0);
            if ((*env)->ExceptionCheck(env)) {
                jthrowable ex2 = (*env)->ExceptionOccurred(env);
                (*env)->ExceptionClear(env);
                rc_bcall2 = 2;
                jclass ule2 = (*env)->FindClass(env, "java/lang/UnsatisfiedLinkError");
                if (ule2 != 0 && ex2 != 0 && (*env)->IsInstanceOf(env, ex2, ule2)) { rc_bcall2 = 1; }
                (*env)->ExceptionClear(env);
            } else {
                rc_bcall2 = 0;
            }
        } else {
            (*env)->ExceptionClear(env);
        }
        /* P2 (user-authorized): bypass the no-op JNIEnv->RegisterNatives by setting
         * entry_point_from_jni_ directly on the boot Trace's ArtMethods via the exported
         * art::ClassLinker::RegisterNative. This is the load-bearing fix for the ULE. */
        rc_crn = westlake_p2_direct_bind_trace(env, boot_trace);
    } else {
        (*env)->ExceptionClear(env);
    }
    if (am != 0) {
        jobject loader = westlake_loader_for_am(env, am);
        if (loader != 0 && !(*env)->ExceptionCheck(env)) {
            jclass loader_cls = (*env)->GetObjectClass(env, loader);
            jmethodID load_class = (*env)->GetMethodID(
                env, loader_cls, "loadClass", "(Ljava/lang/String;)Ljava/lang/Class;");
            if (load_class != 0 && !(*env)->ExceptionCheck(env)) {
                jstring tname = (*env)->NewStringUTF(env, "android.os.Trace");
                jclass am_trace = (jclass)(*env)->CallObjectMethod(env, loader, load_class, tname);
                if (am_trace != 0 && !(*env)->ExceptionCheck(env)) {
                    rc_amldr = register_trace_natives_on(env, am_trace, "W001 bindTrace amloader");
                } else {
                    (*env)->ExceptionClear(env);
                }
            } else {
                (*env)->ExceptionClear(env);
            }
        } else {
            (*env)->ExceptionClear(env);
        }
    }
    /* Load-bearing: bind the Trace that Resources' own loader resolves. */
    {
        jclass res_trace = 0;
        rc_res = bind_trace_via_class_loader(
            env, "android/content/res/Resources", "W001 bindTrace resLoader", &res_trace);
        if (rc_res == -3) {
            /* Resources is boot-defined: its Trace == boot FindClass Trace. */
            rc_res = rc_boot;
            res_trace = boot_trace;
        }
        if (res_trace != 0 && boot_trace != 0) {
            same_br = (*env)->IsSameObject(env, res_trace, boot_trace) ? 1 : 0;
        }
    }
    /* Belt: the existing FindClass-AssetManager rebind. */
    reregister_trace_via_assetmanager_loader(env);
    {
        char buf[128];
        unsigned int pos = 0;
        unsigned int i;
        const char *p;
        #define W001_EMIT_RC(prefix, rc) do { \
            p = (prefix); i = 0; \
            while (p[i] != 0 && pos + 3 < sizeof(buf)) buf[pos++] = p[i++]; \
            if ((rc) < 0) { buf[pos++] = 'm'; buf[pos++] = (char)('0' - (rc)); } \
            else { buf[pos++] = (char)('0' + (rc)); } \
        } while (0)
        W001_EMIT_RC("trace boot=", rc_boot);
        W001_EMIT_RC(" amldr=", rc_amldr);
        W001_EMIT_RC(" res=", rc_res);
        W001_EMIT_RC(" same=", same_br);
        W001_EMIT_RC(" syslib=", rc_syslib);
        W001_EMIT_RC(" bcall=", rc_bcall);
        W001_EMIT_RC(" init=", rc_init);
        W001_EMIT_RC(" bcall2=", rc_bcall2);
        W001_EMIT_RC(" crn=", rc_crn);
        #undef W001_EMIT_RC
        buf[pos++] = '\n';
        buf[pos] = 0;
        c_write_heartbeat("/data/local/tmp/w001-trace.txt", buf);
    }
}

static jint call_embedded_main_no_exit(JNIEnv *env, const char *stage,
    jclass probe_class, jmethodID main_method,
    jstring arg0, jstring arg1, jstring arg2)
{
    /* W-001: do NOT wrap in a native pthread.
     * AttachCurrentThread on a fresh 8MB pthread dies before Java (only
     * w001-c-before-attach appears). Constructor/toybox thread already has a
     * valid JNIEnv; Java early oracle uses sync path on this thread. */
    (void)stage;
    c_write_heartbeat("/data/local/tmp/w001-c-direct-java.txt", "CallStaticIntMethod on constructor thread");
    reregister_trace_via_assetmanager_loader(env);
    {
        jstring pj = (*env)->NewStringUTF(env, "/data/local/tmp/w001-c-nativetest.txt");
        jstring tj = (*env)->NewStringUTF(env, "nativeWriteText from constructor thread");
        if (pj != 0 && tj != 0 && !(*env)->ExceptionCheck(env)) {
            westlake_native_write_text(env, probe_class, pj, tj);
        }
        if ((*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "constructor-thread nativeWriteText test threw");
            (*env)->ExceptionClear(env);
        }
    }
    jint rc = (*env)->CallStaticIntMethod(
        env, probe_class, main_method, arg0, arg1, arg2);
    if ((*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "embeddedMainNoExit on constructor thread threw");
        (*env)->ExceptionClear(env);
        return 99;
    }
    return rc;
}

/* [5583 2026-07-19] Late-stage SIGSEGV diagnostics. The render path (nativeInit ->
 * RenderProxy) dies without a faultloggerd dump and without any handler output, so the
 * crash site is invisible. Install an SA_SIGINFO handler that logs the fault address and
 * PC, then restores the default disposition and re-raises so the normal dump still happens.
 * Opt-in via WL_SEGV_DIAG=1 so ordinary runs are untouched. */
static void wl_segv_diag(int sig, siginfo_t *si, void *ucv)
{
    static const char hexd[] = "0123456789abcdef";
    char msg[128];
    unsigned long p = 0;
    const char *pre = "WLSEGV sig=";
    for (int i = 0; pre[i]; i++) msg[p++] = pre[i];
    msg[p++] = (char)('0' + (sig % 10));
    const char *fa = " fault=0x";
    for (int i = 0; fa[i]; i++) msg[p++] = fa[i];
    unsigned long long addr = (unsigned long long)(uintptr_t)(si ? si->si_addr : 0);
    for (int i = 15; i >= 0; i--) msg[p++] = hexd[(addr >> (i * 4)) & 0xf];
    unsigned long long pc = 0, lr = 0;
    if (ucv != 0) {
        pc = (unsigned long long)((ucontext_t *)ucv)->uc_mcontext.pc;
        lr = (unsigned long long)((ucontext_t *)ucv)->uc_mcontext.regs[30];
    }
    const char *pcs = " pc=0x";
    for (int i = 0; pcs[i]; i++) msg[p++] = pcs[i];
    for (int i = 15; i >= 0; i--) msg[p++] = hexd[(pc >> (i * 4)) & 0xf];
    /* lr is the return address into the CALLER of __android_log_assert -- i.e. the actual
     * LOG_ALWAYS_FATAL_IF site. Report it as a module-relative offset so it can be mapped
     * straight onto libhwui.so with objdump/nm; the raw address is ASLR'd and useless. */
    const char *lrs = " lr_off=0x";
    for (int i = 0; lrs[i]; i++) msg[p++] = lrs[i];
    /* Derive libhwui's load base from a symbol whose file offset is known
     * (readelf: Properties::isolatedProcess @ 0x48b1e0) -- dladdr/Dl_info are not
     * available in this freestanding build. */
    unsigned long long lroff = lr;
    {
        void *hw = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
        void *anchor = hw ? dlsym(hw, "_ZN7android10uirenderer10Properties15isolatedProcessE") : 0;
        if (anchor != 0) {
            unsigned long long base = (unsigned long long)(uintptr_t)anchor - 0x48b1e0ULL;
            if (lr > base) lroff = lr - base;
        }
    }
    for (int i = 15; i >= 0; i--) msg[p++] = hexd[(lroff >> (i * 4)) & 0xf];
    /* lr comes back equal to pc here: __android_log_assert saves and reuses x30, so the
     * real call site lives on the stack. Walk the AArch64 frame chain from x29 --
     * each frame is {saved_x29, saved_x30} -- and report two levels as module offsets. */
    {
        unsigned long long base = 0;
        void *hw2 = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
        void *anchor2 = hw2 ? dlsym(hw2, "_ZN7android10uirenderer10Properties15isolatedProcessE") : 0;
        if (anchor2 != 0) base = (unsigned long long)(uintptr_t)anchor2 - 0x48b1e0ULL;
        unsigned long long fp = ucv ? (unsigned long long)((ucontext_t *)ucv)->uc_mcontext.regs[29] : 0;
        for (int lvl = 0; lvl < 2 && fp != 0; lvl++) {
            unsigned long long *frame = (unsigned long long *)(uintptr_t)fp;
            unsigned long long ret = frame[1];
            const char *tag = lvl == 0 ? " cal0raw=0x" : " cal1raw=0x";
            for (int i = 0; tag[i]; i++) msg[p++] = tag[i];
            for (int i = 15; i >= 0; i--) msg[p++] = hexd[(ret >> (i * 4)) & 0xf];
            if (base != 0 && ret > base) {
                const char *tag2 = lvl == 0 ? " cal0hwui=0x" : " cal1hwui=0x";
                for (int i = 0; tag2[i]; i++) msg[p++] = tag2[i];
                unsigned long long off = ret - base;
                for (int i = 15; i >= 0; i--) msg[p++] = hexd[(off >> (i * 4)) & 0xf];
            }
            fp = frame[0];
        }
    }
    msg[p] = 0;
    log_text(msg);
    hlog_sel(msg);
    if (sig == SIGTRAP && streq(getenv("WL_TRAP_SKIP"), "1") && ucv != 0) {
        /* libhwui's LOG_ALWAYS_FATAL compiles to a brk; several of them carry no message,
         * so the only way to learn where we died is to record the PC. Stepping the PC past
         * the 4-byte brk lets the thread continue, which both reveals the next failure and
         * -- when the assert is not actually load-bearing -- can carry the frame through.
         * Opt-in (WL_TRAP_SKIP=1): skipping an assert is a diagnostic act, not a fix. */
        ((ucontext_t *)ucv)->uc_mcontext.pc += 4;
        return;
    }
    struct sigaction dfl = { .sa_handler = SIG_DFL, .sa_flags = 0 };
    sigaction(sig, &dfl, 0);
    raise(sig);
}

static void wl_install_segv_diag(void)
{
    if (!streq(getenv("WL_SEGV_DIAG"), "1")) return;
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sa.sa_sigaction = wl_segv_diag;
    sa.sa_flags = SA_SIGINFO;
    int sigs[] = { SIGSEGV, SIGBUS, SIGTRAP };
    for (int i = 0; i < 3; i++) sigaction(sigs[i], &sa, 0);
    log_text("WLSEGV diagnostics installed");
}

static int run_stage_probe(void *handle, void *create_vm_symbol, const char *stage_override)
{
    log_text("RUN_STAGE_PROBE ENTERED");
    wl_install_segv_diag();
    jni_create_java_vm_fn create_vm = (jni_create_java_vm_fn)create_vm_symbol;
    JavaVM *vm = 0;
    JNIEnv *env = 0;

    /* 10 slots: 8 base + optional -Xss override + optional -Ximage.
     * Board default Java stack is ~124KB; AssetManager/ApkAssets.loadFromPath
     * StackOverflows there during W-001 early oracle. Force 2m unless overridden. */
    JavaVMOption options[10];
    options[0].optionString = build_bootclasspath_option();
    options[0].extraInfo = 0;
    options[1].optionString = "-classpath";
    options[1].extraInfo = 0;
    options[2].optionString = build_classpath_value();
    options[2].extraInfo = 0;
    options[3].optionString = build_classpath_option();
    options[3].extraInfo = 0;
    options[4].optionString = "-Xverify:none";
    options[4].extraInfo = 0;
    options[5].optionString = "-Djava.io.tmpdir=/data/local/tmp";
    options[5].extraInfo = 0;
    options[6].optionString = "-Duser.home=/";
    options[6].extraInfo = 0;
    /* -Xint makes every native call go through ART's InterpreterJni, whose dispatch is a
     * set of hand-written shorty branches -- anything unhandled is silently dropped and
     * returns a typed zero, indistinguishable from success. That single fact is behind a
     * whole class of failures here: FontFamily.nAddFontWeightStyle (ZJLIII),
     * Font$Builder.nBuild (JJLLLIZI), and the resource natives that leave the whole UI
     * unstyled -- AssetManager.nativeThemeGetAttributeValue (IJJILZ) and
     * nativeRetrieveAttributes (ZJJLLL). Without -Xint, ART builds a real JNI stub per
     * method and marshals every signature correctly -- in principle.
     *
     * Measured on this board (WL_NO_XINT=1): it makes no difference. Both with -Xint replaced
     * by an inert option and with -Xusejit:false, the run still logs 408 "unhandled shorty"
     * lines and the frame is still empty. This ART goes through InterpreterJni regardless, so
     * the dropped-shorty class of failures cannot be escaped by relaxing the mode; it has to
     * be fixed in the interpreter's dispatch. The switch is kept only to keep that negative
     * result reproducible. */
    /* When switched off, substitute an inert option rather than shrinking the array: ART
     * then runs with its default JIT-backed configuration and builds real JNI stubs. */
    options[7].optionString = (getenv("WL_NO_XINT") != 0) ? "-Duser.language=en" : "-Xint";
    options[7].extraInfo = 0;

    int dayu_nopt = 8;
    {
        static char xss_buf[64];
        const char *xss = getenv("WESTLAKE_XSS");
        if (xss == 0 || xss[0] == 0) {
            xss = "2m";
        }
        /* snprintf may be unavailable in this freestanding-ish build; hand-build. */
        xss_buf[0] = '-'; xss_buf[1] = 'X'; xss_buf[2] = 's'; xss_buf[3] = 's';
        {
            size_t i = 0;
            while (xss[i] != 0 && i + 1 < sizeof(xss_buf) - 4) {
                xss_buf[4 + i] = xss[i];
                i++;
            }
            xss_buf[4 + i] = 0;
        }
        options[dayu_nopt].optionString = xss_buf;
        options[dayu_nopt].extraInfo = 0;
        dayu_nopt++;
        log_text("W001: Java stack -Xss");
        log_text(xss_buf);
    }
    {
        char *img = getenv("WESTLAKE_BOOT_IMAGE");
        if (img != 0 && img[0] == '1' && dayu_nopt < 10) {
            options[dayu_nopt].optionString = build_image_option();
            options[dayu_nopt].extraInfo = 0;
            dayu_nopt++;
            log_text("WESTLAKE_BOOT_IMAGE=1: adding -Ximage");
            log_text(options[dayu_nopt - 1].optionString);
        }
    }

    JavaVMInitArgs args;
    args.version = JNI_VERSION_1_6;
    args.nOptions = dayu_nopt;
    args.options = options;
    args.ignoreUnrecognized = JNI_FALSE;

    log_text("JNI_CreateJavaVM begin");
    log_text(options[0].optionString);
    log_text(options[1].optionString);
    log_text(options[2].optionString);
    log_text(options[3].optionString);
    jint rc = create_vm(&vm, (void **)&env, &args);
    log_int("JNI_CreateJavaVM rc=", (int)rc);
    if (rc != JNI_OK || env == 0) {
        return (int)rc;
    }
    g_probe_vm = vm;  // save for later use in stage probe

    call_optional_onload(handle, "JNI_OnLoad_icu", vm);
    call_optional_onload(handle, "JNI_OnLoad_javacore", vm);
    call_optional_onload(handle, "JNI_OnLoad_openjdk", vm);
    call_optional_onload(handle, "JNI_OnLoad_framework", vm);
    call_optional_onload(handle, "JNI_OnLoad_ohbridge", vm);
    /* W-001 arsc rebind: libandroidfw.so carries a real (WestLake-instrumented)
     * JNI_OnLoad @0x2ae46c that RegisterNatives the android.content.res.* stack
     * (ApkAssets/AssetManager/StringBlock/XmlBlock/Theme) onto the boot classes.
     * It is NOT one of `handle`'s variants above, and ART's Java System.load
     * dedups libandroidfw (already mmap'd as a transitive dep) so its JNI_OnLoad
     * never fired in the early-oracle path -> the res natives stayed on the
     * OHBridge no-op stubs (getResourceName=notfound, addAssetPath cookie 0,
     * uamHasWab=false). Grab the already-mapped handle via RTLD_NOLOAD and call
     * its JNI_OnLoad DIRECTLY, LAST (after ohbridge), so its RegisterNatives wins.
     * Evidence its parser works when reached: probe-logs/nativeload.txt shows
     * "[WL] LoadedArsc::Load => OK" for the assetProbe apk. */
    /* [W-005 2026-07-19] Force <clinit> of the android.content.res.* stack BEFORE
     * libandroidfw's JNI_OnLoad below. Same ordering rule the dex enforces in
     * Dayu600ApkStageProbe.ensureArscNatives(): these classes' OHBridge stub natives
     * must register FIRST so libandroidfw's RegisterNatives lands on top and wins.
     * If ApkAssets.<clinit> instead runs later (lazily, on the first loadFromPath),
     * OHBridge re-registers the stub AFTER libandroidfw and clobbers the real arsc
     * parser -> addAssetPath still hands back a cookie but the resource table is not
     * queryable (getResourceName fails even for framework ids). Only matters when we
     * seed the system AssetManager from here; harmless otherwise. */
    if (getenv("WESTLAKE_SEED_SYSASSETS") != 0) {
        static const char *res_classes[] = {
            "android.content.res.ApkAssets",
            "android.content.res.AssetManager",
            "android.content.res.XmlBlock",
            "android.content.res.StringBlock",
            "android.content.res.TypedArray",
        };
        /* AOSP's libc++.so (staged next to the AOSP libandroidfw chain) needs the
         * C++ unwinder ABI (_Unwind_Resume &c). On this board only OHOS's
         * libc++_shared.so exports those, and nothing pulls it in by itself — load it
         * RTLD_GLOBAL first so the AOSP chain relocates against it. */
        {
            void *cxx = dlopen_exec("android/lib64/libc++_shared.so",
                                    "libc++_shared.so", RTLD_NOW | RTLD_GLOBAL);
            if (cxx == 0) cxx = dlopen("libc++_shared.so", RTLD_NOW | RTLD_GLOBAL);
            log_text(cxx != 0 ? "unwinder: libc++_shared loaded global"
                              : "unwinder: libc++_shared load FAILED");
            if (cxx == 0) { char *ce = dlerror(); if (ce != 0) log_text(ce); }
            /* The std::__1 <-> std::__n1 bridges are NOT dlopen'd here: OHOS musl does not
             * feed RTLD_GLOBAL symbols into a later dlopen's resolution scope. They are
             * wired in as DT_NEEDED instead — every staged AOSP lib has libc++.so
             * rewritten to wlx.so (__1 -> __n1), and wlresjni.so goes through wlrev.so
             * (__n1 -> __1) to reach libandroidfw. */
        }
        /* Preload the staged AOSP closure from android/lib64/aosp/ BY ABSOLUTE PATH,
         * leaf-first, so libandroidfw's DT_NEEDED resolves against the already-loaded
         * set. They deliberately do NOT live in android/lib64/ itself: with them on the
         * general search path, ART and liboh_android_runtime pick them up too instead of
         * taking their existing fallbacks, and the process then pins one thread at 100%
         * CPU inside libbase and never finishes JNI_CreateJavaVM (measured; moving the
         * directory aside makes the spin vanish). */
        {
            /* THE MISSING PIECE. libhwui c9ed61d0 supplies the android.graphics.*
             * registrars; nothing in this lane ever supplied the android.content.res.*
             * ones, so ApkAssets/AssetManager/StringBlock/XmlBlock natives stayed unbound
             * and every resource lookup failed. wlresjni.so is those four registrars,
             * built from AOSP 15 core/jni against the staged A15 libandroidfw.
             * Its whole dependency chain is renamed wl* on purpose: under the original
             * sonames ART and liboh_android_runtime pick the AOSP libs up too instead of
             * their own fallbacks, and the process then pins a thread at 100% CPU inside
             * libbase and never finishes JNI_CreateJavaVM. */
            /* Load the chain one library at a time, logging before AND after each, so a
             * crash names the exact culprit instead of just "somewhere under dlopen". */
            {
                static const char *chain[] = {
                    "wlx.so", "wldl_android.so", "wllog.so", "wlz.so",
                    "wlbase.so", "wlcutils.so", "wlutils.so",
                    "wlselinux.so", "wlpackagelistparser.so", "wlvndksupport.so",
                    "wlapexsupport.so", "wlbinder.so", "wlincfs.so",
                    "wlandroidfw.so", "wlrev.so",
                };
                unsigned int ci2 = 0;
                for (ci2 = 0; ci2 < sizeof(chain) / sizeof(chain[0]); ci2++) {
                    char rel2[96];
                    unsigned int k2 = 0, j3 = 0;
                    const char *pre2 = "android/lib64/";
                    while (pre2[k2] != 0) { rel2[k2] = pre2[k2]; k2++; }
                    while (chain[ci2][j3] != 0 && k2 < sizeof(rel2) - 1) rel2[k2++] = chain[ci2][j3++];
                    rel2[k2] = 0;
                    log_text("chain try:"); log_text(chain[ci2]);
                    void *hc = dlopen_exec(rel2, chain[ci2], RTLD_NOW | RTLD_GLOBAL);
                    if (hc == 0) {
                        log_text("chain FAIL:"); log_text(chain[ci2]);
                        { char *e3 = dlerror(); if (e3 != 0) log_text(e3); }
                    } else {
                        log_text("chain ok:"); log_text(chain[ci2]);
                    }
                }
            }
            void *rj = dlopen_exec("android/lib64/wlresjni.so", "wlresjni.so",
                                   RTLD_NOW | RTLD_GLOBAL);
            if (rj == 0) {
                log_text("resjni: load FAILED");
                { char *e2 = dlerror(); if (e2 != 0) log_text(e2); }
            } else {
                static const char *regs[] = {
                    "_ZN7android38register_android_content_res_ApkAssetsEP7_JNIEnv",
                    "_ZN7android37register_android_content_AssetManagerEP7_JNIEnv",
                    "_ZN7android36register_android_content_StringBlockEP7_JNIEnv",
                    "_ZN7android33register_android_content_XmlBlockEP7_JNIEnv",
                };
                unsigned int ri = 0;
                log_text("resjni: loaded");
                for (ri = 0; ri < sizeof(regs) / sizeof(regs[0]); ri++) {
                    int (*fn)(JNIEnv *) = (int (*)(JNIEnv *))dlsym(rj, regs[ri]);
                    if (fn == 0) { log_text("resjni: MISSING"); log_text(regs[ri]); continue; }
                    int rc2 = fn(env);
                    if ((*env)->ExceptionCheck(env)) {
                        describe_pending_exception(env, "resjni registrar threw");
                        (*env)->ExceptionClear(env);
                    }
                    log_int("resjni registrar rc=", rc2);
                    log_text(regs[ri]);
                }
            }
            /* With resources alive, ThreadedRenderer.initForSystemProcess() gets past
             * isHighEndGfx and then wants HardwareRenderer's natives, which nothing has
             * bound (`nSetIsSystemOrPersistent` UnsatisfiedLinkError at
             * ThreadedRenderer.java:221). The adapted libhwui does carry the registrar —
             * but calling it WHOLESALE aborts with SIGTRAP (__android_log_assert): one
             * bad entry in a RegisterNatives table takes the whole table down, which is
             * exactly why this repo has a selective binder. Left opt-in behind
             * WESTLAKE_HWUI_THREADEDRENDERER=1 so it cannot break the working path;
             * the real fix is to harvest this table and bind it method-by-method the way
             * nativeRegisterHwuiRender already does for the other hwui classes. */
            /* ActivityThread.<init> builds its H handler, and Handler's constructor
             * throws "Can't create handler inside thread ... that has not called
             * Looper.prepare()". The dex stage does prepare the looper, but systemMain()
             * runs before it gets there, so do it here. Idempotent: if a main looper
             * already exists prepareMainLooper() throws and we simply clear it. */
            {
                jclass lp = streq(getenv("WESTLAKE_SYSMAIN_BOOTSTRAP"), "1")
                    ? (*env)->FindClass(env, "android/os/Looper") : 0;
                if (lp == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("looper: FindClass failed");
                } else {
                    jmethodID ml = (*env)->GetStaticMethodID(env, lp, "myLooper",
                                                             "()Landroid/os/Looper;");
                    jobject cur = ml ? (*env)->CallStaticObjectMethod(env, lp, ml) : 0;
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); cur = 0; }
                    if (cur != 0) {
                        log_text("looper: already prepared");
                    } else {
                        jmethodID pm = (*env)->GetStaticMethodID(env, lp,
                                            "prepareMainLooper", "()V");
                        if (pm == 0) {
                            (*env)->ExceptionClear(env);
                            log_text("looper: prepareMainLooper missing");
                        } else {
                            (*env)->CallStaticVoidMethod(env, lp, pm);
                            if ((*env)->ExceptionCheck(env)) {
                                (*env)->ExceptionClear(env);
                                log_text("looper: prepareMainLooper threw (already set?)");
                            } else {
                                log_text("looper: main looper prepared");
                            }
                        }
                    }
                }
            }

            /* ActivityThread.attach() -> DisplayManagerGlobal.getInstance() ->
             * ServiceManager.getService(), and ServiceManager's IServiceManager is null
             * ("Attempt to invoke ... IServiceManager.getService2 on a null object").
             * The dex stage installs westlake.adapter.OHServiceManager at its step 02,
             * but systemMain() needs it earlier -- same pattern as the main looper. */
            /* OHServiceManager.install() calls repairProxyCache()/repairProxyComparators()
             * and then Proxy.newProxyInstance; in the dex flow it is preceded by
             * repairMethodHandleStatics() + repairProxyCacheForInflate() (runNoiceApk
             * steps before 02). Without those it NPEs at OHServiceManager.java:251.
             * They are private statics on the probe dex class -> reflect them. */
            {
                static const char *repairs[] = {
                    "repairMethodHandleStatics", "repairProxyCacheForInflate",
                };
                jclass probe_cls = streq(getenv("WESTLAKE_SYSMAIN_BOOTSTRAP"), "1")
                    ? (*env)->FindClass(env, "Dayu600ApkStageProbe") : 0;
                if (probe_cls == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("repairs: Dayu600ApkStageProbe not found");
                } else {
                    jclass cls_cls2 = (*env)->FindClass(env, "java/lang/Class");
                    jmethodID gdm = (*env)->GetMethodID(env, cls_cls2, "getDeclaredMethod",
                        "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;");
                    jclass mth_cls = (*env)->FindClass(env, "java/lang/reflect/Method");
                    jmethodID setacc = (*env)->GetMethodID(env, mth_cls, "setAccessible", "(Z)V");
                    jmethodID invk = (*env)->GetMethodID(env, mth_cls, "invoke",
                        "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;");
                    jclass objc2 = (*env)->FindClass(env, "java/lang/Object");
                    unsigned int rq = 0;
                    if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                    for (rq = 0; rq < sizeof(repairs) / sizeof(repairs[0]); rq++) {
                        jstring nm3 = (*env)->NewStringUTF(env, repairs[rq]);
                        jobjectArray noargs = (*env)->NewObjectArray(env, 0, cls_cls2, 0);
                        jobject m = (*env)->CallObjectMethod(env, probe_cls, gdm, nm3, noargs);
                        if ((*env)->ExceptionCheck(env) || m == 0) {
                            (*env)->ExceptionClear(env);
                            log_text("repairs: not found:"); log_text(repairs[rq]);
                            continue;
                        }
                        (*env)->CallVoidMethod(env, m, setacc, JNI_TRUE);
                        if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                        jobjectArray noobj = (*env)->NewObjectArray(env, 0, objc2, 0);
                        (*env)->CallObjectMethod(env, m, invk, (jobject)0, noobj);
                        if ((*env)->ExceptionCheck(env)) {
                            (*env)->ExceptionClear(env);
                            log_text("repairs: threw:"); log_text(repairs[rq]);
                        } else {
                            log_text("repairs: ok:"); log_text(repairs[rq]);
                        }
                    }
                }
            }
            /* OHServiceManager.install() swallows its own repair failures (they only
             * log via System.err, which does not reach this lane) and then NPEs inside
             * Proxy.newProxyInstance. Report the three statics it depends on directly,
             * so the next step is a fact rather than a guess. */
            {
                static const char *pstat[][2] = {
                    {"java/lang/reflect/Proxy",  "proxyClassCache"},
                    {"java/lang/reflect/Proxy",  "ORDER_BY_SIGNATURE_AND_SUBTYPE"},
                    {"java/lang/reflect/Method", "ORDER_BY_SIGNATURE"},
                };
                jclass clsc = (*env)->FindClass(env, "java/lang/Class");
                jmethodID gdf3 = (*env)->GetMethodID(env, clsc, "getDeclaredField",
                    "(Ljava/lang/String;)Ljava/lang/reflect/Field;");
                jclass fldc = (*env)->FindClass(env, "java/lang/reflect/Field");
                jmethodID sa3 = (*env)->GetMethodID(env, fldc, "setAccessible", "(Z)V");
                jmethodID gv3 = (*env)->GetMethodID(env, fldc, "get",
                    "(Ljava/lang/Object;)Ljava/lang/Object;");
                unsigned int pi2 = 0;
                if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                for (pi2 = 0; pi2 < sizeof(pstat) / sizeof(pstat[0]); pi2++) {
                    jclass owner = (*env)->FindClass(env, pstat[pi2][0]);
                    if (owner == 0 || (*env)->ExceptionCheck(env)) {
                        (*env)->ExceptionClear(env);
                        log_text("proxystat: owner missing:"); log_text(pstat[pi2][0]);
                        continue;
                    }
                    jstring fn3 = (*env)->NewStringUTF(env, pstat[pi2][1]);
                    jobject fo = (*env)->CallObjectMethod(env, owner, gdf3, fn3);
                    if ((*env)->ExceptionCheck(env) || fo == 0) {
                        (*env)->ExceptionClear(env);
                        log_text("proxystat: field missing:"); log_text(pstat[pi2][1]);
                        continue;
                    }
                    (*env)->CallVoidMethod(env, fo, sa3, JNI_TRUE);
                    if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                    jobject val = (*env)->CallObjectMethod(env, fo, gv3, (jobject)0);
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); val = 0; }
                    log_text(val ? "proxystat: SET " : "proxystat: NULL");
                    log_text(pstat[pi2][1]);
                }
            }
            /* Seed ServiceManager.sServiceManager WITHOUT java.lang.reflect.Proxy.
             * OHServiceManager.install() builds a dynamic $Proxy for IServiceManager and
             * NPEs doing it (its own repairs are fine -- proxyClassCache and both
             * comparators read back non-null), and $Proxy synthesis has a long history of
             * misbehaving in this runtime. IServiceManager$Stub$Proxy is a CONCRETE
             * framework class taking an IBinder, so a plain Binder gets us a non-null
             * IServiceManager with no code synthesis at all. Lookups then fail as
             * "service not found" (null) instead of NPE, which is what
             * DisplayManagerGlobal.getInstance() expects to handle. */
            {
                jclass smc = streq(getenv("WESTLAKE_SYSMAIN_BOOTSTRAP"), "1")
                    ? (*env)->FindClass(env, "android/os/ServiceManager") : 0;
                if (smc == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("sm-seed: ServiceManager not found");
                } else {
                    jfieldID ssm = (*env)->GetStaticFieldID(env, smc, "sServiceManager",
                                        "Landroid/os/IServiceManager;");
                    if (ssm == 0) { (*env)->ExceptionClear(env); }
                    jobject cur2 = ssm ? (*env)->GetStaticObjectField(env, smc, ssm) : 0;
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); cur2 = 0; }
                    if (ssm == 0) {
                        log_text("sm-seed: sServiceManager field missing");
                    } else if (cur2 != 0) {
                        log_text("sm-seed: already set");
                    } else {
                        jclass bc = (*env)->FindClass(env, "android/os/Binder");
                        jmethodID bctor = bc ? (*env)->GetMethodID(env, bc, "<init>", "()V") : 0;
                        jobject binder = bctor ? (*env)->NewObject(env, bc, bctor) : 0;
                        if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); binder = 0; }
                        jclass spc = (*env)->FindClass(env,
                                        "android/os/IServiceManager$Stub$Proxy");
                        if (spc == 0 || (*env)->ExceptionCheck(env)) {
                            (*env)->ExceptionClear(env);
                            log_text("sm-seed: IServiceManager$Stub$Proxy not found");
                        } else if (binder == 0) {
                            log_text("sm-seed: could not construct Binder");
                        } else {
                            jmethodID pctor = (*env)->GetMethodID(env, spc, "<init>",
                                                  "(Landroid/os/IBinder;)V");
                            if (pctor == 0) {
                                (*env)->ExceptionClear(env);
                                log_text("sm-seed: Stub$Proxy(IBinder) ctor missing");
                            } else {
                                jobject smp = (*env)->NewObject(env, spc, pctor, binder);
                                if ((*env)->ExceptionCheck(env)) {
                                    describe_pending_exception(env, "sm-seed Stub$Proxy ctor");
                                    (*env)->ExceptionClear(env);
                                } else if (smp != 0) {
                                    (*env)->SetStaticObjectField(env, smc, ssm, smp);
                                    if ((*env)->ExceptionCheck(env)) {
                                        (*env)->ExceptionClear(env);
                                        log_text("sm-seed: write threw");
                                    } else {
                                        log_text("sm-seed: sServiceManager SEEDED (no $Proxy)");
                                    }
                                }
                            }
                        }
                    }
                }
            }
            /* Short-circuit DisplayManagerGlobal.getInstance(). It is what drags
             * ActivityThread.attach() into ServiceManager, and going through a real
             * binder is pointless here anyway (the seeded Stub$Proxy reaches
             * Parcel.obtain() -> Parcel.nativeCreate(), which nothing binds). getInstance()
             * returns sInstance immediately when it is non-null, so allocate one without
             * running its constructor (Unsafe.allocateInstance, the same trick the dex
             * uses for PhoneWindow) and park it there. */
            {
                jclass dmg = streq(getenv("WESTLAKE_SYSMAIN_BOOTSTRAP"), "1")
                    ? (*env)->FindClass(env, "android/hardware/display/DisplayManagerGlobal") : 0;
                if (dmg == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("dmg-seed: class not found");
                } else {
                    jfieldID si = (*env)->GetStaticFieldID(env, dmg, "sInstance",
                                      "Landroid/hardware/display/DisplayManagerGlobal;");
                    if (si == 0) { (*env)->ExceptionClear(env); }
                    jobject have = si ? (*env)->GetStaticObjectField(env, dmg, si) : 0;
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); have = 0; }
                    if (si == 0) {
                        log_text("dmg-seed: sInstance field missing");
                    } else if (have != 0) {
                        log_text("dmg-seed: already set");
                    } else {
                        jclass uc = (*env)->FindClass(env, "jdk/internal/misc/Unsafe");
                        if (uc == 0 || (*env)->ExceptionCheck(env)) {
                            (*env)->ExceptionClear(env);
                            uc = (*env)->FindClass(env, "sun/misc/Unsafe");
                            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); uc = 0; }
                        }
                        jobject unsafe = 0;
                        if (uc != 0) {
                            jfieldID tu = (*env)->GetStaticFieldID(env, uc, "theUnsafe",
                                              uc ? "Ljdk/internal/misc/Unsafe;" : "");
                            if (tu == 0) { (*env)->ExceptionClear(env);
                                tu = (*env)->GetStaticFieldID(env, uc, "theUnsafe",
                                         "Lsun/misc/Unsafe;"); }
                            if (tu == 0) { (*env)->ExceptionClear(env); }
                            else { unsafe = (*env)->GetStaticObjectField(env, uc, tu);
                                   if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); unsafe = 0; } }
                        }
                        jmethodID ai = (uc && unsafe) ? (*env)->GetMethodID(env, uc,
                            "allocateInstance", "(Ljava/lang/Class;)Ljava/lang/Object;") : 0;
                        if (ai == 0) { (*env)->ExceptionClear(env); }
                        jobject inst = ai ? (*env)->CallObjectMethod(env, unsafe, ai, dmg) : 0;
                        if ((*env)->ExceptionCheck(env)) {
                            describe_pending_exception(env, "dmg-seed allocateInstance");
                            (*env)->ExceptionClear(env); inst = 0;
                        }
                        if (inst == 0) {
                            log_text("dmg-seed: allocateInstance unavailable");
                        } else {
                            (*env)->SetStaticObjectField(env, dmg, si, inst);
                            if ((*env)->ExceptionCheck(env)) {
                                (*env)->ExceptionClear(env);
                                log_text("dmg-seed: write threw");
                            } else {
                                log_text("dmg-seed: sInstance SEEDED (bypasses ServiceManager)");
                                /* allocateInstance skips the constructor, so every field is
                                 * null -- including the monitor getDisplayInfo() locks on
                                 * ("synchronize operation on a null object" at
                                 * DisplayManagerGlobal.java:207). Give every null Object-typed
                                 * instance field a fresh Object so the locks are usable. */
                                jclass clsc4 = (*env)->FindClass(env, "java/lang/Class");
                                jmethodID gdfs = (*env)->GetMethodID(env, clsc4,
                                    "getDeclaredFields", "()[Ljava/lang/reflect/Field;");
                                jclass fldc4 = (*env)->FindClass(env, "java/lang/reflect/Field");
                                jmethodID sa4 = (*env)->GetMethodID(env, fldc4, "setAccessible", "(Z)V");
                                jmethodID gt4 = (*env)->GetMethodID(env, fldc4, "getType",
                                                    "()Ljava/lang/Class;");
                                jmethodID gm4 = (*env)->GetMethodID(env, fldc4, "getModifiers", "()I");
                                jmethodID gv4 = (*env)->GetMethodID(env, fldc4, "get",
                                                    "(Ljava/lang/Object;)Ljava/lang/Object;");
                                jmethodID sv4 = (*env)->GetMethodID(env, fldc4, "set",
                                                    "(Ljava/lang/Object;Ljava/lang/Object;)V");
                                jclass objc4 = (*env)->FindClass(env, "java/lang/Object");
                                jmethodID octor4 = (*env)->GetMethodID(env, objc4, "<init>", "()V");
                                jobjectArray flds = (jobjectArray)(*env)->CallObjectMethod(env, dmg, gdfs);
                                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); flds = 0; }
                                jsize nf = flds ? (*env)->GetArrayLength(env, flds) : 0;
                                int seeded_locks = 0;
                                for (jsize fi = 0; fi < nf; fi++) {
                                    jobject fo4 = (*env)->GetObjectArrayElement(env, flds, fi);
                                    jint mod4 = (*env)->CallIntMethod(env, fo4, gm4);
                                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); continue; }
                                    if (mod4 & 8) continue;                 /* skip statics */
                                    jclass ft = (jclass)(*env)->CallObjectMethod(env, fo4, gt4);
                                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); continue; }
                                    if (!(*env)->IsSameObject(env, ft, objc4)) continue; /* only Object */
                                    (*env)->CallVoidMethod(env, fo4, sa4, JNI_TRUE);
                                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); continue; }
                                    jobject cv = (*env)->CallObjectMethod(env, fo4, gv4, inst);
                                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); continue; }
                                    if (cv != 0) continue;
                                    jobject lock = (*env)->NewObject(env, objc4, octor4);
                                    (*env)->CallVoidMethod(env, fo4, sv4, inst, lock);
                                    if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                                    else seeded_locks++;
                                }
                                log_int("dmg-seed: null Object fields seeded=", seeded_locks);
                            }
                        }
                    }
                }
            }
            {
                jclass ohsm = streq(getenv("WESTLAKE_SYSMAIN_BOOTSTRAP"), "1")
                    ? (*env)->FindClass(env, "westlake/adapter/OHServiceManager") : 0;
                if (ohsm == 0 || (*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("ohsm: class not found");
                } else {
                    jmethodID inst = (*env)->GetStaticMethodID(env, ohsm, "install", "()V");
                    if (inst == 0) {
                        (*env)->ExceptionClear(env);
                        log_text("ohsm: install() missing");
                    } else {
                        (*env)->CallStaticVoidMethod(env, ohsm, inst);
                        if ((*env)->ExceptionCheck(env)) {
                            describe_pending_exception(env, "ohsm install threw");
                            (*env)->ExceptionClear(env);
                        } else {
                            log_text("ohsm: installed");
                        }
                    }
                }
            }

            /* Bind the hwui tables method-by-method. The wholesale registrar SIGTRAPs
             * (__android_log_assert) the moment one entry mismatches; the selective
             * binder skips those and keeps the rest, which is what gets
             * HardwareRenderer.nSetIsSystemOrPersistent bound. Its own call site sits in
             * a stage we do not go through, so drive it from here. */
            if (streq(getenv("WESTLAKE_HWUI_SELECTIVE"), "1")) {
                jint sel = westlake_hwui_register_selective(env);
                if ((*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "selective hwui bind threw");
                    (*env)->ExceptionClear(env);
                }
                log_int("selective hwui from resjni block rc=", (int)sel);
            }
            if (streq(getenv("WESTLAKE_HWUI_THREADEDRENDERER"), "1")) {
                void *hw = dlopen_exec("android/lib64/libhwui.so", "libhwui.so",
                                       RTLD_NOW | RTLD_GLOBAL);
                if (hw == 0) {
                    log_text("hwui: load FAILED for ThreadedRenderer registrar");
                } else {
                    int (*tr)(JNIEnv *) = (int (*)(JNIEnv *))dlsym(hw,
                        "_ZN7android38register_android_view_ThreadedRendererEP7_JNIEnv");
                    if (tr == 0) {
                        log_text("hwui: register_android_view_ThreadedRenderer MISSING");
                    } else {
                        int rc3 = tr(env);
                        if ((*env)->ExceptionCheck(env)) {
                            describe_pending_exception(env, "ThreadedRenderer registrar threw");
                            (*env)->ExceptionClear(env);
                        }
                        log_int("hwui ThreadedRenderer registrar rc=", rc3);
                    }
                }
            }
        }
        jclass cls_cls = (*env)->FindClass(env, "java/lang/Class");
        jmethodID for_name = cls_cls != 0 ? (*env)->GetStaticMethodID(env, cls_cls,
            "forName", "(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;") : 0;
        if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); for_name = 0; }
        if (for_name == 0) {
            log_text("arsc preinit: Class.forName unavailable");
        } else {
            /* WESTLAKE_ARSC_PREINIT_N caps how many of the five get force-initialised,
             * so the one that SIGSEGVs can be bisected without rebuilding the list. */
            unsigned int ci = 0;
            unsigned int limit = sizeof(res_classes) / sizeof(res_classes[0]);
            const char *lim_s = getenv("WESTLAKE_ARSC_PREINIT_N");
            if (lim_s != 0 && lim_s[0] >= '0' && lim_s[0] <= '9') {
                unsigned int v = (unsigned int)(lim_s[0] - '0');
                if (v < limit) limit = v;
            }
            log_int("arsc preinit limit=", (int)limit);
            for (ci = 0; ci < limit; ci++) {
                jstring cn = (*env)->NewStringUTF(env, res_classes[ci]);
                (void)(*env)->CallStaticObjectMethod(env, cls_cls, for_name, cn,
                                                     JNI_TRUE, (jobject)0);
                if ((*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    log_text("arsc preinit FAILED:");
                } else {
                    log_text("arsc preinit ok:");
                }
                log_text(res_classes[ci]);
            }
        }
    }
    if (!streq(getenv("WESTLAKE_SKIP_ANDROIDFW_ONLOAD"), "1")) {
        void *fw_handle = dlopen_exec("android/lib64/libandroidfw.so",
            "libandroidfw.so", RTLD_NOW | 4 /*RTLD_NOLOAD*/);
        if (fw_handle == 0) {
            fw_handle = dlopen_exec("android/lib64/libandroidfw.so",
                "libandroidfw.so", RTLD_NOW | RTLD_GLOBAL);
        }
        if (fw_handle != 0) {
            call_optional_onload(fw_handle, "JNI_OnLoad", vm);
            log_text("libandroidfw JNI_OnLoad invoked (res natives rebind, last)");
        } else {
            log_text("libandroidfw dlopen for JNI_OnLoad failed");
            char *fe = dlerror();
            if (fe != 0) log_text(fe);
        }
    } else {
        log_text("libandroidfw JNI_OnLoad skipped by WESTLAKE_SKIP_ANDROIDFW_ONLOAD");
    }
    log_int("register_system_natives rc=", register_system_natives(env));
    log_int("seed_system_properties rc=", seed_system_properties(env));
    /* [W-005 2026-07-19] Seed AssetManager.sSystem BEFORE the dex runs.
     * Resources.getSystem() -> AssetManager.getSystem() -> createSystemAssetsInZygoteLocked(),
     * and that walks OverlayConfig -> PackagePartitions.<clinit> -> SystemProperties.digestOf
     * -> MessageDigest.getInstance. In this imageless lane java.security.Security's <clinit>
     * already died (root cause: java.nio.charset.Charset's statics are all null, so
     * VMClassLoader.<clinit> NPEs on a null charset), leaving ZERO JCE providers -> that
     * chain throws -> the system AssetManager never loads framework-res -> the first
     * com.android.internal.R lookup (ActivityManager.isHighEndGfx -> getBoolean(0x1110040))
     * raises Resources$NotFoundException with nobody to catch it and ART aborts.
     * createSystemAssetsInZygoteLocked returns IMMEDIATELY when sSystem is already set,
     * so seeding it here sidesteps that whole cascade. Must run after the libandroidfw
     * JNI_OnLoad rebind above, otherwise ApkAssets.nativeLoad is still a no-op stub.
     * Enable with WESTLAKE_SEED_SYSASSETS=<abs path to framework-res.apk>. */
    {
        const char *fwres = getenv("WESTLAKE_SEED_SYSASSETS");
        if (fwres != 0 && fwres[0] != 0) {
            jclass aa_cls = (*env)->FindClass(env, "android/content/res/ApkAssets");
            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); aa_cls = 0; }
            jobject apk = 0;
            if (aa_cls != 0) {
                jstring p = (*env)->NewStringUTF(env, fwres);
                jmethodID lf = (*env)->GetStaticMethodID(env, aa_cls, "loadFromPath",
                    "(Ljava/lang/String;)Landroid/content/res/ApkAssets;");
                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); lf = 0; }
                if (lf != 0) {
                    apk = (*env)->CallStaticObjectMethod(env, aa_cls, lf, p);
                } else {
                    jmethodID lf2 = (*env)->GetStaticMethodID(env, aa_cls, "loadFromPath",
                        "(Ljava/lang/String;I)Landroid/content/res/ApkAssets;");
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); lf2 = 0; }
                    if (lf2 != 0) apk = (*env)->CallStaticObjectMethod(env, aa_cls, lf2, p, (jint)0);
                }
                if ((*env)->ExceptionCheck(env)) {
                    (*env)->ExceptionClear(env);
                    apk = 0;
                    log_text("seed sysassets: ApkAssets.loadFromPath threw");
                }
            }
            if (apk == 0) {
                log_text("seed sysassets: FAILED (no ApkAssets)");
            } else {
                jclass am_cls = (*env)->FindClass(env, "android/content/res/AssetManager");
                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); am_cls = 0; }
                jobject am = 0;
                if (am_cls != 0) {
                    jmethodID ctor = (*env)->GetMethodID(env, am_cls, "<init>", "(Z)V");
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); ctor = 0; }
                    if (ctor != 0) am = (*env)->NewObject(env, am_cls, ctor, JNI_TRUE);
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); am = 0; }
                }
                if (am == 0) {
                    log_text("seed sysassets: FAILED (no AssetManager)");
                } else {
                    /* Mirror what the dex's own bootstrap does (Dayu600ApkStageProbe
                     * runNoiceApk step 04): the (Z)V ctor leaves mApkAssets null, and
                     * setApkAssets() then throws. Seed mApkAssets with an empty array
                     * first, then go through addAssetPath(), which is the path that is
                     * actually known to work in this lane. */
                    jclass cls_cls = (*env)->FindClass(env, "java/lang/Class");
                    jmethodID gdfld = cls_cls != 0 ? (*env)->GetMethodID(env, cls_cls,
                        "getDeclaredField",
                        "(Ljava/lang/String;)Ljava/lang/reflect/Field;") : 0;
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); gdfld = 0; }
                    if (gdfld != 0) {
                        jstring fname = (*env)->NewStringUTF(env, "mApkAssets");
                        jobject fld = (*env)->CallObjectMethod(env, am_cls, gdfld, fname);
                        if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); fld = 0; }
                        if (fld != 0) {
                            jclass fcls = (*env)->GetObjectClass(env, fld);
                            jmethodID sacc = (*env)->GetMethodID(env, fcls, "setAccessible", "(Z)V");
                            if (sacc != 0) (*env)->CallVoidMethod(env, fld, sacc, JNI_TRUE);
                            if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                            jfieldID mfid = (*env)->FromReflectedField(env, fld);
                            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); mfid = 0; }
                            if (mfid != 0) {
                                jobjectArray empty = (*env)->NewObjectArray(env, 0, aa_cls, 0);
                                (*env)->SetObjectField(env, am, mfid, empty);
                                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
                                else log_text("seed sysassets: mApkAssets primed");
                            }
                        }
                    }
                    /* Java's AssetManager.addAssetPath() goes through whichever native is
                     * currently registered, which in this lane can still be the OHBridge
                     * no-op stub: it hands back a cookie but leaves the resource table
                     * unqueryable (getResourceName fails even for framework ids). The dex's
                     * addAssetPathDirect() sidesteps that by calling nativeW001Append, i.e.
                     * westlake_native_append_apk_assets — which lives in THIS .so. Call it
                     * straight, no JNI registration or Java dispatch in the way. */
                    {
                        size_t plen = 0;
                        while (fwres[plen] != 0) plen++;
                        jbyteArray pb = (*env)->NewByteArray(env, (jsize)plen);
                        if (pb != 0) {
                            (*env)->SetByteArrayRegion(env, pb, 0, (jsize)plen,
                                                       (const jbyte *)fwres);
                            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
                            jint cookie = westlake_native_append_apk_assets(env, am_cls, am, pb);
                            if ((*env)->ExceptionCheck(env)) {
                                (*env)->ExceptionClear(env);
                                log_text("seed sysassets: w001Append threw");
                            } else {
                                log_int("seed sysassets: w001Append cookie=", (int)cookie);
                            }
                        } else {
                            log_text("seed sysassets: NewByteArray failed");
                        }
                    }
                    jfieldID ss = (*env)->GetStaticFieldID(env, am_cls, "sSystem",
                        "Landroid/content/res/AssetManager;");
                    if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); ss = 0; }
                    if (ss == 0) {
                        log_text("seed sysassets: sSystem field not found");
                    } else {
                        (*env)->SetStaticObjectField(env, am_cls, ss, am);
                        if ((*env)->ExceptionCheck(env)) {
                            (*env)->ExceptionClear(env);
                            log_text("seed sysassets: sSystem write threw");
                        } else {
                            log_text("seed sysassets: sSystem SEEDED");
                            log_text(fwres);
                            /* Prove the ARSC actually parsed: ask the AssetManager to
                             * name the very resource that aborts the runtime
                             * (com.android.internal.R.bool used by isHighEndGfx).
                             * addAssetPath returning a cookie only means the file was
                             * opened, not that the resource table is queryable. */
                            jmethodID grn = (*env)->GetMethodID(env, am_cls,
                                "getResourceName", "(I)Ljava/lang/String;");
                            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); grn = 0; }
                            if (grn != 0) {
                                jstring rn = (jstring)(*env)->CallObjectMethod(env, am, grn,
                                    (jint)0x1110040);
                                if ((*env)->ExceptionCheck(env)) {
                                    describe_pending_exception(env,
                                        "seed sysassets: getResourceName(0x1110040)");
                                    if ((*env)->ExceptionCheck(env)) (*env)->ExceptionClear(env);
                                } else if (rn == 0) {
                                    log_text("seed sysassets: getResourceName(0x1110040) = NULL"
                                             " (arsc not queryable)");
                                } else {
                                    const char *rnc = (*env)->GetStringUTFChars(env, rn, 0);
                                    log_text("seed sysassets: resource 0x1110040 =");
                                    log_text(rnc != 0 ? rnc : "?");
                                    if (rnc != 0) (*env)->ReleaseStringUTFChars(env, rn, rnc);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    /* [5583 post-reboot] BootClassLoader.getInstance() comes back NULL on some
     * boots, and the W001 Trace-rebind + the dex's AssetManager bootstrap then
     * die with "BootClassLoader.findLoadedClass on null" (rc=99). Force the
     * singleton here, BEFORE the dex runs: if getInstance() is lazy this seeds
     * it permanently; log the outcome either way. */
    {
        jclass bcl = (*env)->FindClass(env, "java/lang/BootClassLoader");
        if (bcl != 0 && !(*env)->ExceptionCheck(env)) {
            jmethodID gi = (*env)->GetStaticMethodID(env, bcl, "getInstance",
                "()Ljava/lang/ClassLoader;");
            if (gi == 0) {
                gi = (*env)->GetStaticMethodID(env, bcl, "getInstance",
                    "()Ljava/lang/BootClassLoader;");
            }
            if (gi != 0) {
                jobject inst = (*env)->CallStaticObjectMethod(env, bcl, gi);
                log_text("BootClassLoader.getInstance forced:");
                log_text(inst != 0 ? "non-null" : "NULL");
                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
            } else {
                log_text("BootClassLoader.getInstance method missing");
                if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
            }
        } else {
            log_text("BootClassLoader class missing");
            if ((*env)->ExceptionCheck(env)) { (*env)->ExceptionClear(env); }
        }
    }
    // Run android runtime startReg with signal-based crash recovery (sigsetjmp/siglongjmp).
    // If startReg crashes (SIGTRAP etc), we longjmp back here and continue to stage branch.
    int start_reg_rc = 0;
    {
        struct sigaction sa_old[5];
        struct sigaction sa_new = { .sa_handler = g_crash_handler, .sa_flags = 0 };
        int sigs[] = { SIGTRAP, SIGSEGV, SIGBUS, SIGABRT, SIGFPE };
        for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_new, &sa_old[i]);
        g_in_crash_region = 1;
        int saved_sig = sigsetjmp(g_crash_jmp, 1);
        if (saved_sig == 0) {
            // Noice fast lane: the stage supplies the minimal framework/native shims it
            // needs. A full startReg now finds the bundled HWUI closure and spends the
            // launch inside 54 incompatible graphics registrations before app code runs.
            if (streq(getenv("WESTLAKE_SKIP_START_REG"), "1")) {
                log_text("android runtime startReg skipped by WESTLAKE_SKIP_START_REG");
            } else {
                start_reg_rc = call_android_runtime_start_reg(env);
            }
        } else {
            // crashed with signal saved_sig
            char buf[64];
            unsigned long pos = 0;
            const char *pref = "startReg CRASH signal=";
            for (int i = 0; pref[i]; i++) buf[pos++] = pref[i];
            char dbuf[12]; int didx = 0;
            int sv = saved_sig;
            if (sv == 0) sv = SIGTRAP;
            do { dbuf[didx++] = (char)('0' + (sv % 10)); sv /= 10; } while (sv > 0);
            while (didx > 0) buf[pos++] = dbuf[--didx];
            buf[pos] = 0;
            log_text(buf);
        }
        g_in_crash_region = 0;
        for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
    }
    if (start_reg_rc == 0) {
        log_text("android runtime startReg returned 0 (skipped/ok)");
    } else {
        log_int("android runtime startReg rc=", start_reg_rc);
    }

    // Proceed even if startReg failed — do not abort the stage on framework registration errors
    int heavy_before_rc = load_heavy_bridge_if_requested("beforeStage");
    if (heavy_before_rc != 0) {
        return heavy_before_rc;
    }

    const char *stage = stage_override;
    if (stage == 0 || stage[0] == 0) {
        stage = getenv("WESTLAKE_STAGE");
    }
    if (stage == 0 || stage[0] == 0) {
        stage = "onCreateNullTrace";
    }
    // Direct syscall write to stderr (fd=2) — bypasses stdio buffering
    { char _dbg[128]; int _pos = 0;
      const char *_pref = "DBG stage=";
      for (int _i = 0; _pref[_i]; _i++) _dbg[_pos++] = _pref[_i];
      if (stage) { for (int _i = 0; stage[_i] && _pos < 120; _i++) _dbg[_pos++] = stage[_i]; }
      _dbg[_pos++] = '\n';
      (void)write(2, _dbg, _pos);
    }

    // inputVerify stage: handled by Java in Dayu600ApkStageProbe.embeddedMainNoExit
    // (which has access to framework Context). Just log and fall through to Java call.
    if (streq(stage, "inputVerify")) {
        log_text("inputVerify: falling through to Java");
    }

    // Skip inputVerify for uptodownProbe — IVS class not on classpath.
    // Call Java DIRECTLY here (do not rely on fallthrough past the broken-brace IVS else).
    /* noiceApk must skip the IVS bootstrap for the same reason uptodownProbe does.
     * That bootstrap tries currentActivityThread() and, when it comes back null, falls
     * back to ActivityThread.systemMain() to manufacture a system Context — the
     * system_server entry path. noice is an ordinary app: runNoiceApk() builds its own
     * AssetManager/Context and never needs it. Letting noiceApk fall into it is what put
     * every noiceApk run into systemMain() -> attach() -> ResourcesManager ->
     * DisplayManagerGlobal, i.e. a road noice should not be walking at all. */
    if (streq(stage, "uptodownProbe") || streq(stage, "noiceApk")) {
        log_text("inputVerify SKIPPED for stage:");
        log_text(stage);
        goto call_java_probe;
    } else {
    // Agent-D3: inputVerify — call InputVerifyStage.run() via reflection
    // Uses ActivityThread.systemMain().getSystemContext() + Class.forName from app classloader
    // Class: adapter.window.InputVerifyStage (in upscreen-render-ivs.dex.jar on board)
    log_text("inputVerify block entered");
    // Wrap all JNI calls with crash recovery (siglongjmp) since systemMain/run can crash
    {
        struct sigaction sa_old[5];
        struct sigaction sa_new = { .sa_handler = g_crash_handler, .sa_flags = 0 };
        int sigs[] = { SIGTRAP, SIGSEGV, SIGBUS, SIGABRT, SIGFPE };
        for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_new, &sa_old[i]);
        g_in_crash_region = 1;
        int ivs_saved_sig = sigsetjmp(g_crash_jmp, 1);
        if (ivs_saved_sig == 0) {
            // --- normal path: JNI calls ---
            log_text("inputVerify stage: calling InputVerifyStage.run() via reflection");
            // Find app classloader via Dayu600ApkStageProbe.targetClassLoader()
            jclass probe_cls = (*env)->FindClass(env, "Dayu600ApkStageProbe");
            if (probe_cls == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "FindClass Dayu600ApkStageProbe failed");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 100;
            }
            jmethodID target_cl_m = (*env)->GetStaticMethodID(env, probe_cls,
                "targetClassLoader", "()Ljava/lang/ClassLoader;");
            if (target_cl_m == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "targetClassLoader not found");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 101;
            }
            jobject app_cl_obj = (*env)->CallStaticObjectMethod(env, probe_cls, target_cl_m);
            if ((*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "targetClassLoader threw");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 102;
            }

            // Build ActivityThread.systemMain().getSystemContext() for framework context
            jclass at_cls = (*env)->FindClass(env, "android/app/ActivityThread");
            if (at_cls == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "ActivityThread class failed");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 103;
            }
            // Try ActivityThread.currentActivityThread() first (returns sCurrentActivityThread static)
            // This works even without systemMain() creating a thread
            jmethodID current_at = (*env)->GetStaticMethodID(env, at_cls,
                "currentActivityThread", "()Landroid/app/ActivityThread;");
            if (current_at != 0 && !(*env)->ExceptionCheck(env)) {
                jobject at = (*env)->CallStaticObjectMethod(env, at_cls, current_at);
                if (at != 0 && !(*env)->ExceptionCheck(env)) {
                    log_text("got ActivityThread via currentActivityThread()");
                    jmethodID get_ctx = (*env)->GetMethodID(env, at_cls,
                        "getSystemContext", "()Landroid/app/ContextImpl;");
                    if (get_ctx == 0 || (*env)->ExceptionCheck(env)) {
                        describe_pending_exception(env, "getSystemContext not found");
                        g_in_crash_region = 0;
                        for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                        return 106;
                    }
                    jobject sys_ctx = (*env)->CallObjectMethod(env, at, get_ctx);
                    if (sys_ctx == 0 || (*env)->ExceptionCheck(env)) {
                        describe_pending_exception(env, "getSystemContext returned null");
                        g_in_crash_region = 0;
                        for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                        return 107;
                    }
                    log_text("got system context from currentActivityThread");
                    g_ivs_ctx = (*env)->NewGlobalRef(env, sys_ctx);
                    goto load_ivs_with_context;
                }
                (*env)->ExceptionClear(env);
            }
            // currentActivityThread() returned null — try systemMain() which creates
            // ActivityThread + SystemContext without needing services
            log_text("currentActivityThread() null — trying systemMain()...");
            jmethodID system_main = (*env)->GetStaticMethodID(env, at_cls,
                "systemMain", "()Landroid/app/ActivityThread;");
            if (system_main != 0 && !(*env)->ExceptionCheck(env)) {
                jobject at_sm = (*env)->CallStaticObjectMethod(env, at_cls, system_main);
                if (at_sm != 0 && !(*env)->ExceptionCheck(env)) {
                    log_text("ActivityThread.systemMain() ok");
                    jmethodID get_ctx = (*env)->GetMethodID(env, at_cls,
                        "getSystemContext", "()Landroid/app/ContextImpl;");
                    if (get_ctx != 0 && !(*env)->ExceptionCheck(env)) {
                        jobject sys_ctx = (*env)->CallObjectMethod(env, at_sm, get_ctx);
                        if (sys_ctx != 0 && !(*env)->ExceptionCheck(env)) {
                            log_text("got system context from systemMain()");
                            g_ivs_ctx = (*env)->NewGlobalRef(env, sys_ctx);
                            goto load_ivs_with_context;
                        }
                    }
                    (*env)->ExceptionClear(env);
                log_text("systemMain() fallback failed");
            }
            // All bootstraps failed — use classloader-only path
            log_text("ActivityThread bootstrap failed — using classloader-only path");
            goto load_ivs_no_context;

load_ivs_no_context:
            {
                // Fallback: load IVS and call run(null, null) — IVS should handle null context
                log_text("loading InputVerifyStage without context");
                jclass cls_cls = (*env)->FindClass(env, "java/lang/Class");
                if (cls_cls == 0 || (*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "Class class failed");
                    g_in_crash_region = 0;
                    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                    return 108;
                }
                jmethodID forname_m = (*env)->GetStaticMethodID(env, cls_cls,
                    "forName", "(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;");
                if (forname_m == 0 || (*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "Class.forName(Str,bool,CL) not found");
                    g_in_crash_region = 0;
                    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                    return 109;
                }
                jstring ivs_name = (*env)->NewStringUTF(env, "adapter.window.InputVerifyStage");
                if (ivs_name == 0 || (*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "NewStringUTF failed");
                    g_in_crash_region = 0;
                    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                    return 110;
                }
                jclass ivs_cls = (*env)->CallStaticObjectMethod(env, cls_cls, forname_m,
                    ivs_name, JNI_TRUE, app_cl_obj);
                if (ivs_cls == 0 || (*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "InputVerifyStage.forName failed");
                    g_in_crash_region = 0;
                    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                    return 114;
                }
                log_text("IVS class loaded (no-context path)");
                // For inputVerify stage: call IVS.run(null,null) directly.
                // IVS handles null context by creating its own minimal Context.
                jmethodID run_m = (*env)->GetStaticMethodID(env, ivs_cls,
                    "run", "(Landroid/content/Context;Ljava/lang/Object;)V");
                if (run_m == 0 || (*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "InputVerifyStage.run not found");
                    (*env)->DeleteLocalRef(env, ivs_cls);
                    g_in_crash_region = 0;
                    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                    return 115;
                }
                log_text("calling InputVerifyStage.run(null,null)...");
                (*env)->CallStaticVoidMethod(env, ivs_cls, run_m, (jobject)0, (jobject)0);
                if ((*env)->ExceptionCheck(env)) {
                    describe_pending_exception(env, "IVS.run threw");
                    (*env)->ExceptionClear(env);
                }
                (*env)->DeleteLocalRef(env, ivs_cls);
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                log_text("inputVerify: IVS.run done, exiting");
                return 0;
            }

load_ivs_with_context:
            {
            // g_ivs_ctx must be set before reaching here via goto
            if (g_ivs_ctx == 0) {
                log_text("load_ivs_with_context: g_ivs_ctx == null");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 117;
            }
            log_text("load_ivs_with_context: g_ivs_ctx available, calling IVS.run(ctx, null)...");
            // Load IVS and call run(g_ivs_ctx, null)
            jclass cls_cls = (*env)->FindClass(env, "java/lang/Class");
            if (cls_cls == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "Class class failed");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 108;
            }
            jmethodID forname_m = (*env)->GetStaticMethodID(env, cls_cls,
                "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
            if (forname_m == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "Class.forName not found");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 109;
            }
            jstring ivs_name = (*env)->NewStringUTF(env, "adapter.window.InputVerifyStage");
            if (ivs_name == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "NewStringUTF failed");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 110;
            }
            jclass ivs_cls = (*env)->CallStaticObjectMethod(env, cls_cls, forname_m, ivs_name);
            if (ivs_cls == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "InputVerifyStage.forName failed");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 114;
            }
            jmethodID run_m = (*env)->GetStaticMethodID(env, ivs_cls,
                "run", "(Landroid/content/Context;Ljava/lang/Object;)V");
            if (run_m == 0 || (*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "IVS.run not found");
                g_in_crash_region = 0;
                for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
                return 115;
            }
            log_text("calling InputVerifyStage.run(g_ivs_ctx, null)...");
            (*env)->CallStaticVoidMethod(env, ivs_cls, run_m, g_ivs_ctx, (jobject)0);
            if ((*env)->ExceptionCheck(env)) {
                describe_pending_exception(env, "IVS.run threw");
                (*env)->ExceptionClear(env);
            }
            g_in_crash_region = 0;
            for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa_old[i], 0);
            log_text("load_ivs_with_context: IVS.run done, exiting");
            return 0;
            }  // end if (g_ivs_ctx == 0) early-return block
            }  // end load_ivs_with_context block
        }  // end IVS try block (ivs_saved_sig == 0)
    }  // end else (skip inputVerify for uptodownProbe)

call_java_probe:
    log_text("run_stage_probe: past stage-specific checks, stage=");
    log_text(stage);

    if (streq(stage, "appSpawnXInit")) {
        int init_rc = call_appspawnx_init_child(env);
        if (init_rc != 0) {
            return init_rc;
        }
        return load_heavy_bridge_if_requested("afterStage");
    }
    if (streq(stage, "frameworkClassProbe")) {
        int probe_rc = call_framework_class_probe(env);
        if (probe_rc != 0) {
            return probe_rc;
        }
        return load_heavy_bridge_if_requested("afterStage");
    }
    if (streq(stage, "activityThreadMethodProbe")) {
        int probe_rc = call_activity_thread_method_probe(env, 0);
        if (probe_rc != 0) {
            return probe_rc;
        }
        return load_heavy_bridge_if_requested("afterStage");
    }
    if (streq(stage, "activityThreadMainProbe")) {
        int probe_rc = call_activity_thread_method_probe(env, 1);
        if (probe_rc != 0) {
            return probe_rc;
        }
        return load_heavy_bridge_if_requested("afterStage");
    }
    if (streq(stage, "activityThreadStepProbe")) {
        int probe_rc = call_activity_thread_step_probe(env);
        if (probe_rc != 0) {
            return probe_rc;
        }
        return load_heavy_bridge_if_requested("afterStage");
    }

    log_text("run_stage_probe: about to FindClass Dayu600ApkStageProbe");

    jclass probe_class = (*env)->FindClass(env, "Dayu600ApkStageProbe");
    if (probe_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "FindClass Dayu600ApkStageProbe failed");
        return 24;
    }
    {
        /* Register one-by-one so a signature mismatch does not drop all natives. */
        JNINativeMethod m0 = {"nativeFindClass", "(Ljava/lang/String;)Ljava/lang/Class;",
            (void *)westlake_native_find_class};
        JNINativeMethod m1 = {"nativeWriteText", "(Ljava/lang/String;Ljava/lang/String;)V",
            (void *)westlake_native_write_text};
        JNINativeMethod m2 = {"nativeRegisterTraceNatives", "(Ljava/lang/Class;)V",
            (void *)westlake_native_register_trace};
        JNINativeMethod m3 = {"nativeCallAddAssetPath", "(Ljava/lang/Object;[BLjava/lang/Class;)I",
            (void *)westlake_native_call_add_asset_path};
        JNINativeMethod m4 = {"nativeAppendApkAssets",
            "(Ljava/lang/Object;[B)I",
            (void *)westlake_native_append_apk_assets};
        JNINativeMethod m5 = {"nativeW001Append",
            "(Ljava/lang/Object;[B)V",
            (void *)westlake_native_w001_append_vll};
        JNINativeMethod m6 = {"nativeW001BindTrace",
            "(Ljava/lang/Object;)V",
            (void *)westlake_native_w001_bind_trace};
        JNINativeMethod m7 = {"nativeRegisterHwuiRender", "()I",
            (void *)westlake_native_register_hwui_render};
        JNINativeMethod m8 = {"nativeClearHwuiIsolated", "()I",
            (void *)westlake_native_clear_hwui_isolated};
        JNINativeMethod m9 = {"nativeBlitArgb", "()I",
            (void *)westlake_native_blit_argb};
        JNINativeMethod m10 = {"nativeAllocColorSpaceRgb", "()Ljava/lang/Object;",
            (void *)westlake_native_alloc_colorspace_rgb};
        JNINativeMethod m11 = {"nativeRegisterBitmapJni", "()I",
            (void *)westlake_native_register_bitmap_jni};
        JNINativeMethod m12 = {"nativeRegisterStringBlock", "()I",
            (void *)westlake_native_register_stringblock};
        JNINativeMethod m13 = {"nativeAllocByName", "()Ljava/lang/Object;",
            (void *)westlake_native_alloc_by_name};
        JNINativeMethod m14 = {"nativeMutableCopy", "()Ljava/lang/Object;",
            (void *)westlake_native_mutable_copy};
        JNINativeMethod m15 = {"nativeDirectBufferFromFile", "()Ljava/lang/Object;",
            (void *)westlake_native_direct_buffer_from_file};
        JNINativeMethod m16 = {"nativeAddFontWeightStyle", "()I",
            (void *)westlake_native_add_font_weight_style};
        JNINativeMethod m17 = {"nativeMakeCanvas", "()Ljava/lang/Object;",
            (void *)westlake_native_make_canvas};
        JNINativeMethod *all[] = { &m0, &m1, &m2, &m3, &m4, &m5, &m6, &m7, &m8, &m9, &m10, &m11, &m12, &m13, &m14, &m15, &m16, &m17 };
        int i;
        /* names[] is only used for diagnostics, but it is indexed by the same loop -- keep the
           bound tied to all[] so adding a method cannot walk off the end of names[]. */
        const int all_n = (int)(sizeof(all) / sizeof(all[0]));
        for (i = 0; i < all_n; i++) {
            jint register_rc = (*env)->RegisterNatives(env, probe_class, all[i], 1);
            if (register_rc != 0 || (*env)->ExceptionCheck(env)) {
                log_text("RegisterNatives ONE failed:");
                log_text(all[i]->name);
                describe_pending_exception(env, all[i]->name);
                (*env)->ExceptionClear(env);
            } else {
                log_text("RegisterNatives ONE ok:");
                log_text(all[i]->name);
            }
        }
    }

    char *no_exit_flag = getenv("WESTLAKE_NO_EXIT");
    int no_exit = no_exit_flag != 0 && no_exit_flag[0] == '1';
    jmethodID main_method = (*env)->GetStaticMethodID(env, probe_class,
        no_exit ? "embeddedMainNoExit" : "embeddedMain",
        no_exit
            ? "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I"
            : "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
    if (main_method == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, no_exit
            ? "GetStaticMethodID embeddedMainNoExit failed"
            : "GetStaticMethodID embeddedMain failed");
        return 25;
    }

    const char *target = getenv("WESTLAKE_TARGET");
    if (target == 0 || target[0] == 0) {
        target = "com.digiplex.game.MainActivity";
    }
    jstring arg0 = (*env)->NewStringUTF(env, target);
    jstring arg1 = (*env)->NewStringUTF(env, stage);
    jstring arg2 = (*env)->NewStringUTF(env, "0");
    if (arg0 == 0 || arg1 == 0 || arg2 == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "building embeddedMain string args failed");
        return 26;
    }

    if (no_exit) {
        log_text("CallStaticIntMethod Dayu600ApkStageProbe.embeddedMainNoExit begin");
        jint probe_rc = call_embedded_main_no_exit(
            env, stage, probe_class, main_method, arg0, arg1, arg2);
        log_int("Dayu600ApkStageProbe.embeddedMainNoExit rc=", (int)probe_rc);
    } else {
        log_text("CallStaticVoidMethod Dayu600ApkStageProbe.embeddedMain begin");
        (*env)->CallStaticVoidMethod(env, probe_class, main_method, arg0, arg1, arg2);
    }
    if ((*env)->ExceptionCheck(env)) {
        if (no_exit) {
            describe_pending_exception(env, "Dayu600ApkStageProbe.embeddedMainNoExit threw");
        } else {
            describe_pending_exception(env, "Dayu600ApkStageProbe.embeddedMain threw");
        }
        return 27;
    }

    if (no_exit) {
        log_text("Dayu600ApkStageProbe.embeddedMainNoExit ok");
    } else {
        log_text("Dayu600ApkStageProbe.embeddedMain ok");
    }
    }
    return load_heavy_bridge_if_requested("afterStage");
}

__attribute__((visibility("default"))) int westlake_embedded_art_run_stage(const char *stage)
{
    log_text("westlake_embedded_art_run_stage entered");
    int load_rc = ensure_art_loaded();
    if (load_rc != 0) {
        return load_rc;
    }
    return run_stage_probe(westlake_art_handle, westlake_create_vm_symbol, stage);
}

__attribute__((constructor)) static void westlake_embedded_art_dlopen_probe_init(void)
{
    log_text("embedded-art-dlopen-probe constructor");

    /* W-001: process-global re-entry guard. When the sidecar is (re)loaded as a
     * *system* JNI library via JavaVMExt::LoadNativeLibrary (to fix the boot-level
     * dual android.os.Trace — see westlake_register_sidecar_as_system_lib), a second
     * copy's constructor must NOT dlopen ART / create a second VM again. The env
     * marker is process-wide, so it neutralizes any duplicate load (copy or namespace),
     * independent of musl realpath dedup. */
    if (getenv("WESTLAKE_CTOR_RAN") != 0) {
        log_text("constructor re-entry; skip (already ran)");
        return;
    }
    setenv("WESTLAKE_CTOR_RAN", "1", 1);

    char *create_vm_flag = getenv("WESTLAKE_CREATE_VM");
    char *dlopen_flag = getenv("WESTLAKE_DLOPEN_ON_LOAD");
    if (!streq(create_vm_flag, "1") && !streq(dlopen_flag, "1")) {
        log_text("lazy mode; not dlopening ART in constructor");
        return;
    }

    int load_rc = ensure_art_loaded();
    if (load_rc != 0) {
        return;
    }

    if (!streq(create_vm_flag, "1")) {
        log_text("WESTLAKE_CREATE_VM not set; dlopen-only mode");
        return;
    }

    // Note: LD_PRELOAD is unset in the shell script BEFORE execve, not here.
    // If LD_PRELOAD is still set when the constructor runs, unset it anyway.
    {
        char *lp = getenv("LD_PRELOAD");
        if (lp != 0 && lp[0] != 0) {
            unsetenv("LD_PRELOAD");
            log_text("LD_PRELOAD unset (was set)");
        }
    }

    int vm_rc = run_stage_probe(westlake_art_handle, westlake_create_vm_symbol, 0);
    westlake_ctor_vm_rc = vm_rc;
    log_int("embedded vm probe rc=", vm_rc);
}
