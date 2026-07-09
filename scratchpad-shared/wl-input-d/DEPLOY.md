# Agent-D 输入 drop-in(fresh-ART 引擎证用)—— 平行 C 的 render .so

## 件
- `libwestlake_input.so`(aarch64, 36992 bytes, md5 4fdbd3e48aadeb01ba9ae52848f6b67f)——自带 JNI_OnLoad,自动:setJavaVM + 注册 MotionEvent(normal变体52)/VelocityTracker(7)/KeyEvent(3) native 桩 + 起 westlake_tap poller。**板上已部署在 `/data/local/tmp/wl-input-d/libwestlake_input.so` 和 substrate 路径。**
- **6 Java 类已合入 `upscreen-render.dex.jar` (md5 `8c837fba1857b7783322f5b996836a96`, 9601 bytes)**:
  - `WestlakeUpscreen` — C 的渲染+输入宿主; 来自 scratchpad-shared/upscreen-render/
  - `WestlakeTouchPump` — tap(x,y) marshal via uiHandler; 来自 scratchpad-shared/wl-input-d/
  - `WestlakeInputTestView` — WLTEST CLICK/touch 验证 View; 来自 scratchpad-shared/wl-input-d/
  - `WestlakeInputAttach` — mAttachInfo 补全; 来自 scratchpad-shared/wl-input-d/
  - `WestlakeTextPump` — IME 文字输入(ACTION_MULTIPLE/ENTER/DEL/CLEAR); 来自 scratchpad-shared/wl-input-d/
  - (InputVerifyHarness — 独立 harness, 可选)

## ⚠️ 重要更新 (2026-07-08): 3 Java 之前缺失，现已补上
- `upscreen-render.dex.jar` 原只有 `WestlakeUpscreen`（5 类中缺 4 个）
- 已本地编译 (javac android-35) + d8 → dex → 合并推送板上
- md5 从 `e63d7d1c` (3343 bytes, 1 class) → `531dc2fdc45e7ea4ccf05b7d797704b7` (7845 bytes, 5 classes)

## 用(fresh ART = 无 crit-flag 根修的 libart)
1. 部 `libwestlake_input.so` 到 app 进程可 System.loadLibrary 处;3 个 .java 编进 dex。
2. show() 出内容后(或用 `WestlakeUpscreen.show(WestlakeInputTestView.make(ctx),1200,1920)` 解耦):
   `System.loadLibrary("westlake_input")` → JNI_OnLoad 自动注册桩+起 poller(或显式 `WestlakeInput_registerAllNormal(env)` + `WestlakeInput_startTapChannel()`)。
3. `echo "600 960" > /data/local/tmp/westlake_tap` → poller → WestlakeTouchPump.tap → injectTouch → decor.dispatchTouchEvent → `WLTEST CLICK` + 翻色。
- ⚠️ **前提**：解释器 normal-side else(:2262)接了 WestlakeGenericJni(marshalling 我 52 native 的 shorty,尤其 nativeInitialize `JJIIIIIIIIIFFFFJJILL`)——见 COORD 我的接线图。桩 fnPtr 是 RegisterNatives 真函数,WestlakeGenericJni 调它安全（E 核过）。

## crit-flag libart(若走根修路)
换 crit-style：链 `ensure_motionevent_stub.cpp`（crit 版）代替 normal，加 registerAllCrit 入口；36 crit 落 crit-side else(:769)。要时我出 crit .so。

## 审计加固 (v2, md5 bd6d2a77)
3 处修复(adversarial audit 后):①poller 不再在 detached 线程 FindClass 应用类(改 JNI_OnLoad/registerAllNormal 在 app 线程解析 WestlakeTouchPump 缓存全局引用,poller 用缓存)②poller 启动即 truncate westlake_tap(消除陈旧坐标幽灵 tap)③WestlakeInputTestView 日志改成含完整 'WLTEST CLICK'/'WLTEST touch' 字面量(可 grep)。
