    { "nativeDispose", "(J)V",
      reinterpret_cast<void*>(DER_nativeDispose) },
    { "nativeScheduleVsync", "(J)V",
      reinterpret_cast<void*>(DER_nativeScheduleVsync) },
    { "nativeGetLatestVsyncEventData",
      "(J)Landroid/view/DisplayEventReceiver$VsyncEventData;",
      reinterpret_cast<void*>(DER_nativeGetLatestVsyncEventData) },
};
 
// =====================================================================
// Helper: register one method-array, method-by-method, tolerate failures
// =====================================================================
int registerOne(JNIEnv* env, const char* className,
                const JNINativeMethod* methods, size_t count) {
    jclass clazz = env->FindClass(className);
    if (!clazz) {
        ALOGW("FindClass(%s) failed ??class not in BCP yet?", className);
        if (env->ExceptionCheck()) env->ExceptionClear();
        return -1;
    }
    int ok = 0, fail = 0;
    for (size_t i = 0; i < count; ++i) {
        jint rc = env->RegisterNatives(clazz, &methods[i], 1);
        if (rc == JNI_OK) {
            ++ok;
