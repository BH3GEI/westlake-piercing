<!-- B 路作战计划 · state 层 · 程序脊柱 · ≤120 行 -->
<!-- 生成源:workflow b-route-battle-plan(6 agent,2026-07-12)+ thinker source-level 核验。 -->
<!-- 里程碑状态只认 oracle;此文件是路线图,不是进度事实源(进度看 LEDGER/tasks)。 -->

# B 路作战计划 — appspawn-x 能力 → DAYU600 arm64 真 App 上屏

**GOAL(不可偏移)**:真 stock app(Material Catalog io.material.catalog 1.9.0)的**真 UI** 在 DAYU600 arm64(uis7885, OH6.1, 授权板 5ce2dcee)物理面板显示。验收=snapshot_display 拍到 Catalog 的 Java 自绘 UI(32 格首页/真实控件,非纯色 smoke)。

## M0 拍板(2026-07-12,thinker):不克隆 origin,站我方 arm64 base
- **不 rebase 到 origin 的 art@814cc93/OAT230**;**复用我方已在 DAYU600 起 VM 的 v114 arm64 ART**(aosp-art-15 r10,dc1d5e82,已到 ActivityThread.systemMain)。boot image 用**我方 dex2oat 自建同源**(libart↔boot 同源配对硬约束)。
- origin 的 W 系/framework/smali 补丁当**"该打哪些洞"的知识/配方**,非按 OAT230 行号硬套的 diff。
- **依据(source-verified)**:origin 那颗"不可重建"blob(16e08711)的墙本质=render-path 墙(G3.0–G3.8 EGL/render saga);而 render-path 是我方 arm64 已独立打通并验证的最强资产(egl_interposer 的 new-surface EGL fix = origin 丢失的那个修复;rs_abi_shims 解掉 origin 栽跟头的 OH ABI 一致性)。origin 作者持源都重建不出,我方却已在 arm64 绕过同一堵墙。
- **appspawn-x 源缺口(原 top risk #1)判为可绕**:其职责=fork+把 boot image 引导进 Android 运行时;我方 launcher(Dayu600ApkStageProbe+WESTLAKE_BOOT_IMAGE)已实现"加载 arm64 boot image→systemMain"。桌面点图标的 ondemand fork 非上屏阻塞(aa start 冷启绕过)。

## M0 框架版本拍板(2026-07-12,已定):站 A15
- **认知更正(observed,影响全局)**:我方"已到 systemMain"那条路用的 framework **是 headless 占位 shim(prepare-substrate.ps1 自述),不是真 framework**;真 framework 的 arm64 boot image **至今不存在**(标 `<not recovered yet>`)。→ 这不是"保留 A15 vs 换 origin A14",而是"**第一颗真 framework/boot image 从哪版 stock 起造**"。
- **决策 =(a)全栈 A15**:保我方 A15 libart+libcore+boot 不动,新起一颗 **stock A15(API 35)framework.jar + A15 BCP core 套**,把 origin 的 A14 补丁当**结构化配方**用 dexlib2 重打(按签名定位,非按行号搬)。排除(c)A14-framework 压 A15-libcore(最坏 skew);备选(b)回 origin 全栈 A14 仅当 A15 framework 外源彻底失败时回退。
- **理由**:①保 M0 硬约束(A15 libart↔libcore↔boot 自洽,已到 systemMain);②避最坏 skew;③首屏承重补丁(§B PackageInfoBuilder 空 Bundle / §C ConnectivityManager / §G ContentResolver / §D W9 vtable / §E W22 proxy-skip)全高可移植;④真 framework 反正从零造,造 A15 最省心。
- **头号卡口(= M2/M3 真正瓶颈)**:编译机上**无任何真 BCP jar(任何版本都没有)**。须外源一套 stock A15(API 35)`framework.jar` + BCP core(core-oj/core-libart/core-icu4j/okhttp/bouncycastle/apache-xml + adapter-mainline-stubs),优先与我方 aosp-art-15 同 `android-15_r10` 源以保 libcore↔libart 配对。此料到位前 M2/M3 无法真跑。
- **移植注意(observed)**:§C 的 ActivityThread hunk 不在 origin committed 集,须自补;`SystemServiceRegistry$88/$7` 匿名内部类编号 A15 必不同,按内容重认;W9/W22 是否仍必要属未知,撞 Material 日历/proxy 时再实测,别预打。

## 里程碑(host-build 全做完 → 非破坏 bring-up → 刷机集中末端)
| M | 名 | kind | 板 | 依赖 | oracle 判据 |
|---|---|---|---|---|---|
| M0 | 锁 base(已定 v114)+ 定 framework 版本 | host | mac | — | 决策落盘 + framework/boot 版本组合定论 |
| M1 | arm64 libart(复用 v114,按需补 W 系) | host | compiler | M0 | 复用 dc1d5e82;Material 撞墙时再逐个补 |
| M2a | 外源 stock A15 framework.jar + BCP core | host | compiler | M0 | **7/10 ✅ 已 staged**(GSI vic AP4A.241205.013 sdk35 REL,debugfs 免 root 抽,含真 classes.dex v039;`compiler:~/b-route-stage/substrate/`)。缺 3 origin adapter jar(见 M2b) |
| M2b | 重建 3 origin adapter jar(A15) | host | compiler | M2a | adapter-mainline-stubs / adapter-runtime-bcp(PackageInfoBuilder 首帧承重)/ oh-adapter-framework(OhImeBridge);origin 快照无成品/PackageInfoBuilder 无源,须为 A15 重建/合成 |
| M2 | arm64 patched BCP jars(dexlib2 重打 origin 配方) | host | compiler | M2a,M2b | 补丁在位(先 §B/§C/§G);core-oj→加 A15 fieldfix 改名;10-jar 序 == launcher kBootClasspath |
| M3 | arm64 boot image(我方 dex2oat 同源) | host | compiler | M1,M2 | 段数/ISA/checksum;JARS 序一致 |
| M4 | arm64 libhwui 重建(折入 hwui_oh_abi_patch §1/§2/§3) | host | compiler | — | 零 undefined;真 app 走 updateDisplayInfo/LOG_ALWAYS_FATAL 不 abort |
| M5 | arm64 WMS 真窗口(oh_window_manager_client)+ app 启动器 | host | compiler | M4,M2 | WMS CreateWindow/ISession 符号解析;真窗口 Surface 出 |
| M6 | 5ce 只读定位 .app→.apk 偏移 + 探 stock BMS 认不认 APP_ANDROID | device-ro | 5ce | — | 偏移+原字节;bm install 报错定门 |
| M7 | 5ce overlay 非破坏 bring-up:手动起运行时→app-child | device-ro | 5ce | M3,M5 | app-child 到 systemMain;umount 复原 |
| M8 | 5ce 刷机集中步:落 /system 运行时 +(可能)补 RS pid 门(逐项可逆) | device-flash | 5ce | M7 | 冷启起 app-child;**不碰 BMS**(见下);备份可回滚 |
| M9 | 真 Material Catalog UI 上屏 | device-flash | 5ce | M8 | snapshot_display 见真 UI = GOAL |

**关键路径**:M0→**M2a(外源 A15 BCP,当前瓶颈)**→M2→M3→M5→M7→M8→M9(M1/M4 与图形并行;M6 早做)。

## 复用地图(我方 arm64 已有 vs 要造)
- **直接复用(已验证)**:arm64 libhwui + 图形桥(egl/skia/rs_abi/anw shim + ohos_display_surface)已在 5ce 证红/绿满屏;v114 arm64 ART 到 systemMain;我方 dex2oat;art-latest/Makefile.ohos-arm64 全量交叉编译 harness;launcher。
- **origin 搬(arch-neutral)**:framework-patch-tools(dexlib2)、framework/catalog smali 补丁、Material Catalog APK、config/asx-autostart、SELinux permissive、.app→.apk 单字节补丁(偏移须在 arm64 stock lib 重定位)。
- **要造/最硬**:WMS 真窗口(oh_window_manager_client arm64,XL,给真 app 一个有输入/焦点/生命周期的窗口——补我方 AttachToDisplay smoke 路的缺环)、arm64 boot image、framework 版本对齐、fault_handler_arm64(若补 W15)。
- **后补(非上屏阻塞)**:输入桥(touch/key/IME)、字体 SkFontMgr、连通性(DNS/TLS/CA)、桌面图标 entry.hap。

## Top risks(活跃)
1. **stock A15 BCP 外源 —— 7/10 已解(observed)**:framework.jar + 6 core(core-oj/core-libart/core-icu4j/okhttp/bouncycastle/apache-xml)已从 GSI vic AP4A.241205.013(sdk35 REL,ART module 352090000)debugfs 免 root 抽出、staged 到 compiler,含真 classes.dex v039,API-35 已证。ART-module vs 我方 android-15_r10 = 同 major 同 VIC,skew 低(inferred 可接受;需更近可换 AP3A/BP1A 同管线重抽)。**残留缺口→ 见新风险#9(adapter jar)**。framework 版本 skew 已定站 A15(M0),非 open risk。
2. **WMS 真窗口(XL)【M5 scoping 完成;sceneboard 生死问已板级降险】**:调用面全摸清(SAMGR→GetSystemAbility(4606)→iface_cast IWindowManager→CreateWindow/AddWindow);需 4 shim(node-type RSSurfaceNode::Create+PaddedConfig+64/2-arg Create/WindowProperty::SetWindowName/SetBufferAvailableCallback)。**sceneboard 降险(2026-07-12 板级只读 observed,推翻 synthesis 的"几乎必 ON"假设)**:5ce 已装 bundle 仅 launcher/systemui/intelligentscene,**无 com.ohos.sceneboard**(bm dump -a);桌面=经典 `com.ohos.launcher.MainAbility`(aa dump);`hidumper -ls` 注册的是经典 **WindowManagerService**(非 SceneSessionManager)且 `hidumper -s WindowManagerService` 真响应→**经典 legacy WMS 活着**,origin 的 oh_window_manager_client(sceneboard=false)大概率可沿用,无需重写 scene 路。**残留(须真 CreateWindow 读 hilog OH_WindowMgrClient 终判)**:OH6.1 merged 接口下经典 WMS 是否仍内部走 session、以及是否解 legacy TRANS_ID_CREATE_WINDOW。`libwms.z.so` 板上已证存在(1.28MB,120 WindowManagerProxy/WindowProperty 符号,observed);broker 导出待 llvm-readelf 细验。
3. **libart↔boot 同源配对**:route(b)已自洽(v114 libart + v114 dex2oat boot);framework 版本已定 A15,须用 A15 同源 core-oj/core-libart(见风险#1 取料)。
4. **~~stock BMS 认不认 APP_ANDROID~~【M6 落定,已拆解】**:(a).apk 已是 arm64 stock 原生白名单(CheckFilePath@0x5384 原生比对,observed)→ 单字节补丁前提**作废**;(b)stock OH6.1 BMS **无 APP_ANDROID/apk/dex/manifest 安装管线**(三 lib strings 零命中,bm dump 只见 bundleType:0,observed)→ **已拍板绕过 BMS,launcher 冷启上屏**(与 M0 appspawn-x 绕过同构;GOAL 不要求 bm install)。M8 不再注册 catalog。
5. **~~hwui_oh_abi_patch 折入~~【M4 落定,降级】**:libhwui-adapter.so 已 build 通过零 undefined(sha256 938673bf…),§2(log/abort→HiLogPrint)活性劫持生效→真 app 不静默 abort(observed:build+static-undef,**未板测**)。残留:§1(skgpu::ganesh Pin/SkCanvas onResetClip·saveBehind)/§3(ADisplay_*)对当前 M133 hwui **DEFINED-but-INERT**(mangling/DeviceInfo file-local static 不匹配)——留到 Material 撞墙再按 M133 名重编,勿盲改。§3 依赖 `libnative_display_manager.so` 板上已证导出 OH_NativeDisplayManager_*(observed)。
6. **【新·真墙】RS pid 门(compositor)**:`librender_service.z.so`(5ce)含 `RSTransactionData::IsCallingPidValid` + 字符串 "COMMIT_TRANSACTION/RecvParcel IsCallingPidValid check failed"(observed)→ uis7885 stock RS 的 pid 门**是活的**,非法 pid 的 APP_WINDOW_NODE 事务会被丢(buffer 到队列却永不合成)。origin 靠 G2.14aq pid_ fallback 绕它,补在 /system RS。→ 冷启的非 ability 进程若 pid 不被认,像素出不来;修它须写 /system RS(M8,须授权)或让进程 pid 被 RS 认。**耦合 #7(token 语义)**。
7. **【新】冷启 App 无真 bundle/ability token**:绕过 BMS→app 无真实 bundle/ability token;WMS 对非 ability 进程的合成 token 收不收(SetTokenState 真伪)未知,仅板上验;与风险#6 一起定。
8. **刷机 brick 红线**:init 服务绝不 critical;persist.sys.usb.config 绝不乱设;小板 085cac00 blob 16e08711 绝不碰;刷机集中 M8 且逐项可逆。
9. **【新】3 origin adapter jar 不可外源(M2b)**:adapter-mainline-stubs / adapter-runtime-bcp(含首帧承重 PackageInfoBuilder 空 Bundle)/ oh-adapter-framework(OhImeBridge);M2a 证 origin 快照**无成品 jar**,仅部分 smali 源(OhImeBridge/TransitionOptionsHolder),**PackageInfoBuilder 连源都缺**。须为 A15 重建/合成。**分层**:mainline-stubs(让 framework.jar 的 mainline 引用可解)+ adapter-runtime-bcp(PackageInfoBuilder)= 首帧承重必需;oh-adapter-framework(IME)非首帧阻塞可先 stub。A15 上 mainline 引用或可用 GSI 真 apex module jar 顶替 origin stub(待评)。
