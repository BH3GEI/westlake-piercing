#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#define ANDROID_LOG_UNKNOWN 0
#define ANDROID_LOG_DEFAULT 1
#define ANDROID_LOG_VERBOSE 2
#define ANDROID_LOG_DEBUG 3
#define ANDROID_LOG_INFO 4
#define ANDROID_LOG_WARN 5
#define ANDROID_LOG_ERROR 6
#define ANDROID_LOG_FATAL 7
#define ANDROID_LOG_SILENT 8

int __android_log_print(int prio, const char* tag, const char* fmt, ...);
void __android_log_assert(const char* cond, const char* tag, const char* fmt, ...);
int android_errorWriteLog(int tag, const char* subTag);

#ifdef __cplusplus
}
#endif

#ifndef LOG_TAG
#define LOG_TAG "westlake"
#endif

#ifndef ALOGE
#define ALOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#endif

#ifndef ALOGW
#define ALOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
#endif

#ifndef ALOGI
#define ALOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#endif

#ifndef ALOGD
#define ALOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#endif

#ifndef LOG_ALWAYS_FATAL
#define LOG_ALWAYS_FATAL(...) __android_log_assert(nullptr, LOG_TAG, "" __VA_OPT__(,) __VA_ARGS__)
#endif

#ifndef LOG_FATAL
#define LOG_FATAL(...) LOG_ALWAYS_FATAL(__VA_ARGS__)
#endif

#ifndef LOG_ALWAYS_FATAL_IF
#define LOG_ALWAYS_FATAL_IF(cond, ...) \
    do {                              \
        if (cond) {                   \
            LOG_ALWAYS_FATAL(__VA_ARGS__); \
        }                             \
    } while (0)
#endif

#ifndef LOG_FATAL_IF
#define LOG_FATAL_IF(cond, ...) LOG_ALWAYS_FATAL_IF(cond, __VA_ARGS__)
#endif
