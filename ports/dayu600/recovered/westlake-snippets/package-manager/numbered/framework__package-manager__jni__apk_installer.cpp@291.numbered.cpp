// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__package-manager__jni__apk_installer.cpp@291.html
// title: 16.12 framework/package-manager/jni/apk_installer.cpp:291

  279:                 ok = false;
  280:             }
  281:             unzCloseCurrentFile(src);
  282:         }
  283:     }
  284:     zipCloseFileInZip(dst);
  285:     (void)info;  // info unused for now; reserved for future mtime preservation
  286:     return ok;
  287: }
  288:  
  289: }  // anonymous namespace
  290:  
  291: bool ApkInstaller::ExtractAndPackResourceHap(const std::string& srcApkPath,
  292:                                              const std::string& outHapPath) {
  293:     LOGI("ExtractAndPackResourceHap: apk=%{public}s out=%{public}s",
  294:          srcApkPath.c_str(), outHapPath.c_str());
  295:  
  296:     std::vector<uint8_t> apkIconBytes;
  297:     if (!ReadApkLauncherIcon(srcApkPath, apkIconBytes)) {
  298:         LOGW("ExtractAndPackResourceHap: APK has no recognizable launcher icon, "
  299:              "synthesized HAP will use template's placeholder icon");
  300:         // Continue anyway ??at least the resources.index structure is valid.
  301:     }
  302:  
  303:     // 1. Write embedded template HAP to a temp file so minizip can read it.
