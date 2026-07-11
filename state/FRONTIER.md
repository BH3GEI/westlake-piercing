**更新**：2026-07-11(晚)· 前沿 = **color-apk 上屏**(交接 `state/HANDOFF-2026-07-11-color-apk-onscreen.md`)· 主号
> 用户验收线收紧:**必须是安卓 APK 自己的 `Canvas.drawColor` 变色上屏,拒绝任何 OH 直接填色/静态色块**。
> #49/W-003 经 codex gpt-5.6-sol/max 定案**重写**:根因不是 ABI/派发,是 `class_linker.cc:4042` 早 `return;` 跳过
> @CriticalNative 发布块(:4055-4066)+ 两 resolver 漏查 `GetRegisteredNative()`(:504)。修法=发布块前移+查表。
> 证据 `evidence/W-001/2026-07-11-codex-hwui49-verdict.txt` + `-hwui49-rediagnosis-binding-not-dispatch.txt`。
> ——以下为 #43 达成存档(仍有效)——

**#43 达成存档** —— 验收板 5583 `atom-43.sh` PASS ×4(稳定) · 主号
> 卡 W-001 完成:`atom-43.sh 5583f5be…` 连 4 次 PASS(run_rc=0 ∧ `nativeSet=ok ck=2` ∧
> `wabAttr=0x7f040691` ∧ `uamHasWab=true`)。副板 5ce2dcee 亦 PASS,已对齐同一 committed dex
> (696dd3cb)+ 同一 ART 库(3ea7b69d)。LEDGER #43 → ✅(V=✔)。卡片可 doing→done。

## 墙 #43 · 卡 W-001（已达成,存档摘要）

三段机制 + 一段环境墙,全部 observed:
1. **Trace ULE 越过** = 用户授权 P2 field-poke(SetEntryPointFromJni, ArtMethod off16)绑 boot native
   → `W001 P2 poked`→`P2 recall ok (no ULE)`。
2. **CD-mmap 上游真墙修复** = sidecar 运行时 mmap interposer(抢占 libandroidfw 的 `U mmap`,只读文件
   失败映射走 `MAP_PRIVATE|ANON`+pread 救回)。改 OUR loader 不改 apk/不改 stock → 不违反 #53。
   实测 uptodown/framework-res 大 apk 的 `Create=>OK`+`LoadedArsc=>OK`+无 EINVAL。
3. **5583 验收墙根因 = 板上 ART 库版本落后(非代码墙)** = 5583 曾装 331568b2(旧 WSL 混合工具链,
   `SystemProperties.native_get` 绑定不生效→`getSystem()→createSystemAssetsInZygoteLocked` clinit 级联 NPE)。
   逐层 read-only sha256 比对:framework.jar/core-libart/sidecar **字节全同**,唯 `libwestlake_art.so` 异。
   换成 5ce2dcee 的 3ea7b69d(clean canonical build,`local-build-adapters/art-latest/Makefile.ohos-arm64`)
   → new Resources 立刻越过,oracle 稳定 PASS。旧库备份 `$S/art/libwestlake_art.so.pre-w001-artswap`。
4. **硬化(防回退)** = atom-43.sh 新增断言「板上 `$S/art/libwestlake_art.so == 3ea7b69d`」;
   REPO_LOCK 新增 `[artifacts.w001_substrate_art]` 锁 3ea7b69d + 构建配方。
- **A/B(observed)**:A(app-only)`wab=0`;主路径(app+framework)`uamHasWab=true wab=0x7f040691`
  ⇒ windowActionBar 解析**需 framework 第二包**。
- 证据:`evidence/W-001/2026-07-11-5583-acceptance-pass-artlib-rootcause.txt`(验收 PASS + ART 库根因);
  `-cd-mmap-interposer-oracle-pass-5ce2dcee.txt`(机制证成)。

## 下一前沿（#53 链,B lane）—— 路线已探明+定案(2026-07-11)

#43 已把「真 AppCompatTheme WAB 解析」打通。往 #53(unmodified APK 自渲染首帧,像素校验)的路已一次性探明并
定案,详见 **`evidence/W-001/2026-07-11-road-to-first-frame-plan.md`**(APK 反查 + probe 地图 + gpt-5.6-sol 顾问)。要点:
- **首帧目标已具体**:`MainActivity.setContentView(R.layout.main)`,而 `R.layout.main` 极简(蓝底 RelativeLayout +
  矢量 logo ImageView[app:srcCompat] + 2 TextView,**零自定义 View**)⇒ app 真首帧 = 蓝底+logo+两行字。
