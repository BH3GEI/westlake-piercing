 
// Sentinels (0xCAFE5C0X) live in BSS/RDATA of liboh_android_runtime.so as
// `static int sSentinelStorage = 0xCAFE5C0X;`. A Java Surface whose
// mNativeObject points at one of these has no real BBQ-bound buffer.
// Detect by reading the first 4 bytes ??sentinel storage holds the magic
// value, while a real OHNativeWindow's first word is its vtable / RefBase.
static inline bool is_sentinel_handle(jlong h) {
    if (h == 0) return true;
    int32_t magic = *reinterpret_cast<int32_t*>(h);
    return (magic & 0xFFFFFFF0) == 0xCAFE5C00;
}
 
extern "C" ANativeWindow* ANativeWindow_fromSurface(JNIEnv* env, jobject surface) {
    NWFS_INFO("[STAGE0] ENTER env=%{public}p surface=%{public}p",
              (void*)env, (void*)surface);
    if (!env || !surface) {
        NWFS_WARN("[STAGE0] null arg -> null");
        return nullptr;
    }
    jclass cls = env->FindClass("android/view/Surface");
    if (!cls) { env->ExceptionClear();
        NWFS_WARN("[STAGE0] FindClass failed -> null"); return nullptr; }
    jfieldID fid = env->GetFieldID(cls, "mNativeObject", "J");
    env->DeleteLocalRef(cls);
    if (!fid) { env->ExceptionClear();
