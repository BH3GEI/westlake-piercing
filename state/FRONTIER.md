**更新**：2026-07-11 · W-001 · CD-mmap 墙已修 + 5ce2dcee oracle PASS · 主号
> 副板 5ce2dcee:`atom-43.sh 5ce2dcee` 复现 PASS。验收板 5583:另有正交环境墙(getSystem NPE)未过。

## 墙 #43 · 卡 W-001

- **Trace ULE 已不是墙**：sidecar 的 **P2 field-poke（SetEntryPointFromJni）** 实测绕过 Trace ——
  `W001 P2 poked` → `P2 recall ok (no ULE)`。
- **CD-mmap 墙(上游真墙)已修**:板 libandroidfw 的 libziparchive 用 `MappedFile::FromFd(mmap)`
  映大真实 apk 的中央目录(CD)返 EINVAL(uptodown CD@15050189、framework-res CD@34946341;小
  2048 apk 的 CD 却能映)。**交付修法 = sidecar 运行时 mmap interposer**(非「改 zip_archive.cc +
  重建 libandroidfw」那条,obj 树已失):preload 的 `mmap` 抢占 libandroidfw 的 `U mmap`(PLT
  可 interpose),把只读+文件背+内核选址的失败映射用 `MAP_PRIVATE|ANON`+pread 救回。改 OUR loader
  不改 apk/不改 stock 二进制 → 不违反 #53。
- **5ce2dcee 实测 PASS(observed,复跑稳定)**:`Create=>OK`、`LoadedArsc=>OK`、无 EINVAL;四判据全中
  —— RUN_RC=0 ∧ `nativeSet=ok ck=2` ∧ `wabAttr=0x7f040691` ∧ `uamHasWab=true`(附带 hasColorPrimary=true)。
  旧「getResourceName SIGBUS」真凶是一段孤立实验(空 am2/cookie=0),已删,非 CD 失败。
- **A/B 结论(observed)**:A(app-only)`wab=0`;B(app+framework)`uamHasWab=true wab=0x7f040691`。
  ⇒ windowActionBar 解析**需 framework 第二包**。
- 证据:`evidence/W-001/2026-07-11-cd-mmap-interposer-oracle-pass-5ce2dcee.txt`。

## 下一步(验收板 5583 正交墙)

- **5583 未过,#43 维持 🔧**。CD 修复在 5583 也生效(`nativeSet=ok ck=2`),但 `new Resources(am,dm,cfg)`
  在 `ResourcesImpl:221 → AssetManager.getSystem():312 → createSystemAssetsInZygoteLocked:288` 抛
  `NullPointerException: ArrayList.size() on null`:`SystemProperties.native_get` 未绑 → `PackagePartitions`/
  `Configuration.setToDefaults:1575(LocaleList)`/`Environment` clinit 级联崩。
- **根因判断**:`seedSystemAssetManager` 写的 `sSystem` 没被 getSystem 读到(栈越过 `sSystem!=null`
  early-return)→ 极可能 **dual-AssetManager mirror::Class**(同 dual-Trace);且该 seed 在 5583 非确定性。
- **候选修法**(均在 sidecar/probe 内,不碰 stock):(a) 让 seed 命中 ResourcesImpl 引用的同一
  AssetManager.sSystem 副本(或 P2 式直接改字段),对照 LEDGER #31「sSystem 根修 reinitialize=true」;
  (b) P2 field-poke 绑 `SystemProperties.native_get` 消 clinit 级联。
- **下游墙(5583 越过 getSystem 后仍在)**:attr-ordering(probe ~1205 升序)、TypedArray.mDataAddress
  需 VMRuntime.newNonMovableArray/addressOf、主题须先 nativeThemeApplyStyle。
- 只有卡片 oracle(`atom-43.sh 5583f5be…`)PASS 才跃迁 #43。5ce2dcee PASS 证机制,不是卡片验收。

## 跨 lane 提醒
imageless-ART 上凡要真正加载真实 apk 资源的墙,都会撞板 libziparchive 的 CD-mmap EINVAL —— 不是 apk
的问题(Python zipfile 验证 uptodown 2064 条目 testzip clean)。**已修且可复用**:sidecar 里的运行时
mmap interposer(抢占 libandroidfw 的 `U mmap`,失败只读文件映射走 anon+pread 救回),不改 apk、不重建
libandroidfw。见 sidecar `westlake_embedded_art_dlopen_probe.c` mmap 块 + evidence 2026-07-11-cd-mmap-*。
旧“Trace/boot 类 RegisterNatives 不生效”提醒仍成立,W-001 用 P2 field-poke 越过。
另:imageless-ART 上 `new Resources()` 会经 `getSystem()→createSystemAssetsInZygoteLocked` 触发
`SystemProperties.native_get` 未绑的 clinit 级联(PackagePartitions/Configuration/LocaleList)—— 谁要在板上
`new Resources` 都会撞;seed sSystem 需命中 dex-resolved 的那个 AssetManager mirror::Class 才有效。
