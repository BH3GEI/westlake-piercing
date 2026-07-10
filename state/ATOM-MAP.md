<!-- 墙序 ↔ 全局原子 映射 · state 层 · 进度对齐用 -->
<!-- 硬纪律：LEDGER #墙 = 本仓事实源；L{NN}.A{NN} = AtomFunctionGit 规格坐标。 -->
<!-- 映射置信：exact=同一能力 · related=相关但不等同 · none=规格里无对应(撞墙特有) · pending=待研判 -->
<!-- 行数预算 ≤120。超限压缩旧注释进 archive/。 -->

# ATOM-MAP · #墙 ↔ L{NN}.A{NN}

**更新**：2026-07-09 · thinker 初版（关键词对齐，未逐条人工终审）
**用途**：铸卡时填「全局原子号」；看板刷新时着色；顾问咨询时指规格验收口径。
**不是**：用 HTML 看板状态覆盖 LEDGER。规格全是 M01-SPEC，真机进度只认 LEDGER。

## 层号对照（勿混）

| LEDGER 层(本仓) | 含义 | 规格楼层(HTML L01–L14) 大致对应 |
|---|---|---|
| L1 启动/板 | 起板、进程、板健康 | L03 进程孵化 · L13 稳定性 |
| L2 native 派发 | CriticalNative/shorty/JNI | L03 JNI · L11 Graphics JNI |
| L3 资源/arsc | AssetManager/arsc/XmlBlock | L10 资源与 Asset |
| L4 主题/inflate | Theme/applyStyle/inflate | L10 Theme API · (无独立 inflate 原子) |
| L5 渲染 | DecorView/RenderNode/首帧 | L05 窗口/Surface/首帧 · L11 HWUI |
| L6 AppCompat/内容/输入 | createSubDecor/输入/IME | L04 生命周期 · L06 输入 · **无 AppCompat 原子** |

## 映射表

