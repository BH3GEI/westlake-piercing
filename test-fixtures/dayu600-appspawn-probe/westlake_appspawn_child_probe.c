typedef int (*ServerStageHook)(void *content);
typedef int (*ChildLoop)(void *content, void *client);

extern int AddServerStageHook(int stage, int prio, ServerStageHook hook);
extern void RegChildLooper(void *content, ChildLoop loop);

#define STAGE_SERVER_PRELOAD 10
#define HOOK_PRIO_HIGHEST 1000
#define HOOK_PRIO_LOWEST 5000
#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_APPEND 1024
#define LOG_MODE 420

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
    while (s[n] != 0) {
        n++;
    }
    return n;
}

static void log_text(const char *s)
{
    long fd = syscall4(56, AT_FDCWD, (long)"/data/local/tmp/westlake-appspawn-child-probe.log",
        O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        return;
    }
    syscall3(64, fd, (long)s, slen(s));
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
    if (pos + 1 < sizeof(buf)) {
        buf[pos++] = '\n';
    }
    buf[pos] = 0;
    log_text(buf);
}

static int westlake_child_loop(void *content, void *client)
{
    (void)content;
    (void)client;
    log_text("child-looper entered\n");
    return 0;
}

static int on_server_preload(void *content)
{
    log_text("server-preload registering child-looper\n");
    RegChildLooper(content, westlake_child_loop);
    log_text("server-preload registered child-looper\n");
    return 0;
}

__attribute__((constructor)) static void westlake_child_probe_init(void)
{
    int rc = AddServerStageHook(STAGE_SERVER_PRELOAD, HOOK_PRIO_LOWEST, on_server_preload);
    log_text("westlake appspawn child probe constructor\n");
    log_int("AddServerStageHook rc=", rc);
}
