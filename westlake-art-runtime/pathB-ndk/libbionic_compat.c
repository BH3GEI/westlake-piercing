// [DAYU600] minimal bionic-on-musl shim: provide bionic-specific symbols forwarding to musl.
#include <errno.h>
#include <string.h>
extern int* __errno_location(void);
int* __errno(void) { return __errno_location(); }   // bionic __errno -> musl __errno_location
// bionic system property: stub (return empty). Real impl would read /dev/__properties__.
int __system_property_get(const char* name, char* value) { (void)name; if (value) value[0]=0; return 0; }
