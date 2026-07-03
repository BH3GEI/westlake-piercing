typedef int (*ServerStageHook)(void *content);
typedef int (*AppSpawnHook)(void *content, void *client);

extern int AddServerStageHook(int stage, int prio, ServerStageHook hook);
extern int AddAppSpawnHook(int stage, int prio, AppSpawnHook hook);
extern void *dlopen(const char *path, int flags);
extern void *dlsym(void *handle, const char *symbol);
extern char *dlerror(void);
extern char *getenv(const char *name);

#define STAGE_SERVER_PRELOAD 10
#define STAGE_CHILD_EXECUTE 31
#define HOOK_PRIO_HIGHEST 1000
#define RTLD_DEFAULT ((void *)0)
#define RTLD_NOW 2
#define RTLD_GLOBAL 256
#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_TRUNC 512
#define O_APPEND 1024
#define LOG_MODE 438
#define SIGCHLD 17

typedef int (*EmbeddedArtRunStage)(const char *stage);

static const char *g_embedded_probe_path = "/data/local/tmp/libwestlake_embedded_art_dlopen_probe.so";
static const char *g_compat_stubs_path = "/data/local/tmp/libwestlake_art_compat_stubs.so";

static long syscall1(long n, long a)
{
    register long x0 __asm__("x0") = a;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x8) : "memory");
    return x0;
}

static long syscall2(long n, long a, long b)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x8) : "memory");
    return x0;
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

static long syscall5(long n, long a, long b, long c, long d, long e)
{
    register long x0 __asm__("x0") = a;
    register long x1 __asm__("x1") = b;
    register long x2 __asm__("x2") = c;
    register long x3 __asm__("x3") = d;
    register long x4 __asm__("x4") = e;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x3), "r"(x4), "r"(x8) : "memory");
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

static void log_to(const char *path, const char *s, int flags)
{
    long fd = syscall4(56, AT_FDCWD, (long)path, flags, LOG_MODE);
    if (fd < 0) {
        return;
    }
    syscall3(64, fd, (long)s, slen(s));
    syscall3(57, fd, 0, 0);
}

static void log_text(const char *s)
{
    log_to("/data/local/tmp/westlake-appspawn-exec-probe.log", s, O_WRONLY | O_CREAT | O_APPEND);
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

static void write_file(const char *path, const char *text)
{
    long fd = syscall4(56, AT_FDCWD, (long)path, O_WRONLY | O_CREAT | O_TRUNC, LOG_MODE);
    if (fd < 0) {
        log_int("write_file open rc=", (int)fd);
        return;
    }
    syscall3(64, fd, (long)text, slen(text));
    syscall3(57, fd, 0, 0);
}

static int westlake_exec_child_execute(void *content, void *client)
{
    (void)content;
    (void)client;
    log_text("exec-child-execute hook entered; running embedded ART in child\n");
    const char *load_compat = getenv("WESTLAKE_LOAD_COMPAT_STUBS");
    if (load_compat != 0 && load_compat[0] == '1') {
        void *compat = dlopen(g_compat_stubs_path, RTLD_NOW | RTLD_GLOBAL);
        if (compat == 0) {
            log_text("dlopen compat stubs failed\n");
            char *err = dlerror();
            if (err != 0) {
                log_text(err);
                log_text("\n");
            }
        } else {
            log_text("dlopen compat stubs ok\n");
        }
    }

    void *embedded = dlopen(g_embedded_probe_path, RTLD_NOW | RTLD_GLOBAL);
    if (embedded == 0) {
        log_text("dlopen embedded probe failed\n");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
            log_text("\n");
        }
        return 0;
    }

    EmbeddedArtRunStage run_stage =
        (EmbeddedArtRunStage)dlsym(embedded, "westlake_embedded_art_run_stage");
    if (run_stage == 0) {
        log_text("westlake_embedded_art_run_stage missing\n");
        char *err = dlerror();
        if (err != 0) {
            log_text(err);
            log_text("\n");
        }
        return 0;
    }

    const char *stage = getenv("WESTLAKE_APP_STAGE");
    if (stage == 0 || stage[0] == 0) {
        stage = "onCreateNullTrace";
    }
    log_text("calling westlake_embedded_art_run_stage\n");
    log_text(stage);
    int rc = run_stage(stage);
    log_int("embedded appspawn child rc=", rc);
    return 0;
}

static int on_server_preload(void *content)
{
    (void)content;
    log_text("server-preload hook fired\n");
    return 0;
}

__attribute__((constructor)) static void westlake_exec_probe_init(void)
{
    log_text("westlake appspawn exec probe constructor\n");
    log_int("AddServerStageHook rc=", AddServerStageHook(STAGE_SERVER_PRELOAD, HOOK_PRIO_HIGHEST, on_server_preload));
    log_int("AddAppSpawnHook rc=", AddAppSpawnHook(STAGE_CHILD_EXECUTE, HOOK_PRIO_HIGHEST, westlake_exec_child_execute));
}
