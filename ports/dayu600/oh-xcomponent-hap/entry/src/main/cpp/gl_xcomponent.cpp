// gl_xcomponent.cpp — minimal OH-native XComponent GLES2 render module.
//
// PURPOSE (2026-07-12, task #12): prove the OH-native app→ArkUI<XComponent>→
// OH_NativeWindow→EGL→render_service→DAYU600 panel rail end-to-end on board 5ce,
// using ONLY the live headless SDK toolchain (no colleague, no ART, no adapter).
// This is the EXACT rail the OH-native Tuanjie engine (libtuanjie.so, a napi
// module driven by an ArkUI XComponent) rides. Once this clears color on the
// panel, the render body is swapped for libtuanjie + il2cpp game data.
//
// This is the REAL consumer side of the seam my xcomponent_interposer.cpp faked:
//   there I SHADOWED libace_ndk's OH_NativeXComponent_* to feed a foreign engine;
//   here I use the REAL libace_ndk — ArkUI creates the surface and hands us the
//   OHNativeWindow via OnSurfaceCreated, and we drive GLES2 straight onto it.
// The EGL bring-up (eglGetDisplay→eglInitialize→ChooseConfig→CreateWindowSurface
// (window)→MakeCurrent→glClear→eglSwapBuffers) is the path proven in
// westlake_rs_smoke.cpp (real pixels to the uis7885 panel via composer_host).
//
// XComponent { id:'gl', type: XComponentType.SURFACE, libraryname: 'entry' } in
// Index.ets makes ArkUI dlopen libentry.so and call this napi module's Init; ArkUI
// injects the OH_NativeXComponent under the well-known export property, from which
// we register our surface-lifecycle callbacks.
//
// Build (compiler, OHOS clang, --target aarch64-linux-ohos):
//   clang++ --target=aarch64-linux-ohos --sysroot=$SDK/sysroot -std=c++17 -fPIC -O2 \
//     gl_xcomponent.cpp -shared -o libentry.so \
//     -lace_napi.z -lace_ndk.z -lEGL -lGLESv3 -lnative_window -lhilog_ndk.z -luv

#include <ace/xcomponent/native_interface_xcomponent.h>
#include <napi/native_api.h>
#include <native_window/external_window.h>

#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES3/gl3.h>

#include <hilog/log.h>

#include <cstdint>
#include <cstdio>
#include <pthread.h>

#undef LOG_TAG
#define LOG_TAG "wl-glxc"
#define LOGI(...) OH_LOG_Print(LOG_APP, LOG_INFO, 0xD00D, LOG_TAG, __VA_ARGS__)
#define LOGE(...) OH_LOG_Print(LOG_APP, LOG_ERROR, 0xD00D, LOG_TAG, __VA_ARGS__)