| # | LEDGER 承重(短) | 规格原子 | 置信 | 备注 |
|---|---|---|---|---|
| 1 | imageless ART 起板 / startReg | L03.A09 ANDROIDRUNTIME-STARTREG | related | 起板路径本仓特有 |
| 2 | SQLite REINDEX LOCALIZED | — | none | 撞墙特有 |
| 3 | MainActivity.onCreate 反射 attach | L04.A01 ACTIVITY-CREATE | related | |
| 4 | onCreate 越框架墙(claimed 矛盾) | L04.A01 ACTIVITY-CREATE | related | 复核优先 |
| 5 | 渲染管线策略 B | L05.A16 VIEWROOT-TRAVERSAL-DRAW | related | |
| 6 | R1 interposer / .so 加载序 | L03.A12 NATIVE-SO-LOAD | related | |
| 7 | adapter libhwui 集成包 | L11.A04 LIBHWUI-DLOPEN-REGISTER | related | |
| 8 | 图形 native 注册 54 | L11.A03 KREGJNI-MODULE-REGISTER | related | |
| 9 | WestlakeUpscreen.show API | L05.A01 FIRST-FRAME-VISIBLE | related | API≠可见 |
| 10 | Paint.nSetFlags CriticalNative | L11.A08 PAINT-GRAPHICS-JNI | related | |
| 11 | InterpJni shorty 缺口 | L03.A11 JNI-AUTO-SYMBOL-RESOLVE | related | |
| 12 | CriticalNative vs normal 分叉 | L03.A11 / L11.A08 | related | |
| 13 | WestlakeGenericJni | L03.A11 JNI-AUTO-SYMBOL-RESOLVE | related | |
| 14 | class_linker kAccCriticalNative | — | none | 未 land |
| 15 | WlCriticalNoop | L11.A08 | related | 绕过非根修 |
| 16 | CriticalNative SIGSEGV 根修 | L11.A08 / L03.A11 | related | |
| 17 | framework-res 未进 AssetManager | L10.A06 SYSTEM-ASSETMANAGER-INIT | related | |
| 18 | openByPath 死路绕过 | L10.A01 APK-ASSET-OPEN | related | |
| 19 | screen_simple 预抽 AXML | — | none | 本仓弹药 |
| 20 | XmlBlock.nativeCreate .so | L10.A07 / L10.A11 | related | |
| 21 | XmlBlock hang→真 libandroidfw | L10.A11 ANDROIDFW-MODERN-RESOURCE-API | related | |
| 22 | 蓝像素引擎证 | L05.A01 FIRST-FRAME-VISIBLE | related | 引擎证≠app 首帧 |
| 23 | arsc native 全桩 | L10.A07 APKASSETS-AOSP-REAL | related | |
| 24 | arsc 三件套 | L10.A02 APK-RESOURCE-RESOLVE | related | |
| 25 | 零胶水 arsc | L10.A07 | related | |
| 26 | framework-res ID 对齐 | L10.A06 | related | |
| 27 | Theme JNI 6/6 | L10.A11 | related | Theme API 在 androidfw |
| 28 | obtainStyledAttributes shorty | L10.A11 | related | |
| 29 | theme.applyStyle HANG | L10.A11 | related | |
| 30 | nativeThemeCreate wrapper | L10.A11 | related | |
| 31 | sSystem 根修 | L10.A06 SYSTEM-ASSETMANAGER-INIT | related | |
| 32 | inflate windowContentOverlay | — | none | 规格无 inflate 原子 |
| 33 | 迁干净板 5583f5be | L13.A07 HDC-DEPLOY-EVIDENCE | related | 板运维 |
| 34 | ?attr/windowContentOverlay | L10.A02 | related | |
| 35 | 框架装饰骨架 View 树 | L05.A16 VIEWROOT-TRAVERSAL-DRAW | related | headless≠首帧 |
| 36 | force-raw nDrawColor | L11.A08 | related | |
| 37 | RenderNode.nGetElevation ULE | L11.A04 / L11.A05 | related | |
| 38 | nGetElevation 不 stick | L11.A04 | related | |
| 39 | RenderNode JNI Path B | L11.A04 LIBHWUI-DLOPEN-REGISTER | related | |
| 40 | Surface/RenderThread 自注册 | L05.A05 / L11.A04 | related | |
| 41 | createSubDecor 要 Theme.AppCompat | — | none | **规格无 AppCompat 原子** |
| 42 | setTheme AppThemeBar | — | none | 同上 |
| 43 | ★AppCompatTheme 真 WAB oracle | L10.A06 (+AppCompat 缺口) | related | 旧双包判据错用 autoLink；根因待 A/B |
| 44 | Canvas draw / show crit | L11.A08 / L05.A01 | related | |
| 45 | onClick mAttachInfo | L06.A01 INPUT-CLICK-DISPATCH | related | |
| 46 | 5ce2dcee lottery | L13.A01 PROCESS-ALIVE | related | 板病 |
| 47 | IME WestlakeTextPump | L06.A04 INPUT-METHOD-SERVICE-LOOKUP | related | |
| 48 | 全板离线(已恢复) | L13.A07 | related | 外部墙 |
| 49 | GenericJni 接线 | L03.A11 | related | |
| 50 | createSubDecor→subDecor | — | none | AppCompat 路径 |
| 51 | setContentView app layout | L04.A01 / L05.A16 | related | app 布局从未 inflate |
| 52 | tap→WLTEST CLICK | L06.A01 INPUT-CLICK-DISPATCH | related | |
| 53 | show() 真 DecorView 首帧 | L05.A01 FIRST-FRAME-VISIBLE | related | **目标墙** |

## 规格缺口(本仓撞到、HTML 无原子)

- AppCompat / createSubDecor / Theme parent-chain 跨包（#41–43, #50）
- inflate 装饰属性特判（#32, #34）
- 本仓探针弹药（#19 screen_simple 预抽等）

→ 这些墙铸卡时「全局原子号」写 `-`，并在卡里注明「规格缺口，以 LEDGER 墙签名为准」。

## 维护纪律

1. 新墙进 LEDGER 时，**同班次**在本表加一行（exact/related/none/pending）。
2. 置信从 pending→exact 需要：对照规格 acceptance 文案 + 本仓 oracle 命令能对上。
3. 看板 `docs/dashboard/progress.html` 只读本表 + LEDGER，由 `oracle/refresh-dashboard.sh` 生成；**力工刷板，thinker 不手改 HTML**。
