// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__src__appspawnx_runtime.cpp@671.html
// title: p1612 framework/appspawn-x/src/appspawnx_runtime.cpp:671

  659:         }
  660:     }
  661:     return 0;
  662: }
  663:  
  664: // ---------------------------------------------------------------------------
  665: // loadClassViaPath ??find a class by binary name using the cached
  666: // PathClassLoader (so classes in oh-adapter-runtime.jar resolve correctly
  667: // in both parent and child processes).  Falls back to env->FindClass if
  668: // the PathClassLoader path was not set up (e.g. jar missing at startup).
  669: // Returns a local ref the caller owns; null + cleared exception on failure.
  670: // ---------------------------------------------------------------------------
  671: jclass AppSpawnXRuntime::loadClassViaPath(JNIEnv* env, const char* binaryName) {
  672:     if (!env || !binaryName) return nullptr;
  673:  
  674:     if (pathClassLoader_ && classLoaderLoadClass_) {
  675:         jstring jBin = env->NewStringUTF(binaryName);
  676:         jobject classObj = env->CallObjectMethod(
  677:             pathClassLoader_, classLoaderLoadClass_, jBin);
  678:         if (env->ExceptionCheck()) {
  679:             LOGW("PathClassLoader.loadClass('%s') threw:", binaryName);
  680:             env->ExceptionDescribe();
  681:             env->ExceptionClear();
  682:             env->DeleteLocalRef(jBin);
  683:             return nullptr;
