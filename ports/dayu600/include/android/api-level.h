#pragma once

// Stub of Android's <android/api-level.h> for the OpenHarmony bringup
// build (__ANDROID__ is defined, so ICU's platform.h includes this).

#ifndef __ANDROID_API__
#define __ANDROID_API__ 35
#endif

#ifndef __ANDROID_API_FUTURE__
#define __ANDROID_API_FUTURE__ 10000
#endif

#ifdef __cplusplus
extern "C" {
#endif

static inline int android_get_device_api_level() {
    return __ANDROID_API__;
}

static inline int android_get_application_target_sdk_version() {
    return __ANDROID_API__;
}

#ifdef __cplusplus
}
#endif
