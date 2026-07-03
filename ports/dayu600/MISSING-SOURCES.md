# Missing source/build material for DAYU600 first-copy port

The legacy source copy is intentionally incomplete. These files or equivalents
are required before a real `liboh_adapter_bridge.so` can be rebuilt:

```text
oh_window_manager_client.h
session_stage_adapter.h
window_callback_adapter.h
window_event_channel_adapter.h
oh_ability_manager_client.h
oh_br_trace.h
oh_anativewindow_shim.cpp
build/build_adapter.sh
build/build_aosp_lib.sh
build/build_appspawn_x.sh
```

The DAYU600 port can still progress without them by using the copied source as
a design baseline and reconstructing only the pieces needed for arm64.

First-copy rule:

```text
Do not rewrite the architecture yet.
Copy the legacy bridge shape.
Let compiler errors and live DAYU600 symbol probes tell us which assumptions
must change.
```

Current high-value symbols verified on the live DAYU600:

```text
libwms.z.so:
  OHOS::Rosen::WindowManagerService::CreateWindow
  OHOS::Rosen::WindowManagerService::AddWindow
  OHOS::Rosen::RSSurfaceNode::Create

libsurface.z.so:
  CreateNativeWindowFromSurface
  OH_NativeWindow_NativeWindowHandleOpt
  OH_NativeWindow_GetSurfaceId

platformsdk/libEGL.so:
  eglCreateWindowSurface
```
