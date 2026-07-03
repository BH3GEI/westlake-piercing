/*
 * Minimal AOSP-ABI ANativeWindow wrapper for DAYU600.
 *
 * Android libhwui expects an ANativeWindow-shaped POD with function pointers.
 * OHOS EGL expects the real OH NativeWindow.  The bridge returns this wrapper
 * to Android code; the EGL interposer calls oh_anw_get_oh() to unwrap it before
 * forwarding to OHOS libEGL.
 */

#include <android/log.h>

#include <atomic>
#include <cstdarg>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>

struct NativeWindow;
using OHNativeWindow = NativeWindow;

struct ANativeWindowBuffer;

constexpr int32_t kAndroidNativeWindowMagic = 0x5f776e64; // "_wnd"
constexpr int32_t kDefaultWidth = 720;
constexpr int32_t kDefaultHeight = 1280;
constexpr int32_t kDefaultFormat = 12; // GRAPHIC_PIXEL_FMT_RGBA_8888
constexpr uint64_t kDefaultUsage = 0x108ULL | 0x100ULL | 0x200ULL;

enum NativeWindowQuery {
    NATIVE_WINDOW_WIDTH = 0,
    NATIVE_WINDOW_HEIGHT = 1,
    NATIVE_WINDOW_FORMAT = 2,
    NATIVE_WINDOW_MIN_UNDEQUEUED_BUFFERS = 3,
    NATIVE_WINDOW_QUEUES_TO_WINDOW_COMPOSER = 4,
    NATIVE_WINDOW_CONCRETE_TYPE = 5,
    NATIVE_WINDOW_DEFAULT_WIDTH = 6,
    NATIVE_WINDOW_DEFAULT_HEIGHT = 7,
    NATIVE_WINDOW_TRANSFORM_HINT = 8,
    NATIVE_WINDOW_CONSUMER_RUNNING_BEHIND = 9,
    NATIVE_WINDOW_CONSUMER_USAGE_BITS = 10,
};

enum NativeWindowOperation {
    NATIVE_WINDOW_SET_USAGE = 0,
    NATIVE_WINDOW_CONNECT = 1,
    NATIVE_WINDOW_DISCONNECT = 2,
    NATIVE_WINDOW_SET_BUFFER_COUNT = 4,
    NATIVE_WINDOW_SET_BUFFERS_GEOMETRY = 5,
    NATIVE_WINDOW_SET_BUFFERS_TRANSFORM = 6,
    NATIVE_WINDOW_SET_BUFFERS_DIMENSIONS = 8,
    NATIVE_WINDOW_SET_BUFFERS_FORMAT = 9,
    NATIVE_WINDOW_API_CONNECT = 13,
    NATIVE_WINDOW_API_DISCONNECT = 14,
    NATIVE_WINDOW_SET_BUFFERS_USER_DIMENSIONS = 15,
    NATIVE_WINDOW_SET_BUFFERS_DATASPACE = 19,
};

struct android_native_base_t {
    int magic = kAndroidNativeWindowMagic;
    int version = 0;
    void* reserved[4] = {};
    void (*incRef)(android_native_base_t* base) = nullptr;
    void (*decRef)(android_native_base_t* base) = nullptr;
};

struct ANativeWindow {
    android_native_base_t common;
    uint32_t flags = 0;
    int minSwapInterval = 0;
    int maxSwapInterval = 1;
    float xdpi = 0.0f;
    float ydpi = 0.0f;
    intptr_t oem[4] = {};

    int (*setSwapInterval)(ANativeWindow* window, int interval) = nullptr;
    int (*dequeueBuffer)(ANativeWindow* window, ANativeWindowBuffer** buffer, int* fenceFd) = nullptr;
    int (*lockBuffer)(ANativeWindow* window, ANativeWindowBuffer* buffer) = nullptr;
    int (*queueBuffer)(ANativeWindow* window, ANativeWindowBuffer* buffer, int fenceFd) = nullptr;
    int (*query)(ANativeWindow* window, int what, int* value) = nullptr;
    int (*perform)(ANativeWindow* window, int operation, ...) = nullptr;
    int (*cancelBuffer)(ANativeWindow* window, ANativeWindowBuffer* buffer, int fenceFd) = nullptr;
};

