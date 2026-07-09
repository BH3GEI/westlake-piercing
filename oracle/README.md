# oracle/ — "完成"的唯一定义

这一层回答一个问题：**一件事到底做完没有？** 答案不来自任何模型的自述，只来自这里的脚本输出。

- `board-health.sh <serial> [--hash]` — hdc 可达 + shell 存活 (+ 产物 hash)。退出码 0/1/2。
- `board-recover.sh <serial>` — bark 用户断电重插 + 守着等板回来重挂 → READY(电源不自动化)。
- `verify/atom-<NN>.sh` — 逐墙/逐原子复核。末行打印 `PASS`/`FAIL`。
- `refresh-dashboard.sh` — 从 state/ 重生成 `docs/dashboard/progress.html`(力工刷板,禁止手改 HTML)。
- `dispatch.sh` — (待建)领卡→匹配板→起 worker→收结果 的 loop。第一版可由 thinker 手动模拟。

## 铁律

1. 复核脚本必须**重跑真实判据**，不许 `echo PASS` 走过场。未实现默认 `FAIL`。
2. LEDGER 里任何状态跃迁到"已复核(V=✔)"，必须有对应 verify 脚本 PASS + evidence 登记。
3. `board-recover.sh` 的 `power_cycle()` / `remount_substrate()` 两个 TODO 是四板并行的承重件，接口到位前，掉板仍需人工。
