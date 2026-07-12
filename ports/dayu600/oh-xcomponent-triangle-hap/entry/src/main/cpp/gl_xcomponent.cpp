// gl_xcomponent.cpp — OH-native XComponent GLES2 renderer, v2 (rotating triangle).
//
// STEP-UP from the glClearColor smoke (com.westlake.glxc): this draws REAL
// geometry — a per-vertex-coloured triangle spun by a rotation uniform, over a
// gently pulsing (never-black) background — through a compiled GLES2 program
// (VBO + vertex/fragment shaders). Same rail as before:
//   ArkUI <XComponent type:SURFACE libraryname:'entry'> → libentry.so napi →
//   OnSurfaceCreated hands OHNativeWindow → EGL → render_service → 5ce panel.
// This is still the exact seam the OH-native Tuanjie engine rides; here the
// render body is just a hair richer (shaders + geometry) than a flat clear.
//
// ROBUSTNESS the v1 smoke lacked (why v1 could stick on a black panel):
//   * eglSwapBuffers is now ERROR-CHECKED; on failure we tear the EGLSurface
//     down and REBUILD it from the still-valid OHNativeWindow (self-heal after a
//     focus/window change invalidates the surface) instead of obliviously
//     swapping into a dead surface forever.
//   * the background is a pulsing dark navy that never reaches (0,0,0), so even a
//     degenerate frame is visibly "on", not black.
//
// Build target: aarch64-linux-ohos, -lace_napi.z -lace_ndk.z -lEGL -lGLESv3
//   -lnative_window -lhilog_ndk.z -luv  (library name MUST be 'entry').

#include <ace/xcomponent/native_interface_xcomponent.h>
#include <napi/native_api.h>
#include <native_window/external_window.h>

#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES3/gl3.h>

#include <hilog/log.h>

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <pthread.h>
#include <unistd.h>

#undef LOG_TAG
#define LOG_TAG "wl-glxc2"
#define LOGI(...) OH_LOG_Print(LOG_APP, LOG_INFO, 0xD00E, LOG_TAG, __VA_ARGS__)
#define LOGE(...) OH_LOG_Print(LOG_APP, LOG_ERROR, 0xD00E, LOG_TAG, __VA_ARGS__)

namespace {

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
    GLuint          program = 0;
    GLuint          vbo = 0;
    GLint           uAngle = -1;
    GLint           uAspect = -1;
    GLint           aPos = -1;
    GLint           aCol = -1;
};
RenderCtx g_ctx;

const EGLint kConfigAttribs[] = {
    EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
    EGL_RED_SIZE,   8, EGL_GREEN_SIZE, 8, EGL_BLUE_SIZE, 8, EGL_ALPHA_SIZE, 8,
    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
    EGL_NONE
};
const EGLint kContextAttribs[] = { EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE };

// interleaved: x, y, r, g, b  — an equilateral triangle, radius ~0.62.
const GLfloat kTri[] = {
    0.00f,  0.62f,   1.0f, 0.20f, 0.20f,   // top      — red
   -0.54f, -0.31f,   0.20f, 1.0f, 0.35f,   // bot-left  — green
    0.54f, -0.31f,   0.30f, 0.45f, 1.0f,   // bot-right — blue
};

const char* kVert =
    "attribute vec2 aPos;\n"
    "attribute vec3 aCol;\n"
    "uniform float uAngle;\n"
    "uniform float uAspect;\n"   // width/height, squishes y so the shape stays rigid
    "varying vec3 vCol;\n"
    "void main() {\n"
    "  float c = cos(uAngle), s = sin(uAngle);\n"
    "  vec2 p = vec2(aPos.x * c - aPos.y * s, aPos.x * s + aPos.y * c);\n"
    "  gl_Position = vec4(p.x, p.y * uAspect, 0.0, 1.0);\n"
    "  vCol = aCol;\n"
    "}\n";

const char* kFrag =
    "precision mediump float;\n"
    "varying vec3 vCol;\n"
    "void main() { gl_FragColor = vec4(vCol, 1.0); }\n";

GLuint compile(GLenum type, const char* src) {
    GLuint sh = glCreateShader(type);
    glShaderSource(sh, 1, &src, nullptr);
    glCompileShader(sh);
    GLint ok = 0; glGetShaderiv(sh, GL_COMPILE_STATUS, &ok);
    if (!ok) {
        char log[512]; glGetShaderInfoLog(sh, sizeof(log), nullptr, log);
        LOGE("shader compile failed: %{public}s", log);
        glDeleteShader(sh); return 0;
    }
    return sh;
}

