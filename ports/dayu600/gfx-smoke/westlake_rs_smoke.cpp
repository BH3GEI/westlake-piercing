/*
 * Gate-2 smoke A: prove the OHOS-side graphics chain libhwui will sit on.
 *
 *   RSSurfaceNode (attached straight to the display, bootanimation-style)
 *     -> GetSurface() -> OHNativeWindow -> eglCreateWindowSurface
 *     -> GLES clear + scissor color bars -> swap
 *
 * Run as root on the DAYU600 board; verify with snapshot_display.
 * No WMS window, no ArkUI: render-service IPC only.
 */
#include <cstdio>
#include <cstdlib>
#include <unistd.h>

#include <EGL/egl.h>
#include <GLES3/gl3.h>

#include "transaction/rs_interfaces.h"
#include "transaction/rs_transaction.h"
#include "ui/rs_display_node.h"
#include "ui/rs_surface_node.h"

#include <window.h>  // OH native window C API (external_window.h family)

using namespace OHOS;
using namespace OHOS::Rosen;

static const char* kTag = "[rs-smoke] ";

int main(int argc, char** argv) {
    int seconds = argc > 1 ? atoi(argv[1]) : 10;

    RSSurfaceNodeConfig config;
    config.SurfaceNodeName = "westlake_rs_smoke";
    auto surfaceNode = RSSurfaceNode::Create(config);
    if (!surfaceNode) {
        printf("%sRSSurfaceNode::Create failed\n", kTag);
        return 1;
    }
    printf("%sRSSurfaceNode created id=%llu\n", kTag, (unsigned long long)surfaceNode->GetId());

    surfaceNode->SetBounds(0, 0, 1200, 1920);
    surfaceNode->SetBackgroundColor(0xff202080);
    // raise above SceneBoard so the frame is not composited under the system UI
    surfaceNode->SetPositionZ(100000000.0f);
    // screenId 0 = primary display
    surfaceNode->AttachToDisplay(0);
    RSTransaction::FlushImplicitTransaction();
    printf("%sattached to display, background flushed\n", kTag);

    auto surface = surfaceNode->GetSurface();
    if (!surface) {
        printf("%sGetSurface failed\n", kTag);
        return 2;
    }

    OHNativeWindow* nativeWindow = CreateNativeWindowFromSurface(&surface);
    if (!nativeWindow) {
        printf("%sCreateNativeWindowFromSurface failed\n", kTag);
        return 3;
    }
    printf("%sOHNativeWindow=%p\n", kTag, (void*)nativeWindow);

    // RSSurfaceNode::SetBounds does not propagate to the surface producer's
    // buffer geometry, so the native window starts at 0x0 and EGL yields a
    // 0x0 window surface (eglSwapBuffers -> EGL_BAD_SURFACE). Set the buffer
    // width/height and pixel format explicitly before creating the EGL
    // surface. SET_BUFFER_GEOMETRY takes (width, height) per external_window.h.
    NativeWindowHandleOpt(nativeWindow, SET_BUFFER_GEOMETRY, 1200, 1920);
    NativeWindowHandleOpt(nativeWindow, SET_FORMAT, /*PIXEL_FMT_RGBA_8888=*/12);

    EGLDisplay display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    EGLint major = 0, minor = 0;
    if (display == EGL_NO_DISPLAY || !eglInitialize(display, &major, &minor)) {
        printf("%seglInitialize failed 0x%x\n", kTag, eglGetError());
        return 4;
    }
    printf("%sEGL %d.%d\n", kTag, major, minor);

    const EGLint configAttribs[] = {EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
                                    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES3_BIT,
                                    EGL_RED_SIZE, 8, EGL_GREEN_SIZE, 8, EGL_BLUE_SIZE, 8,
                                    EGL_ALPHA_SIZE, 8, EGL_NONE};
    EGLConfig eglConfig;
    EGLint numConfigs = 0;
    if (!eglChooseConfig(display, configAttribs, &eglConfig, 1, &numConfigs) || numConfigs < 1) {
        printf("%seglChooseConfig failed 0x%x\n", kTag, eglGetError());
        return 5;
    }

    EGLSurface eglSurface = eglCreateWindowSurface(display, eglConfig,
                                                   (EGLNativeWindowType)nativeWindow, nullptr);
    if (eglSurface == EGL_NO_SURFACE) {
        printf("%seglCreateWindowSurface failed 0x%x\n", kTag, eglGetError());
        return 6;
    }

    const EGLint ctxAttribs[] = {EGL_CONTEXT_CLIENT_VERSION, 3, EGL_NONE};
    EGLContext context = eglCreateContext(display, eglConfig, EGL_NO_CONTEXT, ctxAttribs);
    if (context == EGL_NO_CONTEXT || !eglMakeCurrent(display, eglSurface, eglSurface, context)) {
        printf("%seglCreateContext/MakeCurrent failed 0x%x\n", kTag, eglGetError());
        return 7;
    }
    printf("%sGL_RENDERER=%s\n", kTag, (const char*)glGetString(GL_RENDERER));

    EGLint w = 0, h = 0;
    eglQuerySurface(display, eglSurface, EGL_WIDTH, &w);
    eglQuerySurface(display, eglSurface, EGL_HEIGHT, &h);
    printf("%ssurface %dx%d\n", kTag, w, h);

    for (int frame = 0; frame < seconds * 10; frame++) {
        glViewport(0, 0, w, h);
        glDisable(GL_SCISSOR_TEST);
        glClearColor(0.10f, 0.55f, 0.25f, 1.0f);  // green base
        glClear(GL_COLOR_BUFFER_BIT);
        glEnable(GL_SCISSOR_TEST);
        glScissor(w / 8, h / 3, w / 4, h / 3);
        glClearColor(0.9f, 0.2f, 0.2f, 1.0f);     // red block
        glClear(GL_COLOR_BUFFER_BIT);
        glScissor(w * 5 / 8, h / 3, w / 4, h / 3);
        glClearColor(0.95f, 0.85f, 0.2f, 1.0f);   // yellow block
        glClear(GL_COLOR_BUFFER_BIT);
        if (!eglSwapBuffers(display, eglSurface)) {
            printf("%seglSwapBuffers failed 0x%x\n", kTag, eglGetError());
            return 8;
        }
        if (frame == 0) printf("%sfirst frame swapped\n", kTag);
        usleep(100 * 1000);
    }

    printf("%sdone, detaching\n", kTag);
    surfaceNode->DetachToDisplay(0);
    RSTransaction::FlushImplicitTransaction();
    return 0;
}
