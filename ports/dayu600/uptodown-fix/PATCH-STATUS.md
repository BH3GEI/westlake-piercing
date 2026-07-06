# uptodown framework.jar 补丁 (小板 A2OH WestLake 部署, framework.jar md5 1c334902)
## 崩因: 空包名 -> ActivityThread/ConfigurationController 半初始化字段 null -> W15 致命 NPE
## 补丁A: ActivityThread.collectComponentCallbacks(Z) — mResourcesManager==null 时返回空list (monitor-enter前)
## 补丁B: ConfigurationController.updateLocaleListFromAppContext — context/getResources/mResourcesManager null 时 return-void
## 下一步: smali 汇编器(smali-3.0.9)重新汇编 classes.dex -> 替回 framework.jar -> Linux VM dex2oat 重建 boot 镜像 -> 部署老板测试
## BCP顺序: core-oj:core-libart:core-icu4j:okhttp:bouncycastle:apache-xml:adapter-mainline-stubs:framework:adapter-runtime-bcp:oh-adapter-framework
## 已加防护标签: cond_wlguard_rm / cond_wlguard_ctx / cond_wlguard_res
