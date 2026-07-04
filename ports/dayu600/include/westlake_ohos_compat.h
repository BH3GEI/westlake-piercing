#pragma once

#include <assert.h>
#include <locale.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

long long strtoll_l(const char* nptr, char** endptr, int base, locale_t locale);
unsigned long long strtoull_l(const char* nptr, char** endptr, int base, locale_t locale);

#ifdef __cplusplus
}
#endif
