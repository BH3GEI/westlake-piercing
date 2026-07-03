// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_anativewindow_shim.cpp@201.html
// title: p1612 framework/window/jni/oh_anativewindow_shim.cpp:201

  189:                const char* tag, const char* fmt, ...);
  190: }  // extern "C"
  191:  
  192: #define ALOGI(...) HiLogPrint(3, 4, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
  193: #define ALOGW(...) HiLogPrint(3, 5, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
  194: #define ALOGE(...) HiLogPrint(3, 6, 0xD000F00u, "OH_AnwShim", __VA_ARGS__)
  195:  
  196: namespace {
  197:  
  198: constexpr uint32_t kAdapterAnwMagic    = 0x414E5731u; /* 'ANW1' */
  199: constexpr uint32_t kAdapterAnwBufMagic = 0x414E4231u; /* 'ANB1' */
  200:  
  201: struct AdapterAnwBuffer {
  202:     struct ANativeWindowBuffer aosp;       // AOSP ABI face ??must be first
  203:     OHNativeWindowBuffer*      oh;          // OH side handle
  204:     uint32_t                   magic;
  205: };
  206:  
  207: // adapter ANativeWindow bound to an OH window
  208: struct AdapterAnw {
  209:     struct ANativeWindow aosp;              // AOSP ABI face ??must be first
  210:     OHNativeWindow*      oh;                 // OH side handle
  211:     uint32_t             magic;
  212:     std::atomic<int32_t> refCount;          // android_native_base_t refcount
  213:     std::mutex                                 bufCacheLock;
