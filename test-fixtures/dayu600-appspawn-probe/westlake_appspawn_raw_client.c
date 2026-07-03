typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long s64;

#define AF_UNIX 1
#define SOCK_STREAM 1
#define AT_FDCWD -100
#define O_WRONLY 1
#define O_CREAT 64
#define O_APPEND 1024
#define LOG_MODE 420

#define APPSPAWN_MSG_MAGIC 0xEF201234
#define MSG_APP_SPAWN 0
#define APP_LEN_PROC_NAME 256

#define TLV_BUNDLE_INFO 0
#define TLV_MSG_FLAGS 1
#define TLV_DAC_INFO 2
#define TLV_DOMAIN_INFO 3
#define TLV_ACCESS_TOKEN_INFO 5
#define TLV_INTERNET_INFO 7

#define APP_FLAGS_NO_SANDBOX 7
#define APP_FLAGS_IGNORE_SANDBOX 13
#define APP_FLAGS_UNLOCKED_STATUS 34
#define TEST_ACCESS_TOKEN_ID 537854093u

struct appspawn_msg {
    u32 magic;
    u32 msg_type;
    u32 msg_len;
    u32 msg_id;
    u32 tlv_count;
    char process_name[APP_LEN_PROC_NAME];
};

struct appspawn_tlv {
    u16 tlv_len;
    u16 tlv_type;
};

struct appspawn_response {
    struct appspawn_msg msg;
    int result;
    int pid;
};

struct sockaddr_un_min {
    u16 sun_family;
    char sun_path[108];
};

static long syscall1(long n, long a)
{
    register long x0 __asm__("x0") = a;
    register long x8 __asm__("x8") = n;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x8) : "memory");
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

static unsigned long slen(const char *s)
{
    unsigned long n = 0;
    while (s[n] != 0) {
        n++;
    }
    return n;
}

static void copy_bytes(void *dst, const void *src, unsigned long n)
{
    u8 *d = (u8 *)dst;
    const u8 *s = (const u8 *)src;
    for (unsigned long i = 0; i < n; i++) {
        d[i] = s[i];
    }
}

static void zero_bytes(void *dst, unsigned long n)
{
    u8 *d = (u8 *)dst;
    for (unsigned long i = 0; i < n; i++) {
        d[i] = 0;
    }
}

static unsigned int align4(unsigned int n)
{
    return (n + 3u) & ~3u;
}

