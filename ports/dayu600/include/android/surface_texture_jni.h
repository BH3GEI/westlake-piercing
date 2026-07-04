#pragma once

// Stub of the NDK <android/surface_texture_jni.h>.

#include <jni.h>

#include <android/surface_texture.h>

#ifdef __cplusplus
extern "C" {
#endif

static inline ASurfaceTexture* ASurfaceTexture_fromSurfaceTexture(JNIEnv* env,
                                                                  jobject surfacetexture) {
    (void)env;
    (void)surfacetexture;
    return nullptr;
}

#ifdef __cplusplus
}
#endif
