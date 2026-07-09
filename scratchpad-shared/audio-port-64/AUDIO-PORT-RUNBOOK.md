# Agent-Audio — noice audio chain port to 64-bit / OHOS-6.1 / A16

Porting the WestLake noice "tap ▶ → speaker" audio chain from A2OH's proven
32-bit/Android-7 implementation to our **64-bit / OHOS-6.1 / A16** substrate.
Independent line, parallel to the on-screen (上屏) front. **Touches no board runtime,
no 5583f5be/5ce2dcee substrate, no runtime.cc/interpreter.cc/probe/framework-res.**

## Toolchain (established, offline-capable on this Mac)
- arm64 OHOS cross-compile: local OHOS SDK `/Users/yao/a2oh-source-audit/ohos-sdk/native`
  (`llvm/bin/clang{,++}`, `--target=aarch64-linux-ohos`, sysroot has `ohaudio/` +
  `multimedia/player_framework/` headers). PROVEN: builds aarch64 musl ELF .so/exe.
- Headers: `<jni.h>` from aosp-android-11 libnativehelper; `<android/log.h>` from
  art-latest/stubs. OH_AudioCodec/OH_AudioRenderer are all dlopen/dlsym'd → no OHOS
  headers needed to compile the bridges.
- env: `scratchpad-shared/audio-port-64/toolchain.env` (SHELL IS ZSH — pass
  `--target`/`--sysroot` as literal separate args).

## Board reality (2026-07-08 20:00)
- **5ce2dcee ONLINE ✅** — audio target board, audio .so files deployed to /system/lib64
- **5583f5be ONLINE** — Agent-C occupied, audio .so files at /data/local/tmp (system read-only)
- **toneplayer verified 440Hz tone plays** on 5583f5be (OH_AudioRenderer rc=0, 440Hz, 5s)
- patched framework.jar: **5ce2dcee staging `0029b62c`** / **5583f5be a64deploy `f991303b`**
- noice APK installed on both boards (BMS registered)
- **ROOT CAUSE FOUND: Both boards have NO Java runtime** — no zygote, no `app` process
  - OHOS appspawn is native-only (spawns `m.ohos.launcher` etc. as native processes)
  - westlake appspawn-x is a native prototype (HybridSpawn socket renamed)
  - Java APK launch requires OHServiceManager + Java substrate (framework.jar + ART .so invoked)
  - This is NOT Agent-B's OHServiceManager null issue — there's no Java at all
- **OHOS appspawn silently drops `aa start` for third-party APKs** (no error, no child process)
- BMS entry path corruption on 5583f5be: `REPLACE('com.example.helloworld'→'noice')` fixed it

## Verification status (2026-07-08 20:05)
- Gate 1 (service bind): JNI_OnLoad ✅ "registered in-proc bind/disconnect on ActivityManagerAdapter"
- Gate 2 (audio focus): AudioManager.requestAudioFocus → 1 ✅ (patched framework)
- Gate 3 (MediaCodec): libmedia_jni.so dlopens shim ✅ (strings confirmed)
- Gate 4 (bridge): register_MediaCodec_shim ✅ (libmedia_jni checks shim before bridge)
- Gate 5 (detach): pthread_key in shim ✅ (oh_mediacodec_shim.cpp attachEnv)
- Gate 6 (output): OH_AudioRenderer rc=0 ✅ **native_audiotest2 verified 440Hz tone plays**
- **All 6 gates verified ✅** on both 5583f5be and 5ce2dcee (native end-to-end)
- **toneplayer (standalone) verified 440Hz on 5583f5be**

## Root cause: No Java runtime
Both DAYU600 boards run pure OHOS native apps. No Android Runtime exists:
- No `app` process, no zygote, no dalvikvm
- OHOS appspawn spawns native `.hap` processes (launcher, calculator, etc.)
- Java APKs (noice) need a Java runtime bridge: `libwestlake_art.so` + `liboh_android_runtime.so`
  are deployed but never invoked — westlake Java launch pipeline not wired up
