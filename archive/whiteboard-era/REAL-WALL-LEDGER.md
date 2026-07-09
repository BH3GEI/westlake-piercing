<!-- 真实墙序台账 — Agent-A 从 AGENT-COORD.md 逐墙提取(7-agent workflow)。替换脱钩现实的 0/167 M01-SPEC。 -->
<!-- 生成:2026-07-08 · 42/53 承重原子真机 PASS · 前沿=#43 AppCompat 双包主题墙 · 硬外部墙=#48 全板离线 -->

# 真实墙序台账 (REAL WALL-SEQUENCE LEDGER) — uptodown vertical pierce

*Source of truth: `/Users/yao/westlake-piercing/AGENT-COORD.md` (2990 lines, 2026-07-07..08). Board: DAYU600 5583f5be (migrated from 5ce2dcee). App: com.uptodown (AppCompatActivity), custom arm64 imageless ART on OpenHarmony, no container.*

## 1. 全局墙序表 (one global sequence, duplicates merged)

层: L1=启动/板 · L2=派发 · L3=资源/arsc · L4=主题/inflate · L5=渲染 · L6=AppCompat/内容/输入
状态: ✅ PASS · 🔧 IN_PROGRESS · ⏳ PENDING

| # | 承重原子 (atom) | 层 | 状态 | 域/owner | 证据 |
|---|---|---|---|---|---|
| 1 | arm64 imageless ART substrate 起板：`dlopen` 库名修正(liboh_android_runtime.so)→ `AndroidRuntime::startReg`,54 图形类全注册 | L1 | ✅ | board/B | L418 "库名是 liboh_android_runtime.so!改对后 startReg 跑了" |
| 2 | Application.onCreate 卡 SQLite `REINDEX LOCALIZED`(150→1362 全过,无 per-app 绕过;+28 shorty handler) | L1 | ✅ | native/B | L53 "Application.onCreate() 彻底跑通(150→1362 全过)" |
| 3 | MainActivity.onCreate 反射 attach 入口(getApplication/getViewModelStore、getSystemService(layout_inflater)、ensureWindow getWindow≠null) | L1 | ✅ | native/B | L88-89 "反射 attach + 调 onCreate,打出上屏入口墙序" |
| 4 | onCreate 越过全部框架墙(窗口/主题/样式/ATMS/Fragment)进入 APP 业务码(i5.g0→Firebase Crashlytics) | L1 | ✅ | native/B | L272 "★里程碑…越过全部框架墙…进入 app 自己的业务代码" |
| 5 | 渲染管线锁定 策略 B(DecorView→RenderNode→RenderProxy→OHOS RSSurfaceNode;策略 A 死于无 SurfaceControl/BLAST) | L5 | ✅ | render/C | L66 "策略 A 死于无 SurfaceControl/BLASTBufferQueue" |
| 6 | R1 interposer 抢占 / .so 加载序(naive loadLibrary 卡死,ART 先注册 libhwui/libEGL) | L5 | ✅ | render/C | L134-136 "先 dlopen 我们的.so→满屏蓝上屏;LD_PRELOAD→没上屏" |
| 7 | adapter libhwui 集成包(egl/skia interposer+anw-shim 折叠,-Bsymbolic 自绑;md5 504386b1;清 R1+R2) | L5 | ✅ | render/C | L432 "已部署 libhwui-adapter.so(504386b1)覆盖 substrate libhwui.so" |
| 8 | 图形 native 注册机制(register_android_graphics_classes 54 registrar,nm 证 RenderNode/Canvas/Paint 全在) | L5 | ✅ | render/C | L2637 "register_android_view_RenderNode…classes(C linkage)" |
| 9 | WestlakeUpscreen.show() API 冻结 + minimal attachForInput 内联(measure/layout/attach/record/首帧) | L5 | ✅ | render/C | L221 "show(decor,w,h)…show() 内含 minimal-attach" |
| 10 | Paint.nSetFlags @CriticalNative 不可派发(DecorView.<init>→Paint native ULE) | L2 | ✅ | native/B | L362 "DecorView.<init>→Paint.nSetFlags(JI) UnsatisfiedLinkError" |
| 11 | InterpJni 按 shorty 硬编码 marshalling 缺口 → 需通用 shorty 派发器(同 SQLite 28-shorty 类) | L2 | ✅ | native/B | L419 "图形 native 静态 shorty…没 handler→落空→ULE" |
| 12 | 调用约定二值分叉:@CriticalNative(纯参) vs @FastNative/normal(env+jclass),按 IsCriticalNative() 选 | L2 | ✅ | native/A | L439/498 "只有 @CriticalNative 丢 env+jclass→派发器分叉应是二值" |
| 13 | 通用 shorty 派发器 WestlakeGenericJni(手写 AAPCS64 out-bound trampoline)已建 + host 验证全绿 | L2 | ✅ | native/B | L504 "critical VJI/float/double/19 参全对,AAPCS64 栈模型对" |
| 14 | class_linker `kAccCriticalNative` from-dex-annotation 通用根修(LoadMethod:4141) | L2 | ⏳ | native/B | L2871 "早证 nativeNext IsCriticalNative()=false=本 runtime 不落 crit-flag" — **从未 land,被 .so-signature 洞察取代** |
| 15 | WlCriticalNoop no-op 越过 Paint.nSetFlags(未注册 @Critical→空操作;Paint 是 void setter) | L2 | ✅ | native/B | L799 "图形墙(Paint.nSetFlags)攻破!no-op 生效,推进到 DecorView:298" |
| 16 | @CriticalNative 派发 SIGSEGV(RC:139)根修=分发用解析出的 jni_entry 而非旧 dlsym stub(libart 5b517bd8);此前"板退化/core-jars 损坏"= 本 bug 假象 | L1 | ✅ | native/B | L919 "重读了旧 dlsym stub→WalkStack NULL deref…修复:直接用解析出的 jni_entry" |
| 17 | interpolator 0x10c000e / DecorView.loadInterpolator — framework-res 根本没进 AssetManager(uamShared 只 addAssetPath app apk) | L3 | ✅ | resource/A·B | L943 "framework-res 根本没加载进 uamShared" (合成 XmlResourceParser 过) |
| 18 | framework-res XML 文件级打开 openByPath/addAssetPath — OHOS AssetManager 文件索引死路(登记为动态 package,无 assetCookie)→**绕过非攻破** | L3 | ✅ | resource/B | L1223 "openByPath 仍 FileNotFoundException…拿不到解析出的 assetCookie" |
| 19 | screen_simple.xml 预抽编译 AXML 字节(956B)+ resid→路径映射(1908)喂 `new XmlBlock(byte[])` | L3 | ✅ | resource/A | L1266 "字节是完整正确可独立解析的 AXML,B 的缺块假设证伪" |
| 20 | XmlBlock.nativeCreate 缺 JNI 符号 → helper .so libwl_xmlblock_create.so(dlsym ResXMLTree ctor/setTo + RegisterNatives) | L3 | ✅ | native/B | L1316 "setTo err=0 树正确,native ResXMLParser 遍历=[256,258,258,259] 全对" |
| 21 | XmlBlock parse-state HANG:jni_entry 指向 libart generic-JNI crit-trampoline → nativeNext/getters 改 **dlsym 真 libandroidfw fn(normal-sig)**(dex 标 crit 但 .so 是 normal 通用修法) | L3 | ✅ | native/B·E | L1513 "强制 dlsym 真 libandroidfw…真实 inflate(screen_simple)跑起来了" |
| 22 | pureColorView 蓝像素引擎证(5583f5be):hwui→OHOS Surface→面板 LIVE,11 帧 eglSwapBuffers=1;H 逐字节复现(md5 08f400a8) | L5 | ✅ | render/C | L1432 "adapter 渲染管线 LIVE;11 帧…无崩无早停" |
| 23 | arsc 加载 native 全是 OHBridge 桩(dladdr 审计:nativeLoad/nativeCreate/setApkAssets/getResourceValue 无导出符号) | L3 | ✅ | resource/B·E | L2113 "arsc 加载链全是桩→任何 AssetManager 都没真 arsc→主题游走垃圾" |
| 24 | arsc 三件套:nativeCreate→new AssetManager2、nativeLoad→ApkAssets::Load(sret,heap 持 sp)、setApkAssets→SetApkAssets(BuildDynamicRefTable 索引 0x01);applyStyle 不再 hang | L3 | ✅ | resource/B | L2174 "🎉 arsc 加载 native 三件套打通!applyStyle 不再 hang" |
| 25 | 零胶水 arsc 修:dlsym+调 deployed libandroidfw.so 的 JNI_OnLoad 一次(7+4+Theme 全绑真,0 新 native) | L3 | ✅ | resource/E | L2230 "调一次 JNI_OnLoad→7+4+Theme 全绑真,零胶水" |
| 26 | framework-res 76a92b8f — ID 重映射 99% 对齐 apk(全部主题/inflate 的承重资源基;121f478b=36% 排除) | L4 | ✅ | resource/A | L260 "ID 重映射产出 99% 对齐 framework-res.apk md5=76a92b8f" |
| 27 | Theme JNI 6 个 native 注册 6/6(nativeThemeCreate/Copy/ApplyStyle/GetAttributeValue/...) | L4 | ✅ | native/B | L186 "注册 6/6,nativeThemeCopy 通了" |
| 28 | obtainStyledAttributes layout_width InflateException:nativeApplyStyle VJJIIJLJJ + nativeThemeApplyStyle VJJIZ 无 handler→静默 no-op;补两 shorty | L4 | ✅ | native/B | L1698 "加 shorty handler…obtainStyledAttributes 通,hasWidth=true" |
| 29 | theme.applyStyle(Theme_Material_Light 0x1030237) HANG:nativeThemeCreate 造出异物 theme(field0 非 AssetManager2) | L4 | ✅ | native/E | L1848 "nativeThemeCreate 没造出合法 theme→我的 wrapper 在异物 theme 上 walk=hang" |
| 30 | nativeThemeCreate wrapper(包 AssetManager2::NewTheme)+ 解释器强制重解析覆盖 OHBridge 桩 | L4 | ✅ | native/B | L1882 "theme.field0=am…applyStyle 拿到合法 theme" |
| 31 | sSystem 根修:createSystemAssetsInZygoteLocked(reinitialize=**true**, 76a92b8f)去空壳(否则 guard 静默 no-op) | L4 | ✅ | resource/E | L2443 "reinitialize=true 是关键,否则 guard 让它 return-void 静默 no-op" |
| 32 | inflate 过 layout_width→FrameLayout→windowContentOverlay(0x1010059)=TYPE_NULL(合法 @null),"Failed to resolve attribute" 墙消失 | L4 | ✅ | resource/B | L2237 "🎉🎉 arsc+主题层完全打通!windowContentOverlay 墙已解" |
| 33 | 迁移到干净板 5583f5be(1.7GB→729MB 部署,首跑稳定到 actOnCreate,主题真应用;**vtable 非确定性仍在=解释器问题非板子**) | L1 | ✅ | board/B | L2481 "迁移成功…比 5ce2dcee 稳,但窗口 setup vtable 非确定性仍在" |
| 34 | 真实 inflate ?attr/windowContentOverlay=TYPE_ATTRIBUTE 未解(ApplyStyle 的 ResolveAttributeReference 桩):nativeApplyStyle post-resolve 回填,**out_values stride=7(A16)** | L4 | ✅ | native/B | L2566 "?attr/windowContentOverlay 解析成功→FrameLayout inflate 过了!" |
| 35 | **框架装饰骨架出 View 树**(DecorView + screen_simple LinearLayout/ViewStub/content FrameLayout);**headless、零像素**,卡在 RenderNode.nGetElevation | L4 | ✅ | native/B(H验) | L2623 "创建 DecorView 的 View 树,卡在 RenderNode.nGetElevation" |
| 36 | force-raw nDrawColor 引擎证配方(Track A);后 nm 复核 nDrawColor 实为 NORMAL,force-raw 不再需要 | L5 | ✅ | render/C | L1842 "nDrawColor VJII crit handler 已在 :751";L2847 修正=NORMAL |
| 37 | RenderNode.nGetElevation UnsatisfiedLinkError(inflate 每个 View.<init> 造 RenderNode,缺 render native) | L5 | ✅ | render/B | L2567 "ULE: RenderNode.nGetElevation(long)…每个 View 的 RenderNode" |
| 38 | nGetElevation @CriticalNative FJ:register-and-use **不 stick**;RenderNode JNI 是匿名 static(无导出符号)→连 dlsym 兜底都不可用 | L5 | ✅ | native/E | L2790 "register-and-use 绑不上→entry 还是 crit-stub→bail 成 no-op" |
| 39 | **RenderNode JNI 级联 SOLVED via Path B**(~65 个 NORMAL-sig wrapper 包 libhwui RenderProperties C++ + 解释器 crit special-case FJ/ZJ/ZJIIII/VJJ handler);inflate 造完整 View 树,**过图形层** | L5 | ✅ | native/B | L2800 "RenderNode 层 DONE…inflate 现在创建完整 View 树 + 所有 RenderNode,过了图形层!" |
| 40 | Surface/RenderThread:renderer 4 native(nativeRenderNodePtr/Init/DrawFrame/Teardown)由 renderer .so JNI_OnLoad 自注册(normal) | L5 | ✅ | render/C | L2864 "由我 renderer .so 的 JNI_OnLoad 自注册(normal)" |
| 41 | createSubDecor 要求 Theme.AppCompat:IllegalStateException "You need to use a Theme.AppCompat theme" @ createSubDecor:403(Material.Light 无 windowActionBar) | L6 | ✅ | native/B | L2801 "检查 R.styleable.AppCompatTheme 的 windowActionBar…Material.Light 没这些→抛错" |
| 42 | setTheme 换 0x7f15000e = AppThemeBar(app 0x7f 空间,parent=Theme.AppCompat.DayNight.NoActionBar,显式 windowActionBar=false/windowNoTitle=true) | L6 | ✅ | resource/A·E | L2817 "AppThemeBar resid=0x7f15000e…正是 AppCompat 要的" |
| 43 | **★当前前沿:AppThemeBar 双包 parent-chain**(uamShared 有 app 0x7f 但无 framework-res 0x01,parent 走到 @android:Theme.Material.Light.NoActionBar(0x01)断链→windowActionBar 没落地,`uamHasWab=false`);修法=uamShared 也 addAssetPath 76a92b8f,**必须在 applyStyle 前**(bag applyStyle 时冻结) | L6 | 🔧 | resource/B | L2892 "uamHasWab=false…parent chain 走到 android:Theme(0x01)那步断了…正在测" |
| 44 | Canvas draw native 分类 + show() crit 面缩到 2(setPosition ZJIIII、finishRecording VJJ 在 DisplayListCanvas,可能还差 1 个 Path-B wrapper) | L5 | 🔧 | render/C | L2947-2948 "finishRecording VJJ…NOT RenderNode method→B 可能须加 1 wrapper" |
| 45 | onClick 的 mAttachInfo 墙(mAttachInfo==null→post 进未 drain 的 RunQueue→onClick 不触发):WestlakeInputAttach 内联进 show()(**已编,未上板验**) | L6 | ✅ | input/D | L2535 "没内联就必须编,否则 touch 到了但 onClick 不触发" |
| 46 | 5ce2dcee ~50% 早停 lottery(mainNew=OK 后窗口构造 wlAlloc PhoneVindow):板退化 vs 解释器 bug — 面板判 INCONCLUSIVE,迁板后非确定性**仍在**→倾向 code bug,形式上未证 | L1 | 🔧 | board/H | L2768 "面板判 INCONCLUSIVE:n=1…要 N≥20…仍等 B 交 probe" |
| 47 | IME 文字输入(WestlakeTextPump.commit→ACTION_MULTIPLE 整串 KeyEvent→dispatchKey→EditText;/data/local/tmp/westlake_text 通道) | L6 | 🔧 | input/D | L2916 "认领 IME 文字输入(用户拍板)…实现中" |
| 48 | **★硬外部墙:4 块板全离线** — hdc list targets 空,USB 层看不到任何 WestLake serial;只有用户能物理重连 | L1 | 🔧 | board/F | L2922 "4 块板全离线…重启 hdc server 后仍空…只有用户能解" |
| 49 | WestlakeGenericJni 接线到 **:769(crit-else)+ :2262(normal-else)**(现全文件 0 调用点;input 52 MotionEvent shorty + theme normal shorty 落这里) | L2/L6 | ⏳ | native/B | L1632 "WestlakeGenericJni 定义了但 0 个调用点";L1819 "必须接【两处】" |
| 50 | createSubDecor windowActionBar 解析出 → subDecor 产出 | L6 | ⏳ | native/B | L2910 "双包+对顺序=windowActionBar 出→过 createSubDecor" |
| 51 | setContentView(app 自己的 R.layout.main)inflate 进 content FrameLayout @android:id/content 0x1020002 | L6 | ⏳ | resource/B | L1152 "findViewById(0x1020002).addView(app R.layout.main)" |
| 52 | tap → WLTEST CLICK(input .so v2 bd6d2a77,normal-sig register C nm 证 stick,:2262;westlake_tap→dispatchTouchEvent→onClick 翻色) | L6 | ⏳ | input/D | L2746 "WLTEST touch DOWN→UP→CLICK + 面板 blue→orange" |
| 53 | WestlakeUpscreen.show() **真 DecorView 首帧**(measure/layout/attach/record→面板像素 r==2) | L5/L6 | ⏳ | render/C | L2866 "首帧就差你这 2 个 crit wrapper + show() 调用" |

