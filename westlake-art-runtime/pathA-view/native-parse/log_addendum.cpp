#include <stdarg.h>
extern "C" {
int __android_log_print(int, const char*, const char*, ...) { return 0; }
int __android_log_vprint(int, const char*, const char*, va_list) { return 0; }
int __android_log_write(int, const char*, const char*) { return 0; }
}
