    if (ret != 0) {
        LOGE("cacheJavaReferences failed, ret=%d", ret);
        return ret;
    }
 
    LOGI("ART VM initialization complete");
    return 0;
}
 
// ---------------------------------------------------------------------------
// registerNativeMethods  ?? link framework JNI methods into the VM
// ---------------------------------------------------------------------------
int AppSpawnXRuntime::registerNativeMethods() {
    LOGI("Registering framework JNI native methods");
 
    // Progressive-replacement strategy: load liboh_android_runtime.so ??/td></tr><tr><td class=ln>262</td><td class=cd>    // OH-Adapter's minimal JNI dispatcher ??instead of the full AOSP
    // libandroid_runtime.so. Stage 1 registers only android.util.Log; later
    // stages add resources / Surface / Canvas / Binder as UI paths exercise
    // them. Exported entry point keeps the AOSP mangled signature
    //   android::AndroidRuntime::startReg(JNIEnv*)
    //   (_ZN7android14AndroidRuntime8startRegEP7_JNIEnv)
    // so the existing dlsym call site keeps working.
    void* libRuntime = dlopen("liboh_android_runtime.so", RTLD_NOW);
    if (!libRuntime) {
