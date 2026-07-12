# main 分支收编记录 — 2026-07-12

> 用户决策(2026-07-12):把所有**有用**的进展集中到 `main` 主干,并在文档里说明;对齐后立刻 push。
> 本文件是「`main` 里现在有什么、从哪来、为什么这么并」的事实源。执行者=thinker 主班(gate 工作树)。

## 一句话

`main` 此前落后开发支线 `dayu600-hwui-gate1-2`(gate)**149 笔**,等于 B 路全部进展都压在支线里、`origin/main` 看不到。本次把 **B 路主体 + W-003 #49 + W-004 彩色上屏**三股有用进展全部收进 `main`,并 push 到 `origin/main`。

## `main` 现在包含的三股进展

| 股 | 来源分支 | 实质交付 | 并入方式 |
|---|---|---|---|
| **B 路主体** | `dayu600-hwui-gate1-2` (gate) | M0→M7c 全程:自建 arm64 boot image(regen-boot-arm64)、#49 ART(art118/dc1d5e82)、M5 arm64 WMS 客户端(liboh_window_manager_client_min.so 4f88444d)、M7 首帧加载、M7b framework-res seed、M7c 侦察(OHServiceManager/接法B/handleBindApplication 配方)、全部 state/ 事实层 | fast-forward(gate 是 main 严格后代,149 笔 0 冲突) |
| **W-003 #49** | `worker/W-003` + `worker/color-smoke-5ce` | ART `@CriticalNative` 发布路径修复:`local-build-adapters/art-latest/patches/runtime/{class_linker.cc,interpreter.cc,quick/…}`、`oracle/verify/atom-49.sh`、`oracle/device/run-critbind49.sh`、`evidence/W-003/*`、`.repo-skill/turns/*w003*`、`REPO_LOCK.toml`/`REPO_HISTORY.dot` 更新 | 干净自动合并(新文件为主) |
| **W-004 彩色上屏** | `worker/color-smoke-5ce` | 板上 APK 自绘变色管道(Canvas.drawColor 经 Android 渲染上屏,task#10 PASS);evidence/W-004 | probe 已被 gate 超集覆盖(见下),彩色 evidence 随支线合入 |

## 冲突解决(2 处,均有据)

合并 `color-smoke` 时只撞 2 个文件,解决决策如下:

1. **`test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java`** → **取 gate 超集版 + graft 一个方法**。
   - 亲测:gate 版已含 `runColorApk`(2×)/`ColorView`(6×)/`drawColor`(2×),lane 版为 0 —— 即 gate 版是彩色路径的**超集**,W-001 的 M7/M7b/OHServiceManager 也都在。故 probe 取 gate 版**无损**。
   - lane 版唯一 gate 没有的方法 = `runCritBind49()`(W-003 #49 板上自测,23 行,依赖 `earlyWriteStack`/`writeText`/公有 `Paint` 均在 gate)。已**移植进 gate 版** + 加 `WESTLAKE_STAGE/SUBSTAGE=critbind49` 调度,并**编译验证**(build-probe-mac.sh 副本编译通过,d8 出 DEX 241424 B,sha256 `302cb482…`,含 `OHServiceManager`+`runCritBind49`)。
2. **`evidence/INDEX.md`** → **取并集**(W-004 行 + W-003 行都留)。

## 没有并入的(以及为什么)

| 分支/指针 | 为什么不并 |
|---|---|
| `codex/w003-prototype-snapshot` (b8937e1c) | 自标「废弃原型快照」,只留作史料 tag |
| `piercinginfra-slim` (509a1e12) | 与 gate **无共同历史**,是另一个 remote(`piercinginfra/main`)的瘦身仓,不是本仓进展 |
| `tmp-remote-main` (d09cacab) | 游离本地分支「Create 1」,历史遗留,无内容 |

## 分支拓扑(收编后)

- `main` = gate = **e04a5dea**(= 2f4e5914 之上 149 笔 B 路 + 2 个 merge 提交),已 push 到 `origin/main`。
- `dayu600-hwui-gate1-2` 仍指向同一 head,过渡期作 main 的同义标签;后续 B 路直接在 `main` 上推进。
- `worker/W-003`、`worker/color-smoke-5ce` 各自 worktree 分支保留(其独有 head 已被 merge 收进 main)。

## 今后的协作模型(别丢的机制)

「最终都在 main」成立,但**过程中并行 writer 仍各自 worktree 分支写、oracle PASS 才并 main**——W-001/W-003/W-004 是并行 writer,不能同时直接在 main 上并写(共享 checkout 只跑只读顾问;写型必须 sibling worktree/branch,见 `protocol/DISPATCH.md`)。收编改的是「集成落点=main」,没改「并行写=各自分支」。

## 一处需用户处理的属主问题(不阻塞本次收编)

`evidence/W-002/` 目录属主是用户 **`coding`**(某 W-002 worker 以别的用户跑过),`drwxr-xr-x`,导致 `yao` 无法在该目录内增删文件——`git checkout` 跨该目录会报 `Permission denied`。本次收编用「指针搬迁 + 只碰 W-003/W-004 路径」绕开,未受影响;但建议把该目录 `chown` 回 `yao` 以免后续 checkout/merge 卡住(需用户执行,agent 不 sudo)。
