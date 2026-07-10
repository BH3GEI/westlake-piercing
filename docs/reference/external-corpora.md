# 外部 WestLake 语料快照索引

审阅日期：2026-07-10

本页只记录跨仓资料的身份、适用边界和最小引用入口。当前仓库仍是 DAYU600 `uptodown` 穿刺线的执行仓；实时进度只认 `state/` 与 `oracle/`。外部仓的 README、STATE、board、测试日志或历史二进制都不能提升本仓 LEDGER 状态。

## 固定快照

| 资料仓 | 固定提交 | 规模 | 定位 |
|---|---|---:|---|
| `a2hlab/01.Project` | `d98d128e281a4a662f9b68ec375f5db424e90cbc` | 54,377 tracked files / 417,977,595 blob bytes / 2 commits | 需求、Factory、交付证据和历史工作区的批量快照 |
| `a2hlab/02.APP` | `8f6b77dd4002353ccbe9e0315ac0a8175ff95159` | 4,448 tracked files / 149,862,373 blob bytes / 6 commits | Unity/Cardwords 专用交付、adapter 变体和重建工作区 |

两个仓与本仓均无共同 commit。它们不是本仓分支或上游；不使用 `--allow-unrelated-histories` 合并，也不整提交 cherry-pick。需要资料时使用 `repo@commit:path` 定点读取；需要代码时，只复制当前 oracle 所需的最小文件，并同时记录源路径、源 blob OID、适用 Android/OH 代次和验证边界。

## `01.Project`：规格与 Factory 原料库

固定根：`a2hlab/01.Project@d98d128e281a4a662f9b68ec375f5db424e90cbc:15.WestLake/`

这个快照同时包含两代 Requirement、Factory、Delivery、Review、Tasks、memory、cache 和 3,017 个 tracked `.venv` 文件。有效内容主要集中在一次导入 54,376 文件的提交中，不具备适合 cherry-pick 的提交粒度。`02-Delivery/README.md` 还把另一条 `/opt/10.Project/.../16.14-Island` 标成源码主仓，因此这里应视为策展快照，不是运行时代码正本。

定点入口：

- `15.WestLake/03new_Requirement/00-Agent接管/README.md`：2026-07-07 需求接管与未完成队列。
- `15.WestLake/03new_Requirement/01.GAP/README.md`：需求、原子、package 三层 GAP 入口。
- `15.WestLake/03new_Requirement/02.AtomFunctionGit/ATOM_FUNCTION_STANDARD.md`：稳定技术原子的证据与可交付标准。
- `15.WestLake/03new_Requirement/02.AtomFunctionGit/registry/reports/stable_atom_promotion_pilot_20260707.md`：promotion 样板仍为 `GAP_OPEN`；不能把 `REVIEW` 写成 `VALIDATED`。
- `15.WestLake/03new_Requirement/02.AtomFunctionGit/registry/app_run_attempts/cardwords/RUN-20260704-cardwords-unity-sequence.yaml`：Cardwords 的 158 项 legacy run-attempt 映射；文件自身明确 `SOURCE_INTEGRITY_NOT_PROVEN`。
- `15.WestLake/02-Delivery/2026-05-22-setView真路径通过/README.md`：`setView` 返回不等于 draw/Surface 成立，可用于设计反伪 PASS。
- `15.WestLake/02-Delivery/2026-05-24-display-dma_bridge-merge/README.md`：synthetic rainbow、HAP SIGSEGV 与 vtable ABI 回退记录。
- `15.WestLake/02-Delivery/2026-05-24-CALC-TRULY-WORKING/sources/IslandBootstrap.java`：同一 AssetManager 先装 framework-res、再装 app 并应用 manifest theme，可作 W-001 app-only/app+framework A/B 的历史候选 oracle。
- `15.WestLake/D200_API_STATE.md`：D200 WiFi TestLab 的 runToken/app-token 验证合同；是另一条设备工作流，不是 DAYU600 进度。

已确认的边界与漂移：

- 全树没有 `com.uptodown`、目标 AppCompat attr `0x7f040691`、`nativeSetApkAssets` 或 `BuildDynamicRefTable` 的新证据，不能改变 W-001。
- D200 状态快照日期为 2026-05-12；`SPEC.json` 的六类 schema 与旧 D200 文档中的五类描述并存。
- AtomFunctionGit README 仍写“独立 Git / INITIALIZED_NOT_COMMITTED”，父仓快照没有保留其 nested `.git` 历史。
- D200 Island 的 AssetManager/主题与显示路径只能作机制参照；其 bionic chroot、PNG/HAP 路线不能升级本仓 #43/#53。

## `02.APP`：Unity/Cardwords 独立 workstream

固定根：`a2hlab/02.APP@8f6b77dd4002353ccbe9e0315ac0a8175ff95159:21.Game/`

