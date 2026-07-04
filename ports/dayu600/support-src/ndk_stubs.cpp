// Gate-1 link-completeness stubs for AOSP NDK platform C APIs that have no
// OHOS backing yet. Gate 2 replaces the ANativeWindow/AHardwareBuffer/
// AChoreographer families with real OHOS-backed implementations
// (oh_anativewindow_shim); the rest (AParcel, AImageReader, stats) stay
// no-op on OHOS.
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <dlfcn.h>
#include <string>

#include <jni.h>

#include "hilog/log.h"

extern "C" {

// ---- logging → hilog ----
int __android_log_print(int prio, const char* tag, const char* fmt, ...) {
    char buf[1024];
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    (void)prio;
    HiLogPrint(LOG_APP, LOG_INFO, 0xD001234, tag ? tag : "hwui", "%{public}s", buf);
    return 1;
}

void __android_log_assert(const char* cond, const char* tag, const char* fmt, ...) {
    char buf[1024] = {0};
    if (fmt) {
        va_list ap;
        va_start(ap, fmt);
        vsnprintf(buf, sizeof(buf), fmt, ap);
        va_end(ap);
    }
    HiLogPrint(LOG_APP, LOG_FATAL, 0xD001234, tag ? tag : "hwui", "assert %{public}s: %{public}s",
               cond ? cond : "", buf);
    __builtin_trap();
}

int android_errorWriteLog(int, const char*) { return 0; }
int __android_log_error_write(int64_t, const char*, int32_t, const char*, uint32_t) { return 0; }

// ---- atrace ----
uint64_t atrace_get_enabled_tags() { return 0; }
void atrace_begin_body(const char*) {}
void atrace_end_body() {}
void atrace_int_body(const char*, int32_t) {}
void atrace_int64_body(const char*, int64_t) {}
void atrace_setup() {}

// ---- jni helper ----
int jniRegisterNativeMethods(JNIEnv* env, const char* className,
                             const JNINativeMethod* methods, int numMethods) {
    jclass clazz = env->FindClass(className);
    if (clazz == nullptr) return -1;
    int rc = env->RegisterNatives(clazz, methods, numMethods);
    env->DeleteLocalRef(clazz);
    return rc;
}

// ---- AChoreographer (gate 2: wire to OH_NativeVSync) ----
typedef struct AChoreographer AChoreographer;
typedef struct AChoreographerFrameCallbackData AChoreographerFrameCallbackData;
int64_t AChoreographerFrameCallbackData_getFrameTimeNanos(const AChoreographerFrameCallbackData*) {
    return 0;
}
void AChoreographer_postVsyncCallback(AChoreographer*, void*, void*) {}

// ---- AHardwareBuffer (gate 2: wire to OH_NativeBuffer) ----
typedef struct AHardwareBuffer AHardwareBuffer;
int AHardwareBuffer_allocate(const void*, AHardwareBuffer**) { return -22; /*EINVAL*/ }
void AHardwareBuffer_acquire(AHardwareBuffer*) {}
void AHardwareBuffer_release(AHardwareBuffer*) {}
void AHardwareBuffer_describe(const AHardwareBuffer*, void* desc) {
    if (desc) memset(desc, 0, 40);
}
int AHardwareBuffer_getDataSpace(const AHardwareBuffer*) { return 0; }

// ---- AImageReader / AImage ----
typedef struct AImageReader AImageReader;
typedef struct AImage AImage;
// Complete ANativeWindow, field-for-field matching
// ports/dayu600/include/android/native_window.h (the layout libhwui was built
// with): function pointers begin right after `common`, so query() is at
// offset 88. We define it here (rather than including that header, whose other
// prototypes conflict with the hand-rolled stubs below) so ANativeWindow_getWidth/
// getHeight can call window->query().
typedef struct ANativeWindow {
    struct {
        int magic;
        int version;
        void* reserved[4];
        void (*incRef)(void*);
        void (*decRef)(void*);
    } common;
    int (*setSwapInterval)(struct ANativeWindow*, int);
    int (*dequeueBuffer_DEPRECATED)(struct ANativeWindow*, void**);
    int (*lockBuffer_DEPRECATED)(struct ANativeWindow*, void*);
    int (*queueBuffer_DEPRECATED)(struct ANativeWindow*, void*);
    int (*query)(const struct ANativeWindow*, int, int*);
    int (*perform)(struct ANativeWindow*, int, ...);
    int (*cancelBuffer_DEPRECATED)(struct ANativeWindow*, void*);
    int (*dequeueBuffer)(struct ANativeWindow*, void**, int*);
    int (*queueBuffer)(struct ANativeWindow*, void*, int);
    int (*cancelBuffer)(struct ANativeWindow*, void*, int);
} ANativeWindow;
int AImageReader_newWithUsage(int32_t, int32_t, int32_t, uint64_t, int32_t, AImageReader**) {
    return -22;
}
void AImageReader_delete(AImageReader*) {}
int AImageReader_getWindow(AImageReader*, ANativeWindow**) { return -22; }
int AImageReader_acquireNextImage(AImageReader*, AImage**) { return -22; }
void AImage_delete(AImage*) {}
int AImage_getHardwareBuffer(const AImage*, AHardwareBuffer**) { return -22; }

// ---- ANativeWindow extended NDK surface (gate 2 replaces) ----
void ANativeWindow_acquire(ANativeWindow*) {}
void ANativeWindow_release(ANativeWindow*) {}

// Real width/height, via the ANativeWindow->query function pointer — exactly how
// the platform ANativeWindow_getWidth/getHeight are implemented on Android.
//
// hwui is handed the AOSP-ABI wrapper (oh_anw_wrap, see
// bridge-src/oh_anativewindow_shim.cpp), whose query() reports the real producer
// geometry (1200x1920). These two entry points are what hwui's GL draw path reads
// for geometry: CanvasContext::getNextFrameSize() feeds TreeInfo.screenSize
// (SkiaDisplayList nested-node culling) and surfaceRequiresRedraw(). (The GL
// render target itself is sized from the EGLSurface via eglQuerySurface.) The old
// 0-returning stubs made hwui see a 0x0 screen and cull content.
//
// NATIVE_WINDOW_WIDTH == 0, NATIVE_WINDOW_HEIGHT == 1 (system/window.h).
int32_t ANativeWindow_getWidth(ANativeWindow* w) {
    int value = 0;
    if (w && w->query && w->query(w, /*NATIVE_WINDOW_WIDTH=*/0, &value) == 0) return value;
    return 0;
}
int32_t ANativeWindow_getHeight(ANativeWindow* w) {
    int value = 0;
    if (w && w->query && w->query(w, /*NATIVE_WINDOW_HEIGHT=*/1, &value) == 0) return value;
    return 0;
}
int32_t ANativeWindow_getBuffersDataSpace(ANativeWindow*) { return 0; }
int32_t ANativeWindow_setBuffersDataSpace(ANativeWindow*, int32_t) { return 0; }
int64_t ANativeWindow_getLastDequeueDuration(ANativeWindow*) { return 0; }
int64_t ANativeWindow_getLastDequeueStartTime(ANativeWindow*) { return 0; }
int64_t ANativeWindow_getLastQueueDuration(ANativeWindow*) { return 0; }
int ANativeWindow_getLastQueuedBuffer2(ANativeWindow*, AHardwareBuffer**, int*, void*) {
    return -22;
}
int64_t ANativeWindow_getNextFrameId(ANativeWindow*) { return 0; }
int ANativeWindow_setDequeueTimeout(ANativeWindow*, int64_t) { return 0; }
void ANativeWindow_tryAllocateBuffers(ANativeWindow*) {}

// ---- AParcel (RenderNode/HardwareRenderer parcels; unused on OHOS) ----
typedef struct AParcel AParcel;
void AParcel_delete(AParcel*) {}
bool AParcel_getAllowFds(const AParcel*) { return false; }
int32_t AParcel_readInt32(const AParcel*, int32_t* v) { if (v) *v = 0; return -22; }
int32_t AParcel_readUint32(const AParcel*, uint32_t* v) { if (v) *v = 0; return -22; }
int32_t AParcel_readFloat(const AParcel*, float* v) { if (v) *v = 0; return -22; }
int32_t AParcel_readByteArray(const AParcel*, void*, void*) { return -22; }
int32_t AParcel_readParcelFileDescriptor(const AParcel*, int* fd) { if (fd) *fd = -1; return -22; }
int32_t AParcel_writeInt32(AParcel*, int32_t) { return -22; }
int32_t AParcel_writeFloat(AParcel*, float) { return -22; }
int32_t AParcel_writeByteArray(AParcel*, const void*, int32_t) { return -22; }
int32_t AParcel_writeParcelFileDescriptor(AParcel*, int) { return -22; }

}  // extern "C"

// ---- C++-mangled leftovers ----
// hwui/platform EGL extension hook (apex/window.h path); no-op on OHOS.
void eglBeginFrame(void*, void*) {}

namespace android {
namespace uirenderer {
// SharedLib (WebViewFunctorManager): plain dlopen/dlsym.
class SharedLib {
public:
    static void* openSharedLib(std::string filename);
    static void* getSymbol(void* libHandle, const char* symbol);
};
void* SharedLib::openSharedLib(std::string filename) {
    return dlopen(filename.c_str(), RTLD_NOW | RTLD_LOCAL);
}
void* SharedLib::getSymbol(void* libHandle, const char* symbol) {
    return libHandle ? dlsym(libHandle, symbol) : nullptr;
}
}  // namespace uirenderer

namespace base {
// android::base property getters — OHOS has no Android system properties;
// return defaults (hwui Properties then run with defaults).
std::string GetProperty(const std::string&, const std::string& default_value) {
    return default_value;
}
bool GetBoolProperty(const std::string&, bool default_value) { return default_value; }
template <typename T>
T GetIntProperty(const std::string&, T default_value, T, T) {
    return default_value;
}
template int GetIntProperty<int>(const std::string&, int, int, int);
}  // namespace base
}  // namespace android
