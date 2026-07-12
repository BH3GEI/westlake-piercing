// wl_fmt_shim.c — OH-native pixel-format-enum remap shim for the Tuanjie il2cpp player.
//
// Root cause of the black screen on DAYU600 5ce (OH 6.1.0.31):
//   libtuanjie.so (Unity/Tuanjie engine, ported from Android) passes the *Android*
//   pixel-format value WINDOW_FORMAT_RGBA_8888 = 1 to OH's SET_FORMAT. But on OH,
//   pixel-format 1 = NATIVEBUFFER_PIXEL_FMT_CLUT1 (a 1-bit palette format that cannot
//   back a GPU render surface). The allocator rejects it ("the format can not support 1"),
//   never allocates a buffer, and the compositor loops forever on empty frames → black.
//
// Fix (deterministic; no LD_PRELOAD / no global-scope-order gambling):
//   libtuanjie.so's two relevant UND imports are renamed in its .dynstr to the exported
//   names below, so libtuanjie binds *only* to this shim. The shim remaps the bad palette
//   formats {0,1,2} → RGBA_8888 (12) on SET_FORMAT, and belt-and-suspenders forces the
//   window format to RGBA_8888 right before the Mali EGL driver reads it. The shim calls
//   the *real* OH_NativeWindow_NativeWindowHandleOpt / eglCreateWindowSurface (unrenamed,
//   linked from libnative_window.so / libEGL.so) — no recursion.
//
// AArch64-ELF note: OH_NativeWindow_NativeWindowHandleOpt is variadic (win, code, ...).
// On AArch64 ELF the first two var-args always land in x2/x3 regardless of the callee's
// variadic-ness, and the real callee reads only as many as `code` requires. So a fixed
// (win, code, uintptr_t a, uintptr_t b) hook that always forwards both words is safe for
// every operation (max fan-in is SET/GET_BUFFER_GEOMETRY with two args).

#include <native_window/external_window.h>   // OHNativeWindow, NativeWindowOperation, SET_FORMAT,
                                             // OH_NativeWindow_NativeWindowHandleOpt (variadic)
#include <native_buffer/native_buffer.h>      // NATIVEBUFFER_PIXEL_FMT_RGBA_8888 (== 12)
#include <EGL/egl.h>                          // eglCreateWindowSurface, EGL* types
#include <hilog/log.h>                        // OH_LOG_Print
#include <stdint.h>

#undef  LOG_DOMAIN
#define LOG_DOMAIN 0x4857                     // 'W''L'
#define WLTAG "WLFMT"
#define WL_RGBA8888 NATIVEBUFFER_PIXEL_FMT_RGBA_8888   // 12

// --- Hook 1 -----------------------------------------------------------------
// Exported under the exact-length name that libtuanjie.so's renamed SET/GET import
// now demands (see patch_rename.py: "OH_NativeWindow_NativeWindowHandleOpt" -> this).
int32_t WLshim_NativeWindow_HandleOpt_fmtfix1(OHNativeWindow *win, int code,
                                              uintptr_t a, uintptr_t b) {
    if (code == SET_FORMAT) {
        int fmt = (int)a;
        if (fmt >= 0 && fmt <= 2) {           // OH CLUT8/CLUT1/CLUT4 — never a GPU surface
            OH_LOG_Print(LOG_APP, LOG_WARN, LOG_DOMAIN, WLTAG,
                         "SET_FORMAT remap %{public}d -> %{public}d (RGBA_8888)",
                         fmt, WL_RGBA8888);
            a = (uintptr_t)WL_RGBA8888;
        } else {
            OH_LOG_Print(LOG_APP, LOG_INFO, LOG_DOMAIN, WLTAG,
                         "SET_FORMAT passthrough %{public}d", fmt);
        }
    }
    return OH_NativeWindow_NativeWindowHandleOpt(win, code, a, b);
}

// --- Hook 2 -----------------------------------------------------------------
// Exported under the exact-length name that libtuanjie.so's renamed
// "eglCreateWindowSurface" import now demands. Force the window's pixel format to
// RGBA_8888 immediately before the real EGL surface is created — covers the case
// where the engine relies on a default format instead of an explicit SET_FORMAT.
EGLSurface WLeglCreateWindowSurf0(EGLDisplay dpy, EGLConfig config,
                                  EGLNativeWindowType win, const EGLint *attrib_list) {
    OH_LOG_Print(LOG_APP, LOG_WARN, LOG_DOMAIN, WLTAG,
                 "eglCreateWindowSurface: forcing SET_FORMAT=%{public}d (RGBA_8888)",
                 WL_RGBA8888);
    OH_NativeWindow_NativeWindowHandleOpt((OHNativeWindow *)(void *)win,
                                          SET_FORMAT, (int)WL_RGBA8888);
    return eglCreateWindowSurface(dpy, config, win, attrib_list);
}
