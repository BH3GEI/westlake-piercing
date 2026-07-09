// Stub libmedia_jni.so (arm64 / OHOS-6.1 port of the 32-bit A7 GATE-3 stub).
// MediaCodec/MediaCodecList.<clinit> call loadLibrary("media_jni") then a native
// (native_init) in the SAME <clinit>; ART re-resolves that class's natives against
// THIS lib at load time, dropping the zygote RegisterNatives bindings. So we
// (re)register the adapter MediaCodec/MediaCodecList shim natives here via the bridge.
//
// 64-bit deploy path: /system/lib64 + /system/android/lib64 (was /system/lib +
// /system/android/lib on 32-bit).
//
// dlopen search order (first hit wins), always dlsym("register_MediaCodec_shim"):
//   1. liboh_mediacodec_shim.so   -- standalone audio shim on OUR 64-bit board
//                                    (RTLD_NOLOAD probe first, then a real NOW load)
//   2. liboh_adapter_bridge.so    -- legacy combined bridge, if present
//   3. /system/lib64/liboh_mediacodec_shim.so -- absolute fallback
#include <jni.h>
#include <dlfcn.h>

jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    JNIEnv* env = 0;
    if ((*vm)->GetEnv(vm, (void**)&env, JNI_VERSION_1_6) != JNI_OK || !env)
        return JNI_VERSION_1_6;

    // 1. standalone mediacodec shim: reuse if already mapped, else load now.
    void* h = dlopen("liboh_mediacodec_shim.so", RTLD_NOW | RTLD_NOLOAD);
    if (!h) h = dlopen("liboh_mediacodec_shim.so", RTLD_NOW);
    // 2. legacy combined adapter bridge.
    if (!h) h = dlopen("liboh_adapter_bridge.so", RTLD_NOW);
    // 3. absolute 64-bit fallback path.
    if (!h) h = dlopen("/system/lib64/liboh_mediacodec_shim.so", RTLD_NOW);

    if (h) {
        int (*reg)(JNIEnv*) = (int(*)(JNIEnv*))dlsym(h, "register_MediaCodec_shim");
        if (reg) reg(env);
    }
    return JNI_VERSION_1_6;
}
