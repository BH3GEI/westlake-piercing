#pragma once

// Stub of the NDK <android/surface_texture.h> for the OpenHarmony bringup
// build. Compile-only no-ops. Also pulls in system/graphics.h because
// hwui's DeferredLayerUpdater relies on android_dataspace transitively.

#include <stdint.h>

#include <system/graphics.h>

#ifdef __cplusplus
extern "C" {
#endif

struct ASurfaceTexture;
typedef struct ASurfaceTexture ASurfaceTexture;

struct ANativeWindow;

static inline void ASurfaceTexture_release(ASurfaceTexture* st) {
    (void)st;
}

static inline struct ANativeWindow* ASurfaceTexture_acquireANativeWindow(ASurfaceTexture* st) {
    (void)st;
    return nullptr;
}

static inline int ASurfaceTexture_attachToGLContext(ASurfaceTexture* st, uint32_t texName) {
    (void)st;
    (void)texName;
    return -1;
}

static inline int ASurfaceTexture_detachFromGLContext(ASurfaceTexture* st) {
    (void)st;
    return -1;
}

static inline int ASurfaceTexture_updateTexImage(ASurfaceTexture* st) {
    (void)st;
    return -1;
}

static inline void ASurfaceTexture_getTransformMatrix(ASurfaceTexture* st, float mtx[16]) {
    (void)st;
    (void)mtx;
}

static inline int64_t ASurfaceTexture_getTimestamp(ASurfaceTexture* st) {
    (void)st;
    return 0;
}

#ifdef __cplusplus
}
#endif
