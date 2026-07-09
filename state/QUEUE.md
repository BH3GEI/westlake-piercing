<!-- 队列摘要 · tasks/ 的只读视图 · thinker 铸卡/验收后同步这里 -->
<!-- 真相在 tasks/{todo,doing,done,blocked}/;本文件是人类可读的一页概览。 -->

# 任务队列概览 (QUEUE)

**更新**：2026-07-09 落盘班次

两条队列并行，互不抢脑子：
- **穿刺队列**：卡从墙上长，thinker/用户亲自拆，一次开一道墙，吃 big-clean 板。
- **工厂队列**：卡从清单/复核长，弱模型舰队消化，多为 device-free 或可摊到 big-any/small。

## 穿刺队列 (frontier)

| 卡 | 墙 | 状态 | 板需求 | 备注 |
|---|---|---|---|---|
| (待铸) | #43 AppThemeBar 双包 parent-chain | todo | big-clean | 修法已知,见 FRONTIER;thinker/用户主攻 |

## 工厂队列 (factory) — 弱模型舰队

| 卡 | 内容 | 状态 | 板需求 | oracle |
|---|---|---|---|---|
| (待铸) | 复核 #4 onCreate 越框架墙 vs boot-image clinit 矛盾 | todo | big-any | 重跑 → 是否真过 clinit |
| (待铸) | 复核 42 个 claimed PASS 逐一(V=? → ✔/✗) | todo | 混合 | oracle/verify/atom-NN.sh |
| (待铸) | MotionEvent 52 native 桩表复核(host) | todo | none | 对 A16 smali 差分 |

## 冻结/待命

- lottery 实验(#46)：暂停,等 5ce2dcee 恢复 + probe bundle。
- Unity 线(D600-5bb5,另一 workstream)：独立坐标,暂不进本队列;需要时按 L{NN}.A{NN} 对齐。

## 铸卡纪律

新卡 = 复制 tasks/_TEMPLATE.md,填全 7 段(墙签名/封闭上下文/oracle/板需求/禁区/证据/参照 oracle 路线)。
缺 oracle 命令的卡**不铸**,尤其不发给弱模型。
