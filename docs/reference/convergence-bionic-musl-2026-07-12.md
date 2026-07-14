# 合流对齐 · bionic→musl 翻译线 ⋈ Route-B 上屏线 — 2026-07-12

> 用户拍板:真验收目标 = **任意真 App 上屏优先(最省力),Unity/团结游戏是终极**;两条线关系 = **先合流对齐,再分工**。
> 本文件 = 「两条线怎么合、谁干哪半、最便宜的第一枪打哪」的事实源。方法:后台 workflow(6 并行读者扫同事 15 篇 bionic→musl 文档 + arm64 `libtuanjie.so` + MiniGame APK + 我方已验资产 → 综合)+ **主控独立复核**(下 §0)。证据标签:observed=文档/实测原话,inferred=跨证据推理,unverified=文档自认未证。

---

## 0. 执行摘要(主控独立复核后 — 这是结论,下面 §附 是 workflow 原文)

**改变全局的发现,已由我亲手复核(observed):厂商随包的 `libtuanjie(1).so`(arm64)本身就是 OpenHarmony 原生移植,不是 Android。**

我用 `strings` 对 dynsym 字符串表实测(mac 无 readelf,但共享库 dynsym 表不随 strip 丢失):

| 探针 | 计数 | 判定 |
|---|---|---|
| `OH_*` NDK 符号 | **296** | OH 原生(含 `OH_NativeWindow_GetSurfaceId`、`OH_NativeVSync_Create/RequestFrame`、`OH_AVCodec*` 媒体) |
| `napi_*` | **47** | 走 ArkUI NAPI 模块模型 |
| `OH_NativeXComponent_*` | **16** | 走 **XComponent** 拿 surface + **收输入**(`GetTouchEvent`/`GetKeyEvent`/`GetMouseEvent`/`RegisterOnFrameCallback`/`SetExpectedFrameRateRange`) |
| `JNI_OnLoad` / `Java_` | **0 / 0** | 零 JNI |
| `ANativeWindow_*` / `AChoreographer_*` | **0 / 0** | 零 Android NDK 窗口/节拍 |
| `__android_log` / `__aeabi_` | **0 / 0** | 零 Android log、零 arm32 bionic EABI |
| NEEDED(strings 佐证) | `libace_napi.z.so` `libnative_window.so` `libnative_vsync.so` `libEGL.so` `libc.so` | 全 OH NDK(无 `libandroid.so`、无 `libmono*.so`) |

**两处对 workflow 结论的修正(我复核新增,比原报告更准):**

1. **arm64 后端是 il2cpp,不是 Mono。** `il2cpp` 标记 **494** 个 vs `mono` 仅 1 个(APK 的 32 位版才是 Mono:`lib/armeabi-v7a/` 里 `libmono`/`libmonobdwgc`/`libmain`/`libunity`/`libtuanjie` 全在)。→ 原报告把「arm64 Mono 运行时未随包」列为阻塞是**误判**:arm64 路根本不要 Mono 运行时,C# 已被 il2cpp AOT 成原生码。真正缺口改为 **il2cpp 数据**(`global-metadata.dat` + 该游戏 arm64 的 `GameAssembly`;引擎里已见 `globalgamemanagers`/`globalgamemanagers.assets` 常量,说明它按标准 Unity 数据布局找料)。这通常比「弄一个 arm64 Mono」更简单。

2. **输入在 T2a(OH 原生路)上不是共享缺口。** 引擎经 16 个 XComponent 回调**自己收触/键/鼠**——只要我把 XComponent 宿主接到面板,输入随宿主免费到位。输入只在 T1(bionic native-GL)路上才是缺口。

