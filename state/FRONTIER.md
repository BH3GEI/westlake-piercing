<!-- 前沿必须 ≤30 行；历史细节在 evidence/，不要在这里长成白板。 -->

# FRONTIER · APK 自绘变色上屏

**更新**：2026-07-11 夜 · 前沿卡 **W-003 / #49** · 目标交接：`state/HANDOFF-2026-07-11-color-apk-onscreen.md`

## 用户验收线

真 Android APK 的 `ColorView.onDraw → Canvas.drawColor` 逐帧改变颜色，经 RenderNode/libhwui 生成 buffer；
OpenHarmony 只合成/扫描出。拒绝 OH 直接填色、静态色块、`setBackgroundColor` 代替。

## 当前硬墙

- color APK 源与确定性构建脚本已落 `test-fixtures/dayu600-color-apk/`；产物 hash 以本班次双构建验证为准。
- W-003 原“接 GenericJni fallthrough”方案已被源码审计证伪；23:30 的旧 PASS 也被后续未验证产物覆盖，不能验收。
- 真根因：`FixupStaticTrampolines()` 的 Westlake early-return 跳过 pending `@CriticalNative` 发布；
  interpreter/quick 两 resolver 又漏查 `GetRegisteredNative()`，所以在 ABI dispatch 前先 ULE。
- 正修：发布块前移到 early-return 前；两 resolver 在 `FindCodeForNativeMethod` 前查已注册指针；不改 DEX ABI flags。
- `worker/W-003` 现有 dirty worktree 是旧路线 + #51/#53 prototype；最新 `inflate51` 在
  `AssetManager.nativeGetResourceName` SIGBUS，未进 inflate/未上屏。先快照隔离，再从干净基线执行重写卡。

## 已证基线与安全边界

- #43：5583 `atom-43.sh` PASS ×4；旧基线 ART `3ea7b69d…`，证据见对应 evidence 目录。
- 5583 当前只读对账：ART `958117a4…`、dex `d7c420a8…`、sidecar `e5a38c85…`；均属未提交 prototype，须重新验收。
- #46 的旧 lottery 口径已证伪为未测量传闻并 blocked；四板共用 USB hub，禁止诱发掉线/重启实验。
- 不 wipe/flash，不碰 stock `/system/bin/appspawn`，不碰两块 small 板；发布/部署前锁 5583 给 W-003。

**下一动作**：收口结构 → 干净实现 W-003 正修 → `atom-43` 回退闸 + `nGetFlags` 值验证 → 接 color stage 上屏变色。
