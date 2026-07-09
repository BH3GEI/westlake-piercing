# DISPATCH 派活手册

> dispatcher = 脚本(或 thinker 顺手),不是模型。领卡 → 匹配板 → 起 worker → 收结果。
> 本文件是手册;真正的 loop 待建为 oracle/dispatch.sh(第一版可由 thinker 手动模拟)。

## 一张卡的一生

```
tasks/todo/R-017.md
   │ dispatcher 领取(mv = 互斥锁)
   ▼
tasks/doing/R-017.md   + 若占板:在 BOARDS.toml 对应板写 lock=R-017
   │ 起 worker: kimi -p "$(cat protocol/WORKER.md tasks/doing/R-017.md)"
   ▼
worker 跑 oracle → 追加 RESULT 块 → commit → mv done/
   │
tasks/done/R-017.md    + 清 BOARDS.toml 的 lock
   ▼
thinker 验收班次:亲跑 oracle 复核 → LEDGER 跃迁 / 或打回 todo
```

## 板子匹配规则

卡里 `board:` 字段 → 找 BOARDS.toml 里 `online=true && lock=="" && tier 匹配`:
- `board: none` → 不占板,并发不设限(host 活:编译/桩表/分析)
- `board: small` → 任一 small 空闲板
- `board: big-any` → 5583f5be 或 5ce2dcee(在线且空闲)
- `board: big-clean` → 只 5583f5be(前沿专用,一次一卡)

占板 = 写 `lock=<卡id>`;交卡 = 清 `lock=""`。看门狗发现板掉线 → 杀持锁 worker、卡回 `todo`(标 board-died)、调 board-recover.sh(它会 bark 用户手动断电重插,然后守着等板回来重挂;电源不做自动化)。

## worker 命令行(实测 2026-07-09;坑与详情见 docs/reference/cli-fleet.md)

headless 通用包装(mac 无 timeout;codex/claude 守 stdin 会挂):

```bash
( <worker-cmd> < /dev/null & P=$!; ( sleep 900 && kill $P 2>/dev/null ) & W=$!; wait $P 2>/dev/null; kill $W 2>/dev/null )
```

```bash
# Kimi(便宜力工)⚠️ 2026-07-09 实测 403 额度尽,刷新前用 claude/codex
kimi -p "$(cat protocol/WORKER.md tasks/doing/<card>.md)" -y

# Claude Code(便宜力工:自家路由接 kimi/minimax 后端,settings.json 的 model 会被路由重置,不作数)
claude --bg -n "<card>" -p "$(cat protocol/WORKER.md tasks/doing/<card>.md)"

# Codex(稳定执行器,中价;必须 </dev/null;占板卡 sandbox 从 workspace-write 起试)
codex exec "$(cat protocol/WORKER.md tasks/doing/<card>.md)" --skip-git-repo-check --sandbox workspace-write < /dev/null

# mmx = 内容 API(无文件/shell 工具),不能领卡;只用于批量文本消化/搜索/媒体。
# agent(cursor-agent)= thinker 求助通道,不当 worker(见 THINKER.md)。
```

## 并发与限额

- 并发 worker 数设上限(经验:先 2–3,别一次 8 个——上一版 8 接班 agent 全 403)。
- 403/usage-limit → 指数退避重试,或换另一家 CLI。
- host 卡(board:none)可多开;占板卡受板数(≤3 在线)天然限流。

## 硬约束

- worker 之间零通信。dispatcher 不把 A 的输出喂给 B。跨卡信息一律回 thinker 归并。
- dispatcher 不做判断:PASS/FAIL 由卡里 oracle 决定,验收由 thinker 做。dispatcher 只搬运。
- 无变化不 commit。禁止 "polling / no new content" 空转 commit。