**净结论(对这一款游戏):**
- **走 T2a(OH 原生 il2cpp + 我的 XComponent/surface 宿主),同事整条 bionic→musl 翻译线不在关键路径**——无 bionic、无 JNI、无 Mono、无信号/pthread 墙。
- **我的活缩小为一句话**:把这个 OH 引擎宿在一个「XComponent → 呈现到面板」的宿主里,让它拿到 surface(我已证的 RS/display-attach 上屏管道升级成 XComponent surface)+ 驱动它自己的 vsync + 转发它自己的输入。
- **唯一真剩阻塞** = 拿到/构建该游戏 arm64 的 il2cpp 数据(`global-metadata.dat`+`GameAssembly`)。这是与同事对齐的**头等问题**。

**分工一句话:** 同事拥有 `OHNativeWindow` 以下的一切(libc/信号/pthread/Mono——**但对这游戏基本不需要**);我拥有 `OHNativeWindow` 以上到面板的一切(XComponent 宿主 / EGL / present / 输入转发)。我的已证上屏桥**直接顶掉他们唯一多周高风险的 present 层**(`liboh_unity_bridge.so` step-3,bionic 侧从未到过 surface)。

**最省力阶梯(便宜→贵):**
- **T1 ★第一枪** = 一个真 Android NDK native-GL APK(`glClear` 变色),跑同事 musl-ART + 我的上屏桥 → 最小的「真 Android app 上屏」,同时点亮接缝两半、把胶水端到端证一遍。**合做**(我桥 + 同事 libc box)。
- **T2a ★游戏主攻** = OH 原生 il2cpp 引擎 + 我的 XComponent 宿主 + 上屏。绕开 bionic 全部墙。阻塞=il2cpp 数据 + XComponent 宿主(我未建)。
- **T2b(退路)** = 原样 32 位 APK 经 bionic 翻译层。多三堵墙(信号交付=永久地板 + W13 pthread + present),仅当拿不到 arm64 il2cpp 数据时走。
- **T3(搁置)** = Java-UI 安卓 app(嵌入式 ART / M7c / Typeface),**游戏不需要**,最贵。

**与同事对齐的头等三问(其余见 §附 §5):**
1. 你知道 arm64 `libtuanjie.so` 已是 OH 原生 **il2cpp** 版吗?你的 variant-3 在翻译 **APK 的 32 位 Mono 引擎**,还是也见过这颗 OH 原生引擎?
2. 有没有这游戏 arm64 的 **il2cpp 数据**(`global-metadata.dat` + `GameAssembly`)?或能否用团结编辑器对这些托管 DLL 重跑 il2cpp 出 arm64-OHOS?
3. 你的设备(5bb5/D600)与我的 5ce/5583(uis7885/OH6.1)是否同一 DAYU600 硬件类?(不同则像素证据不可移。)

---

## 0.2 引擎入口 RE 定论(2026-07-12 晚,主控本地 ELF .dynsym 亲解)

把 arm64 `libtuanjie.so` 的 `.dynsym` 在本地 python 解出来(888 符号,221 defined FUNC),定死了 T2a 的**接法**:

- **引擎导入 `napi_module_register`(UND),且没有任何可调用的 bring-up 入口**——221 个导出 FUNC 全是 FreeType(`FT_*`/`UNITY_FT_*`)、LZ4、`UnitySendMessage`、`_init/_fini`;没有 `il2cpp_init`/`UnityMain`/`nativeRender`/任何 `*Init`/`*Bootstrap` 导出。
- **判定(observed→inferred,证据强)**:这颗引擎是一个 **napi/ArkTS 模块**——dlopen 时自注册,只有当 **ArkTS 运行时**加载它、把 `napi_env` + ArkUI 的 XComponent 交给它的 init 时才会启动。
- **推论 1(接法)**:**纯 native 宿主起不动它**。我原设想的 XComponent interposer(`ports/dayu600/gfx-smoke/xcomponent_interposer.cpp`,已写、已编过 aarch64-ohos object)解决的是"喂窗口"那半,但**喂不了 kick-off**;它因此**降级为 T1/退路工具**(把用 XComponent-NDK 的**外来** native-GL app 顶到 OH 显示,或将来非要在 ArkUI 外嵌 napi_env 时的底座)。
- **推论 2(最省力 T2a 变清晰)**:**最省力 = 一个薄 OH `.hap`**(ArkUI 一页一个全屏 `<XComponent>` 绑到引擎的 napi 模块 + il2cpp 数据作 rawfile)。**它走 OH 自己的 XComponent→RS→render_service→panel 路**(板上 `render_service`/`composer_host` 实测在跑)。→ **对这颗 OH 原生游戏,我那套上屏桥(egl_interposer/rs_abi_shims/ohos_display_surface)根本不在关键路径**——桥只在把**外来栈**硬顶上 OH 显示时才需要。
- **推论 3(工具链缺口,已实测)**:compiler 上**没有 ArkTS/.hap 工具链**(`es2abc`/`ark_asm`/`hvigorw`/`ohpm`/`ace`/`node` 全无;`ohos-sdk/` 只有 `native/`,无 `ets/`/`toolchains/`)。→ **我当前造不出 .hap**,这是 T2a 的真阻塞。

