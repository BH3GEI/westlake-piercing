               const char* tag, const char* fmt, ...);
}  // extern "C"
 
#define ALOGI(...) HiLogPrint(3, 4, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
#define ALOGW(...) HiLogPrint(3, 5, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
#define ALOGE(...) HiLogPrint(3, 6, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
 
namespace {
 
constexpr uint32_t kAdapterAnwMagic    = 0x414E5731u; /* 'ANW1' */
constexpr uint32_t kAdapterAnwBufMagic = 0x414E4231u; /* 'ANB1' */
 
struct AdapterAnwBuffer {
    struct ANativeWindowBuffer aosp;       // AOSP ABI face ??must be first
    OHNativeWindowBuffer*      oh;          // OH side handle
    uint32_t                   magic;
};
 
// adapter ANativeWindow bound to an OH window
struct AdapterAnw {
    struct ANativeWindow aosp;              // AOSP ABI face ??must be first
    OHNativeWindow*      oh;                 // OH side handle
    uint32_t             magic;
    std::atomic<int32_t> refCount;          // android_native_base_t refcount
    std::mutex                                 bufCacheLock;
