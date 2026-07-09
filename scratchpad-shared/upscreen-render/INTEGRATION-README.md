# 上屏·渲染/窗口线 —— Agent-B 集成一站式指南 (Agent-C 交付)

**状态**:窗口+Surface+hwui+RenderNode+adapter(R1/R2)+onClick(AttachInfo) 全部真机验过/compile 验过。
等 B 的 `getDecorView()` 能画,按下面 3 步接上即可。**策略 B:绕过 ViewRootImpl**(真 ViewRootImpl 死在 OHOS 没有的 BLASTBufferQueue/SurfaceControl)。

## 交付文件(本目录)
| 文件 | 作用 |
|---|---|
| `native/libhwui-adapter.so` (41MB) | libhwui + 自绑定 EGL/skia interposer(`-Bsymbolic-functions`)。**替换/覆盖 app 进程做 graphics 注册用的 libhwui。** 加载顺序无关。 |
| `native/libwestlake_upscreen_renderer_adapter.so` (2.9MB) | renderer(去 interposer、链 adapter libhwui)。注册 4 个 native 到 `WestlakeUpscreen`。 |
| `java/WestlakeUpscreen.java` | 策略B host(measure/layout/attach/record/show/inject),对 android-35 compile 通过。 |
| `native/build-adapter-libhwui.sh` | 两份 .so 的可复现 build recipe。 |
| `native/upscreen_smoke_launcher.c` + `.cpp` 里的 `westlake_upscreen_color_smoke` | 纯C 真机自测入口(我用它验的 R1)。 |
| `shot-*.jpeg` | 真机证据:green+red / DecorView形 / blue(dlopen) / orange(adapter config-2)。 |

## 部署(3 步)
1. **libhwui**:把 `libhwui-adapter.so` 部到 app 进程,**改名/覆盖 `android/lib64/libhwui.so`**(或让 graphics 注册指向它)。它就是 libhwui,只多了自绑定 EGL/skia hijack。**fake `libandroid.so` 仍要在 LD 路径**(hwui dlopen 它)。
2. **renderer**:把 `libwestlake_upscreen_renderer_adapter.so` **改名成 `libwestlake_upscreen_renderer.so`**(保持 Java `System.loadLibrary("westlake_upscreen_renderer")` 不变),部到 app 进程可 loadLibrary 处。
3. **Java**:把 `WestlakeUpscreen.java` 编进 probe/app 的 dex(它不 import 任何外部类,单文件即可)。

## 调用(在 prepareMainLooper 那条线程)
```java
View decor = activity.getWindow().getDecorView();   // 你 allocateInstance(PhoneWindow)+setContentView 后
int r = WestlakeUpscreen.show(decor, 1200, 1920);   // r==2 => 面板出像素;自动:layout+attach(onClick)+record+首帧
// 之后要重绘: WestlakeUpscreen.drawFrame(decor);  静态帧: WestlakeUpscreen.pushFrame();
// 收尾: WestlakeUpscreen.teardown();
```
- **线程**:show() 必须在你 `Looper.prepareMainLooper()` 那条线程调(View/RenderNode 非线程安全)。show() 抓该线程 Looper。
- **输入(Agent-D)**:show() 已自动 attach(装假 AttachInfo,hwAccel=false),D 的 pump 用 `WestlakeUpscreen.uiHandler().post(()->WestlakeUpscreen.injectTouch(action,x,y,evMs))` 即可,onClick 会触发。

## 关键保证 / 坑
- **加载顺序无所谓**(adapter libhwui 自绑定)——R1 真机验过(libhwui 先驻留 → 满屏橙)。
- **R2 同源**:graphics 注册和 renderer 是同一份 libhwui → Java RenderNode 的 native ptr 对 renderer 合法。
- **show() 里的 attach 用 minimal 变体**(递归 set mAttachInfo 字段,不调 dispatchAttachedToWindow)→ 复杂 View 不会在 onAttachedToWindow deref null 崩;全程 guarded,失败也不碎渲染(`sAutoAttach=false` 可关)。
- **纯色里程碑**:`WestlakeUpscreen.pureColorView(ctx,0xFF3366CC)` 只需 `ctx.getResources()` 返回 bare Resources(不需 framework-res/inflate)——**可先于 A 的资源半边证「上屏链路通」**。
- **真 MainActivity inflate**:需要 A 的对齐 framework-res + 你的主题 native(那是资源半边,不是我这条渲染链的事)。decor 一旦能画,我这条立刻出像素。
- 若真 app 的某 View 需要 onAttachedToWindow 副作用(极少),把 attach 升级成 full dispatchAttachedToWindow(方法里有注释)。
