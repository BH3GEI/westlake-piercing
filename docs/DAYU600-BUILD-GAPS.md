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

A2OH `art-latest` provides a stronger immediate runtime lead than the legacy DAYU200 substrate. The current DAYU600 runtime candidate runs from `/data/local/tmp/westlake-dayu600` and can execute the real `com.digiplex.game` 2048 APK lifecycle and game model probes.

Candidate patch:

```text
patches/dayu600-art/0001-field-is-synthetic-native.patch
```

It applies to `A2OH/art-latest` and rewrites `Field.isSynthetic()` to a native ArtField access-flag check. Later local ART work also added a narrow interpreter intrinsic for the standalone `String.valueOf(int)` / `Integer.toString(int)` path.

Current probe result:

```text
stringValueOnly RC:0
intParse RC:0
prefsKTrace RC:0
privateR RC:0
onCreateNullTrace RC:0
onCreateManual RC:0
gameStateJson RC:0
gameMoveJson RC:0
```

The remaining hard gap is no longer basic ART execution. It is the full aarch64 adapter path:

- The real APK probe already runs inside the OHOS `com.digiplex.game` app child through the temporary AppSpawnX hook.
- Android `ViewRoot` / `Surface` rendering must attach to the OHOS ability window.
- DAYU600 needs rebuilt or replaced arm64 versions of the legacy adapter pieces (`appspawn-x`, bridge libraries, runtime/native shims, framework/bootclasspath artifacts).

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

## Current Local Staging - 2026-07-03

Two DAYU600 port scripts now make the current state explicit without writing
`/system`:

```powershell
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\build-appspawnx-dayu600.ps1
powershell -ExecutionPolicy Bypass -File C:\Users\ufop\westlake-piercing\ports\dayu600\scripts\prepare-substrate.ps1
```

Current generated outputs:

```text
ports/dayu600/out/appspawnx/appspawn-x.dayu600
ports/dayu600/out/appspawnx/start-appspawnx-dayu600.sh
ports/dayu600/out/substrate/manifest.json
```

`appspawn-x.dayu600` is a temporary stock-appspawn-derived AppSpawnX socket
prototype, not the final westlake `appspawn-x` source build. It satisfies the
harmless DAYU600 arm64 dry-run milestone but does not supply the Android
framework/runtime/hwui substrate by itself.

`prepare-substrate.ps1` currently stages 30 available artifacts and reports the
3 hard adapter gaps that still block visible Android UI.  Several Java jars are
minimal DAYU600 bringup jars, not the final framework implementation:

```text
liboh_android_runtime.so        built locally; exports both OH/JDK and AOSP
                                AndroidRuntime::startReg symbol spellings
liboh_adapter_bridge.so         built locally as the canonical legacy bridge
adapter-runtime-bcp.jar         dex jar with AppSpawnXInit preload/initChild
oh-adapter-framework.jar        preloadable adapter skeleton classes
adapter-mainline-stubs.jar      minimal android.net mainline stubs
framework.jar                   headless framework-shim placeholder only
```

The remaining hard gaps are:

```text
real appspawn-x
libhwui.so
arm64 boot image
```

2026-07-03 pause point:

```text
libhwui smoke compile has passed the first 26 AOSP hwui sources.
MaxSources 40 currently fails at source 27, jni/BitmapRegionDecoder.cpp.
The immediate blockers are a duplicate BRDAllocator overlay and a missing
jniGetFDFromFileDescriptor helper in the DAYU600 nativehelper overlay.
See docs/DAYU600-HANDOFF-2026-07-03.md for exact resume notes.
```

The staged `framework.jar` is intentionally marked as a headless placeholder in
`manifest.json`.  It can move classpath/AppSpawnX work forward, but it cannot
render the stock Android UI.  Real visible APK UI still requires a true patched
AOSP framework jar, patched `libhwui.so`, and a matching arm64 boot image.

## Known Retarget Work

- Replace `arm-linux-ohos`, `armv7-a`, and `out/rk3568` assumptions in build scripts.
- Replace `/system/android/lib` with a lib64-aware substrate, likely `/system/android/lib64`.
- Replace `/system/android/framework/arm` boot image output with `arm64`.
- Re-evaluate every binary patch offset, especially `libappexecfwk_common.z.so`; DAYU600 uses `/system/lib64/platformsdk/libappexecfwk_common.z.so`.
- Re-check graphics bridge assumptions against DAYU600's `/vendor/lib64/hw/android.hardware.graphics.*` stack.
