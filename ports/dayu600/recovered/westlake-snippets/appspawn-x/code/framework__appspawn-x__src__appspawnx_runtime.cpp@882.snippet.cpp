        LOGE("[ZYG] ZygoteHooks.postForkCommon() threw");
        env_->ExceptionDescribe();
        env_->ExceptionClear();
        return -1;
    }
    LOGI("[ZYG] <<< ZygoteHooks.postForkCommon() OK");
    return 0;
}
 
// ---------------------------------------------------------------------------
// Dedicated VM-worker pthread
// ---------------------------------------------------------------------------
struct AppSpawnXRuntime::WorkerState {
    AppSpawnXRuntime* rt;
    pthread_t tid;
    pthread_mutex_t mu;
    pthread_cond_t  cv;
    bool ready;
    int  rc;
};
 
static void* vmWorkerEntry(void* arg) {
    auto* ws = static_cast<AppSpawnXRuntime::WorkerState*>(arg);
    // Probe actual stack size (informational)
    pthread_attr_t attr;
