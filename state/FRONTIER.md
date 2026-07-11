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

## 下一前沿（#53 链,B lane）

#43 已把「真 AppCompatTheme WAB 解析」打通。往 #53(unmodified APK 自渲染首帧,像素校验)推进,B lane 顺序:
- **#49** WestlakeGenericJni 接线(现 0 调用点)、**#50** createSubDecor windowActionBar 解析出 → subDecor、
  **#51** setContentView(app `R.layout.main`)→ content FrameLayout(**app 自己的布局至今从未 inflate** —— 关键缺口)。
- W-001 遗留下游技术点(达成 #43 时确认仍需):attr-ordering(probe ~1205 升序)、
  `TypedArray.mDataAddress` 需 `VMRuntime.newNonMovableArray/addressOf`、主题须先 `nativeThemeApplyStyle`。
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
