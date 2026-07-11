**更新**：2026-07-11 · W-001 · 真墙订正(旧“Trace ULE”已非当前墙)· 主号
> 证据板 5ce2dcee,当前提交产物(17:05)。5583 本班未重跑(纪律:只动 5ce2dcee)。

## 墙 #43 · 卡 W-001

- **Trace ULE 已不是墙**：提交的 sidecar 里 **P2 field-poke（SetEntryPointFromJni）** 实测绕过
  Trace —— 主日志 `W001 P2 poked` → `P2 recall ok (no ULE)`,随后越过 `new Resources()`。旧
  FRONTIER 记的 `Trace.nativeIsTagEnabled` ULE 是 P2 落地前的状态,已过时。
- **当前真墙(更上游)**：板上 libandroidfw 的 libziparchive **打不开真实签名/标准 apk**。
  `nativeload.txt`:`ZipAssetsProvider::Create(2048-2-9.apk)=>OK` 而 `(test-uptodown.apk)=>NULL`
  `(framework-res.apk)=>NULL`。`w001-stdout.txt` 确切错误:
  `Zip: failed to map central directory (offset …, size …): Invalid argument`(mmap EINVAL)。
  ⇒ ApkAssets 空 → AssetManager2 空 → `nativeSet=ok ck=2` 是**假阳性** → 第一次真实资源访问
  `nativeGetResourceName` 在 fault_addr=0x8 **SIGBUS**(rc=139,栈见 earlyResName:1009)。
- **根因(源码级)**：`local-build-adapters/zip-15-src/zip_archive.cc` 整文件 mmap 被 `#if 0` 关
  (AOSP b/287285733),`InitializeCentralDirectory` 改走 libbase `MappedFile::FromFd(mmap)` 单独映
  中央目录;该 FromFd 对小 apk 的 CD 成功、对大真实 apk 的 CD 返 EINVAL(反证非纯页对齐:2048 的
  CD offset 也非对齐却能映)。条目数据走 utils `FileMap::create` 正常,只 CD 走的 libbase FromFd 坏。
  详见 `evidence/W-001/2026-07-11-real-wall-zip-cd-mmap-einval.txt`。

## 下一步

- **修复已改本仓源**：CD 改 pread 进自持堆缓冲 `ZipArchive::cd_heap_`(绕坏 FromFd,无对齐/尺寸约束)
  —— `zip_archive_private.h` 加成员 + `zip_archive.cc` `FromFd`→`ReadAtOffset`。改 OUR loader 不改
  apk,不违反 #53。**待在 compiler 上 `relink_libandroidfw.sh` 重建 libandroidfw.so**(zip_archive.cc
  属 `$OBJ/*.o`,先重编该 .o 再 relink)→ 部署 5ce2dcee → 重跑,验 `Create=>OK` + loaded=1 + 越过
  getResourceName。
- **下游墙(加载修好后)**:attr-ordering(probe ~1205 未升序,专家#2)、TypedArray.mDataAddress 需
  VMRuntime.newNonMovableArray/addressOf(顾问给了注册码)、主题须先 nativeThemeApplyStyle。
- 只有匹配本地 artifact + `nativeSet=ok` + `wabAttr=0x7f040691` + `uamHasWab=true` 才跃迁 #43。
  LEDGER #43 维持 🔧。

## 跨 lane 提醒
imageless-ART 上凡要真正加载真实 apk 资源的墙,都会撞这堵 libziparchive CD-mmap EINVAL —— 不是 apk
的问题(Python zipfile 验证 uptodown 2064 条目 testzip clean)。修 loader(pread CD),别改 apk。
旧“Trace/boot 类 RegisterNatives 不生效”提醒仍成立,但 W-001 已用 P2 field-poke 越过。