它不是 `uptodown` 穿刺线的上游。`02.unity.cardwords/STATE.md` 和 `tasks/parallel_agent_board.md` 仍停在 scaffold-only / all-pending，而后续提交已 vendor adapter 并补 arm64 脚本；两者已经漂移。真实状态仍没有 Cardwords `device_verified`、first-frame 或 input 证据：package-inspect 只是 host `build_pass`，install 缺 build manifest，appspawn 的 deploy/link recipe 未闭合，其余多张任务卡仍是模板。

三个 adapter 树必须分开理解：

- `21.Game/adapter/`：HanBing canonical 快照，入口文档仍描述 DAYU200/RK3568/32-bit/OH7。
- `21.Game/adapter_variant_gz02_20260702/`：GZ02 from-scratch 对照树，缺实现且落后 canonical，不能整树替换。
- `21.Game/02.unity.cardwords/adapter/`：从 canonical 独立 vendor 的 Cardwords/route3 快照，新增完整 android-runtime、third-party 原件和 arm64 build scripts。父仓没有保留其旧 nested Git 历史。

定点入口：

- `21.Game/02.unity.cardwords/START_HERE.md`、`contracts/done_when.md`：重建与证据边界。
- `21.Game/02.unity.cardwords/adapter/PROVENANCE.md`：来源、cut8/cut9 选择、外部依赖和 clean-build 缺口。
- `21.Game/02.unity.cardwords/history/HistoryError/appspawn-process-birth.md`：14-floor failure ladder、固定 BCP 与 truly-cold 纪律。
- `21.Game/02.unity.cardwords/adapter/framework/surface/jni/oh_surface_bridge.cpp`：单一 `RSSurfaceNode`、`SetBounds`/`SetFrame` 和 producer/uniqueId 机制参照。
- `21.Game/02.unity.cardwords/adapter/build/inner/compile_oh_adapter_bridge_arm64.sh`：排除 `*-untested-on-*.cpp` 的 glob-drift 规则。

不可直接复用的硬边界：

- Cardwords runtime 是 AOSP 14，注册 `nativeSetApkAssets(J,[ApkAssets],Z)`；本仓 W-001/AOSP 15 已验证需要 `nativeSetApkAssets(J,[ApkAssets],Z,Z)`。不得复制 Cardwords AssetManager/runtime 实现。
- 本仓 HWUI 是 AOSP 15/OH 6.1，已有真机 panel harness 证据；Cardwords arm64 构建仍依赖不完整 `wukong100` 缓存，隔离 clean rebuild 未闭合。
- Unity 壳包的 truly-cold/59.9fps 历史不能提升未修改 Cardwords，更不能提升本仓 `uptodown`。
- `artifacts/`、`scratchpad/`、`deliverables/`、tracked `.devbak`、旧绝对路径和三棵 adapter 树都不进入本仓。

## 本仓现有离线副本

| 本仓文件 | 固定来源 | 源 blob OID |
|---|---|---|
| `docs/reference/westlake-atom-function-board-L01-L14.html` | `01.Project@d98d128e:15.WestLake/03-Requirement/03.01.AtomFunction/ATOM_FUNCTION_BOARD.html` | `29d4cba006e32fef83ff87266140a6f5b3a94d01` |
| `docs/reference/westlake-atom-function-list-latest.html` | `01.Project@d98d128e:15.WestLake/03new_Requirement/02.AtomFunctionGit/reports/atom_function_list_latest.html` | `165a83a6719b75e766aea1de5bb2f71a9df311a4` |
| `docs/reference/unity-floors-and-atom-list.html` | `02.APP@8f6b77d:21.Game/Unity楼层与原子功能清单.html` | `15e8a94689db209e65c1997dfa6083128a1df1de` |
| `docs/reference/a1-pthread-operate-in-place.html` | `02.APP@8f6b77d:21.Game/A1方法_前因后果与适用场景.html` | `a8594d10d8f84dd98f8cb18297619e49b9792f2a` |

`westlake-atom-function-list-latest.html` 已在本次审阅中从旧快照（0 `TECHNICAL_ATOM`）刷新到固定提交的生成视图：11 `TECHNICAL_ATOM`、5 `FLOW_ANCHOR`、151 `UNCLASSIFIED_DRAFT`、5 `REVIEW`、0 `VALIDATED`。导入时只机械删除了行尾空白，因此本仓 blob 为 `b99432f1616c11df487c144314076ff8e0a3ed19`，内容语义与上表源 blob 相同。这仍是规格视图，不改变 `state/ATOM-MAP.md`、LEDGER 或任何 oracle 结果。

## 安全与读取纪律

常见 OpenAI/GitHub/AWS token 形态与 private-key header 的只读扫描没有命中；另有 10 个 `01.Project` MCP 配置命中 Bearer-like literal，宽泛 credential-assignment 模式在两个仓中也有大量命中。`01.Project` 还包含签名和 vendor/cache 材料。模式扫描不等于安全证明。不要把外部仓整包放进 agent 上下文，不迁移 `*.mcp.json`、`opencode.json`、`codex.mcp.json`、`cline.mcp.json`、`windsurf.mcp.json`，不引用或输出任何凭据值。
