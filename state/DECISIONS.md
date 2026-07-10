<!-- 决策日志 · append-only · 一行一条 · 新的在上 -->
<!-- 记"为什么这么定"和战略裁决(值不值得打),不记流水进度(那是 LEDGER/FRONTIER)。 -->

# 决策日志 (DECISIONS)

- **2026-07-11** 跨 lane 通信定为**星型 + 有界信号台账**,不重建白板、不设 cron。理由:lane 各在自己的 worktree/branch 上,**看不见彼此的未提交状态**,白板在物理上就传不了信;cron 轮询只会生产 AGENTS.md 合同 4 明令禁止的空转 commit。唯一活线 = dispatcher;共享只读事实 = `BOARDS.toml`(板锁) + `FRONTIER.md`(前沿) + 新增 `state/SYNC.md`(≤60 行,append-only,只记 CLAIM/RELEASE/ORACLE/BLOCKED/HAZARD/FACT 六类会影响别的 lane 的信号,不讨论)。lane 只写自己的 `tasks/doing/<卡>.md` + `evidence/<卡>/`,只读别人**已提交**的卡。
- **2026-07-11** `coding` sandbox 账号获仓库 ACL 写权(用户裁决,`sudo chmod +a`),范围仅 `state/` `evidence/` `tasks/doing/` `oracle/verify/`。**`.git` 不授权** → coding 不能 commit,W-001 的 dirty tree 因此受保护;commit 一律由 yao 会话执行。macOS ACL 不回溯继承,故既有文件(`tasks/doing/W-001.md`、`oracle/verify/atom-43.sh`)对 coding 仍只读 —— "禁改他人卡"由文件系统而非纪律强制。取代旧的"每次 `sudo -u yao` 写入"方案(会留下属主混杂/root 属主文件)。
- **2026-07-10** CLI 舰队复核取代下方 2026-07-09 的「CLI 舰队」「claude --bg」「派力工」三条旧结论：Kimi 走 managed `kimi-code/kimi-for-coding`，但无 sandbox/tool allowlist，只领无秘密/远程/设备权限的机械卡；主 `claude` 是 first-party Max，`--bg` 不自动建 worktree且因 transient daemon 仅审计使用；Codex 固定 Desktop binary + 显式 Sol xhigh/max。真实 binary/model/退化状态只认 `docs/reference/cli-fleet.md` 与 `oracle/verify/cli-fleet.py`，旧 403、Kimi/MiniMax route、裸 gpt-5.5 主力说法均已 superseded。
- **2026-07-10** 写入型 worker 并发必须一人一卡、一 branch、一 sibling worktree；canonical checkout 只给 thinker/dispatcher 管理 claim、板锁与验收。领卡状态先 commit，再从该 commit 建 `worker/<卡id>` worktree；worker 禁改 state，thinker 复跑 oracle 后合并并清锁。只读顾问可并行；共享 checkout 禁止并发 writer。
- **2026-07-10** W-001 oracle 纠错：旧 probe/白板把 `0x010100b0`(android:autoLink)当 windowActionBar；目标 APK 的 AppCompat attr 实为 `0x7f040691`，AppThemeBar 直接定义 false。旧 `uamHasWab=false` 不再作为双包断链证据。native `ck` 也必须在四参 `nativeSetApkAssets(...,ZZ)` 成功后才有效；oracle 锁 launcher/dex/so hash、清理结果和 run rc。
- **2026-07-10** 入口与事实域校准：独立接班会话默认 thinker，先跑只读 `dot_runner.py handoff`；worker 仍只读卡。live 进度/板锁认 state，版本/hash/setup/deploy 认 LOCK/PIPELINE，README/STATUS 明确为 DAYU200 legacy。结构 PASS 不等于 oracle PASS。
- **2026-07-10** `gpt-5.6-sol` 已用 Codex Desktop 内置 CLI 0.144.0-alpha.4 实跑只读 hello（model=sol, effort=max, exit 0），可作单问题顾问；默认 `max`，`ultra` 会自动派生任务，只在明确需要多 agent 时用。gpt-5.5 保留为旧 CLI fallback。
- **2026-07-10** Git 发布状态不冒充合并：当前开发分支未进 main/未完整推到同名远端；orphan 的 PiercingInfra delivery 独立管理。任何 agent 不自动 merge/push。
- **2026-07-09** 落盘重构：白板+长驻 agent 形态停用。改为「无状态 thinker(班次制) + 弱模型一次性 worker + 四板 lane」。状态全落 state/,session 用完即扔。理由:D→D2→D3 接班丢状态、九 agent 伪并行陪跑一道墙、弱模型在长上下文里放大短板。
- **2026-07-09** 仓库 /Users/yao/westlake-piercing → /Users/yao/Desktop/code/westlake-piercing,旧路径留软链。4 条 agent cron 注释停用(备份 ~/crontab-backup-2026-07-09.txt)。
- **2026-07-09** 撤掉 opus-dispatcher 层:派活是搬文件级动作,由 thinker 顺手做,不单设贵模型。dispatcher = 脚本。
- **2026-07-09** 协作拓扑定为星型:worker 之间零通信,一切过 thinker。mesh(白板互聊/接班)是上一版停滞主因。
- **2026-07-09** 事实债优先:42 个 claimed PASS 大多 V=?,#4 与 boot-image clinit 矛盾。复核先于扩张;claimed 未复核不得当事实。
- **2026-07-09** 采纳 A2OH-Factory 方法论:TECHNICAL_ATOM 标准当卡片 schema;Playbook 重试阶梯(≤5 次升级人工)当 worker harness;门先收敛到 2 道(oracle 命令 + 证据 hash),不上 G0-G7 八门。
- **2026-07-09** 采纳"oracle 路线"方法(Unity 显示综述):坏路线的每道墙,拿已跑通的路线当"本该长什么样"对照修(团结↔Unity;catalog/noice↔uptodown)。
- **2026-07-09** 暂不建总线/数据库。任务卡=一目录一文件 Markdown,dispatcher=shell loop。等 todo/ 堆到管不过来再谈结构化存储。
- **2026-07-09** 7 份架构/规格/方法论文档(桥接总量、167 原子看板+清单、Unity 分解/楼层/四路线、A1)落 `docs/reference/`,配 INDEX。定位=长期知识,按需定点取,勿整包读进上下文。Unity 线(D600-5bb5,HanBing)不进本仓库 state,仅存文档作 oracle/方法论参照。
- **2026-07-09** 电源不做遥控自动化(用户裁决)。板掉线 → board-recover.sh **bark** 用户手动断电重插+守着等回来重挂。bark 只推:里程碑/只有用户能解的硬墙/被明确要求;普通汇报不推(Stop hook 已自动推)。
- **2026-07-09** CLI 舰队逐条实测定格 → `docs/reference/cli-fleet.md`。要点:agent(-p --trust --mode ask --model fable/opus)=thinker 求助通道不当 worker;codex=稳定执行器(必须 </dev/null,守 stdin 会挂);kimi 本周期 403;mmx=内容 API 无文件工具不能领卡;claude=便宜力工(自家路由接 kimi/minimax 后端,settings.json 的 model 被路由重置,自报不可信)。thinker 型号不写死(用户在 Cursor UI 选)。
- **2026-07-09** 顾问咨询纪律:thinker 主攻;卡住才问 fable/opus。必须 `--workspace` 挂本仓 + prompt 给具体上下文(先读哪些文件/问题/已尝试/约束)。空问一句禁止。见 `protocol/THINKER.md` 与 `docs/reference/cli-fleet.md`。
- **2026-07-09** 证据纪律:只留对穿刺/复核有帮助的事实。推 GitHub/VPN/代理失败等基建噪音不进 `evidence/`。F-001 的 push 失败 log 已删;PASS 只记远程 SHA。见 `evidence/INDEX.md`。
- **2026-07-09** 墙↔规格对齐:`state/ATOM-MAP.md` 映射 #1–53 到 L{NN}.A{NN}(多为 related;AppCompat 等为 none 规格缺口)。进度事实源仍是 LEDGER;看板 `docs/dashboard/progress.html` 由 `oracle/refresh-dashboard.sh` 生成,力工刷板,禁止手改 HTML。big-clean=打墙;small=辅助调试。定稿 protocol/AGENTS chmod 只读。
- **2026-07-09** claude `--bg` 会在 `.claude/worktrees/` 建 git worktree(已 gitignore)。F-001 残留已 unlock+remove+prune。收工纪律写进 DISPATCH/cli-fleet。
- **2026-07-09** 派力工:**禁止** Cursor 内置 Task/subagent;只走本机 CLI。便宜重复活用 claude/kimi;**主力多用 `codex -m gpt-5.5 -c 'model_reasoning_effort="xhigh"'`**(实测通,可干活可顾问)。默认 `gpt-5.3-codex-spark` 偏笨且曾 tool 400,不派重活。见 `docs/reference/cli-fleet.md`。
- **2026-07-09/10** 重编译走中国 Linux 编译机；当前实测 SSH Host=`compiler`（旧 `huawei` 名称未配置）。embed `.so` 必须 `-nostdlib -nodefaultlibs`(裸 gcc 链 glibc → 板上 LD_PRELOAD 失败)。见 `docs/reference/host-build.md`。

## 战略裁决 (值不值得打)

- **A1 pthread operate-in-place**：技术三级 SOUND,但**不在 uptodown/Unity 上屏关键路径**(备用不启用)。防止在非关键路径过度投入。来源:A1 方法报告。
- **过早平台化**：明确规避。先把板子稳住+伪并行停掉+证据门钉死,三件都不需要写平台。
