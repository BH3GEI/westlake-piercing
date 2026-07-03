#pragma once

#ifndef ANDROID_API
#define ANDROID_API __attribute__((visibility("default")))
#endif

#ifndef ANDROID_EXPORT
#define ANDROID_EXPORT __attribute__((visibility("default")))
#endif

#ifndef ANDROID_IMPORT
#define ANDROID_IMPORT
#endif

#ifndef NELEM
#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
#endif

#ifndef CC_LIKELY
#define CC_LIKELY(exp) __builtin_expect(!!(exp), 1)
#endif

#ifndef CC_UNLIKELY
#define CC_UNLIKELY(exp) __builtin_expect(!!(exp), 0)
#endif
