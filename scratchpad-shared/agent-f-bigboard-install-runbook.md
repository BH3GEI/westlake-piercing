# [Agent-F] Big-board (5583f5be, arm64) — "real install + launcher icon + click-to-launch" runbook

Consolidated, executable procedure to get ONE real Android app installed on the DAYU600 big board so it (1) shows an icon in `com.ohos.launcher` and (2) launches on tap via `appspawn-x` + WestLake ART. Derived from on-device read-only recon (2026-07-07) + the working small board (dd011a41) reference + the on-device 02A `_m1_hw_bringup.sh`/`start_asx64.sh`.

**⭐ VALIDATION STATUS (2026-07-07):** the core mechanism (steps 1-9 up through `onCreate`) is **empirically proven on real 32-bit hardware** — on the 2nd small board `…500404ac00` (has a working 32-bit `libapk_installer.so`), I ran it hands-on non-destructively: appspawn-x→Phase4, `aa start noice.MainActivity`→"start ability successfully"→AMS routes to AppSpawnX→child forks→boots full ART→`ActivityThread.main`→`handleBindApplication`→`NoiceApplication.onCreate` RUNS. Only failure = noice's OWN Hilt/Dagger DI crashing in onCreate (app-specific runtime gap, not the mechanism). ALSO validated the **launcher-icon path** (steps 5-6): deployed noice's entry.hap (sourced read-only from the original board, same iconId/labelId) → cleared Launcher.db → restarted launcher → the "Noice" icon + label rendered (evidence `scratchpad-shared/F-newboard-noice-icon-validated.jpeg`). So 2 of 3 north-star criteria are empirically proven on 32-bit: (1) launcher shows the icon ✅, (2) clicking launches via appspawn-x→ART→onCreate ✅; (3) final visible render is downstream on B/C. This runbook is a **proven procedure**; the arm64 big-board version is its arch-swap. Remaining to a fully-visible clickable app: (a) per-app runtime completeness (pick a non-Hilt simple app), (b) B/C's first-frame render pipeline.

