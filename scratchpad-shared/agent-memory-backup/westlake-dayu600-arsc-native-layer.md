---
name: westlake-dayu600-arsc-native-layer
description: "Agent-B 打通 DAYU600 上 AssetManager/ApkAssets arsc 加载 + XmlBlock/主题全 native 层(包 libandroidfw C++),inflate 推进过 layout_width+FrameLayout;残留=真实 inflate 的资源 plumbing + 5ce2dcee lottery"
metadata: 
  node_type: memory
  type: project
  originSessionId: b3d658ee-33a9-4b16-9c9b-325d7c2886c6
---

# Agent-B(b3d658ee)大板 DAYU600 上屏 native 层完全打通(2026-07-07)

大板 serial `5ce2dcee00000000000000000923012c`;substrate=`/data/local/tmp/westlake-dayu600-substrate`(1.7GB)。libart 部署=`$S/art/libwestlake_art.so`(不是 android/lib64!)。helper=`scratchpad/wl_xmlblock_create.cpp`→`$S/android/lib64/libwl_xmlblock_create.so`。

## 本 session 打通的 native 层(全我实现,board-independent,包 libandroidfw C++ 引擎)
1. **致命部署路径 bug**:runtime 加载 `$S/art/libwestlake_art.so`。
2. **XmlBlock/StringBlock parser**:根因=解释器里这些 native 的 jni_entry 是 libart generic-JNI trampoline(不是真 libandroidfw)→ 强制重解析 + java_vm_ext dlsym 真 libandroidfw 修好。parser walk/getName/getAttribute 全通。
3. **AssetManager style/theme JNI**(helper wrapper 包 C++):`nativeApplyStyle`(`android::ApplyStyle`)、`nativeThemeApplyStyle`(`Theme::ApplyStyle`)、`nativeThemeCreate`(`AssetManager2::NewTheme`,修 theme 指针来路 field0=am,Agent-E 命中)。
4. **★arsc 加载三件套**(核心根修复):`AssetManager.nativeCreate`(`new AssetManager2()`)、`ApkAssets.nativeLoad`(`ApkAssets::Load(std::string const&,uint32)`,helper 用 OHOS clang++/libc++ 同 sysroot 直接写 std::string;sret sp)、`AssetManager.nativeSetApkAssets`(`AssetManager2::SetApkAssets(span<sp<ApkAssets>>,bool)`,span={data,size}两寄存器,sp={ApkAssets*}从 Java mNativePtr 取)。命名空间是 `__n1`。
5. **关键机制**:AssetManager/ApkAssets native 全是 **libart 内部 OHBridge 垃圾桩**(dladdr 审计出清,Agent-E 建议;桩在 libwestlake_art.so sym=?)。修法=解释器强制重解析**但只对我 helper 有 wrapper 的**(dlsym 探测,避免破坏 RegisterNatives 桩→ULE)。java_vm_ext FindCodeForNativeMethod 对 XmlBlock/StringBlock/AssetManager/ApkAssets dlsym helper/libandroidfw。

## inflate 实际推进(全 no-lottery self-test 验证)
零 → screen_simple parser 解析 → LinearLayout inflate → **过 layout_width(nativeApplyStyle)** → **过 FrameLayout/windowContentOverlay**(arsc 通后 `obtainStyledAttributes(theme,{0x1010059})`=TYPE_NULL,Material 本就 @null,inflate-safe)。self-test:`themeApplyOK wcoType=0x0`。

## 残留(不是 native,是 plumbing + 基础设施)
- **真实 inflate 的 context 主题空**(`theme={Themes=[]}`):真实 Activity 的 AssetManager 没挂 framework-res(76a92b8f)。修法=注入 framework-res 到 Activity Resources 的 AssetManager(`addAssetPath` 现在真加载)+ setTheme——已写进探针(actAddFwRes+setTheme+actThemeWco 诊断),**但验证被 5ce2dcee 的 mainNew lottery(~1/8 到 actOnCreate)+ 板子 USB 不稳挡着**。
- framework-res=A 的 `76a92b8f`(99%,已 swap 进 substrate);A 是离线资源域,arsc native 归我(已做)。
- 秘书/C/F/用户共识:**迁 5583f5be(稳板,C render+D input 预部署)甩 lottery** 验真实 inflate。5583f5be 无 substrate(1.7GB 迁移)。
- 更多 getter native(nativeThemeGetAttributeValue 等)是 resolveAttribute 路径,inflate 用 applyStyle 路径不一定需要。

