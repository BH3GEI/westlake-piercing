/*
 * Compat shim for third_party/bounds_checking_function <securec.h>.
 * The sparse OpenHarmony clones do not carry securec; a handful of Rosen
 * headers include it. Provide static-inline fallbacks over libc so no
 * libsec_shared.z.so link dependency is introduced. Only used by code
 * paths this smoke test actually instantiates (in practice: none of the
 * *_s calls end up in the binary).
 */
#ifndef WESTLAKE_COMPAT_SECUREC_H
#define WESTLAKE_COMPAT_SECUREC_H

#include <errno.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

#ifndef EOK
#define EOK 0
#endif

typedef int errno_t;

#ifdef __cplusplus
extern "C" {
#endif

static inline errno_t memcpy_s(void* dest, size_t destMax, const void* src, size_t count)
{
    if (dest == NULL || src == NULL || count > destMax) {
        return EINVAL;
    }
    memcpy(dest, src, count);
    return EOK;
}

static inline errno_t memmove_s(void* dest, size_t destMax, const void* src, size_t count)
{
    if (dest == NULL || src == NULL || count > destMax) {
        return EINVAL;
    }
    memmove(dest, src, count);
    return EOK;
}

static inline errno_t memset_s(void* dest, size_t destMax, int c, size_t count)
{
    if (dest == NULL || count > destMax) {
        return EINVAL;
    }
    memset(dest, c, count);
    return EOK;
}

static inline errno_t strcpy_s(char* dest, size_t destMax, const char* src)
{
    if (dest == NULL || src == NULL || destMax == 0 || strlen(src) + 1 > destMax) {
        return EINVAL;
    }
    strcpy(dest, src);
    return EOK;
}

static inline errno_t strncpy_s(char* dest, size_t destMax, const char* src, size_t count)
{
    if (dest == NULL || src == NULL || destMax == 0) {
        return EINVAL;
    }
    size_t n = strnlen(src, count);
    if (n + 1 > destMax) {
        return EINVAL;
    }
    memcpy(dest, src, n);
    dest[n] = '\0';
    return EOK;
}

static inline errno_t strcat_s(char* dest, size_t destMax, const char* src)
{
    if (dest == NULL || src == NULL || destMax == 0 ||
        strnlen(dest, destMax) + strlen(src) + 1 > destMax) {
        return EINVAL;
    }
    strcat(dest, src);
    return EOK;
}

static inline int vsnprintf_s(char* dest, size_t destMax, size_t count, const char* format,
                              va_list ap)
{
    if (dest == NULL || format == NULL || destMax == 0) {
        return -1;
    }
    size_t limit = (count + 1 < destMax) ? count + 1 : destMax;
    int ret = vsnprintf(dest, limit, format, ap);
    if (ret < 0 || (size_t)ret >= limit) {
        return -1;
    }
    return ret;
}

static inline int snprintf_s(char* dest, size_t destMax, size_t count, const char* format, ...)
{
    va_list ap;
    va_start(ap, format);
    int ret = vsnprintf_s(dest, destMax, count, format, ap);
    va_end(ap);
    return ret;
}

static inline int sprintf_s(char* dest, size_t destMax, const char* format, ...)
{
    if (dest == NULL || format == NULL || destMax == 0) {
        return -1;
    }
    va_list ap;
    va_start(ap, format);
    int ret = vsnprintf(dest, destMax, format, ap);
    va_end(ap);
    if (ret < 0 || (size_t)ret >= destMax) {
        return -1;
    }
    return ret;
}

#ifdef __cplusplus
}
#endif

#endif /* WESTLAKE_COMPAT_SECUREC_H */
