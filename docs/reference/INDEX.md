# docs/reference/ — 架构与规格参考原件

长期知识：坐标系、规格清单、跨项目方法论。**不是实时事实源**（那是 `state/`）。

## 使用纪律（重要）

- 这些是 HTML 原件，合计 ~580K。**不要整包读进上下文**（尤其 `*-board-L01-L14` 267K、`*-list-latest` 169K）。
- 用法：thinker 铸卡/钻墙需要某个原子的坐标、验收口径、或 oracle 对照时，**定点取用**（grep 原子号 / 读某一节）。
- 两条 workstream 共享同一坐标系 `L{NN}.A{NN}`(来自 AtomFunctionGit)，但**设备/进度各自独立**，别混：
  - **WestLake 线**（本仓库主线）：uptodown 等标准 APK，DAYU600 `5583f5be`，imageless ART。状态看 `state/LEDGER.md`。
  - **Unity 线**（HanBing，`/opt/21.Game`）：Unity 游戏上屏，D600 `5bb5`。**不在本仓库 state 内**，这里只存其文档作方法论与 oracle 参照。
- **对齐**：本仓墙序 #1–53 ↔ 规格原子 的映射在 `state/ATOM-MAP.md`(不是本目录)。进度一眼看 `docs/dashboard/progress.html`。
- HTML 看板状态(M01-SPEC 等)**不是**本仓真机进度;真机进度只认 LEDGER。

---

## 工具

- **`cli-fleet.md`**
  CLI 舰队速查。`gpt-5.6-sol` 已用 Codex Desktop CLI 实跑；单问题顾问默认 `max`，worker 用 `xhigh`，`ultra` 仅在明确允许自动派生任务时用。**禁止依赖全局默认模型。**

- **`host-build.md`**
  编译与主机工具：**重编译走 `ssh compiler`**；hdc；embed `.so` 必须 `-nostdlib`；uptodown probe 上板入口。
## 坐标系与规格（跨线通用）

- **`westlake-atom-function-board-L01-L14.html`** (267K)
  167 原子总看板，L01–L14 楼层 × 大类 × 原子，含依赖 `required_state` 与验收口径。**要某原子的验收标准/依赖时查这里。** 注意：全部标 M01-SPEC，是规格枚举不是真机进度——真机进度以 `state/LEDGER.md` 为准。

- **`westlake-atom-function-list-latest.html`** (169K)
  同 167 原子的成熟度视图：0 TECHNICAL_ATOM / 162 UNCLASSIFIED_DRAFT / G0–G7 门几乎全 FAIL。**它的价值是那句标准**——"原子必须可单独测试/验证/交付，缺 wall signature/universal fix/testability/verification/delivery 不算完整"。这就是 `tasks/_TEMPLATE.md` 的来源。查某原子当前门状态时用。

- **`westlake-bridge-surface-total-report.html`** (24K)
  Android→OH 桥接总量：全栈 ~13,251 面，真实工作量 11,226，**卡脖子硬核仅 ~969**（显示渲染 660 + libc 红线 243 + Java 核心 66）。**判断"某个缺口值不值得做/属于哪类工作量"时查这里。** 工厂队列选题的地图。

## Unity 线（方法论 + oracle 参照，非本仓库进度）

- **`unity-display-four-routes.html`** (28K)
  四路线 × L1–L14 对齐大表。**oracle 路线方法的样板**：坏路线(标准 Unity/bionic)撞的墙，拿已跑通路线(团结/musl-native)当"本该长什么样"对照修；分歧应止于 L5 引擎二进制，其余皆"接缝泄漏"。铸"参照 oracle 路线"那段卡时读它。

- **`unity-atomic-decomposition.html`** (40K)
  Unity 上屏 31 原子五段(进程→生命周期→引擎init→图形→渲染)攻关分解。**"从真实撞墙长出原子"的样板**（症状/根因/修法/验收闸/弹药/依赖 + §7 device-free vs 设备串行拆分）。铸穿刺卡、做 lane 拆分时参考。

- **`unity-floors-and-atom-list.html`** (37K)
  Unity 构造楼层 B0–B5 × 上屏楼层 L01–L07 双坐标对齐 + 测试完善清单(P1/P2/P3 泛化缺口)。

## 方法论

- **`a1-pthread-operate-in-place.html`** (15K)
  A1(bionic↔musl pthread 原地翻译)的前因/后果/适用。**三重价值**：①防伪 PASS 设计(de-macro 双独立实现互为 oracle)——给深水卡加差分门时抄；②三级验证(设计/QEMU/真机)样板；③**战略裁决样板**——"技术 SOUND 但不在关键路径，备用不启用"，`state/DECISIONS.md` 的战略裁决就照这个格式。

---

<!-- 新增参考文档:放这里 + 在本 INDEX 加一段"什么时候该读"。没有使用场景的文档不收。 -->
