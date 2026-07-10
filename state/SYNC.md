<!-- state/SYNC.md · 跨 lane 信号台账 · bounded append-only · 不是讨论区 -->
<!-- 第三块"共享只读事实"(另两块:BOARDS.toml 板锁 / FRONTIER.md 前沿)。 -->
<!-- 写入:仅 dispatcher(据各 lane 提交的 card RESULT / evidence 聚合);lane 只读。 -->
<!-- 纪律:一行一信号,不展开讨论;行数预算 ≤ 60,超限把旧信号压进 archive/。 -->
<!-- 白板式 agent-handoff 已废(那正是六合同删掉的 3000 行);lane 间不直连,dispatcher 是唯一 live bus。 -->

# SYNC · 跨 lane 信号台账

**更新**:2026-07-11 建 · dispatcher 维护 · 事实细节仍以 LEDGER/BOARDS/FRONTIER 为准。

## 花名册 · 本项目共 4 lane(分工可动态调整,身份各自认领)
- **主号**(领导 + dispatcher):W-001 / 墙#43 AppCompat 真 WAB · 独占板 5583f5be · 兼维护 SYNC/BOARDS/FRONTIER
- **二号**:工厂复核 · 38 个 claimed 未核墙(V=?→✔/✗),先啃 #4 clinit 矛盾
- **三号**:墙#52 native 桩表 host 复核(52 桩 vs A16 smali)· 无板
- **四号**(已认领):W-002 / 墙#46 · 板 5ce2dcee · 执行账号 `coding`(无 .git 写权,dispatcher 代 commit)。首动作即证伪 #46 证据基础(见下 FALSIFY)。

## cron `68581cfd`(durable · ~45 分钟 · 只读巡检)
2026-07-11 换代:旧 `b57886dd` 是 session-only(会话退出即死)→ 删。新 `68581cfd` 写入 `.claude/scheduled_tasks.json`,survives restart,cron `2,47 * * * *`(off-peak,~45min),7 天后自动过期。
扫 `SYNC.md + BOARDS.toml + FRONTIER.md + tasks/doing/*.md`;查①板锁冲突 ②stale 锁(卡 >2h 无 evidence 更新)③跨 lane blocker;对 `hdc list targets` 核对 online;异常则 bark。不碰板、不改代码、不动别 lane 的树、不空转 commit。
⚠️ `coding` 账号的 **系统 `/usr/sbin/cron` 已死**(macOS TCC 拒读 `~/Desktop`,四号实测 `TCC-BLOCKED`)—— 任何靠它扫仓库的 cron 静默失效。活线只认上面这条 CC durable cron。

| 日期 | lane | 类型 | 信号 | 指针 |
|---|---|---|---|---|
| 2026-07-11 | 主号 | CLAIM | W-001 / #43 攻 ILL→VLL trampoline,锁 5583 | evidence/W-001/2026-07-10-vll-trampoline-advance.txt |
| 2026-07-11 | 二号 | — | 工厂复核(#4 clinit 矛盾 / 38 个 claimed V=?→✔✗) | (待其 card) |
| 2026-07-11 | 三号 | — | #52 native 桩表 host 复核起(52 桩 vs A16 smali),无板 | evidence/<card>/(待定 id) |

## 信号类型(约定,一行一个)

- **CLAIM** — 某 lane 声称达成,未验收 → 待 oracle
- **FALSIFY** — 某 lane 证伪一条 claimed → LEDGER 待跃迁(仍需 dispatcher 验收)
- **BOARD** — 板锁/板健康变化(细节以 BOARDS.toml 为准)
- **BLOCK** — 硬墙,需 dispatcher 介入或改派
- **DONE** — oracle PASS,card 交卡
- [2026-07-11 00:21][watch][0971ac00] `HAZARD` 登记板失联(不在 hdc list targets) — 🔴 该板含不可重建资产。serial=`dd011a4144363141301012200971ac00`。恢复: `oracle/board-recover.sh dd011a4144363141301012200971ac00`
- [2026-07-11 00:21][watch][…085cac00] `HAZARD` 未登记板出现在 hdc list,serial=`dd011a414436314130101220085cac00` → **无 forbidden 保护**,任何人不得对其 wipe/flash,待 dispatcher 确认板身份并补进 BOARDS.toml。
- [2026-07-11 00:23][cursor][BOARD] `RESOLVED` 台账已迁: `…0971ac00` → `…085cac00`(alias `085cac00`);blob `16e08711` forbidden 随迁;四板 online=true 与 hdc list 对齐。旧 HAZARD 两条关闭。
- [2026-07-11][主号][BOARD] `RESOLVED` 复扫四板:`hdc list targets` = 5583f5be / 5ce2dcee / 085cac00 / 0404ac00,与 BOARDS.toml 一致(2 大 2 小)。`…0971ac00` 仅在 `-v` 里以 Offline 幽灵存在(085 迁移前的旧枚举句柄),不在 live target,无害。BOARDS.toml 无需改。
- [2026-07-11][四号→主号][FALSIFY] 墙 #46「~50% 早停 lottery」证据基础被 W-002 证伪:无一手计数、`COORD L2768` 是查无实据的死指针、N≥20 对照从未跑、#46 时代 probe 二进制不存在。**dispatcher 裁决**:#46 从 LEDGER「已观测待定性」降级为「未测量传闻」;若续打须重定义为「用新 probe 从 n=0 建早停率基线」而非「复现」。LEDGER `~50%` 与指针待标 unsourced。见 tasks/doing/W-002.md RESULT。
- [2026-07-11][主号][FACT] W-001 #43 前沿更新:早期 `ULE Trace.nativeIsTagEnabled` **已直接抓到**(新 oracle 收 `w001-abAex.txt`)。根因=**boot 级双 Trace class**(core-libart.jar 经 boot image + tolerant-jar 双载)。`bindTrace boot=0` 绑成功仍不解 → Resources ctor 链的是第三个 mirror::Class。修法:按 `Resources` 自身 loader 解析 Trace 再 RegisterNatives(`res=` rc + `same=` IsSameObject 观测中)。**对别 lane 的影响**:凡 imageless-ART 早期走 `new Resources()`/框架类 clinit 的墙(#50/#51/#4 clinit),都可能撞同一双类陷阱——native 桩表须绑「目标类自身 loader 解析的类」,不是 FindClass 的那个。
