#pragma once

// Stub of libnativewindow's apex/window.h (APEX-private window API) for the
// OpenHarmony bringup build.

#include <stdarg.h>
#include <stdint.h>

#include <system/window.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int (*ANativeWindow_cancelBufferInterceptor)(ANativeWindow* window,
                                                     ANativeWindow_cancelBufferFn cancelBuffer,
                                                     void* data, ANativeWindowBuffer* buffer,
                                                     int fenceFd);
typedef int (*ANativeWindow_dequeueBufferInterceptor)(ANativeWindow* window,
                                                      ANativeWindow_dequeueBufferFn dequeueBuffer,
                                                      void* data, ANativeWindowBuffer** buffer,
                                                      int* fenceFd);
typedef int (*ANativeWindow_performInterceptor)(ANativeWindow* window,
                                                ANativeWindow_performFn perform, void* data,
                                                int operation, va_list args);
typedef int (*ANativeWindow_queueBufferInterceptor)(ANativeWindow* window,
                                                    ANativeWindow_queueBufferFn queueBuffer,
                                                    void* data, ANativeWindowBuffer* buffer,
                                                    int fenceFd);
typedef int (*ANativeWindow_queryInterceptor)(const ANativeWindow* window,
                                              ANativeWindow_queryFn query, void* data, int what,
                                              int* value);

static inline int ANativeWindow_setCancelBufferInterceptor(
        ANativeWindow* window, ANativeWindow_cancelBufferInterceptor interceptor, void* data) {
    (void)window;
    (void)interceptor;
    (void)data;
    return 0;
}

static inline int ANativeWindow_setDequeueBufferInterceptor(
        ANativeWindow* window, ANativeWindow_dequeueBufferInterceptor interceptor, void* data) {
    (void)window;
    (void)interceptor;
    (void)data;
    return 0;
}

static inline int ANativeWindow_setPerformInterceptor(
        ANativeWindow* window, ANativeWindow_performInterceptor interceptor, void* data) {
    (void)window;
    (void)interceptor;
    (void)data;
    return 0;
}

static inline int ANativeWindow_setQueueBufferInterceptor(
        ANativeWindow* window, ANativeWindow_queueBufferInterceptor interceptor, void* data) {
    (void)window;
    (void)interceptor;
    (void)data;
    return 0;
}

static inline int ANativeWindow_setQueryInterceptor(ANativeWindow* window,
                                                    ANativeWindow_queryInterceptor interceptor,
                                                    void* data) {
    (void)window;
    (void)interceptor;
    (void)data;
    return 0;
}

static inline int ANativeWindow_dequeueBuffer(ANativeWindow* window, ANativeWindowBuffer** buffer,
                                              int* fenceFd) {
    if (window && window->dequeueBuffer) {
        return window->dequeueBuffer(window, buffer, fenceFd);
    }
    return -1;
}

static inline int ANativeWindow_queueBuffer(ANativeWindow* window, ANativeWindowBuffer* buffer,
                                            int fenceFd) {
    if (window && window->queueBuffer) {
        return window->queueBuffer(window, buffer, fenceFd);
    }
    return -1;
}

static inline int ANativeWindow_cancelBuffer(ANativeWindow* window, ANativeWindowBuffer* buffer,
                                             int fenceFd) {
    if (window && window->cancelBuffer) {
        return window->cancelBuffer(window, buffer, fenceFd);
    }
    return -1;
}

#ifdef __cplusplus
}
#endif
