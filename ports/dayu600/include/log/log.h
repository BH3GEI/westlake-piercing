#pragma once

#include <android/log.h>

// Extra liblog macros used by hwui that are not part of the NDK header.

#ifndef ALOGV
#define ALOGV(...) ((void)0)
#endif

#ifndef ALOGV_IF
#define ALOGV_IF(cond, ...) ((void)(cond))
#endif

#ifndef IF_ALOGV
#define IF_ALOGV() if (false)
#endif

#ifndef ALOGE_IF
#define ALOGE_IF(cond, ...)         \
    do {                            \
        if (cond) {                 \
            ALOGE(__VA_ARGS__);     \
        }                           \
    } while (false)
#endif

#ifndef ALOGW_IF
#define ALOGW_IF(cond, ...)         \
    do {                            \
        if (cond) {                 \
            ALOGW(__VA_ARGS__);     \
        }                           \
    } while (false)
#endif

#ifndef ALOGD_IF
#define ALOGD_IF(cond, ...)         \
    do {                            \
        if (cond) {                 \
            ALOGD(__VA_ARGS__);     \
        }                           \
    } while (false)
#endif

#ifndef ALOG_ASSERT
#define ALOG_ASSERT(cond, ...) LOG_FATAL_IF(!(cond), ##__VA_ARGS__)
#endif