## ★迁移 5583f5be + 主题突破(2026-07-07 晚,用户拍板迁板)
用户选"迁 5583f5be 验证"。substrate 迁移法:`hdc file recv` 整个 substrate 到 Mac(hdc 支持递归目录!)→ 删 .bak/.pre_/.placeholder 备份(1.7GB→729MB,备份占 1GB)→ `hdc file send` 到 5583f5be(注意会嵌套一层子目录,要 mv 修正)→ 推 run-utd-long.sh。5583f5be 也是 DAYU600,/system/lib64 系统库齐(run 脚本只依赖这个板外部分)。**5583f5be 比 5ce2dcee 稳但窗口 setup vtable 非确定性仍在(解释器问题非板子)。**
**又补的 native(helper)**:`ApkAssets.nativeIsUpToDate`(`ApkAssets::IsUpToDate` _ZNK7android9ApkAssets10IsUpToDateEv,addAssetPath 内部检查)、`AssetManager.nativeGetParentThemeIdentifier`(返回0,Theme.toString 用)。
**主题真应用了**:①`ProbeContext.getTheme()`(探针 line ~631)改成缓存主题 + 在 **framework-only sentinel AssetManager**(addAssetPath 76a92b8f)上 applyStyle(0x1030237)②winfix 设 `mUseDecorContext=false`(让 DecorView 用 actBase 的 themed ProbeContext 不是空 DecorContext)。inflate 错误从 `theme={Themes=[]}` → `theme={InheritanceMap=[id=0x1030237:/]}`。
## ★★最后一道墙:android::ApplyStyle 带 parser 不解析 parser 的 ?attr 引用
inflate 卡 FrameLayout:`View.<init> getDrawableForDensity → Failed to resolve attribute index 35: TypedValue{t=0x2/d=0x1010059}`(?attr/windowContentOverlay,assetCookie=-1=来自主题 defStyle)。**决定性对比**:同一 probeTheme、同一 attr 0x1010059——`obtainStyledAttributes(int[])`(applyStyle parser=0)解析成 TYPE_NULL ✅;inflate 的 `obtainStyledAttributes(parser, View_styleable, dsa, dsr)`(applyStyle parser≠0)留成 TYPE_ATTRIBUTE ❌。→ **我 nativeApplyStyle 包的 `android::ApplyStyle`(_ZN7android10ApplyStyleE...)带 parser 时不做最终 ?attr 引用解析**。可能需要:①post-ApplyStyle 对 out_values 里 TYPE_ATTRIBUTE 调 `android::ResolveAttrs`(@0x1e9b64)或 Theme::GetAttribute 再解析(out_values stride=6:[type,data,cookie,resid,changingConfig,density])②或 ApplyStyle 有 resolveRefs 变体。**已问 Agent-E(native 专家)。这是 inflate 到 DecorView 的最后一步。**

## ★★★ 决定性突破(2026-07-07 深夜):inflate 过 FrameLayout 墙!资源/主题/inflate 层彻底打通
`android::ApplyStyle(带 parser)` 不解析 parser/defStyle 的 ?attr(留 TYPE_ATTRIBUTE)→ 我在 nativeApplyStyle **post-resolve**:对 out_values 里每个 TYPE_ATTRIBUTE(type==0x02)用 `apply(theme, parser=null, 0,0, {attrRef}, 1, tmpV, tmpI)` 重解析回填。**关键坑:out_values TypedArray mData stride=7 不是 6**(A16 build!诊断打 scan6=0x0/scan7=0x2 才发现;index 35 在 ov+35*7)。→ ?attr/windowContentOverlay 解析成功 → **"Failed to resolve attribute" 墙消失,FrameLayout inflate 过了!**
**现在推进到**:`RenderNode.nGetElevation` ULE —— inflate 在创建 DecorView 的 View 树 + 每个 View 的 RenderNode → **图形/render native(nGetElevation/nCreate 等)= Agent-C 的 libhwui 域**(和 AssetManager 一样本 runtime 没注册)。**我的资源/主题/inflate 域=DONE。engine 证收敛:我 inflate + C render。**
**完整成果链(全我实现的 native,board-independent)**:XmlBlock/StringBlock parser → AssetManager applyStyle/themeApplyStyle/themeCreate → arsc 加载(nativeCreate/nativeLoad/setApkAssets 包 AssetManager2/ApkAssets C++)→ nativeIsUpToDate/nativeGetParentThemeIdentifier → **applyStyle ?attr post-resolve(stride=7)** → inflate 过 layout_width+FrameLayout 两墙到 View 树/RenderNode。探针侧:ProbeContext.getTheme 用 framework-only am applyStyle + mUseDecorContext=false。

