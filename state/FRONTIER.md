**更新**：2026-07-11 · W-001 · **#43 达成 —— 验收板 5583 `atom-43.sh` PASS ×4(稳定)** · 主号
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
- **头号风险闸(先打的探针)**:**Typeface/Minikin bootstrap + 文本测量**。无 boot image/无 zygote 字体初始化时,光
  field-poke Typeface 方法不够(默认 family map/native handle 从未构造)—— 构造能过但会晚死在 MeasuredText/LineBreaker/
  drawText。**可能要 fresh VM 或在 art-latest 装配里做最小字体初始化(不碰 stock jar)**。#43 遗留下游点(attr-ordering
  升序、TypedArray.mDataAddress 需 VMRuntime.newNonMovableArray/addressOf、先 nativeThemeApplyStyle)并入上面 ①②。
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
