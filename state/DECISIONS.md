<!-- 决策日志 · append-only · 一行一条 · 新的在上 -->
<!-- 记"为什么这么定"和战略裁决(值不值得打),不记流水进度(那是 LEDGER/FRONTIER)。 -->

# 决策日志 (DECISIONS)

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

## 战略裁决 (值不值得打)

- **A1 pthread operate-in-place**：技术三级 SOUND,但**不在 uptodown/Unity 上屏关键路径**(备用不启用)。防止在非关键路径过度投入。来源:A1 方法报告。
- **过早平台化**：明确规避。先把板子稳住+伪并行停掉+证据门钉死,三件都不需要写平台。
