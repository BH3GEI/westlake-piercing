<!-- 队列摘要 · tasks/ 的只读视图 · thinker 铸卡/验收后同步这里 -->
<!-- 真相在 tasks/{todo,doing,done,blocked}/;本文件是人类可读的一页概览。 -->

# 任务队列概览 (QUEUE)

**更新**：2026-07-11(晚)· 前沿转向 **color-apk 上屏**(用户线:APK 自绘变色,拒 OH 直接填色),已交接
`state/HANDOFF-2026-07-11-color-apk-onscreen.md`。#49/W-003 经 codex 定案**重写**(根因=class_linker 发布 bug,非 ABI)。

两条队列并行，互不抢脑子：
- **穿刺队列**：卡从墙上长，thinker/用户亲自拆，一次开一道墙，吃 big-clean 板。
- **工厂队列**：卡从清单/复核长，弱模型舰队消化，多为 device-free 或可摊到 big-any/small。

## 穿刺队列 (frontier)

| 卡 | 墙 | 状态 | 板需求 | 备注 |
|---|---|---|---|---|
| W-001 | #43 AppCompatTheme 真 WAB oracle | **done** | big-clean | 验收板 5583 `atom-43.sh` PASS ×4;LEDGER ✅;产物 hash-locked(dex 696dd3cb + ART 3ea7b69d) |
| **W-003** | #49 @CriticalNative 绑定发布修复 | **todo(已重写 07-11)** | big-clean | **codex 定案**:根因=`class_linker.cc:4042` 早 return 跳过 critical 发布块(:4055-4066)+ 两 resolver 漏查 `GetRegisteredNative()`(:504)。**修法=发布块前移 + 两 resolver 查表**,非接 hook(原卡打错层)。为 color 上屏/#51/#53 绑图形 native 铺路 |
| **(color 上屏)** | APK 自绘变色上屏(color-apk) | **blocked on W-003** | big-clean | 交接 `state/HANDOFF-2026-07-11-color-apk-onscreen.md`;APK 源已就绪。走 W-003 正修，不在持安全禁令的 5ce2dcee 替换 framework jar |
| (待铸) | #51 inflate `R.layout.main`(窄 Factory2 只替 ImageView→AppCompatImageView) | todo | big-clean | 布局极简零自定义 View;**风险闸=Typeface/Minikin 字体 bootstrap**,先打字体冒烟探针再铸 |
| (待铸) | #53 手动 draw 进 RenderNode → 货架 RenderProxy → 面板像素 r==2 | todo | big-clean | 首帧引擎(gfx-smoke)已实测存在,不走 ViewRootImpl(死胡同)。依赖 #49+#51 |

> 路线定案见 `evidence/W-001/2026-07-11-road-to-first-frame-plan.md`。**字体冒烟探针已打(2026-07-11,5583)**:
> 结论 = 字体 map 是真闸(`Typeface.DEFAULT==null`),绑定部分可恢复(nGetFlags=UnsatisfiedLinkError,#49 面),无 SIGBUS。
> 证据 `evidence/W-001/2026-07-11-fontsmoke-pristine-vm-result.txt`。**下一动作 = fontsmoke 扩:自带 .ttf + Typeface.Builder
> + 预绑 Font/Typeface native → measureText != 0**;可先于 #49 起步。

## 工厂队列 (factory) — 弱模型舰队

| 卡 | 内容 | 状态 | 板需求 | oracle |
|---|---|---|---|---|
| (待铸) | 复核 #4 onCreate 越框架墙 vs boot-image clinit 矛盾 | todo | big-any | 重跑 → 是否真过 clinit |
| (待铸) | 复核 38 个 claimed 未复核项(V=? → ✔/✗) | todo | 混合 | oracle/verify/atom-NN.sh |
| (待铸) | MotionEvent 52 native 桩表复核(host) | todo | none | 对 A16 smali 差分 |

## 冻结/待命

- **F-001** ✅ 已推：`piercinginfra/main` = `509a1e12`（orphan 瘦身，无 scratchpad/.so，~11MB）。本地工作分支仍 `dayu600-hwui-gate1-2`。

- lottery 实验(#46)：W-002 已证伪旧口径并 blocked；不执行会诱发四板共 hub 掉线的 trial。
- Unity 线(D600-5bb5,另一 workstream)：独立坐标,暂不进本队列;需要时按 L{NN}.A{NN} 对齐。

## 铸卡纪律

新卡 = 复制 tasks/_TEMPLATE.md,填全 7 段(墙签名/封闭上下文/oracle/板需求/禁区/证据/参照 oracle 路线)。
缺 oracle 命令的卡**不铸**,尤其不发给弱模型。
全局原子号查 `state/ATOM-MAP.md`。改完 state 后刷看板:`oracle/refresh-dashboard.sh`(或派 D-卡,见 `tasks/_TEMPLATE-DASHBOARD.md`)。