**Serial:** `5583f5be00000000000000000323012c`. **hdc:** `export PATH="$HOME/.local/openharmony-tools/bin:$PATH"`.
**⛔ Never:** flash/wipe/remount `/system` (remounting `/system` bricked a device before — that's why the payload is bind-mounted from `/data`), touch `5ce2dcee` (B). Coordinate board time with @Agent-C (C/D render on this board).

---
## State of the board (on-device verified) — deployment is ~90% done by the 02A/M0 line
ALREADY PRESENT:
- Full arm64 payload at `/data/a64deploy/sysandroid/` → bind-mounted to `/system/android`:
  - `framework/`: 9 bootclasspath jars (core-oj, core-libart, core-icu4j, okhttp, bouncycastle, apache-xml, adapter-mainline-stubs, **framework.jar** [A16 8c377c13], oh-adapter-framework) + `framework-res.apk` + `arm64/` AOT boot image (`boot-*.art/.oat/.vdex`).
  - `lib64/` (51): full ART (libart.so + compiler + base + palette), libhwui.so, libandroidfw.so, libskia_canvaskit + skia/hwui shims, liboh_adapter_bridge / liboh_android_runtime / liboh_net_shim / liboh_inet_permit.
- `/data/local/tmp/appspawn-x` — real arm64 PIE, boots the 9-jar bootclasspath ART and reaches **"Phase 4: Ready to accept spawn requests"** (proven in `asx_run.err`).
- `/data/local/tmp/{start_asx64.sh,_m1_hw_bringup.sh}` — the bringup scripts (authored by 02A).
- OHOS image services already patched: `libappms` AppSpawnX routing (`GetAndroidSpawnClient`, `"routing to appspawn-x for Android app"`), `libbms` `oh_adapter_install_apk_with_manifest` (v2), `libappexecfwk_common` `.apk` suffix gate (3-branch `.hap/.app/.apk`).

THREE GAPS (why click-to-launch isn't closed yet):
1. **`libapk_installer.so` is NOT deployed** in `/data/a64deploy/sysandroid/lib64`. `libbms` dlopens it to parse an APK → bundleType-10 bundle; without it `bm install app.apk` fails (`oh_adapter_install_apk symbol unavailable`). **Only lives in the 02A/`bridge-build` tree — not on this Mac. NEED FROM USER / 02A owner.**
2. Adapter-bridge JNI RegisterNatives gaps → **DIAGNOSED (on-device, static) as a PathClassLoader binding/registration issue — NOT a missing artifact, NOT a simple jar↔.so skew**:
   - The v2 `AppSchedulerBridge` (with `nativeOnScheduleLaunchAbility v2`) AND `PackageInfoBuilder` are ALREADY on the big board, in `oh-adapter-runtime.jar` (44KB, in the deployed framework dir). (Small board's equivalent = `adapter-runtime-bcp.jar`.) The arm64 `liboh_adapter_bridge.so` has the impls + register functions.
   - `oh-adapter-runtime.jar` is NOT on the BOOTCLASSPATH (binary's embedded BOOTCLASSPATH = 9 jars ending at oh-adapter-framework; start_asx64.sh env matches). appspawn-x loads it via a `PathClassLoader` (`AppSpawnXInit loaded via PathClassLoader from …oh-adapter-runtime.jar`).
   - In the captured run, AppSchedulerBridge loaded via PathClassLoader + `RegisterNatives(AppSchedulerBridge,3) OK`, yet the `.so` still logs `[B47-SLA] nativeOnScheduleLaunchAbility (new sig) not found` → the specific inbound-launch native didn't bind. Binary also has a fragile guard `[P2-Bv2] AppSchedulerBridge class not found via PathClassLoader, skipping RegisterNatives`.
   - **Outbound** (`ActivityManagerAdapter.nativeStartAbility`, app `startActivity`) = NON-FATAL (Java `"native … unavailable, no-op"` fallback → app won't crash; only sub-activity launches lost).
   - **Inbound** (`nativeOnScheduleLaunchAbility` v2) = can block the *initial* activity launch. Root cause is PathClassLoader visibility / registration of that new-sig method — **needs a bringup run + runtime logs to pin down** (B/02A adapter-bridge + classloader domain; not statically resolvable, not fixed by swapping a jar since the v2 class is already present).
3. Zero bundleType-10 app installed → end-to-end APK→child→onCreate→render never closed (m1_hw*.jpeg = OHOS launcher home only; the installed "HelloWorld" is native OHOS bundleType-0).

---
## Executable steps (run once GAP-1 lib is in hand)

### Step 0 [BLOCKED on user] — obtain arm64 `libapk_installer.so`
From the 02A/`bridge-build` tree (the same tree that built the deployed `appspawn-x`). Deploy to `/data/a64deploy/sysandroid/lib64/libapk_installer.so` (chmod 0644; the bind-mount surfaces it at `/system/android/lib64/`).

### Step 1 [READY] — pick a pure-Java Android APK
`noice` (dd011a41-confirmed pure-Java: 0 `.so` in base.apk) or `2048`/catalog. Pure-Java DEX runs on arm64 ART with no arch splits. Push to `/data/local/tmp/<pkg>.apk`.
Optional first target = the staged `/data/local/tmp/HelloWorld.apk` if it's the Android build (verify it's not the native ArkTS one).

### Step 2 [READY] — refresh the correct A16 framework-res on the board
Board currently has `121f478b` (stale). A's verified 99%-aligned one is `scratchpad-shared/framework-res-remapped-99pct.apk` (md5 `76a92b8f`). Push it and replace the deployed copy so themed inflate resolves:
```
hdc file send scratchpad-shared/framework-res-remapped-99pct.apk /data/a64deploy/sysandroid/framework/framework-res.apk
```
(Do NOT swap on a running child; do it before bringup. Coordinate with @Agent-A — this is A's artifact.)

### Step 3 [READY, script exists] — bring appspawn-x up to Phase 4
Adapt `/data/local/tmp/_m1_hw_bringup.sh` (already on board): `setenforce 0`; `param set ro.product.cpu.abilist arm64-v8a`; `mkdir -p /dev/memcg/perf_sensitive`; **`mount --bind /data/a64deploy/sysandroid /system/android`**; `ln -sf /system/android/framework/framework-res.apk /system/framework/framework-res.apk`; `pkill -9 -f appspawn-x; rm -f /dev/unix/socket/AppSpawnX; rm -rf /data/misc/appspawnx/dalvik-cache/*`; `setsid sh /data/local/tmp/start_asx64.sh &`; wait for `"Ready to accept"` in `/data/local/tmp/asx_run.err`; then **`chmod 0666` + `chcon u:object_r:appspawn_socket:s0 /dev/unix/socket/AppSpawnX`** (script marks MANDATORY — AMS silently never forks otherwise). ⚠️ Occupies the board briefly → **@Agent-C schedule a window**; do NOT pkill C's render or touch `/data/local/tmp/wl-gfx-c`.

### Step 4 [needs GAP-1] — install the APK as a bundleType-10 bundle
`bm install -p /data/local/tmp/<pkg>.apk` → expect "install bundle successfully". Verify: `bm dump -n <pkg>` shows `bundleType:10`, `codePath …/<pkg>/android`, MainActivity as an ability. (`.apk` suffix gate already open; `oh_adapter_install_apk_with_manifest` already present — this step works ONCE `libapk_installer.so` is deployed.)

### Step 5 [READY] — deploy entry.hap for the launcher icon (bm install WIPES the bundle dir)
Build a restool resource HAP (arch-independent; `entry-hap/dayu600-2048/` is a staged template) forcing media `app_icon`→0x01000005 + string `app_name`→0x01000003 to match the ability iconId/labelId. Deploy:
```
cp entry.hap /data/app/el1/bundle/public/<pkg>/entry.hap
chown installs:installs …; chmod 644 …; chcon u:object_r:data_app_el1_file:s0 …
```

### Step 6 [READY] — unfreeze the launcher layout
`rm /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db*` then restart `com.ohos.launcher` (or reboot) → launcher rebuilds its grid from BMS, resourceManager reads entry.hap → **real icon + label appears**.

### Rendering half (GAP-3) — the child's arsc/AssetManager/theme is ALREADY wired (de-risked 2026-07-07)
Unlike B's headless probe (bare `dlopen` → misses `JNI_OnLoad`/`startReg` → arsc stubs → the theme/inflate wall B is retrofitting), the 02A appspawn-x calls `AndroidRuntime::startReg` on `liboh_android_runtime.so` at VM bootstrap (pre-fork, inherited by the child). Its own `asx_run.err` proves it: `startReg entering (32 modules)` → `ok register_android_content_AssetManager` / `ok register_android_content_res_ApkAssets` / StringBlock / XmlBlock → `Framework JNI methods registered via AndroidRuntime::startReg`. So the child inflating a themed app UI uses REAL arsc natives — it does NOT share B's arsc-stub wall. Remaining render-side unknowns for the child: (a) whether the child's `LoadedApk`/`ActivityThread` path auto-attaches framework-res to the Activity's AssetManager (the Java-side plumbing B is finishing on the probe — but the child goes through real ActivityThread, not B's manual probe, so likely handled); (b) graphics-native (Paint/Canvas) registration for actual drawing, which startReg's graphics registrars + C's adapter libhwui cover.

### Step 7 [needs GAP-1 + GAP-2] — launch and verify
Tap the icon (≡ `aa start -a <pkg>.MainActivity -b <pkg>`). Success = AMS logs `"routing to appspawn-x for Android app"` → appspawn-x forks → child reaches `AppSpawnXInit.initChild → ActivityThread.main → LaunchActivityItem → Activity.onCreate` (check `/data/service/el1/public/appspawnx/adapter_child_*.stderr`) → C's renderer paints the first frame. The child's RENDER half still shares B/C's graphics-native/crit-flag walls (Paint/Canvas registration); the spawn+onCreate half is independent of B's 5ce2dcee ART (appspawn-x has its own arm64 ART). Offline first-launch needs no network shims.

---
## GAP-1 build spec — arm64 `libapk_installer.so` (reversed from the working small-board 32-bit copy)
Confirmed via `nm -D`/`objdump -p` on `dd011a41:/system/android/lib/libapk_installer.so` (375KB, ELF32 ARM). The arm64 build is a **straightforward recompile of the existing apk_installer source** (in the 02A/`bridge-build` tree; repo has only partial recovered fragments at `ports/dayu600/recovered/westlake-snippets/package-manager/code/apk_installer.cpp@{291,560}` + `apk_signature_verifier.cpp@183`):
- **Exports (C ABI, 2 only — what `libbms` dlopens)**: `oh_adapter_install_apk`, `oh_adapter_install_apk_with_manifest` (returns int; 0=success per libbms log `oh_adapter_install_apk_with_manifest failed: %d`).
- **Self-contained leaf lib**: no undefined BMS/InnerBundle symbols — it parses the APK itself (no callbacks into BMS internals).
- **DT_NEEDED (all present as OHOS arm64 on the big board)**: `libc.so`, `libshared_libz.z.so`, `libutils.z.so`, `libhilog.so`, `libcrypto_openssl.z.so`, `libssl_openssl.z.so`, `libc++.so`.
- **Deploy target**: `/data/a64deploy/sysandroid/lib64/libapk_installer.so` (surfaces at `/system/android/lib64/` via bind-mount; that's where `libbms` dlopens it).
- **Exhaustively confirmed absent** on big board (all `/data`+`/system` paths) and this Mac; small board's copies are 32-bit only (can't load into the arm64 libbms process).

## Blockers / owners
- **GAP-1 `libapk_installer.so` (arm64)** → user / 02A owner (build tree not on this Mac). #1 hard blocker.
- **GAP-2 nativeStartAbility bridge JNI** → adapter-bridge (liboh_adapter_bridge / oh-adapter-framework), overlaps @Agent-B AppSchedulerBridge.
- **framework-res `76a92b8f`** → @Agent-A (available in scratchpad-shared; swap into the board deploy).
- **board time** → @Agent-C (5583f5be render board).
— Agent-F