struct WrappedANativeWindow {
    ANativeWindow window;
    uint32_t guard = 0x57414e57; // "WANW"
    std::atomic<int> refs{1};
    OHNativeWindow* oh = nullptr;
    int32_t width = kDefaultWidth;
    int32_t height = kDefaultHeight;
    int32_t format = kDefaultFormat;
    uint64_t usage = kDefaultUsage;
};

namespace {

using NativeWindowHandleOpt = int32_t (*)(OHNativeWindow* window, int code, ...);
NativeWindowHandleOpt g_handleOpt = nullptr;

WrappedANativeWindow* from_base(android_native_base_t* base)
{
    if (!base || base->magic != kAndroidNativeWindowMagic) {
        return nullptr;
    }
    auto* wrapped = reinterpret_cast<WrappedANativeWindow*>(
        reinterpret_cast<uint8_t*>(base) - offsetof(WrappedANativeWindow, window.common));
    return wrapped->guard == 0x57414e57 ? wrapped : nullptr;
}

WrappedANativeWindow* from_window(ANativeWindow* window)
{
    if (!window) {
        return nullptr;
    }
    return from_base(&window->common);
}

void resolve_handle_opt()
{
    if (g_handleOpt) {
        return;
    }
    void* self = dlopen("libnative_window.so", 2 /* RTLD_NOW */);
    if (!self) {
        return;
    }
    g_handleOpt = reinterpret_cast<NativeWindowHandleOpt>(
        dlsym(self, "OH_NativeWindow_NativeWindowHandleOpt"));
}

void base_inc(android_native_base_t* base)
{
    if (auto* wrapped = from_base(base)) {
        wrapped->refs.fetch_add(1, std::memory_order_relaxed);
    }
}

void base_dec(android_native_base_t* base)
{
    auto* wrapped = from_base(base);
    if (!wrapped) {
        return;
    }
    if (wrapped->refs.fetch_sub(1, std::memory_order_acq_rel) == 1) {
        delete wrapped;
    }
}

int set_swap_interval(ANativeWindow*, int)
{
    return 0;
}

int dequeue_buffer(ANativeWindow*, ANativeWindowBuffer**, int*)
{
    return -38; // ENOSYS; EGL should see the unwrapped OH NativeWindow instead.
}

int lock_buffer(ANativeWindow*, ANativeWindowBuffer*)
{
    return -38;
}

int queue_buffer(ANativeWindow*, ANativeWindowBuffer*, int)
{
    return -38;
}

int cancel_buffer(ANativeWindow*, ANativeWindowBuffer*, int)
{
    return 0;
}

int query_window(ANativeWindow* window, int what, int* value)
{
    auto* wrapped = from_window(window);
    if (!wrapped || !value) {
        return -22; // EINVAL
    }

    switch (what) {
        case NATIVE_WINDOW_WIDTH:
        case NATIVE_WINDOW_DEFAULT_WIDTH:
            *value = wrapped->width;
            return 0;
        case NATIVE_WINDOW_HEIGHT:
        case NATIVE_WINDOW_DEFAULT_HEIGHT:
            *value = wrapped->height;
            return 0;
        case NATIVE_WINDOW_FORMAT:
            *value = wrapped->format;
            return 0;
        case NATIVE_WINDOW_MIN_UNDEQUEUED_BUFFERS:
            *value = 1;
            return 0;
        case NATIVE_WINDOW_QUEUES_TO_WINDOW_COMPOSER:
            *value = 1;
            return 0;
        case NATIVE_WINDOW_CONCRETE_TYPE:
            *value = 0;
            return 0;
        case NATIVE_WINDOW_TRANSFORM_HINT:
        case NATIVE_WINDOW_CONSUMER_RUNNING_BEHIND:
            *value = 0;
            return 0;
        case NATIVE_WINDOW_CONSUMER_USAGE_BITS:
            *value = static_cast<int>(wrapped->usage & 0xffffffffu);
            return 0;
        default:
            return -22;
    }
}

void apply_oh_format_usage(WrappedANativeWindow* wrapped)
{
    if (!wrapped || !wrapped->oh) {
        return;
    }
    resolve_handle_opt();
    if (!g_handleOpt) {
        return;
    }
    g_handleOpt(wrapped->oh, 3 /* SET_FORMAT */, wrapped->format);
    g_handleOpt(wrapped->oh, 5 /* SET_USAGE */, wrapped->usage);
}

int perform_window(ANativeWindow* window, int operation, ...)
{
    auto* wrapped = from_window(window);
    if (!wrapped) {
        return -22;
    }

    va_list ap;
    va_start(ap, operation);
    switch (operation) {
        case NATIVE_WINDOW_SET_USAGE:
            wrapped->usage = static_cast<uint64_t>(va_arg(ap, uint64_t));
            apply_oh_format_usage(wrapped);
            break;
        case NATIVE_WINDOW_SET_BUFFERS_GEOMETRY: {
            int width = va_arg(ap, int);
            int height = va_arg(ap, int);
            int format = va_arg(ap, int);
            if (width > 0) wrapped->width = width;
            if (height > 0) wrapped->height = height;
            if (format > 0) wrapped->format = format;
            apply_oh_format_usage(wrapped);
            break;
        }
        case NATIVE_WINDOW_SET_BUFFERS_DIMENSIONS:
        case NATIVE_WINDOW_SET_BUFFERS_USER_DIMENSIONS: {
            int width = va_arg(ap, int);
            int height = va_arg(ap, int);
            if (width > 0) wrapped->width = width;
            if (height > 0) wrapped->height = height;
            break;
        }
        case NATIVE_WINDOW_SET_BUFFERS_FORMAT: {
            int format = va_arg(ap, int);
            if (format > 0) wrapped->format = format;
            apply_oh_format_usage(wrapped);
            break;
        }
        case NATIVE_WINDOW_CONNECT:
        case NATIVE_WINDOW_DISCONNECT:
        case NATIVE_WINDOW_SET_BUFFER_COUNT:
        case NATIVE_WINDOW_SET_BUFFERS_TRANSFORM:
        case NATIVE_WINDOW_API_CONNECT:
        case NATIVE_WINDOW_API_DISCONNECT:
        case NATIVE_WINDOW_SET_BUFFERS_DATASPACE:
            break;
        default:
            va_end(ap);
            return -38;
    }
    va_end(ap);
    return 0;
}

} // namespace