static void log_text(const char *s)
{
    long fd = syscall4(56, AT_FDCWD, (long)"/data/local/tmp/westlake-appspawn-raw-client.log",
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

static void put_u32(u8 *buf, unsigned int *pos, u32 value)
{
    copy_bytes(buf + *pos, &value, sizeof(value));
    *pos += sizeof(value);
}

static void put_tlv_header(u8 *buf, unsigned int *pos, u16 type, u16 len)
{
    struct appspawn_tlv tlv;
    tlv.tlv_len = len;
    tlv.tlv_type = type;
    copy_bytes(buf + *pos, &tlv, sizeof(tlv));
    *pos += sizeof(tlv);
}

static void put_string_padded(u8 *buf, unsigned int *pos, const char *value)
{
    unsigned int len = (unsigned int)slen(value);
    copy_bytes(buf + *pos, value, len);
    *pos += align4(len + 1u);
}

static unsigned int build_msg(u8 *buf)
{
    const char *name = "westlake.child.probe";
    unsigned int pos = sizeof(struct appspawn_msg);
    struct appspawn_msg *msg = (struct appspawn_msg *)buf;
    zero_bytes(buf, 2048);

    msg->magic = APPSPAWN_MSG_MAGIC;
    msg->msg_type = MSG_APP_SPAWN;
    msg->msg_id = 1007;
    msg->tlv_count = 6;
    copy_bytes(msg->process_name, name, slen(name));

    u16 bundle_len = (u16)(sizeof(struct appspawn_tlv) + sizeof(u32) + align4((u32)slen(name) + 1u));
    put_tlv_header(buf, &pos, TLV_BUNDLE_INFO, bundle_len);
    put_u32(buf, &pos, 0);
    put_string_padded(buf, &pos, name);

    u16 flags_len = (u16)(sizeof(struct appspawn_tlv) + sizeof(u32) + sizeof(u32) * 2u);
    put_tlv_header(buf, &pos, TLV_MSG_FLAGS, flags_len);
    put_u32(buf, &pos, 2);
    put_u32(buf, &pos, (1u << APP_FLAGS_NO_SANDBOX) | (1u << APP_FLAGS_IGNORE_SANDBOX));
    put_u32(buf, &pos, (1u << (APP_FLAGS_UNLOCKED_STATUS - 32)));

    u16 dac_len = (u16)(sizeof(struct appspawn_tlv) + 332u);
    put_tlv_header(buf, &pos, TLV_DAC_INFO, dac_len);
    put_u32(buf, &pos, 20010043u);
    put_u32(buf, &pos, 20010043u);
    put_u32(buf, &pos, 1);
    put_u32(buf, &pos, 20010043u);
    pos += 63u * sizeof(u32);
    pos += 64u;

    const char *apl = "normal";
    u16 domain_len = (u16)(sizeof(struct appspawn_tlv) + sizeof(u32) + align4((u32)slen(apl) + 1u));
    put_tlv_header(buf, &pos, TLV_DOMAIN_INFO, domain_len);
    put_u32(buf, &pos, 0);
    put_string_padded(buf, &pos, apl);

    u16 internet_len = (u16)(sizeof(struct appspawn_tlv) + sizeof(u32));
    put_tlv_header(buf, &pos, TLV_INTERNET_INFO, internet_len);
    put_u32(buf, &pos, 0);

    u16 token_len = (u16)(sizeof(struct appspawn_tlv) + sizeof(u64));
    put_tlv_header(buf, &pos, TLV_ACCESS_TOKEN_INFO, token_len);
    put_u32(buf, &pos, TEST_ACCESS_TOKEN_ID);
    put_u32(buf, &pos, 0);

    msg->msg_len = pos;
    return pos;
}

static int run_client(void)
{
    struct sockaddr_un_min addr;
    const char *path = "/dev/unix/socket/AppSpawnX";
    zero_bytes(&addr, sizeof(addr));
    addr.sun_family = AF_UNIX;
    copy_bytes(addr.sun_path, path, slen(path));

    long fd = syscall3(198, AF_UNIX, SOCK_STREAM, 0);
    log_int("socket fd=", (int)fd);
    if (fd < 0) {
        return 10;
    }
    long rc = syscall3(203, fd, (long)&addr, 2 + (long)slen(path) + 1);
    log_int("connect rc=", (int)rc);
    if (rc < 0) {
        syscall3(57, fd, 0, 0);
        return 11;
    }

    u8 msg[2048];
    unsigned int msg_len = build_msg(msg);
    log_int("msg len=", (int)msg_len);
    rc = syscall3(64, fd, (long)msg, msg_len);
    log_int("write rc=", (int)rc);
    if (rc < 0) {
        syscall3(57, fd, 0, 0);
        return 12;
    }

    struct appspawn_response resp;
    zero_bytes(&resp, sizeof(resp));
    rc = syscall3(63, fd, (long)&resp, sizeof(resp));
    log_int("read rc=", (int)rc);
    if (rc >= (long)sizeof(resp)) {
        log_int("response result=", resp.result);
        log_int("response pid=", resp.pid);
    }
    syscall3(57, fd, 0, 0);
    return 0;
}

void _start(void)
{
    int rc;
    log_text("westlake raw appspawn client start\n");
    rc = run_client();
    log_int("client exit=", rc);
    syscall1(93, rc);
}