**因此 T2a 的最省力路线两条腿并行:**
1. **头等:向同事要这游戏的完整 OH `.hap`(或团结编辑器的 OH 工程)。** 他能产出 arm64 OH 原生 il2cpp 引擎,就说明他手里有整条团结 OH 构建管线 → **他极可能已经能直接产出这颗游戏的 .hap**。若拿到,**近乎 stock OH 就能把游戏跑上 5ce 面板**(`aa start`),可能**用不到我任何桥**。这是最快一枪。
2. **并行:我在 compiler 上补 HarmonyOS 全量 SDK / DevEco command-line-tools(es2abc + hvigor + ace)**,先自造一个**平凡 XComponent GL `.hap`**端到端验 5ce 的 stock OH 装+起+渲染路,把游戏 .hap 的路提前证掉、并取得不依赖同事的独立能力。

**净修正(对本文件 §0/§3/§4 的收口)**:同事那条 bionic→musl 翻译线,对**这一款 OH 原生游戏**几乎完全用不上;我那条上屏桥,对**这一款**也几乎用不上。**真正的 T2a 是一件"OH 应用工程 + il2cpp 数据"的活**,主要落在**同事的团结 OH 构建管线**上,我这边的增量是**板级验证 + .hap 工具链 + 装起渲染的落地**。两条硬核资产(他的 bionic 翻译、我的上屏桥)都主要留给 **T1(外来 native-GL)** 与 **T3(Java-UI 安卓 app)** 两条路。

---

## 附:workflow 综合报告全文(未改,供追溯)

> 说明:下文 §0 把 arm64 缺口写成「Mono 未随包」——已被主控复核修正为「il2cpp 数据缺口」(见本文件顶 §0 修正 1);下文把输入列为共享缺口——T2a 上由 XComponent 覆盖(修正 2)。其余判断与主控复核一致,保留原文作证据链。

### workflow §0 一条必须先摆上桌的事实

A5 实测(observed,`llvm-readelf` 的 NEEDED+dynsym):厂商随包给的 **`libtuanjie(1).so`(arm64)本身已经是 OpenHarmony 原生移植**——链 `libace_napi/libnative_window/libnative_vsync/musl libc.so`,导入 179 个 `OH_*` NDK + 46 个 `napi_*`,零 JNI / 零 ANativeWindow / 零 bionic。而 APK 里的是 32 位 `armeabi-v7a` 的 Android/Mono 版。

### workflow §1 两条线一句话对照

