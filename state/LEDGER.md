<!-- 墙序台账 · state 层事实源 · 收编自 REAL-WALL-LEDGER.md(2026-07-08) -->
<!-- 硬纪律：本文件 ≤150 行。超限唯一出路 = 压缩旧墙进 archive/。 -->
<!-- 状态跃迁只认 oracle PASS(见 protocol/THINKER.md 验收班次)。 -->

# WESTLAKE 墙序台账 (LEDGER)

**穿刺目标**：未改的 com.uptodown (AppCompatActivity) 在 DAYU600 arm64 imageless ART / OpenHarmony 上，真机首帧上屏。
**坐标系**：内部墙序 #1–53(app 真正撞到的运行时墙) · 层 L1–L6(见下) · 全局原子号见 `state/ATOM-MAP.md`(对齐 AtomFunctionGit L{NN}.A{NN})。

层：L1=启动/板 · L2=native 派发 · L3=资源/arsc · L4=主题/inflate · L5=渲染 · L6=AppCompat/内容/输入
状态：✅PASS(claimed) · 🔧IN_PROGRESS · ⏳PENDING · ⚠️待复核
复核列 V：✔=已按当前板/路径复现 · ?=claimed 未复核 · ✗=复现失败/矛盾

## 1. 全局墙序 (53 墙, duplicates merged)

