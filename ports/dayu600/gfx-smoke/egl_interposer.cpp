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
    EGLBoolean ok = realSwap ? realSwap(dpy, surface) : EGL_FALSE;
    EGLint err = eglGetError();
    fprintf(stderr,
            "[egl-interposer] eglSwapBuffersWithDamageKHR surf=%p n_rects=%d -> plain "
            "eglSwapBuffers ret=%d eglErr=0x%x\n",
            reinterpret_cast<void*>(surface), n_rects, ok, err);
    return ok;
}

// Diagnostic: log any direct plain-swap calls too (and forward to the real one).
extern "C" EGLBoolean eglSwapBuffers(EGLDisplay dpy, EGLSurface surface) {
    using SwapFn = EGLBoolean (*)(EGLDisplay, EGLSurface);
    static SwapFn realSwap = egl_sym<SwapFn>("eglSwapBuffers");
    if (realSwap == &eglSwapBuffers) realSwap = nullptr;
    EGLBoolean ok = realSwap ? realSwap(dpy, surface) : EGL_FALSE;
    EGLint err = eglGetError();
    fprintf(stderr, "[egl-interposer] eglSwapBuffers surf=%p ret=%d eglErr=0x%x\n",
            reinterpret_cast<void*>(surface), ok, err);
    return ok;
}
