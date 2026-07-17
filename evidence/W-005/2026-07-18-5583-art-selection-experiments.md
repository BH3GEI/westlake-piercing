# W-005 · 2026-07-17/18 · ART 选型实验：adeb764f 解析崩溃出局，w001-build 331568b2 接管评估

**承接**: `2026-07-17-5583-hap-pipeline-booted-two-walls.md`（管线全通至 record()）。

## 实验链（全部 5583 实测）

1. **libhwui c9ed61d0 ↔ A14 framework(3e106350) 失配根解**：逐表解析 libhwui JNI 注册表（RELA 反解），
   对照两版 framework dex 的 native 声明（自写最小 dex 解析器）。A14 缺的恰为 libhwui 要注册的：
   Canvas×2（nClipShader、nIsHighContrastText）+ Paint×5（nGetRunCharacterAdvance、nGetFontMetrics(Z)、
   nGetFontMetricsInt(Z)、nGetElegantTextHeight、nSetElegantTextHeight）。
2. **libhwui 二进制补丁（7 槽）**：把 7 个失配表项整体改写为 `nGetNativeFinalizer/()J`（同名重复注册，
   无害），得 `libhwui-a14compat.so bb233058`。**subset 注册全过：`selective hwui total bound=302 skipped=6`**。
3. **adeb764f（noice 系 ART）出局**：注册过后在 `new RenderNode`/字段解析处必崩——`DexFile::
   FindTypeId`/`ClassLinker::DoResolveType`/`NterpGetInstanceFieldOffset` SIGSEGV，fault 地址恒呈
   `0x0001007e…` 打包形态（疑 dex 归属错乱）。换 dex（自打/noice 原件）、换加载方式（DexClassLoader→
   bcp 内置 TriangleView）均同崩。**结论：该 build 与 record() 所需的类创建流不兼容**（noice 自家 boot
   也从未越过此点——它先死在 Canvas register）。
4. **w001-build `331568b2`（28MB，W-001 时代 westlake ART）换入**：解析崩溃消失，流程进入 Java 层
   可捕捉错误：`runTriangleApk` 起步即 `NPE: String.length() on null`（已排掉 DexClassLoader
   librarySearchPath=null 嫌疑）。**下一疑点 = env 传播或 odex 路径**（该 build 的 System.getenv /
   DexClassLoader odex 处理与 noice 系不同）。
5. **ART 源码重建暂不可行**：编译机 aosp-art-15/aosp-android-11 均残缺（8.9M/1.3M 审计子集），
   w003-art-bundle.tgz 也是增量包；AOSP 全量树只有原 WSL 机有过。relink 配方
   （art-build-recipes/…/relink-arm64-libwestlake-art-ohos.sh）已就位编译机，**缺树**。

## 中间状态 / 待办

- 板上运行组合（当前装着的）：art `331568b2` + libhwui-a14compat `bb233058` + framework A14 `3e106350`
  + 自打 dex（noice 源 + nonce + hwuiSubset + stepMark + 顶帧）。**卡点：runTriangleApk 起步 NPE**
  （env/odex 路径，下一刀位置明确）。
- 备选 ART 候评：w001 `331568b2`（当前）vs 重建 dc1d5e82 级（缺 AOSP 树）。
- 2026-07-18 04:0x **5583 掉线**（崩溃连击→USB daemon 死，老毛病），board-recover 已 bark 等回插。

## 工具沉淀（可复用）

- dex native 方法表解析器（/tmp/dexnatives.py 思路：uleb128 + class_data walk）
- libhwui JNI 表 RELA 反解 + 表项改写脚本（canvas/paint 65+85 项）
- stepMark 逐步落盘法（SIGSEGV 前最后标记即崩溃窗口；本次把崩溃窗从「全程」压到 alloc↔subset 之间）
