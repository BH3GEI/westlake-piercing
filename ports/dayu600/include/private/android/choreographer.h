#pragma once

// Stub of frameworks/native's private/android/choreographer.h for the
// OpenHarmony bringup build. Compile-only no-ops.

#include <stddef.h>
#include <stdint.h>

#include <android/choreographer.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int64_t AVsyncId;

typedef void (*AChoreographer_refreshRateCallback)(int64_t vsyncPeriodNanos, void* data);

static inline AChoreographer* AChoreographer_create() {
    return nullptr;
}

static inline void AChoreographer_destroy(AChoreographer* choreographer) {
    (void)choreographer;
}

static inline int AChoreographer_getFd(const AChoreographer* choreographer) {
    (void)choreographer;
    return -1;
}

static inline void AChoreographer_handlePendingEvents(AChoreographer* choreographer, void* data) {
    (void)choreographer;
    (void)data;
}

static inline int64_t AChoreographer_getFrameInterval(const AChoreographer* choreographer) {
    (void)choreographer;
    return 16666667;
}

static inline void AChoreographer_registerRefreshRateCallback(
        AChoreographer* choreographer, AChoreographer_refreshRateCallback callback, void* data) {
    (void)choreographer;
    (void)callback;
    (void)data;
}

static inline void AChoreographer_unregisterRefreshRateCallback(
        AChoreographer* choreographer, AChoreographer_refreshRateCallback callback, void* data) {
    (void)choreographer;
    (void)callback;
    (void)data;
}

static inline size_t AChoreographerFrameCallbackData_getPreferredFrameTimelineIndex(
        const AChoreographerFrameCallbackData* data) {
    (void)data;
    return 0;
}

static inline AVsyncId AChoreographerFrameCallbackData_getFrameTimelineVsyncId(
        const AChoreographerFrameCallbackData* data, size_t index) {
    (void)data;
    (void)index;
    return -1;
}

static inline int64_t AChoreographerFrameCallbackData_getFrameTimelineDeadlineNanos(
        const AChoreographerFrameCallbackData* data, size_t index) {
    (void)data;
    (void)index;
    return 0;
}

#ifdef __cplusplus
}
#endif
