#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_APPEND 1024
#define LOG_MODE 438

extern long long strtoll(const char *nptr, char **endptr, int base);
extern unsigned long long strtoull(const char *nptr, char **endptr, int base);
extern long double strtold(const char *nptr, char **endptr);

#pragma GCC visibility push(hidden)

static long westlake_syscall3(long n, long a, long b, long c)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x2 __asm__("x2") = c;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x8) : "memory");
    return x0;
}

static long westlake_syscall4(long n, long a, long b, long c, long d)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x2 __asm__("x2") = c;
    register long x3 __asm__("x3") = d;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x3), "r"(x8) : "memory");
    return x0;
}

static unsigned long westlake_strlen(const char *s)
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

static void westlake_compat_log(const char *s)
{
    long fd = westlake_syscall4(56, AT_FDCWD,
        (long)"/data/local/tmp/westlake-art-built-in-compat.log",
        O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        return;
    }
    westlake_syscall3(64, fd, (long)s, westlake_strlen(s));
    westlake_syscall3(64, fd, (long)"\n", 1);
    westlake_syscall3(57, fd, 0, 0);
}

static const char westlake_progname[] = "westlake-art";
static int westlake_errno_slot = 0;

char __sF[3 * 256];
void *westlake_executils_vtable[16] __asm__("_ZTVN3art9ExecUtilsE") = {0};

void *Westlake_UnixFileSystem_list(void *env, void *self, void *file)
{
    (void)env;
    (void)self;
    (void)file;
    return 0;
}

int *__errno(void)
{
    return &westlake_errno_slot;
}

const char *getprogname(void)
{
    return westlake_progname;
}

void setprogname(const char *name)
{
    (void)name;
}

long sysconf(int name)
{
    if (name == 30 || name == 0x0028 || name == 0x0027) {
        return 4096;
    }
    if (name == 83 || name == 0x0054 || name == 0x0055) {
        return 8;
    }
    if (name == 2) {
        return 100;
    }
    return 1;
}

void __assert2(const char *file, int line, const char *function, const char *failed_expression)
{
    (void)file;
    (void)line;
    (void)function;
    westlake_compat_log("__assert2 called");
    if (failed_expression != 0) {
        westlake_compat_log(failed_expression);
    }
    westlake_syscall3(93, 125, 0, 0);
}

char *__gnu_strerror_r(int errnum, char *buf, unsigned long buflen)
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

long long strtoll_l(const char *nptr, char **endptr, int base, void *locale)
{
    (void)locale;
    return strtoll(nptr, endptr, base);
}

unsigned long long strtoull_l(const char *nptr, char **endptr, int base, void *locale)
{
    (void)locale;
    return strtoull(nptr, endptr, base);
}

long double strtold_l(const char *nptr, char **endptr, void *locale)
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

int strcoll_l(const char *a, const char *b, void *locale)
{
    (void)locale;
    return westlake_strcmp(a, b);
}

unsigned long strxfrm_l(char *dst, const char *src, unsigned long n, void *locale)
{
    (void)locale;
    unsigned long len = westlake_strlen(src);
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

unsigned long strftime_l(char *s, unsigned long max, const char *format, const void *tm, void *locale)
{
    (void)s;
    (void)max;
    (void)format;
    (void)tm;
    (void)locale;
    return 0;
}

int __register_atfork(void (*prepare)(void), void (*parent)(void), void (*child)(void), void *dso)
{
    (void)prepare;
    (void)parent;
    (void)child;
    (void)dso;
    return 0;
}

int android_get_device_api_level(void)
{
    return 35;
}

void android_set_abort_message(const char *msg)
{
    (void)msg;
}

int __system_property_get(const char *name, char *value)
{
    (void)name;
    if (value != 0) {
        value[0] = 0;
    }
    return 0;
}

int sigemptyset64(void *set)
{
    if (set != 0) {
        char *p = (char *)set;
        for (int i = 0; i < 16; i++) {
            p[i] = 0;
        }
    }
    return 0;
}

int sigaddset64(void *set, int signum)
{
    (void)set;
    (void)signum;
    return 0;
}

int sigprocmask64(int how, const void *set, void *oldset)
{
    (void)how;
    (void)set;
    if (oldset != 0) {
        sigemptyset64(oldset);
    }
    return 0;
}

int pthread_sigmask64(int how, const void *set, void *oldset)
{
    return sigprocmask64(how, set, oldset);
}

int sigwait64(const void *set, int *sig)
{
    (void)set;
    if (sig != 0) {
        *sig = 0;
    }
    return 0;
}

unsigned long android_fdsan_create_owner_tag(int type, unsigned long tag)
{
    (void)type;
    return tag;
}

void android_fdsan_exchange_owner_tag(int fd, unsigned long expected, unsigned long tag)
{
    (void)fd;
    (void)expected;
    (void)tag;
}

int android_fdsan_close_with_tag(int fd, unsigned long tag)
{
    (void)tag;
    return (int)westlake_syscall3(57, fd, 0, 0);
}

unsigned long westlake_vixl_cpu_features_combine4(int a, int b, int c, int d)
    __asm__("_ZN4vixl11CPUFeatures7CombineENS0_7FeatureES1_S1_S1_");
unsigned long westlake_vixl_cpu_features_combine4(int a, int b, int c, int d)
{
    (void)a;
    (void)b;
    (void)c;
    (void)d;
    return 0;
}

unsigned long westlake_vixl_pop_lowest_index(void)
    __asm__("_ZN4vixl7aarch6410CPURegList14PopLowestIndexEv");
unsigned long westlake_vixl_pop_lowest_index(void)
{
    return 0;
}

unsigned long westlake_vixl_acquire_next_available(void *scope, void *list)
    __asm__("_ZN4vixl7aarch6423UseScratchRegisterScope20AcquireNextAvailableEPNS0_10CPURegListE");
unsigned long westlake_vixl_acquire_next_available(void *scope, void *list)
{
    (void)scope;
    (void)list;
    return 0;
}
