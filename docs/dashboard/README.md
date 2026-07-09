# DASHBOARD · 进度看板刷新纪律

> 看板是**只读视图**，不是事实源。事实在 `state/LEDGER.md` + `state/ATOM-MAP.md`。
> 刷新 = 力工跑脚本重生成 HTML，thinker **不手改** `docs/dashboard/progress.html`。

## 为什么要看板

- 节约大脑上下文：进度一眼看完，不必整包读 LEDGER。
- 对齐可见：每堵墙旁挂规格原子号 + 映射置信。
- 给人类/顾问打开本地 HTML 即可，不进聊天。

## 怎么刷新

```bash
# thinker 派力工（或自己顺手）:
bash oracle/refresh-dashboard.sh
# 产出: docs/dashboard/progress.html
# 打开: open docs/dashboard/progress.html
```

力工卡模板见 `tasks/_TEMPLATE-DASHBOARD.md`。oracle = 脚本退出 0 + HTML 含当前墙数。

## 数据流

```
state/LEDGER.md     ─┐
state/ATOM-MAP.md   ─┼─→ oracle/refresh-dashboard.sh → docs/dashboard/progress.html
state/FRONTIER.md   ─┤
state/BOARDS.toml   ─┘
```

改进度 → 先改 state → 再刷看板。**禁止**只改 HTML。

## 板子角色（再钉一次）

- **big-clean (5583f5be)**：打墙 / 前沿验证主战场，一次一卡。
- **big-any**：复核、对照实验。
- **small (32位)**：辅助调试、找思路、旁支；**不承担前沿验收**。

见 `state/BOARDS.toml` + `protocol/DISPATCH.md`。
