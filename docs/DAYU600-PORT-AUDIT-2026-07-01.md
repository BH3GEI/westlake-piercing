# DAYU600 Live Port Audit - 2026-07-01

This is the first non-mutating audit for porting Westlake from the DAYU200/RK3568 baseline to the live DAYU600 / uis7885 board.

## Transport And Board

```text
HDC serial: 5ce2dcee00000000000000000923012c
USB config: hdc_debug
Hardware: uis7885
ABI: arm64-v8a
OpenHarmony: OpenHarmony-6.1.0.31
Kernel: Linux localhost 5.15.180 ... aarch64 Toybox
SELinux: Permissive
```

Keep `persist.sys.usb.config=hdc_debug`. Do not set it to `none` or any non-HDC value.

## Filesystems

```text
/dev/block/sda46 on /        ext4 ro
/dev/block/sda47 on /vendor  ext4 ro
/dev/block/sda48 on /sys_prod ext4 ro
/dev/block/sda62 on /data    f2fs rw
```

Selected paths:

```text
/system             present
/system/bin         present
/system/lib         present, small 64-bit loader area
/system/lib64       present, primary 64-bit system libraries
/system/android     missing
/vendor             present
/sys_prod           present
/chip_prod          present
/data/local/tmp     present, shell-writable
```

## Stock Spawn Stack

DAYU600 has the newer multi-spawn family:

```text
/system/bin/appspawn
/system/bin/cjappspawn
/system/bin/hybridspawn
/system/bin/nativespawn
/system/bin/nwebspawn
/system/etc/init/appspawn.cfg
/system/etc/init/cjappspawn.cfg
/system/etc/init/hybridspawn.cfg
/system/etc/init/nativespawn.cfg
/system/etc/init/nwebspawn.cfg
/system/lib64/appspawn/...
```

Stock `/system/bin/appspawn`:

```text
ELF shared object, 64-bit LSB arm64, dynamic (/lib/ld-musl-aarch64.so.1)
```

The stock service is critical and boot-started:

```text
service: appspawn
path: /system/bin/appspawn -mode appspawn ...
critical: [1, 4, 240]
socket: AppSpawn
start-mode: boot
secon: u:r:appspawn:s0
```

Do not overwrite or replace this service. The DAYU600 port must add a separate `appspawn-x` path and socket.

## Westlake Substrate State

Current factory-like state:

```text
/system/bin/appspawn-x: absent
/system/android: absent
/system/android/lib: absent
/system/android/lib64: absent
/system/android/framework: absent
```

This is useful: no legacy substrate has polluted the board yet.

## Candidate Native Interfaces

Relevant live libraries discovered:

```text
/system/lib64/platformsdk/libappexecfwk_common.z.so
/system/lib64/libgraphic_memory.z.so
/system/lib64/libgraphic_utils.z.so
/vendor/lib64/hw/android.hardware.graphics.allocator@4.0-impl.so -> liballocator.z.so
/vendor/lib64/hw/android.hardware.graphics.mapper@4.0-impl.so -> libmapper.z.so
```

The DAYU200 paths in the baseline often use `/system/lib` and `/system/android/lib`. On DAYU600, primary stock system libraries are under `/system/lib64`, so the port must establish a `lib64`-aware substrate.

## Porting Matrix

| DAYU200 baseline item | DAYU600 action |
|---|---|
| `/system/bin/appspawn-x` 32-bit arm | Rebuild as aarch64 musl; install as separate binary only. |
| `/system/android/lib/libart.so` | Rebuild/source aarch64 ART; likely place under `/system/android/lib64/`. |
| `/system/android/framework/arm/boot*` | Regenerate with `--instruction-set=arm64`; use an `arm64` boot-image directory. |
| `liboh_android_runtime.so` | Rebuild/source aarch64 and verify actual load path. |
| `libhwui.so` | Rebuild/source aarch64; re-check OH NativeWindow/EGL hooks against DAYU600 graphics stack. |
| `liboh_adapter_bridge.so` / `liboh_ime_helper.so` | Rebuild aarch64; keep lazy loading for IME helper. |
| `libappexecfwk_common.z.so` byte patch | Re-evaluate against DAYU600 `/system/lib64/platformsdk/libappexecfwk_common.z.so`; never apply DAYU200 offsets blindly. |
| `armeabi-v7a` app native libs | Use APKs with `arm64-v8a` libs, or confirm pure-Java path. |
| `/system/android/lib` shims | Prefer `/system/android/lib64` for 64-bit substrate; verify with maps once `appspawn-x` exists. |