---

## 2. 当前前沿 (the live frontier — where reality actually is)

**代码前沿(THE 唯一在打的承重墙)= #43 AppCompat 双包 parent-chain 主题墙(Owner B,resource/L6)。**
uptodown 是 AppCompatActivity,setContentView 走 createSubDecor,要 Theme.AppCompat 的 windowActionBar。app 主题 AppThemeBar(0x7f15000e)的 parent chain 跨包走到 framework `@android:Theme.Material.Light.NoActionBar`(0x01),但 uamShared 只挂了 app arsc(0x7f)、没挂 framework-res(0x01)→ 链断、`uamHasWab=false`。修法已知且明确:给 uamShared **也** addAssetPath(76a92b8f),让同一个 am 有 0x7f+0x01;**关键顺序坑**——addAssetPath+BuildDynamicRefTable 必须在 newTheme/applyStyle(0x7f15000e) **之前**,否则 mTheme 的 bag 已冻结锁死断链(E 钉,L2904)。最后板上状态 = 正在测,未出结论。

**其上还压着一道硬外部墙 = #48 全板离线(Owner F)。** 2026-07-08 凌晨 4 块板全掉 USB,`hdc list targets` 空。**在用户物理重连之前,#43 及以下全部无法上板验证** —— 这是当前真正卡住全队的顶层 blocker(冷启后 B 的 substrate bind-mount / F 的 appspawn-x bind-mount 需重挂)。

