#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_APPEND 1024
#define LOG_MODE 438

extern long long strtoll(const char *nptr, char **endptr, int base);
extern unsigned long long strtoull(const char *nptr, char **endptr, int base);
extern long double strtold(const char *nptr, char **endptr);

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

static void compat_log(const char *s)
{
    long fd = syscall4(56, AT_FDCWD,
        (long)"/data/local/tmp/westlake-art-compat-stubs.log",
        O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        return;
    }
    syscall3(64, fd, (long)s, slen(s));
    syscall3(64, fd, (long)"\n", 1);
    syscall3(57, fd, 0, 0);
}

static int westlake_errno_slot = 0;
static const char westlake_progname[] = "westlake-art-compat-stubs";

__attribute__((visibility("default"))) char __sF[3 * 256];
__attribute__((visibility("default"))) void *westlake_executils_vtable[16]
    __asm__("_ZTVN3art9ExecUtilsE") = {0};

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
    compat_log("__assert2 called");
    if (failed_expression != 0) {
        compat_log(failed_expression);
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

__attribute__((visibility("default"))) int sigemptyset64(void *set)
{
    if (set != 0) {
        char *p = (char *)set;
        for (int i = 0; i < 16; i++) {
            p[i] = 0;
        }
    }
    return 0;
}

__attribute__((visibility("default"))) int sigaddset64(void *set, int signum)
{
    (void)set;
    (void)signum;
    return 0;
}

__attribute__((visibility("default"))) int sigprocmask64(int how, const void *set, void *oldset)
{
    (void)how;
    (void)set;
    if (oldset != 0) {
        sigemptyset64(oldset);
    }
    return 0;
}

__attribute__((visibility("default"))) int pthread_sigmask64(int how, const void *set, void *oldset)
{
    return sigprocmask64(how, set, oldset);
}

__attribute__((visibility("default"))) int sigwait64(const void *set, int *sig)
{
    (void)set;
    if (sig != 0) {
        *sig = 0;
    }
    return 0;
}

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

__attribute__((visibility("default"))) void *westlake_ndk1_string_copy_ctor(void *self, const void *other)
    __asm__("_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_");
__attribute__((visibility("default"))) void *westlake_ndk1_string_copy_ctor(void *self, const void *other)
{
    if (self != 0 && other != 0) {
        char *dst = (char *)self;
        const char *src = (const char *)other;
        for (int i = 0; i < 24; i++) {
            dst[i] = src[i];
        }
    }
    return self;
}