| # | 承重原子 | 层 | 状态 | V | 域 | 证据指针 |
|---|---|---|---|---|---|---|
| 1 | arm64 imageless ART 起板 → startReg,54 图形类注册 | L1 | ✅ | ? | B | COORD L418 |
| 2 | Application.onCreate 过 SQLite REINDEX LOCALIZED(150→1362) | L1 | ✅ | ? | B | COORD L53 |
| 3 | MainActivity.onCreate 反射 attach 入口 | L1 | ✅ | ? | B | COORD L88 |
| 4 | onCreate 越过全部框架墙进 APP 业务码 | L1 | ✅ | ✗ | B | COORD L272 · **与 boot-image clinit 矛盾** |
| 5 | 渲染管线锁定策略 B(DecorView→RenderNode→RSSurfaceNode) | L5 | ✅ | ? | C | COORD L66 |
| 6 | R1 interposer 抢占 / .so 加载序 | L5 | ✅ | ? | C | COORD L134 |
| 7 | adapter libhwui 集成包(md5 504386b1) | L5 | ✅ | ? | C | COORD L432 |
| 8 | 图形 native 注册(54 registrar,C linkage) | L5 | ✅ | ? | C | COORD L2637 |
| 9 | WestlakeUpscreen.show() API 冻结 + attachForInput 内联 | L5 | ✅ | ✗ | C | 仅 host 编译,未上板 |
| 10 | Paint.nSetFlags @CriticalNative 不可派发 | L2 | ✅ | ? | B | COORD L362 |
| 11 | InterpJni shorty 硬编码缺口 → 需通用派发器 | L2 | ✅ | ? | B | COORD L419 |
| 12 | 调用约定二值分叉(@CriticalNative vs normal) | L2 | ✅ | ? | A | COORD L439 |
| 13 | 通用 shorty 派发器 WestlakeGenericJni(host 全绿) | L2 | ✅ | ? | B | COORD L504 |
| 14 | class_linker kAccCriticalNative 根修 | L2 | ⏳ | - | B | **从未 land,被 .so-signature 取代** |
| 15 | WlCriticalNoop 越过 Paint.nSetFlags | L2 | ✅ | ? | B | COORD L799 |
| 16 | @CriticalNative SIGSEGV 根修(用解析出的 jni_entry) | L1 | ✅ | ? | B | COORD L919 |
| 17 | framework-res 未进 AssetManager(合成 XmlResourceParser) | L3 | ✅ | ? | A·B | COORD L943 |
| 18 | framework-res 文件级 openByPath 死路 → 绕过 | L3 | ✅ | ? | B | COORD L1223 |
| 19 | screen_simple.xml 预抽 AXML(956B) + resid 映射 | L3 | ✅ | ? | A | COORD L1266 |
| 20 | XmlBlock.nativeCreate helper .so | L3 | ✅ | ? | B | COORD L1316 |
| 21 | XmlBlock parse HANG → dlsym 真 libandroidfw(通用修法) | L3 | ✅ | ? | B·E | COORD L1513 |
| 22 | pureColorView 蓝像素引擎证(5583f5be,11 帧,md5 08f400a8) | L5 | ✅ | ✔ | C | COORD L1432 · H 逐字节复现 |
| 23 | arsc 加载 native 全是桩(dladdr 审计) | L3 | ✅ | ? | B·E | COORD L2113 |
| 24 | arsc 三件套打通,applyStyle 不再 hang | L3 | ✅ | ? | B | COORD L2174 |
| 25 | 零胶水 arsc 修(调 JNI_OnLoad 一次) | L3 | ✅ | ? | E | COORD L2230 |
| 26 | framework-res 76a92b8f — ID 99% 对齐 | L4 | ✅ | ? | A | COORD L260 |
| 27 | Theme JNI 6 native 注册 6/6 | L4 | ✅ | ? | B | COORD L186 |
| 28 | obtainStyledAttributes 补两 shorty,hasWidth=true | L4 | ✅ | ? | B | COORD L1698 |
| 29 | theme.applyStyle HANG 诊断(异物 theme) | L4 | ✅ | ? | E | COORD L1848 |
| 30 | nativeThemeCreate wrapper + 解释器重解析 | L4 | ✅ | ? | B | COORD L1882 |
| 31 | sSystem 根修(reinitialize=true,76a92b8f) | L4 | ✅ | ? | E | COORD L2443 |
| 32 | inflate 过 windowContentOverlay=TYPE_NULL | L4 | ✅ | ? | B | COORD L2237 |
| 33 | 迁干净板 5583f5be(vtable 非确定性仍在=解释器问题) | L1 | ✅ | ? | B | COORD L2481 |
| 34 | ?attr/windowContentOverlay 解析(out stride=7 A16) | L4 | ✅ | ? | B | COORD L2566 |
| 35 | 框架装饰骨架出 View 树(headless 零像素,卡 nGetElevation) | L4 | ✅ | ? | B·H | COORD L2623 |
| 36 | force-raw nDrawColor 配方(后复核为 NORMAL) | L5 | ✅ | ? | C | COORD L1842 |
| 37 | RenderNode.nGetElevation ULE | L5 | ✅ | ? | B | COORD L2567 |
| 38 | nGetElevation register-and-use 不 stick(匿名 static) | L5 | ✅ | ? | E | COORD L2790 |
| 39 | RenderNode JNI 级联 SOLVED via Path B(~65 wrapper,过图形层) | L5 | ✅ | ? | B | COORD L2800 |
| 40 | Surface/RenderThread renderer 4 native 自注册 | L5 | ✅ | ? | C | COORD L2864 |
| 41 | createSubDecor 要 Theme.AppCompat(Material.Light 无 windowActionBar) | L6 | ✅ | ? | B | COORD L2801 |
| 42 | setTheme 换 AppThemeBar 0x7f15000e | L6 | ✅ | ? | A·E | COORD L2817 |
| 43 | AppCompatTheme 真 WAB oracle:验收板 5583 `atom-43.sh` PASS ×4(wabAttr=0x7f040691 uamHasWab=true) | L6 | ✅ | ✔ | B | W-001 · CD-mmap interposer + P2 + ART 库 3ea7b69d · 见 FRONTIER.md |
| 44 | Canvas draw native 分类,show() crit 缩到 2 | L5 | 🔧 | - | C | COORD L2947 |
| 45 | onClick mAttachInfo 墙 → attachForInput 内联(已编未上板) | L6 | ✅ | ✗ | D | COORD L2535 |
| 46 | 5ce2dcee ~50% 早停 lottery 口径被证伪(未测量传闻) | L1 | ⚠️ | ✗ | H | W-002 blocked · 原 COORD L2768 为死指针 |
| 47 | IME 文字输入(WestlakeTextPump) | L6 | 🔧 | - | D | COORD L2916 |
| 48 | 硬外部墙:全板离线 → **四板已恢复 2026-07-10** | L1 | ✅ | ✔ | F | evidence/F-002 |
| 49 | @CriticalNative 注册指针发布/解析(GetRegisteredNative) | L2/L6 | ✅ | ✔ | B | W-003 clean relink atom-49 + atom-43 PASS · worker 2854df46 |
| 50 | createSubDecor windowActionBar 解析出 → subDecor | L6 | ⏳ | - | B | COORD L2910 |
| 51 | setContentView(app R.layout.main) → content FrameLayout | L6 | ⏳ | - | B | **app 布局至今从未 inflate** |
| 52 | tap → WLTEST CLICK(input .so bd6d2a77) | L6 | ⏳ | - | D | COORD L2746 |
| 53 | show() 真 DecorView 首帧 → 面板像素 r==2;**app 自绘变色像素 slice(render-only,绕 ViewRootImpl)已 PASS on 5ce**(show() 全路径未达) | L5/L6 | 🔧 | ✔ | C | W-004 · evidence/W-004/2026-07-12-color-smoke-5ce-PASS.txt |

## 2. 计数 (honest)

- **✅ 状态**: 45/53 = **已复核(V=✔)** 4(#22,#43,#48,#49) + **claimed 未复核(V=?)** 38 + **矛盾(V=✗)** 3(#4,#9,#45)
- 38 个 claimed 未复核项不得当作当前板事实。**复核 = 工厂队列第一批(见 QUEUE.md)。**
- 真·首帧 #53 的 **DecorView show() 全路径仍未达**；但 app 自绘变色像素 slice(render-only,绕 ViewRootImpl,W-004)已 **oracle PASS on 5ce**(红↔绿逐帧,provenance=APK 自有 dex)。app 自己的 R.layout.main(#51)至今一次都没 inflate。

## 3. 诚实警告 (必须带上)

白板里的"inflate 出 View 树/过图形层" = 框架 window-decor 骨架(DecorView+screen_simple)，**headless 零像素**，不是 app UI，不是首帧。
**核心矛盾(待复核解)**：台账 #4 claim "onCreate 越过全部框架墙"，但 D3 用 boot-image 起 VM 连 `android.os.Build.<clinit>` 都过不了 → 说明大量 PASS 绑死在某脆弱 imageless 配置上，换路径即碎。复核前不得把 claimed 当事实。
