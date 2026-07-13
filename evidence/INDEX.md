<!-- 证据索引 · 一行一条 · 防假阳性的账 -->
<!-- 大件(so/jar/hap/apk/录屏)不进 git,只登记指针;小件(日志切片/截图)可入 evidence/<task-id>/。 -->

# 证据索引 (EVIDENCE INDEX)

| 日期 | 卡/墙 | 类型 | 板号 | hash | 命令 | 产物路径 |
|---|---|---|---|---|---|---|
| 2026-07-09 | #22 蓝像素引擎 | 截图 | 5583f5be | 08f400a8 | (见 LEDGER #22) | scratchpad-shared/(待收编) |
| 2026-07-10 | #48 板恢复 | hdc | 4 板 | - | hdc list targets | `evidence/F-002/` |
| 2026-07-09 | F-001 PiercingInfra 瘦身推送 | remote SHA | - | 509a1e12 | git ls-remote piercinginfra refs/heads/main | 远程 main(无本地 evidence 目录) |
| 2026-07-09 | F-002 hdc 恢复 | CLI+四板可达 | 4 板 | - | `which hdc; hdc version; hdc list targets` | `evidence/F-002/` |
| 2026-07-10 | W-001 #43 | oracle FAIL | 5583f5be | sha256 fa072043… | `oracle/verify/atom-43.sh <serial>` | `evidence/W-001/2026-07-10-ill-baseline.txt` |
| 2026-07-10 | W-001 #43 | oracle audit | host/APK | - | javap + apktool + JADX + source diff | `evidence/W-001/2026-07-10-oracle-audit.txt` |
| 2026-07-10 | W-001 #43 | hash-locked oracle FAIL | 5583f5be | sha256 623d7aac… | `W001_TIMEOUT_SECONDS=45 oracle/verify/atom-43.sh <serial>` | `evidence/W-001/2026-07-10-hashlocked-ill-baseline.txt` |
| 2026-07-12 | W-004 color APK | WIP handoff | 5ce2dcee | ART dc1d5e82… | oracle not run | `evidence/W-004/2026-07-12-handoff-wip.txt` |
| 2026-07-12 | W-003 #49 | oracle PASS + #43 | 5583f5be | art 0742f1c4… | `oracle/verify/atom-49.sh 5583…` | `evidence/W-003/2026-07-12-atom-49-clean-relink-pass.txt` |
| 2026-07-12 | W-004 triangle APK | panel/readback PASS | 5ce2dcee | APK d9865cdf… | `oracle/verify/triangle-smoke-5ce.sh 5ce…` | `evidence/W-004/triangle-apk-panel-2026-07-12/` |
| 2026-07-13 | W-004 installed HAP extension | host build/sign/install checkpoint | 5ce2dcee | HAP aa818e7b… | fresh Android-frame oracle pending | `evidence/W-004/2026-07-13-installed-hap-host-checkpoint.md` |

## 什么算证据(该留)

只留**对穿刺/复核有帮助的事实**:
- 板上 oracle PASS/FAIL 的关键输出切片、截图、像素 hash
- 产物 md5 / 板号 / 可复现命令
- 墙的根因结论(指向具体文件+行)

## 什么不算证据(不留、不进 git)

- 推 GitHub / 网络 / VPN / 代理失败日志(瞬时基建噪音,不是项目事实)
- worker 空转、权限弹窗、CLI 自己崩的堆栈(除非暴露了卡/脚本的真 bug)
- 已过时的中间失败稿(最终 PASS 后,中间失败 log 默认删;卡 RESULT 里一行结论够了)

F-001 的 `push.log`(SSL/Timeout)已按此纪律删除;PASS 只记远程 SHA `509a1e12`。

<!-- 收编纪律:验收班次把 scratchpad 里被引用的证据逐步搬进 evidence/<卡>/,更新本表。不搞一次性大搬家。 -->

| 2026-07-11 | noice@5583 appspawn-x Phase4 + aa start → scheduler died (G2.5 theme zero) | evidence/noice-dayu600-2026-07-11/ | Cursor coop w/ Claude uptodown lane |
