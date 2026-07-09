# CLI 舰队速查(实测 2026-07-09)

> 每条命令都跑过 hello 或 --help 核实;来源初稿(conversation_summary)有错处,以本文为准。
> **自报模型名不可信,路由以配置文件为准。** 角色分工:求助见 `protocol/THINKER.md`,派活见 `protocol/DISPATCH.md`。

## 通用坑(先读)

- **mac 无 `timeout` 命令**。headless 起 worker 一律带看门狗包装:

```bash
( <cmd> < /dev/null & P=$!; ( sleep 900 && kill $P 2>/dev/null ) & W=$!; wait $P 2>/dev/null; kill $W 2>/dev/null )
```

- **codex/claude headless 会守着 stdin 挂起**,必须 `< /dev/null`。
- 版本快照:agent 2026.07.08 · codex 0.143.0 · claude 2.1.204 · kimi 0.23.3 · mmx 1.0.16。

## bark — 手机推送(实测通,code 200)

```bash
bark <标题> <内容> [分组]        # 内容为 - 时读 stdin;分组默认 claude-code
some-cmd | bark "标题" - westlake
```

- 脚本 `~/.local/bin/bark`,key `~/.claude/bark_key`,可选自建服务器 `~/.claude/bark_server`。
- **只在三种情况推**:①长任务重要里程碑 ②只有用户能解的硬墙(**含板子要断电重插——电源不自动化,bark 喊人**) ③被明确要求。
- 普通汇报**不推**——每轮 Stop hook 已自动推摘要,别重复。
- 板掉线已布线:`oracle/board-recover.sh <serial>` 自动 bark + 守着等板回来。

## agent — Cursor Agent(顾问通道,不当 worker)

thinker 主攻;卡住才问。顾问**看不见聊天记忆**,必须给具体上下文,并挂上仓库。

```bash
# 正确姿势(实测通):--workspace 挂仓 + prompt 里写路径/已读文件/问题/已尝试
agent -p --trust --mode ask \
  --workspace /Users/yao/Desktop/code/westlake-piercing \
  --model claude-fable-5-thinking-high \
  "$(cat <<'EOF'
仓库: /Users/yao/Desktop/code/westlake-piercing
先读: state/FRONTIER.md · <相关文件>
问题: <一个边界清楚的具体问题>
已尝试: <症状/日志关键行/已排除假说>
约束: 只读;给可执行下一步
EOF
)"

# 次强
agent -p --trust --mode ask --workspace /Users/yao/Desktop/code/westlake-piercing \
  --model claude-opus-4-8-medium "<同上结构的问题>"

agent --list-models
```

- `agent` = `cursor-agent` 同一二进制。
- headless 必须 `-p --trust`;顾问必须 `--mode ask`(只读)。不加 ask 就能改仓,当心。
- **空问一句禁止**。缺仓库/缺文件路径/缺失败现场 = 无效咨询。
- 完整纪律见 `protocol/THINKER.md`「顾问通道」。

## codex — 稳定执行器(ChatGPT 订阅,智商在线但不便宜)

```bash
codex exec "<指令>" --skip-git-repo-check --sandbox read-only < /dev/null    # 实测通,~18s
# sandbox: read-only | workspace-write | danger-full-access
# 解析友好: --json(JSONL 事件) / -o <file>(末条消息落文件)
```

- 已登录 ChatGPT(`codex login status`)。
- **必须 `< /dev/null`**,否则守 stdin 永久挂起(实测挂 4 分钟)。
- 占板卡要跑 hdc 时 sandbox 档位未实测,从 workspace-write 起试。

## claude — Claude Code(经自家路由接便宜后端,当力工用)

```bash
claude -p "<指令>" < /dev/null            # 实测通
claude --bg -n "<名字>" -p "<指令>"        # 后台 agent;claude agents 管理
claude --max-budget-usd 5.0 ...           # 预算闸(flag 已核实存在)
```

- **实际后端 = 自家路由**(kimi 或 minimax,随路由配置换)。settings.json 里的 `model=claude-fable-5[1m]` 会被路由重置,不作数;自报 "Fable 5" 也不作数——**当便宜力工用就行**。
- zshrc 里的 bypass-permissions alias **已注释掉**——初稿说的"默认跳权限"不成立;作 worker 需要工具权限时得显式给 flag。
- **`--bg` 会在 `.claude/worktrees/<名>/` 建 git worktree**(共享 `.git` 对象,不是整仓再拷一份,但目录看着像整仓)。已 gitignore。**卡结束必须清**:
  ```bash
  git worktree unlock .claude/worktrees/<名> 2>/dev/null
  git worktree remove --force .claude/worktrees/<名>
  git branch -D worktree-<名> 2>/dev/null
  git worktree prune
  ```

## kimi — 默认便宜手(⚠️ 本周期额度已尽)

```bash
kimi -p "<指令>" -y        # -y/--yolo 自动批准;实测 403:额度等下周期刷新
```

- 403 期间工厂卡降级给 codex,或等刷新。

## mmx — MiniMax 内容 API(不是 coding agent,不当 repo worker)

```bash
mmx text chat --message "<文本>"    # 实测通,MiniMax-M2.7;非交互必须给全 flag
mmx quota                           # 额度(实测周额度余 ~81%)
mmx search query "..." / mmx vision describe <img> / speech / image / video
```

- 无文件/shell 工具,不能领卡。可用于:批量文本消化、联网搜索、媒体生成。

## 成本阶梯(用户定)

kimi / claude / mmx(便宜力工) → codex(稳定中价) → agent --model opus → agent --model fable(最贵,只求助)。
