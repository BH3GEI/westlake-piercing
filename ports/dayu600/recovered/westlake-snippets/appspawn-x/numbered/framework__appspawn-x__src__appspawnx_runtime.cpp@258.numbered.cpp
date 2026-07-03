// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__src__appspawnx_runtime.cpp@258.html
// title: p1612 framework/appspawn-x/src/appspawnx_runtime.cpp:258
// summary: AppSpawnXRuntime::registerNativeMethods</span><br><span>?????? liboh_android_runtime ??AndroidRuntime::startReg?????????????????? Binder/Parcel/Log/AssetM

  246:     if (ret != 0) {
  247:         LOGE("cacheJavaReferences failed, ret=%d", ret);
  248:         return ret;
  249:     }
  250:  
  251:     LOGI("ART VM initialization complete");
  252:     return 0;
  253: }
  254:  
  255: // ---------------------------------------------------------------------------
  256: // registerNativeMethods  ?? link framework JNI methods into the VM
  257: // ---------------------------------------------------------------------------
  258: int AppSpawnXRuntime::registerNativeMethods() {
  259:     LOGI("Registering framework JNI native methods");
  260:  
  261:     // Progressive-replacement strategy: load liboh_android_runtime.so ??/td></tr><tr><td class=ln>262</td><td class=cd>    // OH-Adapter's minimal JNI dispatcher ??instead of the full AOSP
  263:     // libandroid_runtime.so. Stage 1 registers only android.util.Log; later
  264:     // stages add resources / Surface / Canvas / Binder as UI paths exercise
  265:     // them. Exported entry point keeps the AOSP mangled signature
  266:     //   android::AndroidRuntime::startReg(JNIEnv*)
  267:     //   (_ZN7android14AndroidRuntime8startRegEP7_JNIEnv)
  268:     // so the existing dlsym call site keeps working.
  269:     void* libRuntime = dlopen("liboh_android_runtime.so", RTLD_NOW);
  270:     if (!libRuntime) {
