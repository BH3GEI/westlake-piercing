#pragma once

#include <stdint.h>

#include <android/hardware_buffer.h>
#include <android/rect.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef ANDROID_API
#define ANDROID_API __attribute__((visibility("default")))
#endif

typedef struct ANativeWindowBuffer ANativeWindowBuffer;

typedef int (*ANativeWindow_cancelBufferFn)(struct ANativeWindow* window,
                                            ANativeWindowBuffer* buffer, int fenceFd);
typedef int (*ANativeWindow_dequeueBufferFn)(struct ANativeWindow* window,
                                             ANativeWindowBuffer** buffer, int* fenceFd);
typedef int (*ANativeWindow_queueBufferFn)(struct ANativeWindow* window,
                                           ANativeWindowBuffer* buffer, int fenceFd);
typedef int (*ANativeWindow_performFn)(struct ANativeWindow* window, int operation, ...);
typedef int (*ANativeWindow_queryFn)(const struct ANativeWindow* window, int what, int* value);

typedef struct ANativeWindow {
    int (*setSwapInterval)(struct ANativeWindow* window, int interval);
    int (*dequeueBuffer_DEPRECATED)(struct ANativeWindow* window, ANativeWindowBuffer** buffer);
    int (*lockBuffer_DEPRECATED)(struct ANativeWindow* window, ANativeWindowBuffer* buffer);
    int (*queueBuffer_DEPRECATED)(struct ANativeWindow* window, ANativeWindowBuffer* buffer);
    int (*query)(const struct ANativeWindow* window, int what, int* value);
    int (*perform)(struct ANativeWindow* window, int operation, ...);
    int (*cancelBuffer_DEPRECATED)(struct ANativeWindow* window, ANativeWindowBuffer* buffer);
    int (*dequeueBuffer)(struct ANativeWindow* window, ANativeWindowBuffer** buffer, int* fenceFd);
    int (*queueBuffer)(struct ANativeWindow* window, ANativeWindowBuffer* buffer, int fenceFd);
    int (*cancelBuffer)(struct ANativeWindow* window, ANativeWindowBuffer* buffer, int fenceFd);
} ANativeWindow;

typedef struct ANativeWindow_Buffer {
    int32_t width;
    int32_t height;
    int32_t stride;
    int32_t format;
    void* bits;
    uint32_t reserved[6];
} ANativeWindow_Buffer;

typedef struct ANativeWindowFrameTimelineInfo {
    int64_t frameTimelineVsyncId;
    int64_t inputEventId;
    int64_t startTimeNanos;
    int64_t useForRefreshRateSelection;
    int64_t skippedFrameVsyncId;
    int64_t frameIntervalNs;
} ANativeWindowFrameTimelineInfo;

ANDROID_API void ANativeWindow_acquire(ANativeWindow* window);
ANDROID_API void ANativeWindow_release(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_getWidth(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_getHeight(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_getFormat(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_getBuffersDataSpace(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_setBuffersDataSpace(ANativeWindow* window, int32_t dataspace);
ANDROID_API int32_t ANativeWindow_lock(ANativeWindow* window, ANativeWindow_Buffer* outBuffer,
                                       ARect* inOutDirtyBounds);
ANDROID_API int32_t ANativeWindow_unlockAndPost(ANativeWindow* window);
ANDROID_API void ANativeWindow_tryAllocateBuffers(ANativeWindow* window);
ANDROID_API int64_t ANativeWindow_getNextFrameId(ANativeWindow* window);
ANDROID_API int64_t ANativeWindow_getLastDequeueStartTime(ANativeWindow* window);
ANDROID_API int64_t ANativeWindow_getLastDequeueDuration(ANativeWindow* window);
ANDROID_API int64_t ANativeWindow_getLastQueueDuration(ANativeWindow* window);
ANDROID_API int32_t ANativeWindow_setDequeueTimeout(ANativeWindow* window, int64_t timeout);
ANDROID_API int32_t ANativeWindow_getLastQueuedBuffer2(ANativeWindow* window,
                                                       AHardwareBuffer** outBuffer,
                                                       int* outFenceFd,
                                                       ARect* outCrop);

#ifdef __cplusplus
}
#endif
