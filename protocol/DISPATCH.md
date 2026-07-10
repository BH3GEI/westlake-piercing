# DISPATCH 派活手册

> dispatcher = 脚本(或 thinker 顺手),不是模型。领卡 → 匹配板 → 起 worker → 收结果。
> 本文件是手册;真正的 loop 待建为 oracle/dispatch.sh(第一版可由 thinker 手动模拟)。

## 一张卡的一生

```
tasks/todo/R-017.md
   │ canonical checkout:领取 + 板锁 + commit
   ▼
tasks/doing/R-017.md   + 若占板:在 BOARDS.toml 对应板写 lock=R-017
   │ 从 claim commit 建 worker/R-017 + sibling worktree
   ▼
worker 只在独占 worktree 跑 oracle → 在 doing 卡追加 RESULT → commit
   │
thinker 在该 worktree 复跑 oracle → merge worker branch
   ▼
canonical checkout:mv done/ + 清板锁/更新 LEDGER → commit → 非 force 清 worktree/branch
```

## 领取与 worktree 隔离

写入型 worker 不能从 canonical checkout 启动。每张卡先在 canonical
checkout 完成一次 claim commit，再从该 commit 创建独占 sibling worktree：

```bash
ROOT=/Users/yao/Desktop/code/westlake-piercing
CARD=R-017
BRANCH="worker/${CARD}"
WT="${ROOT}.worktrees/${CARD}"

# 先确认没有别的 tracked/staged 改动；untracked 用户文件不准顺手处理。
git -C "$ROOT" diff --quiet
git -C "$ROOT" diff --cached --quiet
test ! -e "$WT"
! git -C "$ROOT" show-ref --verify --quiet "refs/heads/${BRANCH}"
mkdir -p "$(dirname "$WT")"

# dispatcher 手动完成三件事后提交：
# 1. todo/<card> → doing/<card>
# 2. 填卡片 branch/worktree
# 3. 如占板，在 BOARDS.toml 写 lock=<card>
git -C "$ROOT" add "tasks/doing/${CARD}.md" "tasks/todo/${CARD}.md" state/BOARDS.toml
git -C "$ROOT" commit -m "领卡:${CARD}"
git -C "$ROOT" worktree add -b "$BRANCH" "$WT" HEAD

test "$(git -C "$WT" branch --show-current)" = "$BRANCH"
test "$(git -C "$WT" rev-parse --show-toplevel)" = "$WT"
```

`board: none` 时不 stage `state/BOARDS.toml`。若 claim 失败，不能启动
worker。多个 writer 只有在 branch 和 worktree 都不同的情况下才能并行。
worker 不移动卡、不改 state；板锁一直留到 thinker 验收合并完成。卡目录的
状态跃迁只在 canonical checkout 做，避免并行 branch 的 directory-rename 冲突。

## 板子匹配规则

卡里 `board:` 字段 → 找 BOARDS.toml 里 `online=true && lock=="" && tier 匹配`:
- `board: none` → 不占板；仍必须独占 worktree(host 活:编译/桩表/分析/刷看板)
- `board: small` → 任一 small 空闲板(**辅助调试、找思路、旁支**;不承担前沿验收)
- `board: big-any` → 5583f5be 或 5ce2dcee(在线且空闲;复核/对照)
- `board: big-clean` → 只 5583f5be(**打墙/前沿验证主战场**,一次一卡)

占板 = 写 `lock=<卡id>`;交卡 = 清 `lock=""`。看门狗发现板掉线 → 杀持锁 worker、卡回 `todo`(标 board-died)、调 board-recover.sh(它会 bark 用户手动断电重插,然后守着等板回来重挂;电源不做自动化)。

## worker 命令行（实测 2026-07-10；详情见 docs/reference/cli-fleet.md）

以下命令必须在卡片的 `$WT` 内运行。通用 watchdog 创建独立进程组，
超时先 TERM、再 KILL 整组；不会只杀父进程留下子进程：

```bash
cd "$WT"
PROMPT="$(cat protocol/WORKER.md "tasks/doing/${CARD}.md")"
WATCHDOG=(python3 -B oracle/run-with-timeout.py --timeout 900 --)
```

