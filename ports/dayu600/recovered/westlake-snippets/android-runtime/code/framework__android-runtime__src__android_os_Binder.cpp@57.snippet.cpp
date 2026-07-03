 
#include <jni.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
 
namespace android {
 
namespace {
 
// Real free function for NativeAllocationRegistry. Each call to
// getNativeBBinderHolder returns a fresh malloc'd 8-byte chunk so each Binder
// instance has its own unique nativePtr (NativeAllocationRegistry would
// otherwise confuse them as a single allocation). The finalizer must therefore
// free the same pointer when GC reclaims the Java Binder. AOSP's real
// JavaBBinderHolder is heavier (refcount + IBinder backref); for stub purposes
// 8 bytes is enough to be a valid heap object.
extern "C" void B_noop_free(void* ptr) {
    if (ptr) free(ptr);
}
 
// ---- Binder.* (@CriticalNative) --------------------------------------------
jlong B_getNativeBBinderHolder()                          {