## ★★★★ RenderNode 层打通 + AppCompat 主题墙(2026-07-08)
**RenderNode 全通(engine 图形半边)**:Path A(register_android_graphics_classes)对 @CriticalNative RegisterNatives **不 stick**(XmlBlock 前例应验,gfxReg=0 但 nGetElevation 还 ULE)→ **Path B**:helper 写 ~65 个 `Java_android_graphics_RenderNode_n*` wrapper 包 libhwui `RenderProperties` C++(`mutateStagingProperties()`/`stagingProperties()` 导出返 RenderProperties&,无需 offset;getter/setter/Outline 多跳/matrix/stub)。解释器 RenderNode special-case(照 XmlBlock）加 NORMAL-ABI handler:**FJ/ZJ/ZJI/ZJJ/ZJIIII/ZJIIIIFF/VJJ/VJI**（nGetElevation 是 @CriticalNative,libhwui RegisterNatives 桩不 stick,必须走我 java_vm_ext bridge + 这些 handler）。**关键 stride 坑早已解(out_values stride=7)**。inflate 过 View 树 + 所有 RenderNode → 进 AppCompat setContentView。
**当前墙 = AppCompat 主题(A/E 域,已给决定性答案)**:uptodown 用 AppCompatActivity,`createSubDecor` 查 `R.styleable.AppCompatTheme` 的 `windowActionBar`(0x7f040691）。app 主题=**0x7f15000e=AppThemeBar**（manifest android:theme,AXML 解析 resmap 找 0x01010000 得到）。
- **跨包断点(A 追出)**:AppThemeBar → Theme.AppCompat.DayNight.NoActionBar(0x7f)→...→ `Platform.V21.AppCompat.Light`(0x7f)→ parent=`@android:Theme.Material.Light.NoActionBar`(**0x01 框架**)。uamShared 无 0x01 → chain 断 → bag 继承链断 → windowActionBar 拿不到（虽在 0x7f 定义）。
- **顺序坑(E 钉)**:theme native bag 在 applyStyle 那刻按当时 am 包集算死(mTheme 缓存)。**必须先 addAssetPath(76a92b8f=有 Theme.Material.Light.NoActionBar 的 framework-res) 再 newTheme+applyStyle**。
- **修法(probe 已改，未测)**:setTheme 从 Material.Light(0x1030237)换 **0x7f15000e**;因 uact.getResources()≠uamShared(getResourceName notfound=红鲱鱼，缺 nativeGetResourceName)→ 在 **uamShared 上 `addAssetPath(76a92b8f)`→`new WlResources(uamShared, dm, cfg[uiMode=day])`→newTheme→applyStyle(0x7f15000e,true)→反射设 uact.mTheme**(ContextThemeWrapper.mTheme)。三层诊断 uamHasWab/wbgType(0x01010054)/hasColorPrimary。**probe build 好但板子死在部署前，没测到——很可能已对。**
- **DayNight**：强制 cfgT.uiMode=UI_MODE_NIGHT_NO(day)→ Platform.V21.AppCompat.Light 落 Theme.Material.**Light**.NoActionBar。
**show() 剩(C 提醒)**：到 show() 时补 1 个 `DisplayListCanvas.finishRecording` wrapper;setLeftTopRightBottom 我已有;nCreate/nDrawColor/beginRecording normal register + C renderer 4 natives 自注册。probe show() 接线已完整(actOnCreate=OK→getDecorView→WestlakeUpscreen.show(decor,1200,1920))。
**⚠️ 2026-07-08 凌晨：4 块板全离线(hdc list targets 空，USB 层看不到，F 全队告警)。硬件墙，已 bark 用户。代码全 build 就绪，板子回来即部署测。**

## 铁律:用户明确"不要再 lottery"。cron 9adc0ce9 每10min 读 COORD。进展及时同步 AGENT-COORD.md。5583f5be 是 C 的板,只部署我的 substrate 目录不碰他 render。
