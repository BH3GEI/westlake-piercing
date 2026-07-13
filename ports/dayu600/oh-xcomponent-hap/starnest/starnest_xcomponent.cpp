// starnest_xcomponent.cpp — OH-native XComponent GLES2 "Star Nest" volumetric-fractal demo.
//
// Drop-in render body for the proven OH-native rail (ArkUI <XComponent
// libraryname:'entry'> → libentry.so → OH_NativeWindow → EGL → render_service →
// DAYU600 5ce panel). Replaces the earlier glClearColor sweep with a real GLES2
// shader program: a fullscreen triangle-strip driven by a Star-Nest-class
// kaleidoscopic volumetric fractal (Kali, adapted), flying forward, TOUCH-STEERABLE.
//
// Why this is the "更震撼" demo: authored end-to-end by us (no Unity editor, no
// colleague, no engine), unmistakably LIVE (continuous fly-through + reacts to
// touch), and it rides the exact same OH-native surface rail the Tuanjie il2cpp
// game rides — so it doubles as a stress/interactivity proof of that rail.
//
// GLES2 / GLSL ES 1.00 only (Mali). Loop bounds are compile-time constants.
// Build: clang++ --target=aarch64-linux-ohos --sysroot=$SDK/sysroot -std=c++17 -fPIC -O2
//   starnest_xcomponent.cpp -shared -o libentry.so
//   -lace_napi.z -lace_ndk.z -lEGL -lGLESv3 -lnative_window -lhilog_ndk.z -luv

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
#include <time.h>

#undef LOG_TAG
#define LOG_TAG "wl-glxc"
#define LOGI(...) OH_LOG_Print(LOG_APP, LOG_INFO, 0xD00D, LOG_TAG, __VA_ARGS__)
#define LOGE(...) OH_LOG_Print(LOG_APP, LOG_ERROR, 0xD00D, LOG_TAG, __VA_ARGS__)

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
    // GL program state
    GLuint program = 0, vbo = 0;
    GLint  aPos = -1, uTime = -1, uRes = -1, uTouch = -1;
    // touch (written on UI thread, read on render thread — benign race)
    volatile float  touchX = -1.0f, touchY = -1.0f;
    volatile bool   touchActive = false;
};
RenderCtx g_ctx;

const EGLint kConfigAttribs[] = {
    EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
    EGL_RED_SIZE,   8, EGL_GREEN_SIZE, 8, EGL_BLUE_SIZE, 8, EGL_ALPHA_SIZE, 8,
    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
    EGL_NONE
};
const EGLint kContextAttribs[] = { EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE };

const char* kVert = R"GLSL(
attribute vec2 a_pos;
void main() { gl_Position = vec4(a_pos, 0.0, 1.0); }
)GLSL";

// Star Nest (Kali), adapted to GLSL ES 1.00 + touch steering. Conservative step
// counts for Mali; bump VOLSTEPS/ITER once framerate is confirmed on-panel.
const char* kFrag = R"GLSL(
precision highp float;
uniform float u_time;
uniform vec2  u_res;
uniform vec2  u_touch;            // 0..1 when a finger is down, negative otherwise

#define ITER 12
#define VOLSTEPS 10
#define formuparam 0.530
#define stepsize 0.170
#define zoom  0.800
#define tile  0.850
#define speed 0.010
#define brightness 0.0018
#define darkmatter 0.300
#define distfading 0.730
#define saturation 0.850

void main() {
    vec2 uv = gl_FragCoord.xy / u_res.xy - 0.5;
    uv.y *= u_res.y / u_res.x;
    vec3 dir = vec3(uv * zoom, 1.0);
    float t = u_time * speed + 0.25;

    // steer with the finger when touched, else a slow autonomous orbit
    float ax = (u_touch.x >= 0.0) ? (u_touch.x - 0.5) : 0.08 * sin(u_time * 0.15);
    float ay = (u_touch.y >= 0.0) ? (u_touch.y - 0.5) : 0.08 * cos(u_time * 0.13);
    float a1 = 1.5 + ax * 3.0;
    float a2 = 1.0 + ay * 3.0;
    mat2 r1 = mat2(cos(a1), sin(a1), -sin(a1), cos(a1));
    mat2 r2 = mat2(cos(a2), sin(a2), -sin(a2), cos(a2));
    dir.xz *= r1; dir.xy *= r2;
    vec3 from = vec3(1.0, 0.5, 0.5) + vec3(t * 2.0, t, -2.0);
    from.xz *= r1; from.xy *= r2;

    float s = 0.1, fade = 1.0;
    vec3 v = vec3(0.0);
    for (int r = 0; r < VOLSTEPS; r++) {
        vec3 p = from + s * dir * 0.5;
        p = abs(vec3(tile) - mod(p, vec3(tile * 2.0)));
        float pa = 0.0, a = 0.0;
        for (int i = 0; i < ITER; i++) {
            p = abs(p) / dot(p, p) - formuparam;
            a += abs(length(p) - pa);
            pa = length(p);
        }
        float dm = max(0.0, darkmatter - a * a * 0.001);
        a *= a * a;                       // a = a^3
        if (r > 6) fade *= 1.0 - dm;
        v += fade;
        v += vec3(s, s * s, s * s * s * s) * a * brightness * fade;
        fade *= distfading;
        s += stepsize;
    }
    v = mix(vec3(length(v)), v, saturation);
    gl_FragColor = vec4(v * 0.011, 1.0);
}
)GLSL";

