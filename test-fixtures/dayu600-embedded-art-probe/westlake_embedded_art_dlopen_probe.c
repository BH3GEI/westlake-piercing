#include <jni.h>
#include <setjmp.h>
#include <signal.h>
#include <unistd.h>
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

static char *build_art_path(void)
{
    static char path[512];
    return build_root_path(path, sizeof(path), "/art/libwestlake_art.so");
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

static char *build_android_runtime_path(void)
{
    static char path[512];
    if (westlake_uses_substrate_layout()) {
        return build_root_path(path, sizeof(path), "/android/lib64/liboh_android_runtime.so");
    }
    return build_root_path(path, sizeof(path), "/lib64/liboh_android_runtime.so");
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
    long fd = syscall4(56, AT_FDCWD,
        (long)"/data/local/tmp/westlake-embedded-art-dlopen-probe.log",
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
    westlake_art_handle = dlopen(build_art_path(), RTLD_NOW | RTLD_GLOBAL);
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
        char *path = build_android_runtime_path();
        log_text("android runtime dlopen begin");
        log_text(path);
        westlake_android_runtime_handle = dlopen(path, RTLD_NOW | RTLD_GLOBAL);
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
    jint trc = (*env)->RegisterNatives(
        env, trace_class, tmethods, (jint)(sizeof(tmethods) / sizeof(tmethods[0])));
    if (trc != 0 || (*env)->ExceptionCheck(env)) {
        log_text(label);
        log_text("RegisterNatives Trace failed");
        (*env)->ExceptionClear(env);
        return -1;
    }
    log_text(label);
    log_text("RegisterNatives Trace ok");
    return 0;
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
    mid0 = (*env)->GetStaticMethodID(env, trace_class, "nativeIsTagEnabled", "(J)Z");
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
        vals[3] = (const void *)Java_android_os_Trace_nativeIsTagEnabled;   labels[3] = " ourfn=";
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
    (*env)->CallStaticBooleanMethod(env, trace_class, mid0, (jlong)0);
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

static int run_stage_probe(void *handle, void *create_vm_symbol, const char *stage_override)
{
    log_text("RUN_STAGE_PROBE ENTERED");
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
    options[7].optionString = "-Xint";
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
    {
        const char *fw_path =
            "/data/local/tmp/westlake-dayu600-substrate/android/lib64/libandroidfw.so";
        void *fw_handle = dlopen(fw_path, RTLD_NOW | 4 /*RTLD_NOLOAD*/);
        if (fw_handle == 0) {
            fw_handle = dlopen(fw_path, RTLD_NOW | RTLD_GLOBAL);
        }
        if (fw_handle != 0) {
            call_optional_onload(fw_handle, "JNI_OnLoad", vm);
            log_text("libandroidfw JNI_OnLoad invoked (res natives rebind, last)");
        } else {
            log_text("libandroidfw dlopen for JNI_OnLoad failed");
            char *fe = dlerror();
            if (fe != 0) log_text(fe);
        }
    }
    log_int("register_system_natives rc=", register_system_natives(env));
    log_int("seed_system_properties rc=", seed_system_properties(env));
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
            // normal path
            start_reg_rc = call_android_runtime_start_reg(env);
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
    if (streq(stage, "uptodownProbe")) {
        log_text("inputVerify SKIPPED for uptodownProbe stage");
        log_text("W001: uptodownProbe direct Java path");
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
        JNINativeMethod *all[] = { &m0, &m1, &m2, &m3, &m4, &m5, &m6 };
        const char *names[] = {
            "nativeFindClass", "nativeWriteText", "nativeRegisterTraceNatives",
            "nativeCallAddAssetPath", "nativeAppendApkAssets", "nativeW001Append",
            "nativeW001BindTrace"
        };
        int i;
        for (i = 0; i < 7; i++) {
            jint register_rc = (*env)->RegisterNatives(env, probe_class, all[i], 1);
            if (register_rc != 0 || (*env)->ExceptionCheck(env)) {
                log_text("RegisterNatives ONE failed:");
                log_text(names[i]);
                describe_pending_exception(env, names[i]);
                (*env)->ExceptionClear(env);
            } else {
                log_text("RegisterNatives ONE ok:");
                log_text(names[i]);
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
    log_int("embedded vm probe rc=", vm_rc);
}