namespace {

// One render context per component. A single XComponent is all this smoke needs.
struct RenderCtx {
    OHNativeWindow* window = nullptr;
    EGLDisplay      display = EGL_NO_DISPLAY;
    EGLContext      context = EGL_NO_CONTEXT;
    EGLSurface      surface = EGL_NO_SURFACE;
    EGLConfig       config  = nullptr;
    uint64_t        width = 0, height = 0;
    bool            running = false;
    pthread_t       thread{};
    uint32_t        frame = 0;
};
RenderCtx g_ctx;

const EGLint kConfigAttribs[] = {
    EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
    EGL_RED_SIZE,   8, EGL_GREEN_SIZE, 8, EGL_BLUE_SIZE, 8, EGL_ALPHA_SIZE, 8,
    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
    EGL_NONE
};
const EGLint kContextAttribs[] = { EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE };

bool eglBringUp(RenderCtx& c) {
    c.display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    if (c.display == EGL_NO_DISPLAY) { LOGE("eglGetDisplay failed"); return false; }
    EGLint major = 0, minor = 0;
    if (!eglInitialize(c.display, &major, &minor)) { LOGE("eglInitialize failed"); return false; }
    LOGI("EGL %d.%d up", major, minor);
    eglBindAPI(EGL_OPENGL_ES_API);
    EGLint numConfig = 0;
    if (!eglChooseConfig(c.display, kConfigAttribs, &c.config, 1, &numConfig) || numConfig < 1) {
        LOGE("eglChooseConfig failed (%d configs)", numConfig); return false;
    }
    // The OHNativeWindow handed to us by ArkUI IS a valid EGLNativeWindowType on OH.
    c.surface = eglCreateWindowSurface(c.display, c.config,
                                       reinterpret_cast<EGLNativeWindowType>(c.window), nullptr);
    if (c.surface == EGL_NO_SURFACE) { LOGE("eglCreateWindowSurface failed 0x%x", eglGetError()); return false; }
    c.context = eglCreateContext(c.display, c.config, EGL_NO_CONTEXT, kContextAttribs);
    if (c.context == EGL_NO_CONTEXT) { LOGE("eglCreateContext failed"); return false; }
    if (!eglMakeCurrent(c.display, c.surface, c.surface, c.context)) { LOGE("eglMakeCurrent failed"); return false; }
    LOGI("EGL window surface current, %llux%llu", (unsigned long long)c.width, (unsigned long long)c.height);
    return true;
}

// Render thread: animate a full-screen clear color so the panel VISIBLY changes
// every frame (the acceptance signal is "颜色逐帧变" — provable liveness, not a
// static fill). Red↔green↔blue sweep, ~ vsync-free tight loop with swap-throttle.
void* renderLoop(void* arg) {
    RenderCtx& c = *static_cast<RenderCtx*>(arg);
    if (!eglBringUp(c)) { LOGE("EGL bring-up failed; render thread exits"); return nullptr; }
    glViewport(0, 0, (GLsizei)c.width, (GLsizei)c.height);
    while (c.running) {
        float t = (c.frame % 180) / 180.0f;        // 0..1 sweep
        float r = (t < 0.5f) ? (1.0f - 2.0f * t) : 0.0f;
        float g = (t < 0.5f) ? (2.0f * t) : (2.0f - 2.0f * t);
        float b = (t < 0.5f) ? 0.0f : (2.0f * t - 1.0f);
        glClearColor(r, g, b, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        eglSwapBuffers(c.display, c.surface);       // real pixel swap → composer_host → panel
        if ((c.frame % 60) == 0)
            LOGI("frame %u rgb=(%.2f,%.2f,%.2f)", c.frame, r, g, b);
        c.frame++;
    }
    eglMakeCurrent(c.display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    return nullptr;
}

// ── XComponent surface lifecycle (called by ArkUI on the UI thread) ──────────
void OnSurfaceCreated(OH_NativeXComponent* component, void* window) {
    LOGI("OnSurfaceCreated component=%p window=%p", component, window);
    g_ctx.window = static_cast<OHNativeWindow*>(window);
    uint64_t w = 0, h = 0;
    OH_NativeXComponent_GetXComponentSize(component, window, &w, &h);
    g_ctx.width = w; g_ctx.height = h;
    g_ctx.running = true;
    if (pthread_create(&g_ctx.thread, nullptr, renderLoop, &g_ctx) != 0)
        LOGE("pthread_create(renderLoop) failed");
}

void OnSurfaceChanged(OH_NativeXComponent* component, void* window) {
    uint64_t w = 0, h = 0;
    OH_NativeXComponent_GetXComponentSize(component, window, &w, &h);
    g_ctx.width = w; g_ctx.height = h;
    LOGI("OnSurfaceChanged %llux%llu", (unsigned long long)w, (unsigned long long)h);
}

void OnSurfaceDestroyed(OH_NativeXComponent* /*component*/, void* /*window*/) {
    LOGI("OnSurfaceDestroyed");
    g_ctx.running = false;
    if (g_ctx.thread) pthread_join(g_ctx.thread, nullptr);
    if (g_ctx.display != EGL_NO_DISPLAY) {
        if (g_ctx.surface != EGL_NO_SURFACE) eglDestroySurface(g_ctx.display, g_ctx.surface);
        if (g_ctx.context != EGL_NO_CONTEXT) eglDestroyContext(g_ctx.display, g_ctx.context);
        eglTerminate(g_ctx.display);
    }
    g_ctx = RenderCtx{};
}

void OnDispatchTouchEvent(OH_NativeXComponent* /*component*/, void* /*window*/) {}

OH_NativeXComponent_Callback g_cb{
    .OnSurfaceCreated   = OnSurfaceCreated,
    .OnSurfaceChanged   = OnSurfaceChanged,
    .OnSurfaceDestroyed = OnSurfaceDestroyed,
    .DispatchTouchEvent = OnDispatchTouchEvent,
};

// ── napi module Init: pull the OH_NativeXComponent ArkUI injected, register cb ─
napi_value Init(napi_env env, napi_value exports) {
    napi_value exportInstance = nullptr;
    if (napi_get_named_property(env, exports, OH_NATIVE_XCOMPONENT_OBJ, &exportInstance) != napi_ok) {
        LOGE("no %s on exports — XComponent not bound", OH_NATIVE_XCOMPONENT_OBJ);
        return exports;
    }
    OH_NativeXComponent* nativeXComponent = nullptr;
    if (napi_unwrap(env, exportInstance, reinterpret_cast<void**>(&nativeXComponent)) != napi_ok
        || nativeXComponent == nullptr) {
        LOGE("napi_unwrap(OH_NativeXComponent) failed");
        return exports;
    }
    if (OH_NativeXComponent_RegisterCallback(nativeXComponent, &g_cb) != 0)
        LOGE("OH_NativeXComponent_RegisterCallback failed");
    else
        LOGI("XComponent callbacks registered — waiting for OnSurfaceCreated");
    return exports;
}

}  // namespace

// napi module registration. nm_modname MUST equal the XComponent 'libraryname'
// ('entry') and the .so is libentry.so so ArkUI's dlopen+register finds it.
extern "C" {
static napi_module g_module = {
    .nm_version = 1,
    .nm_flags = 0,
    .nm_filename = nullptr,
    .nm_register_func = Init,
    .nm_modname = "entry",
    .nm_priv = nullptr,
    .reserved = {0},
};
__attribute__((constructor)) void RegisterEntryModule(void) { napi_module_register(&g_module); }
}