```bash
# Kimi managed worker。0.23.3 禁止 prompt 与 -y 同用。
# 无 sandbox/tool allowlist：仅限无秘密、无远程/设备权限的低风险机械卡。
"${WATCHDOG[@]}" kimi -m kimi-code/kimi-for-coding -p "$PROMPT"

# Claude foreground。固定 binary；禁 user/project settings 与外部 MCP；
# --tools 控制可见工具，--allowedTools 控制哪些调用无需再问。
CLAUDE="$HOME/.nvm/versions/node/v25.2.1/bin/claude"
"${WATCHDOG[@]}" "$CLAUDE" --model fable \
  --setting-sources="" --mcp-config='{"mcpServers":{}}' --strict-mcp-config \
  --tools=Read,Write,Edit --allowedTools=Read,Write,Edit \
  --permission-mode acceptEdits --output-format json --no-session-persistence \
  -p "$PROMPT"

# Codex 判断型 worker：显式 Sol+xhigh，不依赖全局默认；必须 </dev/null。
"${WATCHDOG[@]}" "/Applications/ChatGPT.app/Contents/Resources/codex" exec \
  -m gpt-5.6-sol -c 'model_reasoning_effort="xhigh"' \
  "$PROMPT" \
  --skip-git-repo-check --sandbox workspace-write --ephemeral \
  -o "/tmp/${CARD}.out"

# mmx = 内容 API(无文件/shell 工具),不能领卡;只用于批量文本消化/搜索/媒体。
# agent(cursor-agent)= thinker 求助通道,不当 worker(见 THINKER.md)。
```

Claude 卡片要求跑 shell oracle 时，同时把 `Bash` 加进 `--tools`，并只把
卡片需要的 `Bash(<exact command>:*)` 加进 `--allowedTools`。只改
`--allowedTools` 不会隐藏 Bash；不能回退到 `.zshrc` 的全局 danger wrapper。

Kimi prompt mode 已实证可直接调 shell，却没有可用的 sandbox/tool
allowlist。独占 worktree 只防 Git 冲突，不限制它读取 HOME 或发网络请求；
不得给含凭据、SSH/hdc、远程服务、设备动作或用户私有目录的卡。此类卡改用
有显式 sandbox 的 Codex，或由 thinker 亲自执行。

**选型(更新 2026-07-10)**:无秘密、无远程/设备权限的机械卡才用 managed Kimi；Claude fable 只有 hello PASS 后才用（本轮出现过 first-party JSON 间歇失败）；敏感或要判断的 worker 用 sandboxed Sol+xhigh；Sol+max 只读顾问见 THINKER。Sol ultra 不用于星型 worker 卡。**禁止** Cursor 内置 Task/subagent。细节见 `docs/reference/cli-fleet.md`。
占板/hdc 卡若 `workspace-write` 无法访问设备，只有卡片明确授权设备操作时才改为 `danger-full-access`；host 卡保持最小权限。

## 并发与限额

- 写入型 worker 先 2–3 个，每个必须拥有不同 branch/worktree；共享 checkout 的 writer 数永远是 1。
- 403/usage-limit → 指数退避重试,或换另一家 CLI。
- host 卡(board:none)可多开独占 worktree；占板卡还受板数(≤3 在线)限流。

## 硬约束

- worker 之间零通信。dispatcher 不把 A 的输出喂给 B。跨卡信息一律回 thinker 归并。
- dispatcher 不做判断:PASS/FAIL 由卡里 oracle 决定,验收由 thinker 做。dispatcher 只搬运。
- 无变化不 commit。禁止 "polling / no new content" 空转 commit。
- 常规派工只用 Claude foreground。2.1.204 的 `--bg` 即使 `state=done`，`claude stop` 后也可能留下 transient daemon；它只由 `cli-fleet --live` 在临时 cwd 内测试并精确清理，不进入生产 dispatcher。
- thinker 验收后从 canonical checkout `git merge --no-ff "$BRANCH"`，再把本卡从 `doing/` 移到 `done/`、清板锁/更新 state 并 commit；确认 worktree 干净后只用非 force 的 `git worktree remove "$WT"` 与 `git branch -d "$BRANCH"`。FAIL/dirty worktree 保留并交接，不强删。