extern "C" __attribute__((visibility("default")))
ANativeWindow* oh_anw_wrap(OHNativeWindow* oh)
{
    if (!oh) {
        return nullptr;
    }
    auto* wrapped = new WrappedANativeWindow();
    wrapped->window.common.version = sizeof(ANativeWindow);
    wrapped->window.common.incRef = base_inc;
    wrapped->window.common.decRef = base_dec;
    wrapped->window.setSwapInterval = set_swap_interval;
    wrapped->window.dequeueBuffer = dequeue_buffer;
    wrapped->window.lockBuffer = lock_buffer;
    wrapped->window.queueBuffer = queue_buffer;
    wrapped->window.query = query_window;
    wrapped->window.perform = perform_window;
    wrapped->window.cancelBuffer = cancel_buffer;
    wrapped->oh = oh;
    apply_oh_format_usage(wrapped);
    __android_log_print(ANDROID_LOG_INFO, "OH_ANWShim",
                        "oh_anw_wrap aosp=%p oh=%p", &wrapped->window, oh);
    return &wrapped->window;
}

extern "C" __attribute__((visibility("default")))
void* oh_anw_get_oh(void* aosp)
{
    auto* wrapped = from_window(reinterpret_cast<ANativeWindow*>(aosp));
    return wrapped ? reinterpret_cast<void*>(wrapped->oh) : nullptr;
}
