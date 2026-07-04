#pragma once

// Stub of libcutils' cutils/trace.h for the OpenHarmony bringup build.
// Shadows the AOSP 11 copy, whose C <stdatomic.h> include breaks C++ TUs
// that also use std::atomic (libutils LightRefBase).

#include <stdint.h>

#ifndef ATRACE_TAG_NEVER
#define ATRACE_TAG_NEVER 0
#define ATRACE_TAG_ALWAYS (1 << 0)
#define ATRACE_TAG_GRAPHICS (1 << 1)
#define ATRACE_TAG_VIEW (1 << 3)
#define ATRACE_TAG_HAL (1 << 13)
#define ATRACE_TAG_APP (1 << 12)
#endif

#ifndef ATRACE_TAG
#define ATRACE_TAG ATRACE_TAG_NEVER
#endif

#ifndef ATRACE_INT
#define ATRACE_INT(name, value) ((void)(name), (void)(value))
#endif

#ifndef ATRACE_INT64
#define ATRACE_INT64(name, value) ((void)(name), (void)(value))
#endif

#ifndef ATRACE_ENABLED
#define ATRACE_ENABLED() (false)
#endif

#ifndef ATRACE_BEGIN
#define ATRACE_BEGIN(name) atrace_begin(ATRACE_TAG, name)
#endif

#ifndef ATRACE_END
#define ATRACE_END() atrace_end(ATRACE_TAG)
#endif

#ifdef __cplusplus
extern "C" {
#endif

static inline void atrace_begin(uint64_t /* tag */, const char* /* name */) {}
static inline void atrace_end(uint64_t /* tag */) {}
static inline void atrace_int(uint64_t /* tag */, const char* /* name */, int32_t /* value */) {}
static inline void atrace_int64(uint64_t /* tag */, const char* /* name */,
                                int64_t /* value */) {}
static inline void atrace_async_begin(uint64_t /* tag */, const char* /* name */,
                                      int32_t /* cookie */) {}
static inline void atrace_async_end(uint64_t /* tag */, const char* /* name */,
                                    int32_t /* cookie */) {}
static inline uint64_t atrace_is_tag_enabled(uint64_t /* tag */) {
    return 0;
}
static inline void atrace_update_tags(void) {}
static inline void atrace_setup(void) {}

#ifdef __cplusplus
}
#endif
