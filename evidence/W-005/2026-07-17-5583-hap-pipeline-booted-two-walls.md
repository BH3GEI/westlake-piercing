# W-005 · 2026-07-17 · installed-HAP fresh-frame: pipeline fully booted on 5583, two candidate pairings each one wall short

**板**: `5583f5be…0323012c` (big-clean, UDID `3F740326…60E9`)。**载体**: `com.westlake.artboot` HAP (headless pack, `artboot/pack-hap.sh`)。

## 已打通（逐项实测,全部板上复核）

1. headless（无 hvigor）打包链：restool + run-rollup.js(ets→abc) + app_packing_tool + hap-sign-tool 自对齐，全链 Mac 本机出签名 HAP（`pack-hap.sh`）。
2. 装机/启动/解包：HAP 装上 5583 → `aa start` → rawfile 16 件解包到 filesDir/substrate → env 布齐 → per-launch nonce 铸出（`WL<epoch_ms>-<pid>` + 紫红派生色）。
3. **libwlweld 焊接生效**：ArkUI `OnSurfaceCreated` 把 XComponent `OHNativeWindow` 交给 libwlweld（hilog `WELD set_window`），拦截器就位。
4. **embedded ART VM 在 HAP 沙盒内起来**（`embedded vm probe rc=0`），`Dayu600ApkStageProbe.embeddedMainNoExit` 进入并返回。
5. **noice HWUI subset 注册 failures=0**（Canvas/ColorSpace/Matrix/Paint/Path/Region/Shader/Typeface/RenderNode/DisplayListCanvas）。
6. runTriangleApk 进入：TriangleView 从沙盒内 triangle.apk 自有 dex 加载成功。
7. 排障链已锤死（供后来人少走弯路）：
   - `libc++_shared.so` 必须随包（NDK 版，否则 napi import = undefined，页面只报 `Cannot read property runProbe of undefined`）。
   - bundle installer **会 strip 扁平 `libs/<abi>/*.so`**；它把 98,600B 的 probe strip 成 93,616B 且**直接坏掉**（ld-musl `map_library_header` SIGBUS）。**子目录（`art/`、`android/lib64/sidecars/`）里的副本不被 strip**——探针必须按 PATH 从 sidecars 加载。
   - 安装器保留 `libs/<abi>/` 子目录结构（`art/`、`android/lib64/` 原样落盘）。
   - 板子 ~30s 回锁：`power-shell wakeup` + `uitest uiInput swipe` 解锁后再 `aa start`，否则页面在锁屏后不跑。
   - shell 读不了 `/data/storage/el2/...` 视图，但 root 可读真身 `/data/app/el2/100/base/<bundle>/haps/entry/files/`。
   - hap-sign-tool 自带 .so 4096 对齐；**不要预对齐**（自定义 64KB padding 会让它的 aligner 报 `can not align`）；且大 HAP（>300MB）签名偶发 `read zip file failed`，重试即过。
   - `SetPosition` 的 `@CriticalNative nSetLeftTopRightBottom` 未绑（#49 面），renderer `nativeInit` 已在 C++ 直设 bounds → Java 侧必须 try/catch（`WestlakeUpscreen.record:63`）。
   - `WESTLAKE_SKIP_START_REG=1` 时，54 registrar 不跑 → `RecordingCanvas.nCreateDisplayListCanvas` 未绑；改走 dex 调 `nativeRegisterHwuiRender()`（noice subset）。

## 当前墙（两候选配对各差一墙）

运行时集（全部来自 noice-nb.hap 抽取 + 本机重打 dex/jar）：
`libwestlake_art.so adeb764f` · `libwestlake_upscreen_renderer.so 577d5099`(pinned ✓) · `libhwui.so c9ed61d0`(pinned ✓) · probe `1a4647e8`(sidecars) · dex 本机重打(noice 源+nonce+hwuiSubset) · upscreen-render.dex.jar 本机重打(nativeLastSwapArgb+#49 guard)。

- **配对 A · framework.jar `3e106350`（origin A14）**: subset 注册里 `register_android_graphics_Canvas` 在 libhwui `__android_log_assert` SIGTRAP（即 noice Wall-1：A14 jar ↔ A15-built libhwui 的 RegisterNatives 失配）。栈：`westlake_native_register_hwui_render+164 → register_android_graphics_Canvas+44 → assert`。
- **配对 B · framework.jar `c3a06db5`（stock A15, GSI AP4A）**: Canvas register + subset failures=0 全过；`record()` 里 `new RenderNode` → `ClassLinker::FindClass → DexFile::FindClassDef` SIGSEGV（fault addr `0x0001007e…`，noice 系 ART build `adeb764f` 消化不了该 A15 dex 的某条解析路径；claude 同日独立复核过 Canvas register 在此配对下成立）。

**根因方向（与 claude 侦察结论一致）**：需要「与所选 framework.jar 同源且做过 OHOS 适配」的 libhwui/ART 组合——即 artboot 适配链重出一版 libhwui（A15 源 drop 对齐 + OHOS 重链），或修 ART `FindClassDef` 对 A15 GSI dex 的解析。两条都是编译机活，已超出本班次。

## 复现/接手指引

- 打包：`artboot/pack-hap.sh`（自动跑完全链）；签别板：`WL_UDID=<udid> bash wl-tools/resign.sh <in.hap> [out.hap]`。
- 上板：`hdc -t <serial> install <hap>` → `power-shell wakeup` + `uitest uiInput swipe 600 1700 600 500` → `aa start -b com.westlake.artboot -a EntryAbility`。
- 观测：hilog `ARTBOOT/WELD/WLART/WLTRI*`；沙盒结果文件经 `/data/app/el2/100/base/com.westlake.artboot/haps/entry/files/`（root 可读）。
- oracle：`oracle/verify/apkhost-fresh-frame.sh`（判据链 WLAUNCH→WELD→WLTRI nonceMatch=yes→verdict=PASS，待上述墙破后可直接跑）。
