// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_graphics_compat_shim.cpp@830.html
// title: p1612 framework/android-runtime/src/android_graphics_compat_shim.cpp:830

  818:  
  819: // Sentinels (0xCAFE5C0X) live in BSS/RDATA of liboh_android_runtime.so as
  820: // `static int sSentinelStorage = 0xCAFE5C0X;`. A Java Surface whose
  821: // mNativeObject points at one of these has no real BBQ-bound buffer.
  822: // Detect by reading the first 4 bytes ??sentinel storage holds the magic
  823: // value, while a real OHNativeWindow's first word is its vtable / RefBase.
  824: static inline bool is_sentinel_handle(jlong h) {
  825:     if (h == 0) return true;
  826:     int32_t magic = *reinterpret_cast<int32_t*>(h);
  827:     return (magic & 0xFFFFFFF0) == 0xCAFE5C00;
  828: }
  829:  
  830: extern "C" ANativeWindow* ANativeWindow_fromSurface(JNIEnv* env, jobject surface) {
  831:     NWFS_INFO("[STAGE0] ENTER env=%{public}p surface=%{public}p",
  832:               (void*)env, (void*)surface);
  833:     if (!env || !surface) {
  834:         NWFS_WARN("[STAGE0] null arg -> null");
  835:         return nullptr;
  836:     }
  837:     jclass cls = env->FindClass("android/view/Surface");
  838:     if (!cls) { env->ExceptionClear();
  839:         NWFS_WARN("[STAGE0] FindClass failed -> null"); return nullptr; }
  840:     jfieldID fid = env->GetFieldID(cls, "mNativeObject", "J");
  841:     env->DeleteLocalRef(cls);
  842:     if (!fid) { env->ExceptionClear();