- 他们(翻译线):**不重编** Android 引擎 .so,让 bionic .so 在 OH musl 上原生跑在 ARM(无 QEMU),只在 libc ABI 缝做翻译(box + bridge + font-prime);系统侧用 musl 重编的 ART/Mono 托管。成熟核:pthread mutex/cond/rwlock device_verified;127/136 真机单测(observed)。
- 我(Route-B 上屏线):在板上忠实立起 Android 栈(arm64 libhwui/libart/boot image/WMS)让真 App 走真管线出像素。成熟核:RSSurface→OHNativeWindow→EGL→GLES3→panel 真机出像素、oracle 门控(observed)。
- **净判定**:native 游戏两条线的「最难半边」都不全要——游戏用自己的 GL 画到一块 surface,绕开整个 Android View/framework(不 inflate/measure/draw、不用字体);我砸在 ART/framework/WMS/Minikin 的深投资对游戏基本无用;同事的 bionic-libc-compat 只在「跑 bionic 引擎版」时才需要。**我这条线唯一对游戏值钱的资产,恰是那块已证的 surface→EGL→panel 管线。**

### workflow §2 重叠/互补/各自独有(要点)

- **他们独有(硬墙)**:信号交付 / OH MUSL-SIGCHAIN(OPEN·永久地板,`raise()` 后 handler 不触发);W13 pthread 内联访问 / TLS[5] 金丝雀(OPEN·当前墙,收敛方案未上机);L7 `getauxval`/RNG。
- **我替换/解他们的未知**:窗口/surface 生产者(他们 `g_window` 假设、device libEGL 是否 OH-musl 未验;我 RSSurfaceNode→OHNativeWindow 真机出像素);EGL 上下文+present(他们 step-3「真风险闸」多周、bionic 从未到 surface;我两次真机证);RS 子自绘合成 / AttachToDisplay 特权门(他们「最大单点风险」未解;我 AttachToDisplay(0) 已证)。
- **渲染桥重叠明确结论**:他们的 `liboh_unity_bridge.so` 是预研、bionic 侧从未到 surface;我的上屏桥真机出像素。我能替换/加速他们的下半桥(step 2–4);**但碰不到上半桥**(step-0 `sigaction/sigset` 装箱、W13 pthread——都在 surface 交接前开火,是他们的)。即使我 present 完美,libunity 挺不过 bootstrap 就到不了我的窗口。

### workflow §3 建议分工 + 精确接缝

- **同事拥有(接缝以下)**:bionic→musl libc box(pthread/signal/TLS/stdio/FILE)、信号交付/sigchain、W13 pthread、L7 RNG/auxval、versioned-symbol;托管运行时;bionic 路的 `JNI_OnLoad`/RegisterNatives + 版本键控 Java 宿主。
- **我拥有(接缝以上)**:产出一块 **EGL-able 的 `OHNativeWindow*` 生产者**并 present 到 panel(RSSurfaceNode/display-attach 已证 **或** XComponent 宿主待建);EGL config/present/damage/swap;RS→panel 合成;输入泵。
- **精确接缝(SEAM)** = 一块已 display-attach、已验 EGL、几何+RGBA8888 就绪的 `OHNativeWindow*` 生产者句柄,加三条回流:①窗口交接(bionic 路 `ANativeWindow_fromSurface` 返回裸生产者 / OH 原生路 `OH_NativeWindow_GetSurfaceId` 从 XComponent 取);②**帧泵所有权**:引擎自带渲染线程自驱 `nativeRender`,我只供 vsync tick、**绝不双驱**(observed 明确告警);③输入+显示指标回流。
- **我交出**:`ohos_display_surface.cpp` + `westlake_rs_smoke/westlake_upscreen_color_smoke` 整条已证管线(直接顶替他们 step-3);对「libEGL 是否 OH-musl / OHNativeWindow 是否 EGL-able」的已证答案;RS/EGL ABI-skew shims(`rs_abi_shims`/`egl_interposer`)。

### workflow §4 最省力上屏阶梯(见本文件顶 §0 已提炼 T0–T3)

关键洞见:**游戏因绕开 Android View 全部墙,在 framework 侧比 Java-UI app 更便宜。** 一旦「surface+compat 接缝」焊好,游戏路上不再有 View 墙——是有竞争力的早期目标,不是遥远终点。

### workflow §5 合流对齐待办(与同事交换的具体问题/物件)

