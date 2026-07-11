/*
 * Gate-2 harness — EGL interposer.
 *
 * hwui's EglManager::createSurface calls eglCreateWindowSurface(dpy, cfg, window,
 * attribs) directly (a PLT call, EglManager.cpp:505 — not eglGetProcAddress), and
 * the `window` it passes is our AOSP-ABI wrapper (oh_anw_wrap). OHOS's real libEGL
 * only understands the real OHNativeWindow. So we interpose eglCreateWindowSurface:
 * unwrap the wrapper back to the real OHNativeWindow, then forward to the real
 * libEGL symbol.
 *
 * When this TU is folded INTO libhwui-adapter (Agent-C R1), RTLD_NEXT fails the
 * same way as MakeGL: libEGL is a DT_NEEDED loaded *before* libhwui, so search
 * after this .so never sees it. Resolve via explicit dlopen(libEGL) instead.
 */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdint.h>
#include <stdio.h>

#include <EGL/egl.h>

// From oh_anativewindow_shim.cpp (validates magic+guard; returns the real
// OHNativeWindow* or nullptr if `aosp` is not one of our wrappers).
extern "C" void* oh_anw_get_oh(void* aosp);

static void* egl_handle() {
    static void* h = nullptr;
    if (h) return h;
    const char* paths[] = {
        "libEGL.so",
        "/system/lib64/libEGL.so",
        "/system/lib64/platformsdk/libEGL.so",
        "/system/lib64/chipset-sdk-sp/libEGL.so",
    };
    for (const char* p : paths) {
        h = dlopen(p, RTLD_NOW | RTLD_NOLOAD);
        if (!h) h = dlopen(p, RTLD_NOW | RTLD_GLOBAL);
        if (h) return h;
    }
    return nullptr;
}

template <typename Fn>
static Fn egl_sym(const char* name) {
    void* h = egl_handle();
    Fn fn = h ? reinterpret_cast<Fn>(dlsym(h, name)) : nullptr;
    if (!fn) fn = reinterpret_cast<Fn>(dlsym(RTLD_DEFAULT, name));
    if (!fn) fn = reinterpret_cast<Fn>(dlsym(RTLD_NEXT, name));
    return fn;
}

extern "C" EGLSurface eglCreateWindowSurface(EGLDisplay dpy, EGLConfig config,
                                             EGLNativeWindowType win,
                                             const EGLint* attrib_list) {
    using Fn = EGLSurface (*)(EGLDisplay, EGLConfig, EGLNativeWindowType, const EGLint*);
    static Fn real = egl_sym<Fn>("eglCreateWindowSurface");

    void* oh = oh_anw_get_oh(reinterpret_cast<void*>(win));
    EGLNativeWindowType real_win = oh ? reinterpret_cast<EGLNativeWindowType>(oh) : win;
    fprintf(stderr, "[egl-interposer] eglCreateWindowSurface win=%p unwrapped_oh=%p (real=%p)\n",
            reinterpret_cast<void*>(win), oh, reinterpret_cast<void*>(real));

    if (!real) {
        fprintf(stderr, "[egl-interposer] FATAL: real eglCreateWindowSurface not found via libEGL\n");
        return EGL_NO_SURFACE;
    }
    // If dlsym returned ourselves (same .so), skip — would recurse forever.
    if (real == &eglCreateWindowSurface) {
        fprintf(stderr, "[egl-interposer] FATAL: dlsym resolved to self; libEGL handle broken\n");
        return EGL_NO_SURFACE;
    }
    return real(dpy, config, real_win, attrib_list);
}

// ---- Pre-swap panel-pixel readback (color-smoke provenance oracle) -------------
// hwui renders each frame into fb 0's back buffer ON THE RENDERTHREAD; the EGL context
// is current HERE (inside the swap), so this is the ONLY place a glReadPixels sees the
// app's just-drawn frame. A main-thread read after RenderProxy::syncAndDrawFrame sees
// nothing — the context is bound to the RenderThread, not the caller. We publish the
// center pixel as ARGB into a global; the renderer's nativeLastSwapArgb() (same .so)
// hands it to the Java driver, which writes color-smoke-pixels.txt for the oracle.
//
// Header-free GLES entry points (this .so links libGLESv3) — mirrors the g214bb helper
// style in hwui_oh_abi_patch.cpp so no GLES header include is required.
extern "C" void glReadPixels(int x, int y, int w, int h, unsigned fmt, unsigned type, void* px);
extern "C" void glGetIntegerv(unsigned pname, int* params);

