// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__package-manager__jni__apk_installer.cpp@560.html
// title: p1612 framework/package-manager/jni/apk_installer.cpp:560
// summary: ApkInstaller::CreateDataDirs</span><br><span>??Android ?????? cache/code_cache/databases/files ??????????? chmod/chown ?????uid/gid??????????????? 

  548:     int status;
  549:     waitpid(pid, &status, 0);
  550:  
  551:     if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
  552:         LOGI("RunDexOpt: success");
  553:         return true;
  554:     }
  555:  
  556:     LOGE("RunDexOpt: dex2oat exited with status %{public}d", WEXITSTATUS(status));
  557:     return false;
  558: }
  559:  
  560: bool ApkInstaller::CreateDataDirs(const std::string& packageName,
  561:                                    int32_t uid, int32_t gid) {
  562:     std::string baseDir = std::string(ANDROID_DATA_DIR) + "/" + packageName;
  563:  
  564:     // Android-style subdirectories
  565:     const std::vector<std::pair<std::string, mode_t>> dirs = {
  566:         {"",              0771},
  567:         {"/cache",        0771},
  568:         {"/code_cache",   0771},
  569:         {"/databases",    0771},
  570:         {"/files",        0771},
  571:         {"/shared_prefs", 0771},
  572:         {"/lib",          0755},
