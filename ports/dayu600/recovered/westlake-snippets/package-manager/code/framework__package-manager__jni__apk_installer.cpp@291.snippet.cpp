                ok = false;
            }
            unzCloseCurrentFile(src);
        }
    }
    zipCloseFileInZip(dst);
    (void)info;  // info unused for now; reserved for future mtime preservation
    return ok;
}
 
}  // anonymous namespace
 
bool ApkInstaller::ExtractAndPackResourceHap(const std::string& srcApkPath,
                                             const std::string& outHapPath) {
    LOGI("ExtractAndPackResourceHap: apk=%{public}s out=%{public}s",
         srcApkPath.c_str(), outHapPath.c_str());
 
    std::vector<uint8_t> apkIconBytes;
    if (!ReadApkLauncherIcon(srcApkPath, apkIconBytes)) {
        LOGW("ExtractAndPackResourceHap: APK has no recognizable launcher icon, "
             "synthesized HAP will use template's placeholder icon");
        // Continue anyway ??at least the resources.index structure is valid.
    }
 
    // 1. Write embedded template HAP to a temp file so minizip can read it.
