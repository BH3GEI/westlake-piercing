<!-- 前沿必须 ≤30 行；历史细节在 evidence/，不要在这里长成白板。 -->

# FRONTIER · installed OH HAP 承载真 Android APK 渲染

**更新**：2026-07-13 · 前沿卡 **W-004 extension / apkhost HAP** · host checkpoint：`evidence/W-004/2026-07-13-installed-hap-host-checkpoint.md`

## 用户验收线

Launcher 可安装/点击的 OH HAP 在自身进程启动 embedded ART，加载真 Android APK 自有 dex/Canvas；
最终 buffer 必须进入可证明的新鲜面板帧。拒绝把 VM 起板、旧结果文件或 OH 原生 GLES 当 Android UI PASS。

## 当前硬墙

- Critical-native delivery `2854df46` 已在 main，atom-49 + atom-43 PASS；5583 锁已释放。
- W-004 color slice 已在 5ce PASS；triangle APK rich dashboard render-only 证据/源码已并 main。
- installed-HAP host checkpoint 已 clean build + codesign + install；大产物 hash 锁在 `REPO_LOCK.toml`，二进制不进 Git。
- `probe/artboot.c` 已收编；它驱动 triangle stage，但当前仍走 renderer RSSurfaceNode overlay，尚未证明 XComponent surface。
- `triangle-smoke-5ce.sh` 已修掉“只读旧结果也能 PASS”漏洞；fresh-run 板验仍待执行。

## 已证基线与安全边界

- #53 DecorView/ViewRootImpl 全路径仍未达；render-only slice 不得改写为完整首帧。
- 旧 worker dirty tree 的 #51/#53 View/Typeface/LayoutInflater 实验未验证，未并 main；只收编三次板证的 drawPath arm。
- 不 wipe/flash/reboot，不覆盖原 substrate；5ce 仍由 W-004 占用，其他会话不得并发 bring-up。

**下一动作**：给 installed HAP 增加 fresh launch nonce + XComponent/窗口归属证明，再在独占 5ce 跑安装→点击→新帧 oracle。
