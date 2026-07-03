/* Minimal DAYU600 libapk_installer.so shim.
 *
 * BMS dlopens libapk_installer.so and dlsyms:
 *   int oh_adapter_install_apk_with_manifest(const char *apkPath,
 *       int userId, char *manifestJsonOut, int manifestJsonOutLen);
 *
 * This shim deliberately avoids libc so it can be built with the same tiny
 * aarch64-linux-gnu no-deps path used by the appspawn probes. It reads a JSON
 * payload from /data/local/tmp/westlake-apk-installer-manifest.json and copies
 * it into BMS' output buffer. Keeping the payload outside the loaded .so lets
 * us iterate without restarting BMS after the first dlopen.
 */

#define AT_FDCWD -100
#define O_RDONLY 0
#define O_WRONLY 1
#define O_CREAT 64
#define O_APPEND 1024
#define LOG_MODE 420

static const char kConfigPath[] = "/data/local/tmp/westlake-apk-installer-manifest.json";
static const char kLogPath[] = "/data/local/tmp/westlake-apk-installer-shim.log";

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

static unsigned long bounded_slen(const char *s, unsigned long max)
{
    unsigned long n = 0;
    if (s == 0) {
        return 0;
    }
    while (n < max && s[n] != 0) {
        n++;
    }
    return n;
}

static void copy_bytes(char *dst, const char *src, unsigned long n)
{
    for (unsigned long i = 0; i < n; i++) {
        dst[i] = src[i];
    }
}

static void log_write(const char *s, unsigned long n)
{
    long fd = syscall4(56, AT_FDCWD, (long)kLogPath, O_WRONLY | O_CREAT | O_APPEND, LOG_MODE);
    if (fd < 0) {
        return;
    }
    syscall3(64, fd, (long)s, n);
    syscall3(57, fd, 0, 0);
}

static void log_text(const char *s)
{
    log_write(s, bounded_slen(s, 4096));
}

static void log_int(const char *prefix, long value)
{
    char buf[96];
    unsigned long pos = 0;
    for (unsigned long i = 0; prefix[i] != 0 && pos + 1 < sizeof(buf); i++) {
        buf[pos++] = prefix[i];
    }
    if (value < 0 && pos + 1 < sizeof(buf)) {
        buf[pos++] = '-';
        value = -value;
    }
    char digits[24];
    unsigned long dpos = 0;
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
    log_write(buf, pos);
}

static int read_config_json(char *out, int out_len)
{
    if (out == 0 || out_len < 2) {
        return -22;
    }

    long fd = syscall4(56, AT_FDCWD, (long)kConfigPath, O_RDONLY, 0);
    if (fd < 0) {
        out[0] = 0;
        log_int("config_open_rc=", fd);
        return -2;
    }

    long want = out_len - 1;
    long n = syscall3(63, fd, (long)out, want);
    syscall3(57, fd, 0, 0);
    if (n <= 0) {
        out[0] = 0;
        log_int("config_read_rc=", n);
        return -5;
    }
    out[n] = 0;
    log_int("config_read_bytes=", n);
    return 0;
}

__attribute__((visibility("default")))
int oh_adapter_install_apk_with_manifest(const char *apk_path, int user_id, char *manifest_out, int manifest_out_len)
{
    log_text("oh_adapter_install_apk_with_manifest called\n");
    log_text("apk_path=");
    log_write(apk_path, bounded_slen(apk_path, 512));
    log_text("\n");
    log_int("user_id=", user_id);
    log_int("manifest_out_len=", manifest_out_len);
    int rc = read_config_json(manifest_out, manifest_out_len);
    log_int("return_rc=", rc);
    return rc;
}

__attribute__((visibility("default")))
int oh_adapter_install_apk(const char *apk_path, int user_id)
{
    (void)apk_path;
    (void)user_id;
    log_text("oh_adapter_install_apk called\n");
    return -38;
}

__attribute__((visibility("default"), aligned(4096)))
void __cfi_check(unsigned long call_site_type_id, void *ptr, void *diag)
{
    (void)call_site_type_id;
    (void)ptr;
    (void)diag;
}

void *_Unwind_Resume = 0;
