<!-- 前沿必须 ≤30 行；历史细节在 evidence/，不要在这里长成白板。 -->

# FRONTIER · installed OH HAP 承载真 Android APK 渲染

**更新**：2026-07-17 · 前沿卡 **W-005 / apkhost fresh-frame** · 靶板 **5583f5be**（板刷新后 5ce 离线）

## 用户验收线

Launcher 可安装/点击的 OH HAP 在自身进程启动 embedded ART，加载真 Android APK 自有 dex/Canvas；
最终 buffer 必须进入可证明的新鲜面板帧。拒绝把 VM 起板、旧结果文件或 OH 原生 GLES 当 Android UI PASS。

## 当前硬墙

- color/triangle render-only 已 PASS（5ce，07-12/13）交卷（卡见 tasks/done/）；installed-HAP 仍差「新帧+窗口归属」。
- 用户 2026-07-16/17 全面刷新板子：5583 在线但 lane 全清、5ce 离线、dd011a41 序列迁移为 …07c6ac00。
- 运行时恢复来源已盘点：编译机 adapter-20260706-tree（origin 中性 jars）+ art-latest 重建（art-build-recipes）
  + gfx-smoke 配方（renderer/libhwui）+ Mac 重打探针 dex（`dbd4e082`，含 nonce 帧，已出）。

## 已证基线与安全边界

- #53 DecorView/ViewRootImpl 全路径仍未达；W-005 只证「installed HAP 窗口内 APK 自绘新帧」，不越报全路径。
- 焊接法定案：libwlweld.so 拦截 `westlake_ohos_make_display_window`（PLT，零改已验 renderer 二进制）；
  nonce 链 WLAUNCH(启动)→WELD(窗口归属)→WLTRI(像素命中)，旧帧/旧日志无法冒充。
- 不 wipe/flash/reboot；HAP 之外不进板。

**当前墙**：管线已全通至 `record()`（VM rc=0、subset failures=0、TriangleView 已载）；
剩「libhwui↔framework 同源」墙——A14 jar=Canvas registrar assert；A15 jar=`new RenderNode`
FindClassDef SIGSEGV（详见 evidence/W-005/2026-07-17-…md）。
**下一动作**：编译机重出「framework 同源 + OHOS 适配」libhwui（或修 ART 对 A15 dex 解析），
再跑 `oracle/verify/apkhost-fresh-frame.sh`（判据链已就位）。
