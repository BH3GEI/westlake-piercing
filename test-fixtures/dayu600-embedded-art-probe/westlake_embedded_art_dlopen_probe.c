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
extern long long strtoll(const char *nptr, char **endptr, int base);
extern unsigned long long strtoull(const char *nptr, char **endptr, int base);
extern long double strtold(const char *nptr, char **endptr);

static long syscall3(long n, long a, long b, long c);
static void log_text(const char *s);
static void log_int(const char *prefix, int value);
static unsigned long slen(const char *s);
static int describe_pending_exception(JNIEnv *env, const char *prefix);

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
    jlong tag)
{
    (void)tag;
    return 0;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeSetAppTracingAllowed(
    jboolean allowed)
{
    (void)allowed;
}

__attribute__((visibility("default"))) void Java_android_os_Trace_nativeSetTracingEnabled(
    jboolean enabled)
{
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
    jlong tag)
{
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

static int run_stage_probe(void *handle, void *create_vm_symbol, const char *stage_override)
{
    jni_create_java_vm_fn create_vm = (jni_create_java_vm_fn)create_vm_symbol;
    JavaVM *vm = 0;
    JNIEnv *env = 0;

    JavaVMOption options[9];
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
        char *img = getenv("WESTLAKE_BOOT_IMAGE");
        if (img != 0 && img[0] == '1') {
            options[8].optionString = build_image_option();
            options[8].extraInfo = 0;
            dayu_nopt = 9;
            log_text("WESTLAKE_BOOT_IMAGE=1: adding -Ximage");
            log_text(options[8].optionString);
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

    // Skip inputVerify for uptodownProbe — IVS class not on classpath
    if (streq(stage, "uptodownProbe")) {
        log_text("inputVerify SKIPPED for uptodownProbe stage");
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

    jclass probe_class = (*env)->FindClass(env, "Dayu600ApkStageProbe");
    if (probe_class == 0 || (*env)->ExceptionCheck(env)) {
        describe_pending_exception(env, "FindClass Dayu600ApkStageProbe failed");
        return 24;
    }
    {
        JNINativeMethod methods[] = {
            {"nativeFindClass", "(Ljava/lang/String;)Ljava/lang/Class;",
                (void *)westlake_native_find_class},
            {"nativeWriteText", "(Ljava/lang/String;Ljava/lang/String;)V",
                (void *)westlake_native_write_text},
        };
        jint register_rc = (*env)->RegisterNatives(env, probe_class, methods, 2);
        if (register_rc != 0 || (*env)->ExceptionCheck(env)) {
            describe_pending_exception(env, "RegisterNatives Dayu600ApkStageProbe natives failed");
        } else {
            log_text("RegisterNatives Dayu600ApkStageProbe natives ok");
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
        jint probe_rc = (*env)->CallStaticIntMethod(env, probe_class, main_method, arg0, arg1, arg2);
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

    // Unset LD_PRELOAD before running the probe so that any subsequent exec()
    // performed by app_process64 (e.g. re-exec to run ActivityThread.main) does
    // not reload this constructor and create a second VM.
    unsetenv("LD_PRELOAD");

    int vm_rc = run_stage_probe(westlake_art_handle, westlake_create_vm_symbol, 0);
    log_int("embedded vm probe rc=", vm_rc);
}
