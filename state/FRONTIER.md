<!-- 前沿必须 ≤30 行；历史细节在 evidence/，不要在这里长成白板。 -->

# FRONTIER · APK 自绘变色上屏

**更新**：2026-07-12 · 前沿卡 **W-004 / color APK** · 目标交接：`evidence/W-004/2026-07-12-handoff-wip.txt`

## 用户验收线

真 Android APK 的 `ColorView.onDraw → Canvas.drawColor` 逐帧改变颜色，经 RenderNode/libhwui 生成 buffer；
OpenHarmony 只合成/扫描出。拒绝 OH 直接填色、静态色块、`setBackgroundColor` 代替。

## 当前硬墙

- color APK 源与确定性构建脚本已落 `test-fixtures/dayu600-color-apk/`；产物 hash 以本班次双构建验证为准。
- W-003 clean relink 已在 5583 通过 atom-49 值验证与 atom-43 回退闸；交付提交 `2854df46`，待 thinker 合入。
- color 上屏仍需三门同时成立：#49 指针发布、R2 同源 libhwui、`g214bb_raw_read_pixel` 红/绿两帧回读。
- 用户指定本线完全改用 5ce；私有根 `/data/local/tmp/wl-color-codex` 已建，原 substrate 未覆盖。
- W-004 独立 ART 已构建但未部署；hash `dc1d5e82…`。尚无 color record、R2 或面板像素 PASS。

## 已证基线与安全边界

- #43：5583 `atom-43.sh` PASS ×4；旧基线 ART `3ea7b69d…`，证据见对应 evidence 目录。
- 5583 当前只读对账：ART `958117a4…`、dex `d7c420a8…`、sidecar `e5a38c85…`；均属未提交 prototype，须重新验收。
- #46 的旧 lottery 口径已证伪为未测量传闻并 blocked；四板共用 USB hub，禁止诱发掉线/重启实验。
- 不 wipe/flash，不碰 stock `/system/bin/appspawn`，不碰两块 small 板；发布/部署前锁 5583 给 W-003。

**下一动作**：在 W-004 接 color stage + R2 + 像素回读 → 仅部署 5ce 私有根 → 跑 `color-smoke-5ce.sh`。