## Next Non-Mutating Steps

1. Pull stock `/system/bin/appspawn`, appspawn configs, and relevant `/system/lib64/appspawn` libraries into a local audit bundle.
2. Inventory the build provenance for `appspawn-x` in the old baseline and identify the minimal source set needed for an aarch64 build.
3. Identify the AOSP ART branch/OAT compatibility for OpenHarmony 6.1.0.31 / API 23 target.
4. Choose a pure Java or arm64-v8a Android app probe before attempting noice/catalog.
5. Add a staging-only `appspawn-x --help` or dry-run check before any init integration.

## Pulled Stock Audit Bundle

Pulled locally with `hdc file recv` into:

```text
C:\Users\ufop\dayu600_port_audit_stock
```

These binaries are intentionally not committed. Record only hashes and sizes:

```text
92B0F2462B2EDC5441388C138823A3DF68AF65B47AAE75B1B8AF763700B5CC5D  120504  system__bin__appspawn
16439C3D4F5A5EAFA61D02BF329768914F98AA0D934D3AF28F28EF787F16FDAF   84056  system__bin__cjappspawn
D968F3B8FFD2014874BC7FC7F31069A212E3C306F55074DF2EAE037A754F7B24  120512  system__bin__hybridspawn
69798B8DED6EED1957B52FF978C95234812678962EB7450F1F4816329D059667   84232  system__bin__nativespawn
F894590113EA656FB2EF5C5901893D1404B3EFB1370D65C8E24543BD5F63542C  120504  system__bin__nwebspawn
E6F66687630A10E1A66C50409F7BDA7E62C7A9A66748CC4690CE6EC3D56B3F84    2254  system__etc__appspawn__appspawn_preload.json
AA47EE3719C3018201746A6BB2D87E23BFE31DEAD058ECACF48A76DD4FEEAD45      30  system__etc__appspawn__appspawn_systemLib.json
1892943721E1DB94F032832A058AE4BC230EA43D7E4BF63CA62A82B37F38EE44    2364  system__etc__init__appspawn.cfg
360ABCB6FD8D910265F4D3C903DFB175D89458B56B2DCCEC501048491FE53E06    1086  system__etc__init__cjappspawn.cfg
5D842270D9E74EB9D5B281E5F1F753C1B896B1E770ED814EE0F3F571C33C7115    1570  system__etc__init__hybridspawn.cfg
770AA0F43D15400541587030327B490A94D43582DC3DD127E5ACD0D1FC1EDA10    1090  system__etc__init__nativespawn.cfg
132CE52FF36DE5DC62A51170A79A551D220F229F783ECB7A308475895AA6FD32    1567  system__etc__init__nwebspawn.cfg
737B8A4E703A55D438E9942703A033105099B172831417E7FAF2449EAD9D022D   37552  system__lib64__appspawn__appspawn__libappspawn_ace.z.so
75DF4C98646548D805CF2535AC08F79FA918E227A50A1024A1B9A98875D550B3  102104  system__lib64__appspawn__common__libappspawn_common.z.so
746DDF917C5D8A55C25582156A67DD1615FF55CB8F8D8B628C2AC71C56C78E65  248080  system__lib64__appspawn__common__libappspawn_sandbox.z.so
D8643EA487F02D21AF232BEE782B9DE90DB8E1523386A573E26C8EFE2CCEA78E   43792  system__lib64__libappspawn_client.z.so
B3088E77169FBFCCC3678BA406C2B62C68C93E44D3C1FA283DB1E48DF97714B9    6080  system__lib64__libappspawn_helper.z.so
B3C593D9C7479C0451F997C5792E2C48FAC81C684ECAD5BF86B1CAB90B711948   41656  system__lib64__libgraphic_memory.z.so
630A8A294BD4E1ABB6D18A93AB131DAAC3404EDE6215CA2B539D63603F97D762    8200  system__lib64__libgraphic_utils.z.so
0230977CEA0490BCAB462CCF79638946EF3194076D4D91D8C1605A7BAA25EBF2   28024  system__lib64__platformsdk__libappexecfwk_common.z.so
```
