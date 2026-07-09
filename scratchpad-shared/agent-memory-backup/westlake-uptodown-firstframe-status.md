---
name: westlake-uptodown-firstframe-status
description: "uptodown (com.uptodown, = /Users/yao/Downloads/test.apk) on the WestLake small-board adapter — INSTALLED, spawns, reaches FOREGROUND, then crashes on the empty-packageName ActivityThread NPE. It's the most tractable commercial app tried (~2-4 walls). Fix known; blocked only on boot-image rebuild env."
metadata: 
  node_type: memory
  type: project
  originSessionId: 970210e5-03bf-40cf-82db-a7d7b3f71a83
---

Target APK `/Users/yao/Downloads/test.apk` = **com.uptodown** (Uptodown store client), MainActivity = `com.uptodown.activities.MainActivity`. It's a **universal APK** — has both `armeabi-v7a` (32-bit) and `arm64-v8a` libs (only 3 tiny .so: androidx.graphics.path, datastore_shared_counter, uptodown-native). The 32-bit libs match the small-board 32-bit adapter, so architecture is NOT a blocker.

**Progress (2026-07-06):** `bm install -p test.apk` → **"install bundle successfully"**, `bm dump` shows `bundleType 10` (APP_ANDROID), uid 19378. Cold-launched via `aa start`. It **reaches FOREGROUND** (`AbilityTransitionDone ohState=5` + LC-HEARTBEAT), reads its theme, then **crashes**.

**The crash (root-caused via workflow uptodown-fix-recon):** appspawn-x specializes the child with an **empty `ApplicationInfo.packageName`** (signature in child stderr: `ClassLoader referenced unknown path: /system/app//.apk` — double slash = empty name) → `LoadedApk` bails, `mInitialApplication`/`mActivities` never built → but the OHOS ability path still drives FOREGROUND → fires a config change → `ActivityThread.collectComponentCallbacks` dereferences `mActivities` (ART object offset 8, the alphabetically-first ref field) = null. The **"W15" defect** (OHOS musl drops ART's null→NPE signal redirect — see repo docs `project_v3_mcd_w15_npe_signal_root`) makes this null-deref **fatal** instead of a catchable NPE. Crash pc `0x74290afa` in boot-framework.oat (base 0x74150000 → oat offset 0xb34afa).

**The fix (ready, not yet applied):** surgical `framework.jar` smali guards, apply BOTH in one boot-regen cycle:
- **Fix A (primary):** `android.app.ActivityThread.collectComponentCallbacks(Z)` — at entry, if `mActivities==null && mResourcesManager==null` return an empty ArrayList (half-bound thread has no callbacks → config change is a safe no-op).
- **Fix B (insurance):** `android.app.ConfigurationController.updateLocaleListFromAppContext` — null-guard getResources()/getConfiguration() → early return.
- Correct ROOT fix = stamp the real packageName (from `msg.procName`) into the BIND ApplicationInfo during appspawn-x/child bind, so mActivities populates normally.

**Road ahead:** ~2-4 more walls before first frame; hardest = WorkManager→Room→native SQLite (needs SQLite JNI + CursorWindow shared-mem bridge), but the deployed runtime blob 16e08711 ALREADY contains the SQLite JNI, so likely tractable. **Verdict: more like noice than McD/Netflix — the most likely commercial app to reach first frame.** Blocked only by [[westlake-build-env-blocker]]. See [[westlake-small-board-real-deployment]].
