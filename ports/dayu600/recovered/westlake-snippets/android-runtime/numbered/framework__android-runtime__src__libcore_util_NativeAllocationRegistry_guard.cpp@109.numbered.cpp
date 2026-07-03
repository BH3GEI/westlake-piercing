// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__libcore_util_NativeAllocationRegistry_guard.cpp@109.html
// title: p1612 framework/android-runtime/src/libcore_util_NativeAllocationRegistry_guard.cpp:109

   97:     auto fn = reinterpret_cast<FreeFunction>(static_cast<uintptr_t>(freeFunction));
   98:     void* nativePtr = reinterpret_cast<void*>(static_cast<uintptr_t>(ptr));
   99:     fn(nativePtr);
  100: }
  101:  
  102: const JNINativeMethod kMethods[] = {
  103:     { "applyFreeFunction", "(JJ)V",
  104:       reinterpret_cast<void*>(NAR_applyFreeFunction_guarded) },
  105: };
  106:  
  107: }  // namespace
  108:  
  109: int register_libcore_util_NativeAllocationRegistry_guard(JNIEnv* env) {
  110:     HiLogPrint(LOG_CORE, LOG_INFO, 0xD000F00u, "OH_NARGuard", "register entry");
  111:  
  112:     // PRIMARY (G2.14r 2026-05-02): adapter never calls
  113:     // System.loadLibrary("javacore"), so libjavacore.so's JNI_OnLoad never
  114:     // runs and the canonical register_libcore_util_NativeAllocationRegistry
  115:     // never binds applyFreeFunction.  That's the actual root cause of the
  116:     // "removing guard => SIGSEGV pc=0" symptom ??applyFreeFunction was simply
  117:     // not bound.  Try the canonical libjavacore register first; it correctly
  118:     // binds applyFreeFunction (and the rest of NAR's natives) without our
  119:     // skip-on-null override.  Fall back to the defensive adapter guard only
  120:     // if libjavacore is unavailable.
  121:     void* libjc = dlopen("libjavacore.so", RTLD_NOW | RTLD_NOLOAD);
