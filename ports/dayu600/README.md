# DAYU600 westlake-piercing port scaffold

This directory is the DAYU600 / uis7885 / arm64 port copy of the legacy
westlake-piercing adapter path.

Strategy:

1. Copy the legacy shape first.
2. Build or smoke-compile it against the DAYU600 target assumptions.
3. Fix concrete OH6 / arm64 / library-path / ABI failures as they appear.
4. Keep all early work staged away from `/system`; use `/data/local/tmp` for
   live probes until the bridge is proven.

Copied source baseline:

- `bridge-src/hwui_oh_abi_patch.cpp`
- `bridge-src/oh_window_manager_client.cpp`
- `bridge-src/oh_input_bridge.cpp`
- `bridge-src/oh_input_bridge.h`
- `bridge-src/input_method_bridge.cpp`
- `bridge-src/oh_ime_helper.cpp`
- `bridge-src/proxy_inject.cpp` if present in the local reference clone

Known first gaps:

- The public repo does not include the full legacy `$HOME/bridge-build` tree.
- `oh_window_manager_client.cpp` includes adapter-private headers that are not
  present in the public source copy, such as `oh_window_manager_client.h`,
  `session_stage_adapter.h`, `window_callback_adapter.h`,
  `window_event_channel_adapter.h`, `oh_ability_manager_client.h`, and
  `oh_br_trace.h`.
- The DAYU600 device uses arm64 libraries and OH6-ish paths. Observed live
  libraries include:
  - `/system/lib64/libwms.z.so`
  - `/system/lib64/chipset-sdk-sp/libsurface.z.so`
  - `/system/lib64/platformsdk/libEGL.so`
  - `/system/lib64/platformsdk/librender_service_client.z.so`
- The legacy docs mention 32-bit DAYU200 paths such as `/system/android/lib`
  and `/system/android/framework/arm`; DAYU600 needs lib64 and arm64 retargeting.

The immediate target is not a final install. It is a minimal visible graphics
chain matching the legacy design:

```text
Android ViewRoot/libhwui
  -> AOSP-compatible ANativeWindow shim
  -> OH NativeWindow
  -> RSSurfaceNode
  -> OH WMS/RenderService
```

Run the current smoke check from WSL:

```bash
cd /mnt/c/Users/ufop/westlake-piercing
bash ports/dayu600/scripts/smoke-compile-copied.sh
```

Current local staging helpers:

```powershell
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-substrate-local.ps1

powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-appspawnx-dayu600.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-android-runtime.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-adapter-runtime-bcp.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-oh-adapter-framework.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-adapter-mainline-stubs.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-framework-placeholder.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\prepare-substrate.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\check-hard-gaps.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\prepare-boot-workdir.ps1
```

Use `build-substrate-local.ps1 -Push` to also upload the safe staging tree to
`/data/local/tmp/westlake-dayu600-substrate`.

The generated `out/substrate/manifest.json` is the source of truth for what is
available locally and what still blocks real APK UI. The probe-only framework
shim is intentionally not treated as the final Android UI stack.