**A. 定路线(最高优先):** ①你知道 arm64 `libtuanjie.so` 已是 OH 原生版吗?variant-3 在翻译哪个?②能否加载本游戏的托管 DLL?arm64 托管运行时/il2cpp 数据你有没有?
**B. 锁接缝:** ③引擎侧期望窗口以什么形态拿到(ANativeWindow 转型 / XComponent obj)?**——主控复核已定:是 XComponent。** ④帧泵确认引擎自驱、我只供 vsync 不双驱。⑤你的 `liboh_unity_bridge.so`/`AChoreographer_*` 到哪步?我给你已证 present 管线,是否满足它的 step-3 角色?
**C. 对硬件/纪律:** ⑥你的设备与我的是否同一 DAYU600 硬件类?⑦输入在 arm64 上你桥到哪了(T1 路是共享缺口)?⑧借你的 v3 差分 oracle + 变异体自检(10/10 全红)进我的 `oracle/verify/*.sh`。

### workflow §6 诚实的风险与未知

- **双方共同未证(合流最大风险)**:bionic libunity 从未到过 surface;我的上屏从未被真引擎驱动过(只被自己的 color smoke 驱动)。两块各自绿,合起来能不能亮谁都没证——**T1 就是为拆这个风险设的**。
- **他们侧地板级未知**:信号交付=不可前移的永久地板(Unity 的 SIGSEGV 自恢复/GC 信号硬需——这堵墙在,bionic 路的 Unity 就悬);W13 pthread 收敛方案仅 `-fsyntax-only`/未上机;`libunity` rwlock 真机 EXIT=124 挂起根因未定位。
- **OH 原生引擎路(T2a)的未知**:il2cpp 数据能否取得/重建(inferred 风险);XComponent 宿主→我的 RS surface 的桥是未建工作(全屏独占 display-attach 或可绕过,但从未用真引擎验过)。
- **流程风险**:若同事继续重投 bionic 翻译、而 OH 原生路对这一款更省,存在分叉内耗。对齐第一动作就应是 §5-A 两问,先钉路线再分工——正合「先合流对齐再分工」。

### 一句话收口(workflow 原文)

接缝已清晰:同事拥有 `OHNativeWindow` 以下的一切,我拥有 `OHNativeWindow` 以上到 panel 的一切;我的已证上屏桥直接顶掉他们唯一多周高风险的 present 层并消解其两个 unverified 假设,但碰不到 bootstrap 的两堵硬墙。第一枪打 T1,游戏主攻优先 T2a,T2b 作退路。头等对齐动作:确认 OH 原生 arm64 引擎与其数据的可得性。

---

## 关联物件与位置(便于同事对接)

- 同事发来:`~/Documents/xwechat_files/wxid_mekt3e9i1ylc22_65f3/msg/file/2026-07/`
  - `libtuanjie(1).so`(26MB,arm64 **OH 原生 il2cpp** 引擎)
  - `MiniGame-android.apk(1).1`(27MB,32 位 armeabi-v7a **Mono** 版,含托管 DLL)
  - `bionic_musl_html_bundle_20260712(1).zip`(15 篇分析,解到 `/tmp/bmbundle`;源路径 `/opt/21.Game`、`02.unity.cardwords/adapter`)
- 参照源树(同事 bionic→musl 工作,已全部落盘,2026-07-13 从 ~/Downloads 归入 code/):`~/Desktop/code/harmony/reference/source-trees/aosp.tar.zst`(20GB,AOSP 源树)、`~/Desktop/code/harmony/reference/source-trees/oh.tar.zst`(72GB,OHOS 源树)——按需定点索引。
- 我方已证上屏资产索引:见 `state/B-ROUTE-PLAN.md`(M5 `liboh_window_manager_client_min.so`、`ohos_display_surface`、`egl_interposer`/`skia_interposer`/`rs_abi_shims`、W-004 彩色 APK oracle PASS)。
