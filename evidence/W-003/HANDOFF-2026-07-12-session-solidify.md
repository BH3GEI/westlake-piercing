# HANDOFF · W-003 session solidify · 2026-07-12 01:25 JST

会话被中止前的落盘快照。下一任 thinker/worker 从这里接。

## 身份与隔离

| 项 | 值 |
|---|---|
| branch | `worker/W-003` |
| worktree | `/Users/yao/Desktop/code/westlake-piercing.worktrees/W-003-clean` |
| 卡 | `tasks/doing/W-003.md`（仍在 doing；勿自移 done） |
| 交付 commit | `2854df464722e9e42d3f86ca606b1bf6ece9839b` |
| 板 | `5583f5be00000000000000000323012c`（验收只认这块） |

卡上旧路径 `…/worktrees/W-003` 已废（非 git / 旧脏原型）。以 **W-003-clean** 为准。

## 墙与结论

- **#49 / W-003**：ClassLinker `@CriticalNative` 暂存发布 + resolver 查 `GetRegisteredNative()`。
- **oracle**：`atom-49` **PASS**（`crit-bind nGetFlags=5 expected=5 ok normal=ok`）+ 同 ART 下 `atom-43` **PASS**。
- **旧 GenericJni fallthrough 路线已废**，勿回写。
- **声明边界**：#49 绑定墙清；ColorView 像素 / #51 inflate / #53 RenderNode 上屏 **未**验。

## 锁定产物（hash-lock）

ART `libwestlake_art.so`：

`0742f1c44287aee437f18e4cb305897e48a61948a39154bd9660203b5d87103e`

已写入：

- `REPO_LOCK.toml` → `artifacts.w001_substrate_art` / `w001_oracle_pass`
- `oracle/verify/atom-49.sh` / `atom-43.sh` → `KNOWN_ART_SHA`

板侧备份（固化时已把 live 指回此 hash）：

- `$S/art/libwestlake_art.so.w003-publish` = `0742f1c4…`
- `$S/art/libwestlake_art.so.pre-clean-relink` = 同 hash
- 漂移备份：`$S/art/libwestlake_art.so.drift-edec7332-bak`（固化前 live 被盖成 `edec7332…`）

主机侧二进制副本（**不进 git**）：

- `evidence/W-003/artifacts/libwestlake_art.so.0742f1c4`

证据正文：`evidence/W-003/2026-07-12-atom-49-clean-relink-pass.txt`

## 源码位点（已在分支，早于交付 commit）

正修逻辑在 `9bd1693b` 一带落地；交付 commit 主要是 hash-lock / 证据 / 清误入 build 二进制。

1. `(A)` `local-build-adapters/art-latest/patches/runtime/class_linker.cc`  
   `FixupStaticTrampolines`：critical 暂存 `SetEntryPointFromJni` **先于** Westlake early `return;`
2. `(B)` `interpreter.cc` InterpreterJni + `quick_trampoline_entrypoints.cc`  
   `GetRegisteredNative` **先于** `FindCodeForNativeMethod`
3. `(C)` 未从 `JNINativeMethod` 后写 ABI flags

## 固化时现场动作（本会话末 · 增量）

1. **只提交**：本 HANDOFF + `tasks/doing/W-003.md` RESULT 顶栏/solidify 注记。
2. **不碰**：`test-fixtures/**` 与其它未提交脏改（#51/#53 残留仍留在工作区，勿误并）。
3. **板**：固化前 live 曾漂移到 `edec7332`；已用板上已有备份 `.w003-publish` 指回 `0742f1c4`，并留 `.drift-edec7332-bak`。**之后不再改板**。
4. 主机拉了 gitignore 副本：`evidence/W-003/artifacts/libwestlake_art.so.0742f1c4`。

## 下一任要做什么

1. thinker：验收 `worker/W-003` @ `2854df46`（+本 solidify commit）→ 合入 → 移卡 `done/` → 更新 LEDGER #49 / FRONTIER / QUEUE。
2. **禁止**把 `edec7332` 或未 hash-lock 的 ART 当 #49 PASS。
3. 下游：#51 字体闸 → inflate；#53 RenderProxy 上屏；color-apk 见 `state/HANDOFF-2026-07-11-color-apk-onscreen.md`。
4. 未 push；未 merge `main`。发布留给用户。
5. 若需再动板：只做增量、先验 hash、留 bak，禁止整树还原。
