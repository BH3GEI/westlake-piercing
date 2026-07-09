<!-- 当前前沿 · ≤30 行 · 只写"此刻在打哪道墙/最新证据/下一步" -->
<!-- 每个班次结束由 thinker 更新。历史前沿不留这里,进 DECISIONS.md。 -->

# 当前前沿 (FRONTIER)

**更新**：2026-07-09 开钻班次 · thinker

## 代码前沿 = 墙 #43 · 卡 W-001

- **卡**：`tasks/todo/W-001.md`（待领做 / 板通后上板）
- **机理**：AppThemeBar(0x7f15000e) parent 跨包到 framework 0x01，uam 缺 package 0x01 → `uamHasWab=false`
- **修法**：同一 AM 在 applyStyle **前** addAssetPath(app)+addAssetPath(framework-res)；触发 BuildDynamicRefTable
- **代码**：`test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java` — uamShared(~1570) 只挂 app；early themeAm2(~2616) 与 W6 themeAm(~2886) 分裂；源码已无 `uamHasWab` 日志字符串，需加回

## 阻塞态

- **hdc 不在 PATH**（2026-07-09 开钻核实）→ board-health 无法测；上板验证暂停
- BOARDS 里 5583f5be 仍标 online=true（15:42 快照）——**以 hdc 实测为准**，通了再改回/确认
- 5ce2dcee 仍离线

## 下一步

1. 恢复 hdc（PATH / 安装）+ `board-health.sh 5583f5be…` OK
2. thinker 改 probe：三路 AM 合一 + 顺序正确 + 恢复 uamHasWab/hasColorPrimary/wcoHas 日志
3. 上板跑 oracle（见 W-001）→ PASS 才跃迁 LEDGER #43
4. 卡住 → fable/opus 顾问（`--workspace` + 足上下文）
