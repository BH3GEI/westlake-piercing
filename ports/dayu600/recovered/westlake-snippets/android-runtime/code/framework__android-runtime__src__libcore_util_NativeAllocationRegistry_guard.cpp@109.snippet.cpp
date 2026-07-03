    auto fn = reinterpret_cast<FreeFunction>(static_cast<uintptr_t>(freeFunction));
    void* nativePtr = reinterpret_cast<void*>(static_cast<uintptr_t>(ptr));
    fn(nativePtr);
}
 
const JNINativeMethod kMethods[] = {
    { "applyFreeFunction", "(JJ)V",
      reinterpret_cast<void*>(NAR_applyFreeFunction_guarded) },
};
 
}  // namespace
 
int register_libcore_util_NativeAllocationRegistry_guard(JNIEnv* env) {
    HiLogPrint(LOG_CORE, LOG_INFO, 0xD000F00u, "OH_NARGuard", "register entry");
 
    // PRIMARY (G2.14r 2026-05-02): adapter never calls
    // System.loadLibrary("javacore"), so libjavacore.so's JNI_OnLoad never
    // runs and the canonical register_libcore_util_NativeAllocationRegistry
    // never binds applyFreeFunction.  That's the actual root cause of the
    // "removing guard => SIGSEGV pc=0" symptom ??applyFreeFunction was simply
    // not bound.  Try the canonical libjavacore register first; it correctly
    // binds applyFreeFunction (and the rest of NAR's natives) without our
    // skip-on-null override.  Fall back to the defensive adapter guard only
    // if libjavacore is unavailable.
    void* libjc = dlopen("libjavacore.so", RTLD_NOW | RTLD_NOLOAD);