bool buildProgram(RenderCtx& c) {
    GLuint vs = compile(GL_VERTEX_SHADER, kVert);
    GLuint fs = compile(GL_FRAGMENT_SHADER, kFrag);
    if (!vs || !fs) return false;
    c.program = glCreateProgram();
    glAttachShader(c.program, vs);
    glAttachShader(c.program, fs);
    glLinkProgram(c.program);
    GLint ok = 0; glGetProgramiv(c.program, GL_LINK_STATUS, &ok);
    if (!ok) { char log[512]; glGetProgramInfoLog(c.program, sizeof(log), nullptr, log);
        LOGE("program link failed: %{public}s", log); return false; }
    glDeleteShader(vs); glDeleteShader(fs);
    c.aPos   = glGetAttribLocation(c.program, "aPos");
    c.aCol   = glGetAttribLocation(c.program, "aCol");
    c.uAngle = glGetUniformLocation(c.program, "uAngle");
    c.uAspect= glGetUniformLocation(c.program, "uAspect");
    glGenBuffers(1, &c.vbo);
    glBindBuffer(GL_ARRAY_BUFFER, c.vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(kTri), kTri, GL_STATIC_DRAW);
    LOGI("GL program built (aPos=%d aCol=%d uAngle=%d uAspect=%d)", c.aPos, c.aCol, c.uAngle, c.uAspect);
    return true;
}

// (Re)build the EGL window surface from c.window and make it current.
bool makeSurfaceCurrent(RenderCtx& c) {
    if (c.surface != EGL_NO_SURFACE) {
        eglMakeCurrent(c.display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
        eglDestroySurface(c.display, c.surface);
        c.surface = EGL_NO_SURFACE;
    }
    c.surface = eglCreateWindowSurface(c.display, c.config,
                                       reinterpret_cast<EGLNativeWindowType>(c.window), nullptr);
    if (c.surface == EGL_NO_SURFACE) { LOGE("eglCreateWindowSurface failed 0x%x", eglGetError()); return false; }
    if (!eglMakeCurrent(c.display, c.surface, c.surface, c.context)) { LOGE("eglMakeCurrent failed 0x%x", eglGetError()); return false; }
    return true;
}

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
    c.context = eglCreateContext(c.display, c.config, EGL_NO_CONTEXT, kContextAttribs);
    if (c.context == EGL_NO_CONTEXT) { LOGE("eglCreateContext failed"); return false; }
    if (!makeSurfaceCurrent(c)) return false;
    LOGI("EGL window surface current, %llux%llu", (unsigned long long)c.width, (unsigned long long)c.height);
    return true;
}

void* renderLoop(void* arg) {
    RenderCtx& c = *static_cast<RenderCtx*>(arg);
    if (!eglBringUp(c)) { LOGE("EGL bring-up failed; render thread exits"); return nullptr; }
    if (!buildProgram(c)) { LOGE("GL program build failed; render thread exits"); return nullptr; }
    glDisable(GL_DEPTH_TEST);
    while (c.running) {
        glViewport(0, 0, (GLsizei)c.width, (GLsizei)c.height);
        // pulsing dark-navy background — floor well above black so it's never "off".
        float pulse = 0.5f + 0.5f * sinf(c.frame * 0.02f);
        glClearColor(0.05f + 0.04f * pulse, 0.08f + 0.05f * pulse, 0.16f + 0.06f * pulse, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glUseProgram(c.program);
        float aspect = (c.height > 0) ? (float)c.width / (float)c.height : 1.0f;
        glUniform1f(c.uAngle, c.frame * 0.02f);   // ~1.15 deg/frame -> full spin ~5s @60fps
        glUniform1f(c.uAspect, aspect);
        glBindBuffer(GL_ARRAY_BUFFER, c.vbo);
        glEnableVertexAttribArray(c.aPos);
        glVertexAttribPointer(c.aPos, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void*)0);
        glEnableVertexAttribArray(c.aCol);
        glVertexAttribPointer(c.aCol, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void*)(2 * sizeof(GLfloat)));
        glDrawArrays(GL_TRIANGLES, 0, 3);

        if (eglSwapBuffers(c.display, c.surface) == EGL_FALSE) {
            EGLint e = eglGetError();
            LOGE("eglSwapBuffers failed 0x%x — rebuilding surface from window", e);
            if (!makeSurfaceCurrent(c)) { usleep(200 * 1000); }  // window truly gone; back off
        }
        if ((c.frame % 120) == 0)
            LOGI("frame %u angle=%.2f aspect=%.3f", c.frame, c.frame * 0.02f, aspect);
        c.frame++;
    }
    eglMakeCurrent(c.display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    return nullptr;
}

// -- XComponent surface lifecycle --------------------------------------------
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
