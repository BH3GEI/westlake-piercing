**更新**：2026-07-10 oracle 纠错 · W-001 · thinker

## 墙 #43 · 卡 W-001

- **旧判据作废**：probe 把 `0x010100b0`（`android:autoLink`）当成 windowActionBar；真实 AppCompat attr 是 `0x7f040691`，且目标 APK 的 `AppThemeBar` 直接定义它为 false。旧 `uamHasWab=false` 不能证明双包 parent-chain 断链。
- **仍有效的实测 FAIL（5583）**：`nativeW001Append(Object, byte[])->int` 两次因 static shorty `ILL` 未进入 native。另发现 native append 用了不存在的三参 `nativeSetApkAssets`，旧 `ck=2` 也不证明 AssetManager2 已挂包。
- **证据**：`evidence/W-001/2026-07-10-oracle-audit.txt` + `2026-07-10-hashlocked-ill-baseline.txt`（launcher/DEX/SO 与板上全匹配后仍 FAIL）。

## 下一步

1. 领卡时只锁 5583；保留已修正的 attr/nativeSet(ZZ) 与 hash-locked oracle，做最小 `ILL → VLL` trampoline，不改 interpreter/class_linker。
2. A/B 测 app-only 与 app+framework；运行 `oracle/verify/atom-43.sh <serial>`。
3. 只有匹配本地 artifact、`nativeSet=ok`、`wabAttr=0x7f040691`、`uamHasWab=true` 才跃迁 #43；A/B 决定是否彻底撤销“双包”根因。
