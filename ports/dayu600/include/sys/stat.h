#pragma once

// Shadow header for the OpenHarmony bringup build: hwui's jni/Typeface.cpp
// uses statx()/STATX_* (available on bionic via <sys/stat.h>), but the OHOS
// musl <sys/stat.h> neither defines struct statx nor declares statx().
// Pull in the real header, the kernel uapi definitions, and declare statx().

#include_next <sys/stat.h>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wmacro-redefined"
#include <linux/stat.h>
#pragma clang diagnostic pop

#ifndef AT_FDCWD
#define AT_FDCWD (-100)
#endif

#ifdef __cplusplus
extern "C" {
#endif

// Stub: the smoke build only needs the declaration; runtime always fails.
static inline int statx(int /* dirfd */, const char* /* pathname */, int /* flags */,
                        unsigned int /* mask */, struct statx* /* statxbuf */) {
    return -1;
}

#ifdef __cplusplus
}
#endif
