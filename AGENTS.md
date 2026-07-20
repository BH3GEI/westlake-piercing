# AGENTS — 唯一入口

> 2026-07-09 起，本仓库从「白板 + 长驻 agent」改为「无状态 thinker(班次制) + 一次性 worker + 四板 lane」。
> 第一动作是判角色。拿到 `tasks/doing/<卡>.md` 的一次性执行任务才是 worker；其余独立接班/继续会话默认是 thinker。

## 我是谁？按角色翻到对应手册

- **thinker(脑子 · 强模型)** → 先运行只读 `python3 -B .repo-skill/src/dot_runner.py handoff`，再读 `state/` 全部、`protocol/THINKER.md` 和 repo infra。卡住硬墙可问 `gpt-5.6-sol` / fable / opus 顾问，见 THINKER。
- **worker(手 · kimi/codex/claude 一次性)** → 只读派给你的那张卡 + `protocol/WORKER.md`。别读 state/、别读别的卡、别读 archive/。
- **派活** → `protocol/DISPATCH.md`。

CLI worker 的实际 binary、模型目录、已验证命令与退化通道在 `docs/reference/cli-fleet.md`；派工前可运行 `python3 -B oracle/verify/cli-fleet.py`，不要凭旧 alias、配置 model 或模型自报判断路由。

**monobranch：只有 `main`,不开分支。** 所有改动直接落在 `main` 上。并发 writer 用 sibling worktree 隔离**工作目录**即可,不再各自开分支——分支是这套流程过去最大的熵源:同一条工作曾同时散在 `claude/w004-*`、`chore/*`、`codex/*` 和另一个 GitHub 仓库里,彼此看不见对方。具体 claim→worktree→验收流程见 `protocol/DISPATCH.md`(其中分支相关步骤已作废)。

`handoff` 的 STRUCTURE PASS 只证明入口、state、卡和板锁自洽，不代表任何 oracle PASS。thinker 上岗先是 `inspect_only`：保护 dirty tree，不碰板；报告现场后再选班次。(原文此处还写着"不切分支、不 fetch/merge/push"——前者随 monobranch 作废,后者与"commit 即 push"冲突,已删。)

## 状态在哪(事实源)

```
state/       ← 事实层,小而有界,一口读完
  FRONTIER.md   此刻在打哪道墙
  LEDGER.md     53 墙全貌 + 复核状态(≤150 行)  ← 进度事实源
  ATOM-MAP.md   #墙 ↔ L{NN}.A{NN} 规格对齐
  QUEUE.md      两条队列(穿刺/工厂)
  BOARDS.toml   四板 lane + 锁 + 恢复
  DECISIONS.md  为什么是现在这样(别推翻已定的)
tasks/       ← 工作流,目录即状态机 todo→doing→done/blocked
protocol/    ← 角色手册(定稿后 chmod 只读;改纪律先开班次)
oracle/      ← "完成"的唯一定义(脚本说了算) + refresh-dashboard.sh
evidence/    ← 证据指针(只留对穿刺有帮助的事实)
ammo/        ← 可复用成品 + 参照 oracle 路线
docs/dashboard/ ← 进度 HTML 视图(脚本生成,不手改);节约上下文
docs/reference/ ← 架构/规格/方法论原件;按需定点取,勿整包读
archive/     ← 史料,默认不读(白板时代 COORD/CHAT 等)
```

事实域不要混：实时进度/板锁只认 `state/`；任务所有权只认 `tasks/`；版本、hash、setup/deploy/verify 合同认 `REPO_LOCK.toml` / `REPO_PIPELINE.dot`；DAYU200 的 `README.md` / `STATUS.md` 是 legacy reproduction 文档。

## 六条合同(整套机制靠这个撑)

1. **读取**：thinker 读 state/ 全部(含 ATOM-MAP);worker 只读自己的卡;谁都不默认读 archive/。
2. **写入**：worker 只写自己的卡 + evidence/<卡> + 自己的 git 分支;state/ 只有 thinker 验收班次能动。
3. **完成**：LEDGER 状态跃迁只认 `oracle/` 脚本 PASS。worker 自述不算数。
4. **落盘即 commit**：每班次结束一次 commit。**禁止空转 commit**(如 "polling: no new content")。
5. **防膨胀**：state/ 各文件有行数预算,超限唯一出路是压缩进 archive/。绝不再长出 3000 行白板。
6. **对齐与视图**：墙进度以 LEDGER 为准;规格坐标以 ATOM-MAP 对齐 HTML 原子。看板 `docs/dashboard/progress.html` 只是视图——改 state 后派力工跑 `oracle/refresh-dashboard.sh`,**禁止手改 HTML**。定稿的 `protocol/*.md` / `AGENTS.md` 用 unix 只读权限防误改。

## 原有工程纪律(保留)

交接前先跑只读 `python3 -B .repo-skill/src/dot_runner.py handoff`。DAYU600 设备/部署假设变化时再跑 `dayu600-audit`；通用 `check` 是 legacy DAYU200 全回放门，不再作为每个 DAYU600 班次的默认门。
- 运行/环境/产物/设备假设变了 → 更新 `REPO_LOCK.toml`；
- setup/build/deploy/verify 步骤变了 → 更新 `REPO_PIPELINE.dot`；
- 用户请求 + agent 动作 + 代码 delta + 验证结果 → 记 `.repo-skill/turns/`。

不要声称本仓库 clone-and-run：需 DAYU600/uis7885 板 + 重建/替换全部 arm 运行时产物。
大型生成二进制不进 git(.gitignore 排除)：来源和 hash 记 `REPO_LOCK.toml` + `ARTIFACT-INVENTORY.txt`。
**每次 commit 之后必须 push。** 不攒本地提交,不等用户点头——旧规则要求 agent 先报告再由用户决定发布,结果是几十个提交烂在本地、多台机器各推各的仓库。现在的规则相反:落盘即 commit,commit 即 push 到 `origin/main`。

**monorepo：一个仓库,`a2hlab/harmony`。** 不再有嵌套的独立仓库。`westlake-piercing/` 于 2026-07-20 以 subtree 方式并入(保留全部 270 个提交历史),此前它是被 `.gitignore` 屏蔽的独立仓库、推往另一个账号下的 `BH3GEI/westlake-piercing`,导致同一条工作的两半互不可见。新增子项目一律直接放进本仓,不要再建嵌套仓库。

push 前仍要看一眼 `ahead/behind` 与 dirty tree;远端若已前进,rebase 后再推,不要 force。

## 遗留(短期过渡)

- 旧路径 `/Users/yao/westlake-piercing` 是指向本目录的软链,过渡期兼容。
- 旧 agent cron 已停用(备份 `~/crontab-backup-2026-07-09.txt`)。
- 若仍有旧 claude 会话在终端存活,应关闭——它们会产生空转 commit。
