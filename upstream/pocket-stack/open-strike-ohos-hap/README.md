# 轻游戏 · PocketJS on OpenHarmony

一个原生 OpenHarmony HAP，使用 ArkUI `XComponent`、N-API、原生编译的
`pocketjs-core` 和 GLES2 显示多个 PocketJS 游戏。当前内置：

- 2048：滑动、合并、计分；
- Snake：方向控制、自动推进、吃食物；
- Reflex：等待绿灯后点击。

## 固定输入

- PocketJS: `pocket-stack/pocketjs@8f8670824ac224ed08768d51ca635ccf9e6c569c`
- Rust target: `aarch64-unknown-linux-ohos`
- OpenHarmony SDK: `/Users/yao/command-line-tools/sdk/default/openharmony`
- Bundle: `com.westlake.lightgames`
- Version: `0.3.0` / `3000000`

## 构建

```sh
cd /Users/yao/lightgames-ohos-hvigor-20260713
./build-all.sh
```

产物：`lightgames-0.3.0-signed.hap`。

## 验证

Host 确定性测试：

```sh
cd /Users/yao/pocketjs-ohos-demo-20260713
bun /Users/yao/lightgames-ohos-hvigor-20260713/pocket-app/smoke.ts
bun /Users/yao/lightgames-ohos-hvigor-20260713/pocket-app/smoke-all.ts
```

DAYU600：

```sh
hdc -t 5ce2dcee00000000000000000923012c install lightgames-0.3.0-signed.hap
hdc -t 5ce2dcee00000000000000000923012c shell \
  aa start -b com.westlake.lightgames -a EntryAbility
```

PocketJS framebuffer hash `434ad6f4` 在 host 与 DAYU600 冷启动一致；真机
GLES error 为 `0x0`。

## 当前实现边界

首版复用 PocketJS deterministic software rasterizer 生成 480×272 RGBA，
再由 GLES2 一次纹理上传放大到 XComponent。它是真 PocketJS core/JSX，
不是 WebView。后续性能升级可把软件 rasterizer 替换为 DrawList→GLES batch，
游戏 bundle 与交互协议无需变化。