extern "C" {
// Center pixel of the most recent swap, ARGB (0xAARRGGBB). Read by the renderer.
volatile uint32_t g_wl_last_swap_argb = 0;
// Number of swaps captured since load (>0 means g_wl_last_swap_argb is valid).
volatile int g_wl_swap_count = 0;
}

static void wl_capture_center_argb() {
    int vp[4] = {0, 0, 0, 0};
    glGetIntegerv(0x0BA2 /*GL_VIEWPORT*/, vp);
    int cx = vp[2] > 0 ? vp[2] / 2 : 0;
    int cy = vp[3] > 0 ? vp[3] / 2 : 0;
    unsigned char px[4] = {0, 0, 0, 0};
    glReadPixels(cx, cy, 1, 1, 0x1908 /*GL_RGBA*/, 0x1401 /*GL_UNSIGNED_BYTE*/, px);
    // glReadPixels(GL_RGBA) gives px = R,G,B,A. Pack to ARGB so the oracle sees red as
    // 0xffff0000 and green as 0xff00ff00 (the AABBGGRR wire order would write red as
    // 0xff0000ff and fail the red check; green is symmetric and would not expose it).
    g_wl_last_swap_argb = ((uint32_t)px[3] << 24) | ((uint32_t)px[0] << 16) |
                          ((uint32_t)px[1] << 8)  |  (uint32_t)px[2];
    ++g_wl_swap_count;
}

// hwui presents via eglSwapBuffersWithDamageKHR (EglManager.cpp:629). The proven
// raw-GLES smoke posted to the exact same OHNativeWindow producer with plain
// eglSwapBuffers and RS composited it. If OHOS libEGL's damage variant does not
// actually queue/flush the buffer, hwui's frames never reach the producer (screen
// shows only the RS background). So route the damage swap to plain eglSwapBuffers
// — the path we know posts on this device — and log the result.
extern "C" EGLBoolean eglSwapBuffersWithDamageKHR(EGLDisplay dpy, EGLSurface surface,
                                                  EGLint* rects, EGLint n_rects) {
    using SwapFn = EGLBoolean (*)(EGLDisplay, EGLSurface);
    static SwapFn realSwap = egl_sym<SwapFn>("eglSwapBuffers");
    wl_capture_center_argb();  // read the just-rendered back buffer BEFORE it is swapped out
    EGLBoolean ok = realSwap ? realSwap(dpy, surface) : EGL_FALSE;
    EGLint err = eglGetError();
    fprintf(stderr,
            "[egl-interposer] eglSwapBuffersWithDamageKHR surf=%p n_rects=%d center_argb=0x%08x -> "
            "plain eglSwapBuffers ret=%d eglErr=0x%x\n",
            reinterpret_cast<void*>(surface), n_rects, g_wl_last_swap_argb, ok, err);
    return ok;
}

// Diagnostic: log any direct plain-swap calls too (and forward to the real one).
extern "C" EGLBoolean eglSwapBuffers(EGLDisplay dpy, EGLSurface surface) {
    using SwapFn = EGLBoolean (*)(EGLDisplay, EGLSurface);
    static SwapFn realSwap = egl_sym<SwapFn>("eglSwapBuffers");
    if (realSwap == &eglSwapBuffers) realSwap = nullptr;
    wl_capture_center_argb();  // capture whichever swap path hwui actually drives
    EGLBoolean ok = realSwap ? realSwap(dpy, surface) : EGL_FALSE;
    EGLint err = eglGetError();
    fprintf(stderr, "[egl-interposer] eglSwapBuffers surf=%p center_argb=0x%08x ret=%d eglErr=0x%x\n",
            reinterpret_cast<void*>(surface), g_wl_last_swap_argb, ok, err);
    return ok;
}
