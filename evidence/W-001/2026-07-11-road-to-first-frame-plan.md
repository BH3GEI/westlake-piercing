# 通往 #53 首帧的路线 — 侦察 + gpt-5.6-sol 顾问定案

日期 2026-07-11 · 主号(thinker)· #43 达成后的前沿侦察 · observed(APK/probe 事实) + advisory(gpt-5.6 判断)

> #43(W-001)已 PASS 落定。本文件把"从主题解析到 app 真首帧"这段路一次性探明并定案,
> 供下一张卡(#49/#51/#53)开工即用。三方来源:APK 反查(observed)+ probe 现状地图(observed)
> + gpt-5.6-sol xhigh 顾问(advisory,closed-book,已把事实喂进去)。

## A. APK 事实(observed,apktool 反出 test-uptodown.apk sha256 0a8c8648…)
- 启动 Activity = `com.uptodown.activities.MainActivity`,theme `@style/AppThemeBar`(AppCompat,windowActionBar=false)。
  基类混淆为 `i5.g0`(AppCompatActivity 子类)。`onCreate` → `setContentView(R.layout.main)`(id 0x7f0e0121)。
- **`R.layout.main` 极简(7 行,零自定义 View)**:
  ```
  RelativeLayout (bg @color/main_blue, gravity=center, match_parent)
   ├─ ImageView  id=iv_logo_uptodown_update, app:srcCompat=@drawable/vector_uptodown_logo_white (矢量)
   ├─ TextView   id=tv_msg_status_526, 28sp, @color/white, @string/msg_update_app_status_526
   └─ TextView   id=tv_update_status_526, bg=@drawable/ripple_wizard_button, @string/updates_button_update_app
  ```
- ⇒ **app 真首帧 = 纯蓝底 + 居中矢量 logo + 两行白字**(其一带 ripple 按钮背景)。首帧底色蓝,与货架 #22 引擎
  RSSurfaceNode 背景 0xff202080 天然对齐。

## B. probe 现状地图(observed,Explore agent)
- probe 最远到 #43 `obtainStyledAttributes`(stepCode=5)。FULL 路径反射调 `Activity.onCreate` + 裸
  `PhoneWindow`,但 **`setContentView` 故意跳**(DecorView.<init> → `Paint.nSetFlags` 未绑 → OHOS trampoline SIGBUS)。
- `createSubDecor`/`AppCompatDelegateImpl` 从未调用(#50)。`WestlakeGenericJni` 定义于
  `local-build-adapters/art-latest/patches/runtime/interpreter/interpreter.cc:214`,**0 调用点**(#49);两 hook 点 :769/:2262 未接。
- **#53 首帧引擎已存在但未接线**:`ports/dayu600/gfx-smoke/westlake_upscreen_renderer.cpp`
  (读 `RenderNode.mNativeRenderNode` → `RenderProxy` → `setSurface(OHNativeWindow)` → 每帧
  `UiFrameInfoBuilder`+`forceDrawNextFrame`+`syncAndDrawFrame`)+ `ohos_display_surface.cpp`
  (`RSSurfaceNode` 背景 0xff202080 → `AttachToDisplay(0)`)。即 #22 蓝像素(5583,11 帧,md5 08f400a8)。
  现役 sidecar `westlake_embedded_art_dlopen_probe.c` **一个渲染 native 都没绑**。

## C. gpt-5.6-sol 定案(advisory,xhigh,closed-book;/tmp/w-next-wall-gpt56-v2.out)

### C1. 关键路径 & 风险排序
排序:接 GenericJni 双 ABI dispatch → 保证 per-view style 提取(newNonMovableArray/addressOf、nativeApplyStyle
写 TypedArray.mDataAddress/mIndicesAddress)→ **绕开 window/decor 与 createSubDecor** → 用窄 Factory2 inflate →
补齐图形对象构造 → measure/layout → 录 display list → 提交 RenderProxy。
- **头号隐藏杀手 = (a) Typeface/Minikin bootstrap + 文本测量**(不是 RelativeLayout inflation)。两个 TextView 必经
  Minikin/MeasuredText/LineBreaker;本 VM 无 zygote 字体初始化、无 boot image。**光绑 Typeface 方法不够**——
  若默认 family map/native handle 从未构造,构造能过但会晚死在 `BoringLayout`/`MeasuredText`/`LineBreaker`/`Canvas.drawText`。
  **可能需要 fresh VM**:失败的 boot <clinit> 之后 field-poke 不会重建 `Typeface.DEFAULT`/font map/finalizer 状态。

### C2. inflate 路线定案
- **不需要 createSubDecor**。纯框架 inflate 语义错(框架 ImageView 忽略 `app:srcCompat`)。
- **定案 = 窄 `LayoutInflater.Factory2`,只把 ImageView 替换成 `AppCompatImageView`**(带 tinted/wrapped context),
  RelativeLayout/TextView 留框架件。`AppCompatDelegate.installViewFactory()` 可给这替换,但更窄的自写 factory 只映 ImageView
  更省。退路:框架 inflate + `AppCompatResources.getDrawable(vector)` + `ImageView.setImageDrawable`。
- inflate 会触的 native 面(需预绑):Paint.nInit/nInitWithPaint/nSetFlags/nSetColor/nSetTypeface/nGetNativeFinalizer;
  Typeface.nativeCreateFromTypeface/…/nativeSetDefault + Font/FontFamily 构造;测量段 Paint.nMeasureText/nGetRunAdvance/
  nGetFontMetrics(Int)/MeasuredText/LineBreaker.nComputeLineBreaks;矢量 VectorDrawable 树/Path/(compat 走 Path.nInit+缓存
  Bitmap.nativeCreate);RippleDrawable 首帧非按压态多为 Java+TypedArray/ColorStateList,不需 Choreographer 动画;
  XmlBlock.Parser 解析 native。RenderNode.nCreate/nGetNativeFinalizer/nSetLeftTopRightBottom 每 view 需有效。

### C3. 首帧策略定案 = 手动 measure/layout/draw 进 RenderNode(3b)
不走 ViewRootImpl。把 `sceneNode.mNativeRenderNode` 交给货架 RenderProxy。**不加 Java HardwareRenderer**
(sidecar 已用 C++ RenderProxy 做 setSurface/setContentRoot/syncAndDrawFrame)。单静态帧**不需 Choreographer/vsync**。
- 绑定次序:①资源/style(newNonMovableArray/addressOf、nativeThemeApplyStyle、nativeApplyStyle、XML parser)
  ②首个 view 前(RenderNode.nCreate+finalizer/property、Paint.nInit/nSetFlags+finalizer、Typeface/默认字体初始化)
  ③矢量前(VectorDrawable 树 或 compat Path/PathMeasure、Bitmap.nativeCreate 族、Canvas bitmap/path)
  ④measure 前(Paint 字体度量、Typeface/Minikin、MeasuredText、LineBreaker)
  ⑤录制前(RenderNode.nSetLeftTopRightBottom、display-list 生命周期、RecordingCanvas.nCreateDisplayListCanvas/
  nFinishRecording/nDrawRenderNode、Canvas nDrawColor/nDrawRect/nDrawPath/nDrawBitmap/nDrawText 各重载)
  ⑥提交(设 content/root node → setSurface → frame-info → forceDrawNextFrame → syncAndDrawFrame)。
- **关键 ART 细节**:大量 RenderNode/HWUI property native 是 `@CriticalNative`/`@FastNative`。field-poke 的目标 + generic
  dispatch 必须保住声明 ABI——**一个普通 JNI trampoline 会在 entry_point_from_jni_ 非零时仍破坏参数**。⇒ 这正是 **#49
  WestlakeGenericJni 必须做的**:normal-JNI(收 JNIEnv*/class-or-this)与 @CriticalNative(不收)两条 ABI 分开。

### C4. ViewRootImpl = 死胡同
`WindowManagerGlobal.getWindowSession()` 要 WMS/IWindowSession;`setView` 要 addToDisplay/insets/SurfaceControl/
InputChannel/Looper+Choreographer+DisplayEventReceiver+vsync。伪造=重写缺失的运行时服务。⇒ **手动 draw 是唯一可信首帧路**。
最小序列:构主题 Context/Resources → 窄 Factory2 inflate main → 定 drawable 态/布局方向(避按压 ripple)→
`root.measure(EXACTLY(w),EXACTLY(h))` → `root.layout(0,0,w,h)` → 取 sceneNode → `setPosition` → `beginRecording` →
`root.draw(canvas)` → `endRecording` → 交 mNativeRenderNode 给 RenderProxy → UiFrameInfoBuilder → forceDrawNextFrame →
syncAndDrawFrame。`root.draw` 会让 ViewGroup 录子 display list 并引用其 RenderNode,故每子 RenderNode/display-list native 都要有效。

## D. 下一卡建议(sequencing)
1. **先 #49**:把 WestlakeGenericJni 接进 interpreter 两 hook,且**区分 normal/critical ABI**——这是绑渲染 native 的地基
   (否则 @CriticalNative 的 RenderNode/HWUI native 参数会被破坏)。
2. **再 #51**:窄 Factory2 只替 ImageView→AppCompatImageView;预绑 C2 全套 native(重点 Typeface/Minikin,先做 fresh-VM
   字体初始化冒烟,验证 drawText 不晚死)。oracle 先立"inflate 返回非空 root 且 measure/layout 得非零尺寸"。
3. **后 #53**:手动 draw 进 RenderNode → 货架 RenderProxy → 面板像素 r==2(#53 判据)。
- 风险闸:Typeface/Minikin 若无法在无 boot-image 下拿到真 SkTypeface 句柄,可能要在 art-latest 装配里做最小字体初始化
  (不碰 stock jar)。这是最需要先打的探针。

## 附:证据/复现
- gpt-5.6 定案原文:/tmp/w-next-wall-gpt56-v2.out(closed-book,xhigh,22.7k tok,exit 0)。第一版因 codex-exec agentic 乱跑
  工具(apkanalyzer 找不存在文件、68s java-find)被中止重问;第二版把事实全 inline + 禁工具 + 480s 硬顶。
- probe 现状地图:本班 Explore agent(file:line 已在 B 段)。
- #22 引擎:evidence/INDEX.md:8;archive/whiteboard-era/REAL-WALL-LEDGER.md:36。
