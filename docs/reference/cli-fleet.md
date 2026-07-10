# CLI agent 舰队（实测 2026-07-10）

> 本页只写本机可复核事实。四个状态必须分开：`configured`（配置请求什么）、`listed`（目录列出什么）、`live-tested`（真实请求成功）、`reported backend`（CLI 回报实际服务模型）。自报模型名和旧聊天记忆都不算路由证据。

## 一眼结论

| 命令 | 实际解析 | 版本 | 模型事实 | 最终 smoke |
|---|---|---:|---|---|
| `kimi` | `~/.kimi-code/bin/kimi` | 0.23.3 | managed `kimi-code/kimi-for-coding` → catalog `K2.7 Code` | worker 写文件 PASS |
| `claude` | `.zshrc` function → Claude Code binary | 2.1.204 | first-party Max；显式 `fable/opus/sonnet` 可路由 | 受限 worker 最终 PASS；中途曾间歇性 JSON 失败 |
| `codex` | `/opt/homebrew/bin/codex` | 0.143.0 | 裸命令读全局 `gpt-5.6-sol + ultra`，metadata 退化 | 能回，但不用于派工 |
| Codex Desktop | ChatGPT app bundled binary | 0.144.0-alpha.4 | 显式 Sol `xhigh/max` | advisor + worker PASS |
| `agent` / `cursor-agent` | `~/.local/bin/*` → `~/.local/share/cursor-agent/versions/2026.07.08-0c04a8a/cursor-agent` | 2026.07.08-0c04a8a | 189 listed；catalog default `auto` | fable/opus/Sol max ask PASS |

重复核验：

```bash
python3 -B oracle/verify/cli-fleet.py          # 静态 + 隔离/worktree/watchdog，34/34 PASS
python3 -B oracle/verify/cli-fleet.py --live   # 四 CLI 通道，39/39 PASS；Kimi 留 session metadata
```

完整 Cursor model snapshot：`docs/reference/agent-models-2026-07-10.txt`（189 行，规范化 SHA-256 `87b5e657cb9672b5e19a9cec59c18ffd6f622959ed15f02b16e8d66bcdf88bed`）。

## 通用运行约束

- 写入型 worker 必须从 `protocol/DISPATCH.md` 的 claim commit 建独占
  sibling worktree；canonical checkout 禁止并发 writer。下面示例都假定已
  `cd "$WT"`，且 `$CARD` 对应 `tasks/doing/$CARD.md`。
- 非交互调用一律断开 stdin。不要用只杀父 PID 的 shell timer；模型 CLI
  可能留下子进程。仓库 watchdog 建独立进程组，超时先 TERM、后 KILL：

```bash
PROMPT="$(cat protocol/WORKER.md "tasks/doing/${CARD}.md")"
WATCHDOG=(python3 -B oracle/run-with-timeout.py --timeout 900 --)
"${WATCHDOG[@]}" <cli> <args...>
```

- 本机 `.zshrc` 会在 SSH shell 自动 attach tmux。自动化若必须加载 zsh function，使用 `TMUX=1 SSH_TTY= zsh -ic '<command>'`；否则直接调用 binary。
- 并发保持 2–3，但每个 writer 必须是不同 branch/worktree；同一 checkout
  只能有一个 writer。worker 写结果文件，thinker 复核；没有变化不 commit。

## Kimi：managed 便宜 worker

配置与目录：

| alias | provider | model | catalog | context | 状态 |
|---|---|---|---|---:|---|
| `kimi-code/kimi-for-coding` | `managed:kimi-code` | `kimi-for-coding` | K2.7 Code | 262,144 | listed + live worker PASS |
| `kimi-for-coding` | 自配 provider | `kimi-for-coding` | 无 | 262,144 | live 401，不使用 |

正确命令：

```bash
"${WATCHDOG[@]}" kimi -m kimi-code/kimi-for-coding -p "$PROMPT"
```

已确认的错误命令：

```bash
kimi -p "..." -y
# exit 1: Cannot combine --prompt with --yolo.
```

0.23.3 的 prompt mode 不加 `-y` 也能调用工具；隔离目录创建 `result.txt=WORKER_OK` 实测 PASS。`--output-format stream-json` 可能混入裸工具 stdout，消费者不能假设每一行都是 JSON。

