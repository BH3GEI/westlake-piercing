#include <stdint.h>
extern "C" {
uint64_t atrace_enabled_tags = 0;
void atrace_begin_body(const char* name) { (void)name; }
void atrace_end_body(void) {}
uint64_t atrace_get_enabled_tags(void) { return 0; }
void atrace_update_tags(void) {}
void atrace_setup(void) {}
void atrace_set_debuggable(int d) { (void)d; }
void atrace_set_tracing_enabled(int e) { (void)e; }
}
const char* ErrorCodeString(int code) { (void)code; return "ZipError"; }
extern "C" {
void __android_log_set_default_tag(const char* tag) { (void)tag; }
int __android_log_is_loggable(int prio, const char* tag, int def) { (void)prio;(void)tag; return def; }
int __android_log_is_loggable_len(int prio, const char* tag, unsigned long len, int def) { (void)prio;(void)tag;(void)len; return def; }
void __android_log_call_aborter(const char* abort_message) { (void)abort_message; }
}
extern "C" void android_set_abort_message(const char* m) { (void)m; }
extern "C" {
int __android_log_assert2(void) { return 0; }
int __android_log_buf_print(int b, int p, const char* t, const char* f, ...) { (void)b;(void)p;(void)t;(void)f; return 0; }
int __android_log_error_write(int tag, const char* s, int u, const char* d, unsigned int l) { (void)tag;(void)s;(void)u;(void)d;(void)l; return 0; }
int __android_log_get_minimum_priority(void) { return 0; }
void __android_log_logd_logger(const void* msg) { (void)msg; }
void __android_log_set_aborter(void* a) { (void)a; }
void __android_log_set_logger(void* lg) { (void)lg; }
void __android_log_set_minimum_priority(int p) { (void)p; }
void __android_log_write_log_message(void* m) { (void)m; }
}
extern "C" void __android_log_assert(const char* c, const char* t, const char* f, ...) { (void)c;(void)t;(void)f; }
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
// libandroidfw.so links neither liblog nor any real logger; this stub TU already
// provides every other __android_log_* symbol. __android_log_print was the lone
// omission, so the .so had an unresolved U __android_log_print that only resolved
// when some other loaded lib (e.g. libhwui on the substrate root) happened to
// export it — which failed on the default root. Define it here so the symbol is
// self-satisfied inside the .so and it loads regardless of root/LD_LIBRARY_PATH.
extern "C" int __android_log_print(int prio, const char* tag, const char* fmt, ...) {
  (void)prio; (void)tag;
  va_list ap; va_start(ap, fmt);
  vfprintf(stderr, fmt, ap);
  va_end(ap);
  fputc('\n', stderr);
  return 0;
}
extern "C" int posix_strerror_r(int e, char* buf, unsigned long len) {
  if (buf && len) snprintf(buf, len, "error %d", e);
  return 0;
}
extern "C" {
int LogdClose(void* c) { (void)c; return 0; }
int LogdRead(void* c, void* m) { (void)c;(void)m; return 0; }
int PmsgClose(void* c) { (void)c; return 0; }
int PmsgRead(void* c, void* m) { (void)c;(void)m; return 0; }
int __android_log_bwrite(int tag, const void* p, unsigned long l) { (void)tag;(void)p;(void)l; return 0; }
int __android_log_security_bwrite(int tag, const void* p, unsigned long l) { (void)tag;(void)p;(void)l; return 0; }
int __android_log_stats_bwrite(int tag, const void* p, unsigned long l) { (void)tag;(void)p;(void)l; return 0; }
}
extern "C" {
int native_handle_close(const void* h) { (void)h; return 0; }
int native_handle_delete(void* h) { (void)h; return 0; }
}