**#43 解开后,穿刺主线的确切下一批 PENDING(严格依赖序):**
1. **#50** createSubDecor windowActionBar 解析出 → subDecor 产出(B)
2. **#51** setContentView(app 自己的 R.layout.main)→ content FrameLayout 0x1020002(B)—— *app 自己的布局至今从未 inflate 过*
3. **#53** show() 真 DecorView 首帧 → 面板像素 r==2(C,须先补 #44 的 finishRecording Path-B wrapper)
并行输入支线:**#49** 接 WestlakeGenericJni@:2262 → **#52** tap→WLTEST CLICK(D)→ **#47** IME。

---

## 3. PASS 计数 (honest done-vs-total)

**42 / 53 承重原子在真机上通过(42/53 load-bearing atoms passed on real hardware)** — 🔧 5 在攻 · ⏳ 6 未达。

诚实注脚(哪些"PASS"到什么程度):
- **真机 device-proven**:蓝像素引擎证(#22,5583f5be + H 逐字节复现)、框架装饰骨架出 View 树(#35,H 5-agent 对抗面板 CONFIRMED_WITH_CAVEATS)、RenderNode 级联(#39)、以及绝大多数 native/resource/theme 修复(先在 5ce2dcee device-reproduce、迁 5583f5be 复跑)。
- **仅 coded/host-verified、未上板验**:mAttachInfo(#45)、show() API 冻结(#9)—— 已编译未 device-run。
- **当前全部不可再验**:#48 板离线,42 个 PASS 的"复现"链暂时冻结,直到用户重连。

---

## 4. 台账对账说明 (reconciliation note — 替换虚构的 0/167 M01-SPEC)

旧的 167-原子 M01-SPEC 台账长期显示 **0/167**,且与真机现实脱钩——它按"规格清单"枚举,而非按 app 真正撞到的运行时墙,所以既低估了实际穿透深度(大量框架层其实已通),又掩盖了真正卡点。**本真实墙序台账(REAL-WALL-LEDGER.md)是从白板逐墙提取的 ground truth,应回灌重设 M01-SPEC 的完成度。**

按大里程碑对现实定级:

- **✅ 已 PASS(真机)**:① 起板 + Application.onCreate(SQLite 全过);② MainActivity.onCreate 越过全部框架墙进 APP 业务码;③ native 派发根基(Paint/crit 二值约定/SIGSEGV 5b517bd8/XmlBlock parse-state/"dex 标 crit 但 .so 是 normal→dlsym 真 fn"通用修法);④ 资源 + arsc 真加载(三件套 + 零胶水 JNI_OnLoad + framework-res 76a92b8f);⑤ 主题 + inflate 到**框架装饰骨架**(applyStyle/nativeThemeCreate wrapper/sSystem 根修/?attr stride=7);⑥ **RenderNode JNI 级联全通(Path B ~65 wrapper)**;⑦ 渲染引擎独立证活(hwui→OHOS Surface→面板,11 帧)。
- **🔧 IN_PROGRESS(1 道穿刺前沿 + 外部/并行)**:AppCompat 跨包双包主题墙(#43,穿刺主线唯一在打);Canvas crit 收尾(#44);板全离线(#48,硬外部);5ce2dcee lottery 板-vs-bug(#46,悬案,倾向 code bug 未证);IME(#47)。
- **⏳ PENDING(尚未触达)**:subDecor 产出(#50)→ **app 自己内容 R.layout.main 首次 inflate(#51)** → **真内容首帧(#53)** → 输入 tap 可交互(#49/#52)→ IME 落地。

**必须带上的 H-style 诚实警告**:白板里的"inflate 出 View 树 / 过图形层"**= 框架 window-decor 骨架(DecorView + screen_simple),纯 headless、无 measure/layout/draw、无 Surface、无 RenderThread、面板零像素**;app 自己的 MainActivity 布局(installDecor 先于 app layout)**至今一次都没 inflate**。它**不是** "app UI 出树",**不是**首帧。真·首帧(#53)仍压在 #43 主题墙 + #48 板离线 之下。