安全边界：Kimi 当前 CLI 没有 sandbox/tool allowlist。独占 worktree 只能
隔离 Git 写入，不能阻止 shell 读取 HOME 或访问网络。它只领不含秘密、
SSH/hdc、远程服务、设备动作和用户私有目录的低风险机械卡；敏感卡改用
Codex sandbox 或 thinker 手工执行。

## Claude：first-party；固定 binary 与工具面

当前事实：

- `claude` 是 `~/.zshrc` function，会自动追加 `--dangerously-skip-permissions`、`bypassPermissions`、`--effort max`。
- 底层 binary：`~/.nvm/versions/node/v25.2.1/bin/claude`。
- auth：`claude.ai` / `firstParty` / Max subscription。
- 当前进程没有 `ANTHROPIC_BASE_URL` 或 API-key env；主命令不是旧的 `claude-mini` Kimi/MiniMax route。
- 配置写 `claude-fable-5[1m]`，但 configured 不等于 served backend。CLI 没有非交互 `--list-models`。

本轮观察：

| requested | reported backend | 结果 |
|---|---|---|
| default config | `claude-opus-4-8` | MODEL_OK PASS |
| `fable` | `claude-fable-5`（早期另一次观察为 Opus；路由曾漂移） | MODEL_OK PASS；最终受限 worker PASS，usage 另含 Haiku 辅助项 |
| `opus` | `claude-opus-4-8` | MODEL_OK PASS；中途曾出现 API JSON 失败，最终未单独重跑 |
| `sonnet` | `claude-sonnet-5` | MODEL_OK PASS；中途曾出现 API JSON 失败，最终未单独重跑 |

受限 foreground worker：

```bash
CLAUDE="$HOME/.nvm/versions/node/v25.2.1/bin/claude"
"${WATCHDOG[@]}" "$CLAUDE" --model fable \
  --setting-sources="" --mcp-config='{"mcpServers":{}}' --strict-mcp-config \
  --tools=Read,Write,Edit --allowedTools=Read,Write,Edit \
  --permission-mode acceptEdits --output-format json --no-session-persistence \
  -p "$PROMPT"
```

`--tools` 决定模型能看到哪些 built-in tools；`--allowedTools` 只决定哪些
调用无需再次询问。两者不能混淆。空 `--setting-sources` 与 strict empty
MCP config 防止用户/项目 settings、plugins 或外部 MCP 扩大工具面。卡片要
运行 shell oracle 时，`--tools` 加 `Bash`，`--allowedTools` 只加卡片所需的
`Bash(<exact command>:*)`；不要退回全局 danger wrapper。

Background 语法与边界（已 live-tested，不进入常规 dispatcher）：

```bash
python3 -B oracle/run-with-timeout.py --timeout 60 -- \
  "$CLAUDE" --bg -n "$CARD" --model fable \
  --setting-sources="" --mcp-config='{"mcpServers":{}}' --strict-mcp-config \
  --tools=Read,Write,Edit --allowedTools=Read,Write,Edit \
  --permission-mode acceptEdits "$PROMPT"
```

- `--bg` 与 `-p/--print` 冲突；旧命令必定 exit 1。
- `--tools` 是 variadic。无工具探针要写 `--tools=""`，否则可能吞 positional prompt。
- `--bg` 不自动等于 worktree。本仓先由 dispatcher 建 sibling worktree，
  因此 Claude 命令不再加 `--worktree`。
- 后台状态：`claude agents --cwd <dir> --json`；日志：`claude logs <id>`；停止：`claude stop <id>`。本轮实测 `state=done` 后仍可能遗留 transient daemon；live oracle 会按临时 cwd 精确清理，生产 dispatcher 因此只用 foreground。
- 本轮中途出现过 `API Error: Failed to parse JSON`，最终受限 worker 已
  PASS。仍按间歇通道管理：派工前 hello，失败切 Kimi/Codex，不反复重试。

## Codex：固定 Desktop binary + 显式模型/effort

