**更新**：2026-07-11 · W-001 · Trace 根因订正(旧“双类”结论已证伪) · 主号

## 墙 #43 · 卡 W-001

- **判据 1/3 已达成**：`nativeW001Append` 从 `ILL` 改 `VLL`(可派发);framework-res 经四参 `nativeSetApkAssets(...ZZ)V` 真进 AssetManager → `nativeSet=ok ck=2` ×5(5583 实测)。
- **当前硬墙**：`new Resources(am,dm,cfg)` 抛 `UnsatisfiedLinkError: No implementation found for boolean android.os.Trace.nativeIsTagEnabled(long)`。A/B 两腿停在 `step=res`,判据 2/3 未求值。
- **根因订正(observed,取代旧“boot 级双 Trace class”)**：详见 `evidence/W-001/2026-07-11-trace-rootcause-corrected.txt`。
  1. **无 boot image**：launcher 从不设 `WESTLAKE_BOOT_IMAGE`,板上日志无 `-Ximage` → 旧“boot image+tolerant-jar 双载”前提为假,双类结论撤回。
  2. **RegisterNatives 对 boot 类不生效**:实测 `bcall=1`——在 FindClass Trace 上 RegisterNatives rc=0(成功)后,立刻调 `nativeIsTagEnabled(0)` 仍 ULE;force-init+重注册后 `bcall2=1` 仍 ULE。而我们自己 app 类的 `nativeW001Append` 经 RegisterNatives 能派发。→ 差别在 boot/framework 类。
  3. **ART 自身 dlopen/dlsym 是静态死存根**:sidecar 用导出的 `JavaVMExt::LoadNativeLibrary` 注册失败,error=`Dynamic loading not supported (static build)`。→ libraries_ 自动 JNI-link 路永远命不中 sidecar 的 `Java_android_os_Trace_*`。
  4. `interpreter.cc:2314` 有正确 `ZJ` 分支,但 `GetEntryPointFromJni()` 拿到的是 dlsym 存根(XmlBlock 邻近分支注释印证),故 ZJ 分支里一调就 ULE。
- **净墙**:Trace.nativeIsTagEnabled 的实现无法被 ART 任何运行时解析路命中。

## 下一步(三条互斥,均非“双类绑句柄”)

- **P1 substrate(非 forbidden,可自主做)**:android.os.Trace 是我们的 framework 衬底(非 stock APK)。把 isTagEnabled/traceBegin 做成纯 Java no-op,或在 bootclasspath 更靠前处覆盖 Trace,彻底不走 native。需重打/覆盖 framework dex,处理其他 Trace 使用者。**待用户在 P1/P2 间定向**。
- **P2 ART 内部(forbidden:class_linker,需顾问+用户授权)**:用导出的 `ClassLinker::RegisterNative(Thread*,ArtMethod*,const void*)`(符号在)直接给目标 ArtMethod 设 entry_point_from_jni_ = 我们的 fn,绕过 boot 类 RegisterNatives 失效。可能是最省的定点修法。
- **P3 重建 ART(治本,暂 blocked)**:yao 账号无 AOSP-15 ART tree/OHOS SDK。
- 只有匹配本地 artifact + `nativeSet=ok` + `wabAttr=0x7f040691` + `uamHasWab=true` 才跃迁 #43。LEDGER #43 维持 🔧。

## 跨 lane 提醒(已更新)
凡 imageless-ART 早期在 **framework/boot 类**上依赖 native 的墙(#50/#51/#4 及任何走 Trace/框架 native 的),都会撞“RegisterNatives 对 boot 类不生效 + ART dlopen 死存根”这堵墙——**不是双类**。桩要么改 Java 侧(P1),要么用 ClassLinker::RegisterNative 直绑 ArtMethod(P2,forbidden)。
