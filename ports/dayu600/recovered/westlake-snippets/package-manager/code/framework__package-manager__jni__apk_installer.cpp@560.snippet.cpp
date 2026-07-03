    int status;
    waitpid(pid, &status, 0);
 
    if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
        LOGI("RunDexOpt: success");
        return true;
    }
 
    LOGE("RunDexOpt: dex2oat exited with status %{public}d", WEXITSTATUS(status));
    return false;
}
 
bool ApkInstaller::CreateDataDirs(const std::string& packageName,
                                   int32_t uid, int32_t gid) {
    std::string baseDir = std::string(ANDROID_DATA_DIR) + "/" + packageName;
 
    // Android-style subdirectories
    const std::vector<std::pair<std::string, mode_t>> dirs = {
        {"",              0771},
        {"/cache",        0771},
        {"/code_cache",   0771},
        {"/databases",    0771},
        {"/files",        0771},
        {"/shared_prefs", 0771},
        {"/lib",          0755},