GLuint compileShader(GLenum type, const char* src) {
    GLuint s = glCreateShader(type);
    glShaderSource(s, 1, &src, nullptr);
    glCompileShader(s);
    GLint ok = 0; glGetShaderiv(s, GL_COMPILE_STATUS, &ok);
    if (!ok) {
        char log[2048]; GLsizei n = 0; glGetShaderInfoLog(s, sizeof(log), &n, log);
        LOGE("%s shader compile FAILED: %s", type == GL_VERTEX_SHADER ? "vert" : "frag", log);
    }
    return s;
}

GLuint buildProgram() {
    GLuint v = compileShader(GL_VERTEX_SHADER, kVert);
    GLuint f = compileShader(GL_FRAGMENT_SHADER, kFrag);
    GLuint p = glCreateProgram();
    glAttachShader(p, v); glAttachShader(p, f); glLinkProgram(p);
    GLint ok = 0; glGetProgramiv(p, GL_LINK_STATUS, &ok);
    if (!ok) {
        char log[2048]; GLsizei n = 0; glGetProgramInfoLog(p, sizeof(log), &n, log);
        LOGE("program link FAILED: %s", log);
    }
    glDeleteShader(v); glDeleteShader(f);
    return p;
}

double nowSec() {
    struct timespec ts; clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
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
    c.surface = eglCreateWindowSurface(c.display, c.config,
                                       reinterpret_cast<EGLNativeWindowType>(c.window), nullptr);
    if (c.surface == EGL_NO_SURFACE) { LOGE("eglCreateWindowSurface failed 0x%x", eglGetError()); return false; }
    c.context = eglCreateContext(c.display, c.config, EGL_NO_CONTEXT, kContextAttribs);
    if (c.context == EGL_NO_CONTEXT) { LOGE("eglCreateContext failed"); return false; }
    if (!eglMakeCurrent(c.display, c.surface, c.surface, c.context)) { LOGE("eglMakeCurrent failed"); return false; }
    LOGI("EGL window surface current, %llux%llu", (unsigned long long)c.width, (unsigned long long)c.height);
    return true;
}

void* renderLoop(void* arg) {
    RenderCtx& c = *static_cast<RenderCtx*>(arg);
    if (!eglBringUp(c)) { LOGE("EGL bring-up failed; render thread exits"); return nullptr; }
    glViewport(0, 0, (GLsizei)c.width, (GLsizei)c.height);

    c.program = buildProgram();
    glUseProgram(c.program);
    c.aPos   = glGetAttribLocation(c.program, "a_pos");
    c.uTime  = glGetUniformLocation(c.program, "u_time");
    c.uRes   = glGetUniformLocation(c.program, "u_res");
    c.uTouch = glGetUniformLocation(c.program, "u_touch");
    LOGI("program=%u aPos=%d uTime=%d uRes=%d uTouch=%d", c.program, c.aPos, c.uTime, c.uRes, c.uTouch);

    // fullscreen quad as a triangle strip
    const GLfloat quad[] = { -1.f,-1.f,  1.f,-1.f,  -1.f,1.f,  1.f,1.f };
    glGenBuffers(1, &c.vbo);
    glBindBuffer(GL_ARRAY_BUFFER, c.vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(quad), quad, GL_STATIC_DRAW);
    glEnableVertexAttribArray(c.aPos);
    glVertexAttribPointer(c.aPos, 2, GL_FLOAT, GL_FALSE, 0, (void*)0);

    const double t0 = nowSec();
    double lastLog = t0;
    uint32_t framesSinceLog = 0;
    while (c.running) {
        float elapsed = (float)(nowSec() - t0);
        glUseProgram(c.program);
        glUniform1f(c.uTime, elapsed);
        glUniform2f(c.uRes, (float)c.width, (float)c.height);
        if (c.touchActive) glUniform2f(c.uTouch, c.touchX, c.touchY);
        else               glUniform2f(c.uTouch, -1.0f, -1.0f);
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        eglSwapBuffers(c.display, c.surface);

        c.frame++; framesSinceLog++;
        double n = nowSec();
        if (n - lastLog >= 2.0) {
            LOGI("frame %u  ~%.1f fps  touch(%.2f,%.2f,%d)",
                 c.frame, framesSinceLog / (n - lastLog),
                 c.touchX, c.touchY, (int)c.touchActive);
            lastLog = n; framesSinceLog = 0;
        }
    }
    eglMakeCurrent(c.display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    return nullptr;
}

// ── XComponent surface lifecycle ─────────────────────────────────────────────
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

// Feed the finger to the shader → interactive, provably-live steering.
void OnDispatchTouchEvent(OH_NativeXComponent* component, void* window) {
    OH_NativeXComponent_TouchEvent te;
    if (OH_NativeXComponent_GetTouchEvent(component, window, &te) != 0) return;
    if (te.type == OH_NATIVEXCOMPONENT_UP || te.type == OH_NATIVEXCOMPONENT_CANCEL || te.numPoints == 0) {
        g_ctx.touchActive = false;
        return;
    }
    if (g_ctx.width && g_ctx.height) {
        g_ctx.touchX = (float)te.x / (float)g_ctx.width;
        g_ctx.touchY = (float)te.y / (float)g_ctx.height;
        g_ctx.touchActive = true;
    }
}

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
        LOGI("XComponent callbacks registered — Star Nest waiting for OnSurfaceCreated");
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
