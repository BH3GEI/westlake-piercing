#pragma once

// Shadow header: forwards to the OHOS SDK eglext.h and adds the AOSP-only
// extension tokens and NDK window declarations hwui expects to see leak in
// via the EGL headers on Android.

#include_next <EGL/eglext.h>

#include <android/native_window.h>

// From EGL_ANDROID_telemetry_hint (AOSP-internal extension).
#ifndef EGL_TELEMETRY_HINT_ANDROID
#define EGL_TELEMETRY_HINT_ANDROID 0x3430
#endif
