# DAYU600 Build Gaps

This tracks the gap between the committed westlake-piercing repository and what is required to actually build a DAYU600 / uis7885 aarch64 substrate.

## Current Repository Contents

Committed and useful for the port:

- `bridge-src/`: selected bridge and hwui patch sources.
- `libart-build/`: patched ART translation units and the old incremental relink script.
- `libart-patches/`: reviewable ART diffs.
- `framework-smali-patches/`: Java framework / adapter smali patch inputs.
- `native-libs/` and `native-tls/`: small native shim sources and some historical binaries.
- `config/asx-autostart/`: legacy DAYU200 appspawn-x bringup scripts, useful as reference only.
- `docs/DAYU600-PORT*.md`: live DAYU600 audit and port track.
- `docs/DAYU600-SMOKE-2026-07-01.md`: first on-device A2OH ART runtime smoke result.

Not committed but required for a real build:

- Full `$HOME/bridge-build` tree referenced by the legacy docs.
- `framework/appspawn-x/src/main.cpp` and related appspawn-x sources.
- `build/build_appspawn_x.sh`, `build/build_adapter.sh`, `build/build_aosp_lib.sh`, and inner build scripts.
- A self-consistent OpenHarmony source/header/sysroot tree for DAYU600 / uis7885 / arm64.
- AOSP source subtrees and static libs for aarch64 ART / runtime / hwui builds.
- A baseline ART object cache or a from-zero full ART build path for aarch64.
- A checked-in or reproducible A2OH `art-latest` source path for the current arm64 runtime candidate.
- Existing DAYU200 binary baseline, if comparison is needed, but not for deployment.

Checked local Windows paths:

```text
C:\Users\ufop\bridge-build       missing
C:\Users\ufop\openharmony        missing
C:\Users\ufop\android-sdk        missing
C:\Users\ufop\libart-pathA-work  missing
C:\Users\ufop\westlake-complete  missing
```

## Consequence

The repo is ready for DAYU600 port tracking and audit, but it is not yet ready to compile `appspawn-x` for DAYU600 from the files currently committed.

A2OH `art-latest` provides a stronger immediate runtime lead than the legacy DAYU200 substrate: `build-bionic-arm64/bin/dalvikvm` starts on the DAYU600 board from `/data/local/tmp`, reaches JIT creation and class lookup, then fails in `java.io.File.<clinit>` / `Field.isSynthetic()` recursion. The next ART step is to fix that failure before integrating with appspawn.

Candidate patch:

```text
patches/dayu600-art/0001-field-is-synthetic-native.patch
```

It applies to `A2OH/art-latest` and rewrites `Field.isSynthetic()` to a native ArtField access-flag check. Rebuild is blocked on recovering the AOSP/OHOS source and sysroot paths required by the current A2OH makefiles.

The next appspawn build step is to recover or reconstruct the appspawn-x build tree, then retarget it from:

```text
arm-linux-ohos / rk3568 / 32-bit arm
```

to:

```text
aarch64-linux-ohos / uis7885 / arm64-v8a
```

## Minimum Source Recovery Target

Recover enough source/build material to produce a harmless dry-run binary:

```text
out/adapter/appspawn-x
```

For DAYU600 this binary must:

- be ELF 64-bit arm64;
- link against musl aarch64;
- keep its own socket name, `AppSpawnX`;
- not replace `/system/bin/appspawn`;
- be launchable manually from `/data/local/tmp` before any `/system` deployment;
- print a useful help/version or reach a controlled startup failure without touching stock services.

## First Build Milestone

Do not start with full Android app launch.

Build and test in this order:

1. `appspawn-x` aarch64 binary can be built.
2. It can be staged to `/data/local/tmp/appspawn-x.dayu600`.
3. `file /data/local/tmp/appspawn-x.dayu600` reports 64-bit arm64.
4. A manual dry run exits or fails safely.
5. Only then design `/system/android/lib64`, framework jar, and boot-image placement.

## Known Retarget Work

- Replace `arm-linux-ohos`, `armv7-a`, and `out/rk3568` assumptions in build scripts.
- Replace `/system/android/lib` with a lib64-aware substrate, likely `/system/android/lib64`.
- Replace `/system/android/framework/arm` boot image output with `arm64`.
- Re-evaluate every binary patch offset, especially `libappexecfwk_common.z.so`; DAYU600 uses `/system/lib64/platformsdk/libappexecfwk_common.z.so`.
- Re-check graphics bridge assumptions against DAYU600's `/vendor/lib64/hw/android.hardware.graphics.*` stack.
