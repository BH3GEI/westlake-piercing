/*
 * Gate-2 harness — EGL interposer.
 *
 * hwui's EglManager::createSurface calls eglCreateWindowSurface(dpy, cfg, window,
 * attribs) directly (a PLT call, EglManager.cpp:505 — not eglGetProcAddress), and
 * the `window` it passes is our AOSP-ABI wrapper (oh_anw_wrap). OHOS's real libEGL
 * only understands the real OHNativeWindow. So we interpose eglCreateWindowSurface:
 * unwrap the wrapper back to the real OHNativeWindow, then forward to the real
 * libEGL symbol (RTLD_NEXT).
 *
 * Placement: this TU is linked into the harness EXECUTABLE and the executable is
 * linked -Wl,--export-dynamic, so this strong eglCreateWindowSurface sits first in
 * the global symbol scope and wins the runtime resolution of libhwui's PLT slot
 * (libhwui's -Bsymbolic-functions only rebinds symbols libhwui itself defines;
 * eglCreateWindowSurface is external to libhwui, so global scope — executable
 * first — decides). RTLD_NEXT then finds the device libEGL definition after us.
 */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>

#include <EGL/egl.h>

// From oh_anativewindow_shim.cpp (validates magic+guard; returns the real
// OHNativeWindow* or nullptr if `aosp` is not one of our wrappers).
extern "C" void* oh_anw_get_oh(void* aosp);

extern "C" EGLSurface eglCreateWindowSurface(EGLDisplay dpy, EGLConfig config,
                                             EGLNativeWindowType win,
                                             const EGLint* attrib_list) {
    using Fn = EGLSurface (*)(EGLDisplay, EGLConfig, EGLNativeWindowType, const EGLint*);
    static Fn real = reinterpret_cast<Fn>(dlsym(RTLD_NEXT, "eglCreateWindowSurface"));

    void* oh = oh_anw_get_oh(reinterpret_cast<void*>(win));
    EGLNativeWindowType real_win = oh ? reinterpret_cast<EGLNativeWindowType>(oh) : win;
    fprintf(stderr, "[egl-interposer] eglCreateWindowSurface win=%p unwrapped_oh=%p (real=%p)\n",
            reinterpret_cast<void*>(win), oh, reinterpret_cast<void*>(real));

    if (!real) {
        fprintf(stderr, "[egl-interposer] FATAL: real eglCreateWindowSurface not found via RTLD_NEXT\n");
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
    static SwapFn realSwap = reinterpret_cast<SwapFn>(dlsym(RTLD_NEXT, "eglSwapBuffers"));
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
    static SwapFn realSwap = reinterpret_cast<SwapFn>(dlsym(RTLD_NEXT, "eglSwapBuffers"));
    EGLBoolean ok = realSwap ? realSwap(dpy, surface) : EGL_FALSE;
    EGLint err = eglGetError();
    fprintf(stderr, "[egl-interposer] eglSwapBuffers surf=%p ret=%d eglErr=0x%x\n",
            reinterpret_cast<void*>(surface), ok, err);
    return ok;
}
