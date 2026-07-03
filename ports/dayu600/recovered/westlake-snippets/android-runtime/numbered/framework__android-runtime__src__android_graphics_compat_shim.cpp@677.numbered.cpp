// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_graphics_compat_shim.cpp@677.html
// title: p1612 framework/android-runtime/src/android_graphics_compat_shim.cpp:677

  665:     { "nativeDispose", "(J)V",
  666:       reinterpret_cast<void*>(DER_nativeDispose) },
  667:     { "nativeScheduleVsync", "(J)V",
  668:       reinterpret_cast<void*>(DER_nativeScheduleVsync) },
  669:     { "nativeGetLatestVsyncEventData",
  670:       "(J)Landroid/view/DisplayEventReceiver$VsyncEventData;",
  671:       reinterpret_cast<void*>(DER_nativeGetLatestVsyncEventData) },
  672: };
  673:  
  674: // =====================================================================
  675: // Helper: register one method-array, method-by-method, tolerate failures
  676: // =====================================================================
  677: int registerOne(JNIEnv* env, const char* className,
  678:                 const JNINativeMethod* methods, size_t count) {
  679:     jclass clazz = env->FindClass(className);
  680:     if (!clazz) {
  681:         ALOGW("FindClass(%s) failed ??class not in BCP yet?", className);
  682:         if (env->ExceptionCheck()) env->ExceptionClear();
  683:         return -1;
  684:     }
  685:     int ok = 0, fail = 0;
  686:     for (size_t i = 0; i < count; ++i) {
  687:         jint rc = env->RegisterNatives(clazz, &methods[i], 1);
  688:         if (rc == JNI_OK) {
  689:             ++ok;