- **首帧引擎已存在但未接线**:`ports/dayu600/gfx-smoke/`(RenderProxy→OHOS RSSurfaceNode,即 #22 蓝像素 11 帧)。
  现役 sidecar 一个渲染 native 都没绑。
- **定案的 sequencing**:
  1. **#49 先行(地基)**:WestlakeGenericJni 接进 interpreter 两 hook(:769/:2262),**必须区分 normal-JNI 与
     @CriticalNative 两条 ABI** —— 大量 RenderNode/HWUI property native 是 @CriticalNative,普通 JNI trampoline 会在
     entry_point_from_jni_ 非零时仍破坏参数。
  2. **#51 inflate**:窄 `LayoutInflater.Factory2` 只把 ImageView→AppCompatImageView(处理矢量 srcCompat),
     **不走 createSubDecor**(gpt-5.6 判:不需要,且 decor 面更大更险)。预绑 Paint/Typeface/Minikin/MeasuredText/
     LineBreaker/VectorDrawable/Bitmap/XmlBlock 全套 native。
  3. **#53 首帧**:**手动 measure/layout/draw 进 RenderNode**(不走 ViewRootImpl —— 缺 WMS/IWindowSession/vsync,
     是死胡同),把 `sceneNode.mNativeRenderNode` 交货架 RenderProxy;单静态帧不需 Choreographer/vsync,不加 Java
     HardwareRenderer。→ 面板像素 r==2(#53 判据)。
- **头号风险闸 —— 探针已打(2026-07-11,fontsmoke pristine-VM,5583)**:证据
  `evidence/W-001/2026-07-11-fontsmoke-pristine-vm-result.txt`。结论(observed,ladder 到 99-done 无 SIGBUS):
  1. **字体 map 是真闸**:`Typeface.DEFAULT==null`、`sDefaults==null` —— Typeface.<clinit> 跑了但**从未构造系统字体表**
     (无 zygote preload `loadPreinstalledSystemFontMap`)。measureText/metrics/bounds 全退化。**修法 = 自带 .ttf +
     `Typeface.Builder(path)` + 预绑 Font/FontFamily/Typeface native + 设 sDefaults**;别赌 OHOS `/system/fonts`。
  2. **图形 native 绑定是"部分"而非"全无",且可干净恢复**:`new Paint()`、nSetFlags、nSetTextSize(normal-JNI)**已绑能用**;
     `@CriticalNative` getter(nGetFlags)是 **UnsatisfiedLinkError = No implementation found**(内部 libhwui 符号非导出
     Java_*,dlsym 找不到)—— 正是 **#49 双 ABI + field-poke** 的面。**失败是可 catch 的 Java 异常,不是怕的 SIGBUS/ABI 崩**。
  3. **fresh-VM 授权得证**:recon 说的 "nSetFlags 在 setContentView 里 SIGBUS" 在 pristine VM **未复现**(step 02 OK)——
     那次是下游/poisoned-state,不是 nSetFlags 本身。坐实 poisoned-<clinit> / fresh-VM 纪律。
  - **推论**:#51 的字体子问题=门(已证),但字体 bootstrap **可先于 #49 起步**(Typeface/Font native 多为 normal/@FastNative,
    先 field-poke normal 的;#49 补 @CriticalNative 缺口)。下一穿刺 = fontsmoke 扩:自带 .ttf → field-poke → Builder →
    setTypeface → **measureText != 0 即 SUCCESS**。#43 遗留下游点(attr-ordering 升序、TypedArray.mDataAddress 需
    VMRuntime.newNonMovableArray/addressOf、先 nativeThemeApplyStyle)并入 ①②。
- 复核队列(工厂):LEDGER 38 个 V=? claimed 项仍不得当当前板事实,尤其 #4「onCreate 越过全部框架墙」有矛盾。

## 跨 lane 提醒（可复用,勿丢）

imageless-ART 上凡要真正加载真实 apk 资源的墙,都会撞板 libziparchive 的 CD-mmap EINVAL —— 不是 apk 的问题
(Python zipfile 验证 uptodown 2064 条目 testzip clean)。**已修且可复用**:sidecar 里的运行时 mmap interposer
(抢占 libandroidfw 的 `U mmap`,失败只读文件映射走 anon+pread 救回),不改 apk、不重建 libandroidfw。见 sidecar
`westlake_embedded_art_dlopen_probe.c` mmap 块 + evidence 2026-07-11-cd-mmap-*。
另:imageless-ART 上 `new Resources()` 会经 `getSystem()→createSystemAssetsInZygoteLocked` 触发
`SystemProperties.native_get` clinit 级联(PackagePartitions/Configuration/LocaleList)—— 谁要在板上 `new Resources`
都会撞;**且板上 `libwestlake_art.so` 必须是 3ea7b69d(canonical build),旧 331568b2 会静默让 getSystem NPE**。
旧「Trace/boot 类 RegisterNatives 不生效」提醒仍成立,用 P2 field-poke 越过。