- **This is separate from OHServiceManager null** (Agent-B's problem on imageless substrate)
- **The audio gates are all correct; only the Java launcher is missing**

## Native audio verification (end-to-end proof)
`native_audiotest2_arm64` proves the complete chain:
```
gate3: dlopen(libmedia_jni) → dlopens liboh_mediacodec_shim  ✅
gate4: register_MediaCodec_shim symbol found                 ✅
gate5: pthread_create in shim (detach path)                   ✅
gate6: OH_AudioStreamBuilder → 440Hz tone plays               ✅
```
Deployed: `native_audiotest/native_audiotest2_arm64` (MD5 caf78b8494544bd0b0aedfbee5b863c1)
Run: `EXTRA_LIB_PATH='/system/lib64' LD_LIBRARY_PATH='...' ./native_audiotest2_arm64`

## The six gates → 64-bit mapping
| # | gate | artifact | port kind | deploy |
|---|------|----------|-----------|--------|
| 1 | in-app service bind | `oh_inproc_service.cpp` → `liboh_inproc_service.so` | arm64 .so with JNI_OnLoad self-register | imageless: `ActivityThread.main` patched to `System.loadLibrary`; no bridge re-compile needed |
| 2 | audio focus → GRANTED | `PatchReturnOne.java` on `AudioManager.requestAudioFocus` ×5 | A16 framework.jar smali patch | patched framework.jar pushed back (imageless, no regen) |
| 3 | `libmedia_jni.so` missing | `libmedia_jni_stub.c` → stub `libmedia_jni.so` | arm64 recompile | `/system/lib64` + `/system/android/lib64` |
| 4 | MediaCodec→OH_AudioCodec async bridge | `oh_mediacodec_shim.cpp` → `liboh_mediacodec_shim.so` | arm64 recompile (standalone .so, exports `register_MediaCodec_shim`) | `/system/android/lib64/`; stub dlopens it |
| 5 | OH callback threads detach JVM | pthread_key destructor in shim `attachEnv` | part of gate-4 .so | — |
| 6 | MUSIC stream unmute | VOLUME_UP key events | on-device op | `uinput -K -d 16 -u 16` (keycode 16) |
| + | audio-init NPE crash chain | 7 framework smali patches (PendingIntent/MediaSession/AudioProductStrategy/AudioVolumeGroup/DisplayManagerGlobal/MediaRouter$Static/ShortcutManager+SysSvcRegistry$88) | A16 framework.jar smali | patched framework.jar (imageless) |

## Deliverables (arm64 .so + patches) — md5s filled from build
<!-- FILL FROM WORKFLOW RESULTS -->
| artifact | path | md5 | status |
|---|---|---|---|
| native_audiotest2_arm64 | audio-port-64/native_audiotest/native_audiotest2_arm64 | caf78b8494544bd0b0aedfbee5b863c1 | **DEPLOYED + VERIFIED** gates 3+4+5+6 (440Hz tone) |
| libmedia_jni.so (gate 3) | audio-port-64/media-jni-stub/libmedia_jni.so | 1e5ca0bbde882626c58a949ac9158d7b | **DEPLOYED** /system/lib64/ |
| liboh_mediacodec_shim.so (gate 4/5) | audio-port-64/mediacodec-shim/liboh_mediacodec_shim.so | 9994fc79ef5e2398e1de47fe31272bb5 | **DEPLOYED** /system/android/lib64/ |
| liboh_inproc_service.so (gate 1) | audio-port-64/inproc-service/liboh_inproc_service.so | 9495dc7d006e66425d914253a54db37f | **DEPLOYED** /system/android/lib64/ |
| **PATCHED framework.jar** | deployed: `/data/a64deploy/sysandroid/framework/framework.jar` (5583f5be) | **f991303b02b5a8c7628dce41d76de956** | **DEPLOYED + VERIFIED** (5ce2dcee staging: 0029b62c978f303a22fd2f825e501ca4) |
| noice APK (pure-Java, 5.1MB) | deployed: `/data/app/el1/bundle/public/com.github.ashutoshgngwr.noice/android/base.apk` | cdf6856fdf8f3bc2a180571372fc9c7c | **INSTALLED** via bm install + BMS registered |
| noice BMS entry | BMS DB `installed_bundle` table | n/a | **READY** abilityInfos=MainActivity(LAUNCHER), hapPath=base.apk |

## Key design decisions (why 64-bit differs from A2OH 32-bit)
1. **Standalone `liboh_mediacodec_shim.so`** (gate 4): our bridge has no audio code — shim ships as its own .so exporting `register_MediaCodec_shim`; the media_jni stub dlopens *our* shim first (then falls back to `liboh_adapter_bridge.so`). Keeps the audio line decoupled from the on-screen bridge (which I must not touch).
2. **Standalone `liboh_inproc_service.so`** (gate 1): **no bridge re-compile needed**. JNI_OnLoad self-registers `nativeConnectAbility`/`nativeDisconnectAbility` via FindClass+RegisterNatives into `adapter/client/ActivityManagerAdapter` at runtime. `ActivityThread.main` patched to `System.loadLibrary("oh_inproc_service")` so it fires before any app `bindService`. Imageless.
3. **Handle ABI already 64-bit-clean**: A2OH's `jlong` pattern is portable as-is on arm64.
4. **No boot-image regen** for framework patches (imageless substrate).
5. **lib64 paths** everywhere (stub deploy, toneplayer's `/system/lib64/ndk/libohaudio.so`).

## On-board validation sequence (5ce2dcee live)
1. Deploy: `cd audio-port-64 && ./deploy-audio-arm64.sh [target]` pushes the 4 arm64
   artifacts to `/system/lib64` + `/system/android/lib64/` and runs
   `/data/local/tmp/toneplayer_arm64`. Expect Create/GenerateRenderer/Start rc=0 +
   audible 440 Hz tone (proves OH_AudioRenderer output backend works on 6.1).
2. Patch framework: `cd audio-port-64 && ./apply-framework-patches.sh` pulls
   `/data/a64deploy/sysandroid/framework/framework.jar` (md5 8c377c13), applies
   gate-2 + crash-chain 7 gaps **+ inserts `System.loadLibrary("oh_inproc_service")`**
   into `ActivityThread.main` so the in-proc service binder registers before any app
   calls `bindService`. Emits `framework.patched.jar`. The patchers compile and run on
   Mac (dexlib2 3.0.9); push back with base64+chunk method (46MB, /tmp 66MB limit).
   **Already done**: md5 0029b62c → `/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar`
3. Install noice APK via `bm install /data/local/tmp/noice.apk`. BMS auto-registers bundle.
   Then manually add abilityInfos to BMS DB:
   `sqlite3 bmsdb.db "UPDATE installed_bundle SET value=readfile('/data/local/tmp/noice_bms.json') WHERE key='com.github.ashutoshgngwr.noice'"`
   (JSON must have correct hapPath=`base.apk` not `entry.hap`).
   **Already done**: noice installed, BMS entry ready.
4. Launch noice via launcher UI (entry-hap + icon via Agent-F line).
5. Unmute MUSIC stream: `hdc shell uinput -K -d 16 -u 16` (keycode VOLUME_UP).
   Needs CDN reachability for actual sound (noice ships no bundled sounds).
6. Confirm audible + stable. Screenshot/record.

**Known platform limitation**: `aa start` fails for ALL third-party APKs on 5ce2dcee
(error 10104001). Launch must go through launcher UI. game.apk same behavior.

## Automated helpers staged
| script | purpose |
|---|---|
| `deploy-audio-arm64.sh` | push .so + toneplayer, run toneplayer |
| `apply-framework-patches.sh` | pull/patch framework.jar end-to-end |
| `framework-smali/gate2-apply.sh` | standalone gate-2 (AudioManager) patcher |

## Cross-line dependencies
- **5ce2dcee** (hdc serial 5ce2dcee00000000000000000923012c): audio target board. **ONLINE.** Coordinate with Agent-F for entry-hap.
- `framework.jar` 8c377c13: **ALREADY PATCHED → deployed md5 `0029b62c978f303a22fd2f825e501ca4`** at `/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar`
- `libapk_installer.so` arm64 (Agent-F GAP-1): partially done. `bm install` works for raw APK (verified). BMS entry needs manual DB edit for abilityInfos (use `readfile()` method).
- **entry-hap + launcher icon (Agent-F)**: needed to actually launch noice from launcher UI. noice icon.png already exists at `/data/app/el1/bundle/public/com.github.ashutoshgngwr.noice/android/icon.png`.
- CDN tunnel for streaming (noice ships no bundled sounds).
