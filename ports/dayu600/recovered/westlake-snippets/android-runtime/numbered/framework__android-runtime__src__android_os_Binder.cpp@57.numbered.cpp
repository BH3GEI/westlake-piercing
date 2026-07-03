// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_os_Binder.cpp@57.html
// title: p1612 framework/android-runtime/src/android_os_Binder.cpp:57

   45:  
   46: #include <jni.h>
   47: #include <stdint.h>
   48: #include <stdlib.h>
   49: #include <string.h>
   50: #include <unistd.h>
   51: #include <sys/types.h>
   52:  
   53: namespace android {
   54:  
   55: namespace {
   56:  
   57: // Real free function for NativeAllocationRegistry. Each call to
   58: // getNativeBBinderHolder returns a fresh malloc'd 8-byte chunk so each Binder
   59: // instance has its own unique nativePtr (NativeAllocationRegistry would
   60: // otherwise confuse them as a single allocation). The finalizer must therefore
   61: // free the same pointer when GC reclaims the Java Binder. AOSP's real
   62: // JavaBBinderHolder is heavier (refcount + IBinder backref); for stub purposes
   63: // 8 bytes is enough to be a valid heap object.
   64: extern "C" void B_noop_free(void* ptr) {
   65:     if (ptr) free(ptr);
   66: }
   67:  
   68: // ---- Binder.* (@CriticalNative) --------------------------------------------
   69: jlong B_getNativeBBinderHolder()                          {
