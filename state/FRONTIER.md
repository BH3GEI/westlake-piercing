**更新**：2026-07-11 · W-001 · Trace 双类根因确认 · 主号

## 墙 #43 · 卡 W-001

- **判据 1/3 已达成**：`nativeW001Append` 从 `ILL` 改 `VLL`(void+两引用,可派发),`interpreter.cc:1189` 不再拒;framework-res 经四参 `nativeSetApkAssets(...ZZ)V` 真进 AssetManager → `nativeSet=ok ck=2` ×5(5583 实测)。
- **当前硬墙(定性到底)**：`new Resources(am,dm,cfg)` 抛 `UnsatisfiedLinkError: No implementation found for boolean android.os.Trace.nativeIsTagEnabled(long)`。A/B 两腿停在 `step=res`,判据 2(`wabAttr=0x7f040691`)/3(`uamHasWab=true`)未求值。
- **根因 = boot 级双 `android.os.Trace` mirror::Class**(observed,非推测):
  - `nativeW001BindTrace` 实测 `boot=0 amldr=m2 res=m2 same=m1`。
  - FindClass 的 Trace 绑成功也没用;`Resources` 自身 loader 非 null 却 `loadClass("android.os.Trace")` 抛 CNFE;`am`/`AssetManager` boot-defined(loader null)。
  - `ResourcesImpl.<init>` 对 Trace 的引用由框架 dex `ClassLinker::ResolveType` 解析,得到的类**用任何 JNI 句柄都够不到** → RegisterNatives-by-handle 结构性失效。
  - 佐证:core-libart.jar 经 boot image + tolerant-jar 双载(workflow L5196/L6998)。
- **证据**:`evidence/W-001/2026-07-11-trace-dualclass-confirmed.txt`(+ `2026-07-10-vll-trampoline-advance.txt`)。

## 下一步(需顾问 + 用户授权:三条都碰 ART 内部/forbidden 区)

1. **路 A**:让 ART 自动 JNI-link 命中 sidecar 导出的 `Java_android_os_Trace_*` —— 把 sidecar 以 **null-classloader 系统库**注册,使 `Libraries::FindNativeMethod` 对 boot-loader 的 Trace 命中。最小侵入,优先验证。
2. **路 B**:从源头消除双 Trace —— 阻止 core-libart.jar 经 tolerant-jar 二次加载,改 `local-build-adapters/art-latest` 嵌入运行时装配(不碰 stock framework jar)。治本,也会顺带解 #50/#51/#4 clinit 同类陷阱。
3. **路 C**:钩到 dex-resolved Trace 句柄再 RegisterNatives(标准 JNI 不可达,需运行时钩子)。最后手段。
- 只有匹配本地 artifact + `nativeSet=ok` + `wabAttr=0x7f040691` + `uamHasWab=true` 才跃迁 #43。LEDGER #43 维持 🔧。

## 跨 lane 提醒
凡 imageless-ART 早期走 `new Resources()` / 框架类 clinit 的墙(#50/#51/#4),都可能撞同一双类陷阱;native 桩表须绑「目标类自身被解释器解析的那个类」,FindClass 的句柄不够。
