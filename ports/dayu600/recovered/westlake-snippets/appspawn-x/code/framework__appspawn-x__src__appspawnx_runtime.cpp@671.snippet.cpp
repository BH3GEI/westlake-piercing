        }
    }
    return 0;
}
 
// ---------------------------------------------------------------------------
// loadClassViaPath ??find a class by binary name using the cached
// PathClassLoader (so classes in oh-adapter-runtime.jar resolve correctly
// in both parent and child processes).  Falls back to env->FindClass if
// the PathClassLoader path was not set up (e.g. jar missing at startup).
// Returns a local ref the caller owns; null + cleared exception on failure.
// ---------------------------------------------------------------------------
jclass AppSpawnXRuntime::loadClassViaPath(JNIEnv* env, const char* binaryName) {
    if (!env || !binaryName) return nullptr;
 
    if (pathClassLoader_ && classLoaderLoadClass_) {
        jstring jBin = env->NewStringUTF(binaryName);
        jobject classObj = env->CallObjectMethod(
            pathClassLoader_, classLoaderLoadClass_, jBin);
        if (env->ExceptionCheck()) {
            LOGW("PathClassLoader.loadClass('%s') threw:", binaryName);
            env->ExceptionDescribe();
            env->ExceptionClear();
            env->DeleteLocalRef(jBin);
            return nullptr;
