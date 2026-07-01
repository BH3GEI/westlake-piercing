# DAYU600 / uis7885 Port Track

This repo must now reproduce Westlake on HH-SCDAYU600 / DAYU600, not only on the original DAYU200/RK3568 board.

## Live Target

- Board: HH-SCDAYU600 / SCDAYU600 / DAYU600.
- SoC: Unisoc/Spreadtrum `uis7885`.
- Kernel: `Linux localhost 5.15.180 ... aarch64`.
- OpenHarmony: `OpenHarmony-6.1.0.31`.
- API: `6.1.0.31(23)`.
- ABI list: `arm64-v8a`.
- HDC serial: `5ce2dcee00000000000000000923012c`.
- Normal USB: `USB\VID_18D1&PID_5000` observed as `"HDC Device"`.
- Storage: UFS.

## Immediate Consequences

The DAYU200 baseline is a reference implementation, not a deployable binary set for DAYU600.

Architecture-specific assumptions that must be replaced:

- `armeabi-v7a` native app libraries must become `arm64-v8a`, or the app must be confirmed to run without native `armeabi-v7a` dependencies.
- AOSP ART / `libart.so` must be rebuilt or sourced for aarch64.
- Boot image generation must use `--instruction-set=arm64` and deploy to an `arm64` boot-image directory, not `arm`.
- OHOS adapter native libraries must target aarch64 musl.
- `/system/lib` versus `/system/lib64` and `/system/android/lib` versus `/system/android/lib64` load paths must be re-discovered on the live board.
- `appspawn-x` must be rebuilt for the target board and must not replace stock `/system/bin/appspawn`.

## Current Live Audit

Observed through HDC:

```text
uname: Linux localhost 5.15.180 ... aarch64 Toybox
ohos.boot.hardware = uis7885
const.product.cpu.abilist = arm64-v8a
const.ohos.fullname = OpenHarmony-6.1.0.31
/system/bin/appspawn: ELF shared object, 64-bit LSB arm64, musl aarch64
persist.sys.usb.config = hdc_debug
SELinux = Permissive
```

Factory DAYU600 currently does not expose the legacy Westlake substrate:

```text
/system/android: not present in the first audit
/system/bin/appspawn-x: not present in the first audit
```

Detailed first audit: `docs/DAYU600-PORT-AUDIT-2026-07-01.md`.

Build/source gap tracker: `docs/DAYU600-BUILD-GAPS.md`.

First ART smoke test: `docs/DAYU600-SMOKE-2026-07-01.md`.

## Safe First Milestone

Do not deploy legacy artifacts yet.

First milestone is a non-mutating port audit and runtime smoke:

1. Confirm HDC and board properties.
2. Pull or inventory stock appspawn, graphics, musl, and relevant system libraries.
3. Identify whether `/system/android` should be created or whether DAYU600 expects a different substrate path.
4. Decide the aarch64 bootclasspath and boot-image location.
5. Run ART runtime candidates only from `/data/local/tmp`.
6. Rebuild the smallest possible aarch64 `appspawn-x` and verify it can start without taking over init.
7. Only after that, stage Android app runtime jars and libraries.

## Hard No

- Do not flash or deploy DAYU200/RK3568 images to DAYU600.
- Do not copy 32-bit `/system/android/lib/*.so` artifacts into the DAYU600 runtime path.
- Do not overwrite stock `/system/bin/appspawn`.
- Do not change persistent USB config to disable HDC.