```bash
CODEX_APP="/Applications/ChatGPT.app/Contents/Resources/codex"

# 判断型 worker（真实 workspace-write 文件创建 PASS）
"${WATCHDOG[@]}" "$CODEX_APP" exec -m gpt-5.6-sol \
  -c 'model_reasoning_effort="xhigh"' \
  "$PROMPT" \
  --skip-git-repo-check --sandbox workspace-write --ephemeral \
  -o "/tmp/${CARD}.out"

# 单问题顾问
"$CODEX_APP" exec -m gpt-5.6-sol \
  -c 'model_reasoning_effort="max"' \
  "<一个边界清楚的问题>" \
  --skip-git-repo-check --sandbox read-only --ephemeral \
  < /dev/null
```

Homebrew `codex` 0.143.0 与 Desktop help 一致，但本地 catalog metadata 较旧。裸 `codex exec` 实调虽 exit 0，却使用全局 `Sol + ultra`，反复报 unknown-model/fallback metadata/model-refresh timeout，约 54k tokens；Desktop 显式测试约 11.3k。裸命令不派工。Homebrew 当前可升级到 0.144.1，但升级后也要重跑 oracle 才能改结论。

本地 cache（`fetched_at=2026-07-10T08:25:18Z`）列出：

| slug | context | reasoning efforts | 本轮 live |
|---|---:|---|---|
| `gpt-5.5` | 272k | low/medium/high/xhigh | listed-only |
| `gpt-5.6-sol` | 372k | low/medium/high/xhigh/max/ultra | xhigh + max PASS；bare ultra 能回但退化 |
| `gpt-5.6-terra` | 372k | low/medium/high/xhigh/max/ultra | listed-only |
| `gpt-5.6-luna` | 372k | low/medium/high/xhigh/max | listed-only |
| `gpt-5.4` | 272k | low/medium/high/xhigh | listed-only |
| `gpt-5.4-mini` | 272k | low/medium/high/xhigh | listed-only |
| `gpt-5.3-codex-spark` | 128k | low/medium/high/xhigh | listed-only |

另有 hidden `codex-auto-review`；不作为 worker 型号。`ultra` 仍不用于星型 worker。

## Cursor Agent：只读跨模型顾问

```bash
python3 -B oracle/run-cursor-agent-isolated.py --timeout 900 -- \
  -p --trust --mode ask \
  --workspace /Users/yao/Desktop/code/westlake-piercing \
  "<带文件、日志和已排除假说的一个问题>" \
  < /dev/null
```

- `agent` 与 `cursor-agent` 是同一 binary；两者 model list 逐项相同。
- `-p` 只是 headless，仍可写/跑 shell；只读边界来自 `--mode ask` 或 `plan`。`--trust` 只跳过 workspace trust。
- `--list-models` 共 189 项：GPT 102、Claude 72、Grok 6、Composer 2、Gemini 3、Kimi 1、GLM 2、auto 1。catalog default 是 `auto`；用户配置原选 `claude-opus-4-8`。
- live PASS：`claude-fable-5-thinking-high`、`claude-opus-4-8-medium`、`gpt-5.6-sol-max`。
- Cursor Agent 即使不传 `--model` 也会更新 `privacyCache.updatedAt` 并可能
  改 mode；显式 `--model` 还会改变当前模型。自动化统一走
  `oracle/run-cursor-agent-isolated.py`：复制 config 到临时 HOME，只链接认证
  所需的 macOS Keychains，并在退出时确认真实 config bytes/mode 未变。上面的
  三项显式模型 PASS 来自本轮人工审计，不由自动 oracle 重放。

## 当前选型

| 任务 | 首选 | 失败回退 |
|---|---|---|
| 无秘密的机械 host worker | managed Kimi | Claude fable（hello PASS 后）→ Sol xhigh |
| 含凭据/远程/设备权限 | Codex sandbox 或 thinker | 不派 Kimi |
| 判断型 worker | Codex Desktop Sol xhigh | Cursor Agent ask 只给判断，不改仓 |
| 硬墙单问题顾问 | Codex Desktop Sol max | Cursor fable/opus/Sol max 交叉复核 |
| 板/远程动作 | 只按卡片明确授权；thinker 最终验收 | 不交给裸 danger wrapper |

## 其他工具

- `mmx` 是内容/搜索/媒体 API，不是 repo worker；无文件/shell 工具。
- `bark <标题> <内容> [分组]` 只用于长任务重要里程碑、用户才能解决的硬墙、或明确要求。
- native/AOSP/OHOS 重编译走 `ssh compiler`；详见 `docs/reference/host-build.md`。
