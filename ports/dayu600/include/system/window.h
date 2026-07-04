#pragma once

#include <android/native_window.h>

// Some hwui sources (e.g. SkiaCpuPipeline.cpp) use std::ostringstream while
// only including this header transitively; bionic's window.h chain pulls in
// <sstream> on Android, so mirror that here.
#ifdef __cplusplus
#include <sstream>
#endif

enum {
    NATIVE_WINDOW_WIDTH = 0,
    NATIVE_WINDOW_HEIGHT = 1,
    NATIVE_WINDOW_FORMAT = 2,
    NATIVE_WINDOW_MIN_UNDEQUEUED_BUFFERS = 3,
    NATIVE_WINDOW_QUEUES_TO_WINDOW_COMPOSER = 4,
    NATIVE_WINDOW_CONCRETE_TYPE = 5,
    NATIVE_WINDOW_DEFAULT_WIDTH = 6,
    NATIVE_WINDOW_DEFAULT_HEIGHT = 7,
    NATIVE_WINDOW_TRANSFORM_HINT = 8,
    NATIVE_WINDOW_CONSUMER_RUNNING_BEHIND = 9,
    NATIVE_WINDOW_MAX_BUFFER_COUNT = 10,
};

enum {
    NATIVE_WINDOW_API_EGL = 1,
};

enum {
    NATIVE_WINDOW_SCALING_MODE_FREEZE = 0,
};

enum {
    NATIVE_WINDOW_TRANSFORM_FLIP_H = 0x01,
    NATIVE_WINDOW_TRANSFORM_FLIP_V = 0x02,
    NATIVE_WINDOW_TRANSFORM_ROT_90 = 0x04,
    NATIVE_WINDOW_TRANSFORM_ROT_180 = 0x03,
    NATIVE_WINDOW_TRANSFORM_ROT_270 = 0x07,
};

enum {
    ANATIVEWINDOW_TRANSFORM_IDENTITY = 0,
    ANATIVEWINDOW_TRANSFORM_MIRROR_HORIZONTAL = NATIVE_WINDOW_TRANSFORM_FLIP_H,
    ANATIVEWINDOW_TRANSFORM_MIRROR_VERTICAL = NATIVE_WINDOW_TRANSFORM_FLIP_V,
    ANATIVEWINDOW_TRANSFORM_ROTATE_90 = NATIVE_WINDOW_TRANSFORM_ROT_90,
    ANATIVEWINDOW_TRANSFORM_ROTATE_180 = NATIVE_WINDOW_TRANSFORM_ROT_180,
    ANATIVEWINDOW_TRANSFORM_ROTATE_270 = NATIVE_WINDOW_TRANSFORM_ROT_270,
};

enum {
    ANATIVEWINDOW_QUERY_MIN_UNDEQUEUED_BUFFERS = NATIVE_WINDOW_MIN_UNDEQUEUED_BUFFERS,
};

enum {
    ANATIVEWINDOW_PERFORM_SET_USAGE = 0,
    ANATIVEWINDOW_PERFORM_SET_USAGE64 = 1,
    ANATIVEWINDOW_PERFORM_SET_BUFFERS_GEOMETRY = 2,
    ANATIVEWINDOW_PERFORM_SET_BUFFERS_FORMAT = 3,
    NATIVE_WINDOW_SET_BUFFER_COUNT = 4,
};

static inline int native_window_api_connect(ANativeWindow*, int) { return 0; }
static inline int native_window_api_disconnect(ANativeWindow*, int) { return 0; }
static inline int native_window_set_scaling_mode(ANativeWindow*, int) { return 0; }
static inline int native_window_set_buffer_count(ANativeWindow*, size_t) { return 0; }
static inline int native_window_set_buffers_dimensions(ANativeWindow*, int, int) { return 0; }
static inline int native_window_set_buffers_format(ANativeWindow*, int) { return 0; }
static inline int native_window_set_buffers_data_space(ANativeWindow*, int) { return 0; }
static inline int native_window_set_buffers_transform(ANativeWindow*, int) { return 0; }
static inline int native_window_set_usage(ANativeWindow*, uint64_t) { return 0; }
static inline int native_window_set_shared_buffer_mode(ANativeWindow*, bool) { return 0; }
static inline int native_window_set_auto_refresh(ANativeWindow*, bool) { return 0; }
static inline int native_window_set_auto_prerotation(ANativeWindow*, bool) { return 0; }
static inline int native_window_set_surface_damage(ANativeWindow*,
                                                   const android_native_rect_t*, size_t) {
    return 0;
}

// From libnativewindow's vndk/window.h; hwui expects it to leak in here.
static inline AHardwareBuffer* ANativeWindowBuffer_getHardwareBuffer(ANativeWindowBuffer* anwb) {
    return reinterpret_cast<AHardwareBuffer*>(anwb);
}
static inline int native_window_get_consumer_usage(ANativeWindow*, uint64_t* outUsage) {
    if (outUsage) *outUsage = 0;
    return 0;
}
static inline int native_window_enable_frame_timestamps(ANativeWindow*, bool) { return 0; }
static inline int native_window_set_frame_timeline_info(ANativeWindow*,
                                                        ANativeWindowFrameTimelineInfo) {
    return 0;
}
static inline int native_window_get_frame_timestamps(
        ANativeWindow*, uint64_t /* frameNumber */, int64_t* outRequestedPresentTime,
        int64_t* outAcquireTime, int64_t* outLatchTime, int64_t* outFirstRefreshStartTime,
        int64_t* outLastRefreshStartTime, int64_t* outGpuCompositionDoneTime,
        int64_t* outDisplayPresentTime, int64_t* outDequeueReadyTime, int64_t* outReleaseTime) {
    if (outRequestedPresentTime) *outRequestedPresentTime = 0;
    if (outAcquireTime) *outAcquireTime = 0;
    if (outLatchTime) *outLatchTime = 0;
    if (outFirstRefreshStartTime) *outFirstRefreshStartTime = 0;
    if (outLastRefreshStartTime) *outLastRefreshStartTime = 0;
    if (outGpuCompositionDoneTime) *outGpuCompositionDoneTime = 0;
    if (outDisplayPresentTime) *outDisplayPresentTime = 0;
    if (outDequeueReadyTime) *outDequeueReadyTime = 0;
    if (outReleaseTime) *outReleaseTime = 0;
    return 0;
}
