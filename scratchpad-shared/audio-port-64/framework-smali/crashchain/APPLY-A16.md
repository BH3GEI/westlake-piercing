# AUDIO-INIT NPE CRASH CHAIN — A16 framework.jar apply plan

Port of A2OH's 7-gap "clean death" fix (uncaught NPE on unimplemented adapter
system services during `SoundPlaybackService.onCreate` → `MediaSession` eager
init → `System.exit(1)`) to our **64-bit / OHOS-6.1 / A16** substrate.

Source of truth for the chain: `audio-a2oh-ref/docs/noice-mediasession-npe-chain.md`.
This directory stages the reference artifacts; **final apply is board-gated** on
the offline board's `framework.jar` (hash `8c377c13`).

## Status (2026-07-08)

- **Plan + staged artifacts: READY.** All 7 gap fixes are dexlib2 patchers +
  A15-derived reference smali, copied here (`patchers/`, `smali/`).
- **Final apply: BLOCKED on board jar.** All 4 boards offline; the A16
  `framework.jar` (`8c377c13`) is on the offline board and has NOT been baksmali'd
  here. Register layouts and one inner-class ordinal (`SystemServiceRegistry$88`)
  are version-specific and MUST be re-verified/re-derived against the real jar.
- **Imageless ART substrate** (per `AUDIO-PORT-RUNBOOK.md`): patched `framework.jar`
  loads directly. **NO `dex2oat` / boot-image regen** (this is the one place our
  64-bit path is *simpler* than A2OH's 32-bit path, which needed boot regen).

## What we could and could NOT verify locally

`/Users/yao/a2oh-source-audit` contains **no Java framework source** — only native
hwui C++ (`aosp-frameworks-base-15-r9/libs/hwui`) and headers, plus one stray
`ColorMatrix.java`. `find … -path '*media*'/'*app*' -name '*.java'` → 0 hits.

Therefore **none of the 7 target classes/methods can be marked `confirmed` from
local source.** The `present_in_a16` column below is judged from (a) these being
long-stable public/hidden framework APIs with no known removal through A16
(BAKLAVA), and (b) the structure of the A2OH patchers. Anything version-specific
(register allocation, the `$88` ordinal) is `unknown-needs-board`.

## The 7 gaps → patcher/smali mapping

| # | class | method | signature (A15 ref) | driver | reference smali | present_in_a16 | transfer |
|---|-------|--------|---------------------|--------|-----------------|----------------|----------|
| 1 | `android.app.PendingIntent` | `getActivity/getBroadcast/getService(+AsUser)` (all methods calling `IActivityManager.getIntentSenderWithFeature`) | e.g. `getActivityAsUser(Context,I,Intent,I,Bundle,UserHandle)PendingIntent` | `PatchPI.java` | `android_app_PendingIntent.smali` | likely | CONFIRMED-transferable (structural) |
| 2 | `android.media.session.MediaSession` | `<init>` (the ctor calling `MediaSessionManager.createSession`) | `<init>(Context,String,Bundle)V` | `PatchMS.java` | `android_media_session_MediaSession.smali` | likely | NEEDS RE-DERIVATION (register/field-layout assumptions) |
| 3 | `android.media.audiopolicy.AudioProductStrategy` | `initializeAudioProductStrategies` | `()Ljava/util/List;` (private static) | `PatchEmptyList.java` | `android_media_audiopolicy_AudioProductStrategy.smali` | likely | CONFIRMED-transferable (name-keyed) |
| 4 | `android.media.audiopolicy.AudioVolumeGroup` | `initializeAudioVolumeGroups` | `()Ljava/util/List;` (private static) | `PatchEmptyList.java` | `android_media_audiopolicy_AudioVolumeGroup.smali` | likely | CONFIRMED-transferable (name-keyed) |
| 5 | `android.hardware.display.DisplayManagerGlobal` | `getWifiDisplayStatus` | `()Landroid/hardware/display/WifiDisplayStatus;` | `PatchReturnNew.java` | `android_hardware_display_DisplayManagerGlobal.smali` | likely | CONFIRMED-transferable (name-keyed) |
| 6 | `android.media.MediaRouter$Static` | `<init>` | `<init>(Landroid/content/Context;)V` | `PatchProxy.java` | `android_media_MediaRouter$Static.smali` | likely | CONFIRMED-transferable (structural; verify asInterface call present) |
| 7a | `android.content.pm.ShortcutManager` | `getDynamicShortcuts`, `getManifestShortcuts` | `()Ljava/util/List;` | `PatchEmptyList.java` | `android_content_pm_ShortcutManager.smali` | likely | CONFIRMED-transferable (name-keyed) |
| 7b | `android.app.SystemServiceRegistry$88` | `createService` (the ShortcutManager fetcher) | `createService(Landroid/app/ContextImpl;)Landroid/content/pm/ShortcutManager;` | `PatchS88.java` | `android_app_SystemServiceRegistry$88.smali` (+`$7` as pattern) | **unknown-needs-board** | NEEDS RE-DERIVATION (`$88` ordinal is A15-specific) |

`$7` (`SystemServiceRegistry$7` = the AlarmManager fetcher) is staged only as a
worked example of the `getServiceOrThrow`→`getService` rewrite pattern PatchS88
applies; it is not itself part of the 7-gap chain.

### Why each `transfer` verdict

The A2OH patchers match methods by **(defining-class, method-name)** in the dex
and splice a **self-contained** body or a splice relative to a **found call
site** — they do NOT depend on the smali file's line numbers. So the *patcher* is
the portable unit; the staged `.smali` is a human reference for what the result
should look like and for hand-grafting if a patcher misses.

- **CONFIRMED-transferable** = the patcher's match key and inserted code carry no
  A15-specific register/ordinal assumptions:
  - `PatchEmptyList` (gaps 3, 4, 7a): replaces whole body with
    `new ArrayList(); return-object` — 1 local, no param reads. Robust.
  - `PatchReturnNew` (gap 5): replaces body with `new WifiDisplayStatus(); return`
    — computes its own register count from the (name-matched) method's params.
    `WifiDisplayStatus` has a no-arg ctor (defaults = feature unavailable). Robust.
  - `PatchPI` (gap 1): finds the `getIntentSenderWithFeature`/`getIntentSender`
    invoke, reads the register off the following `move-result-object`, and inserts
    an `if-nez / new Binder / IIntentSender$Stub.asInterface / move-result` guard.
    Signature-agnostic (works regardless of `getIntentSenderWithFeature` arg
    drift). Robust; **verify** on A16 only that a `move-result-object` still
    immediately follows the invoke (it does in every AOSP rev to date).
  - `PatchProxy` (gap 6): finds `IMediaRouterService$Stub.asInterface` inside
    `MediaRouter$Static.<init>` and inserts the same null→proxy guard. Robust;
    **verify** the `$Static` inner class still exists and still calls
    `asInterface` (it does through A16), and that the result reg ≤ v15.

- **NEEDS RE-DERIVATION** = a patcher hardcodes something version-specific:
  - `PatchMS` (gap 2): hardcodes `THIS = registerCount − 4` (assumes the matched
    ctor is `(Context,String,Bundle)` = 4 param-words), unconditionally uses
    scratch regs v0–v3, and hardcodes field refs `mBinder:ISession`,
    `mSessionToken:MediaSession$Token`, `mController:MediaController`. All three
    fields + the `createSession(...)ISession` call are present in the A15 smali
    (verified: lines 47/55/63 field defs, line 220 createSession). On A16 these
    must be re-confirmed: if the ctor arity, the `.registers` count, the field
    names/types, or the createSession signature changed, the splice is wrong. If
    it fails, hand-graft using `smali/android_media_session_MediaSession.smali` as
    the template.
  - `PatchS88` (gap 7b): hardcodes the class name
    `Landroid/app/SystemServiceRegistry$88;`. That `$88` is the ordinal of the
    ShortcutManager `CachedServiceFetcher` anonymous class in
    `SystemServiceRegistry.java` — **assigned at compile time and near-certain to
    differ on A16.** PatchS88 also guards on `returnType == ShortcutManager`, which
    is the reliable discriminator, but its class-name filter will simply not match
    if the ordinal moved. **Re-derive the real ordinal from the board jar** (grep
    the baksmali for the `$NN` whose `createService` returns
    `Landroid/content/pm/ShortcutManager;`) and update the `C = "…$NN;"` constant
    before building. Until then this gap's fetcher target is `unknown-needs-board`.

## Ordered apply procedure (Linux build host, once a board jar is in hand)

Prereq: a Linux build host with the Android cmdline-tools smali/baksmali 3.0.3 +
guava + jcommander on the classpath (see `patchers/classpath.txt`; set
`ANDROID_SDK`). The A2OH patchers load dex at `Opcodes.forApi(34)` — fine for
reading/writing A16 dex (bytecode format is compatible; adjust to `forApi(36)` if
any new opcode is encountered).

0. **Pull the board jar** and record its hash:
   `hdc file recv /system/framework/framework.jar ./framework.jar` (expect
   `8c377c13…`). Keep an untouched copy for diffing/rollback.

1. **Extract the dex(es):** `unzip framework.jar 'classes*.dex' -d work/`.
   A16 `framework.jar` is multidex — identify which `classesN.dex` holds each
   target class (`baksmali list classes classesN.dex | grep -E 'PendingIntent|MediaSession|AudioProductStrategy|AudioVolumeGroup|DisplayManagerGlobal|MediaRouter\$Static|ShortcutManager|SystemServiceRegistry'`).
   Patchers operate per-dex, so run each patcher against the dex that actually
   contains its target(s).

2. **Re-derive the two version-specific items BEFORE building patchers:**
   - `baksmali d classesN.dex -o out/` then
     `grep -rl 'createService(Landroid/app/ContextImpl;)Landroid/content/pm/ShortcutManager;' out/android/app/` → gives the real `SystemServiceRegistry$NN`.
     Edit `patchers/PatchS88.java` `C` to `…$NN;`.
   - Baksmali `MediaSession.smali` from the board dex; confirm the ctor arity,
     `.registers`, field names/types, and `createSession` signature match the
     PatchMS assumptions. If not, hand-edit the null-branch (template in
     `smali/android_media_session_MediaSession.smali`).

3. **Build the patchers:**
   `javac -cp "$(cat patchers/classpath.txt)" patchers/Patch*.java`.

4. **Apply, in any order (they touch disjoint classes); one dex in → one dex out.**
   Chain the output of one into the input of the next when they hit the same dex.
   Example for a dex holding all of them:
   ```
   java -cp ".:$(cat classpath.txt)" PatchPI          in.dex  s1.dex
   java -cp ".:$(cat classpath.txt)" PatchMS          s1.dex  s2.dex
   java -cp ".:$(cat classpath.txt)" PatchEmptyList   s2.dex  s3.dex \
        'Landroid/media/audiopolicy/AudioProductStrategy;|initializeAudioProductStrategies' \
        'Landroid/media/audiopolicy/AudioVolumeGroup;|initializeAudioVolumeGroups' \
        'Landroid/content/pm/ShortcutManager;|getDynamicShortcuts' \
        'Landroid/content/pm/ShortcutManager;|getManifestShortcuts'
   java -cp ".:$(cat classpath.txt)" PatchReturnNew   s3.dex  s4.dex \
        'Landroid/hardware/display/DisplayManagerGlobal;|getWifiDisplayStatus|Landroid/hardware/display/WifiDisplayStatus;'
   java -cp ".:$(cat classpath.txt)" PatchProxy       s4.dex  s5.dex \
        'Landroid/media/MediaRouter$Static;|<init>|Landroid/media/IMediaRouterService$Stub;|Landroid/media/IMediaRouterService;'
   java -cp ".:$(cat classpath.txt)" PatchS88         s5.dex  out.dex
   ```
   Each patcher throws if it patches 0 (or ≠ expected) methods — that non-zero
   exit is your signal that a target moved and needs re-derivation, NOT a silent
   miss. If a class lives in a different `classesN.dex`, run that patcher against
   that dex separately.

   **Fallback (hand-graft):** if a patcher can't match, `baksmali d` the dex,
   overwrite the target method body using the corresponding file in `smali/` as
   the template (porting register numbers to the board's `.registers`), then
   `smali a` the tree back to a dex.

5. **Repackage:** drop the patched `classesN.dex` back in:
   `zip framework.patched.jar classes*.dex` (preserve all dex; keep original
   ordering/names). Do **not** re-sign — BCP jars aren't APK-signed.

6. **Push back (imageless — no dex2oat):**
   `hdc file send framework.patched.jar /system/framework/framework.jar`
   (remount `/system` rw first; back up the original). Because the substrate is
   **imageless ART**, the patched dex is used directly on next process start — no
   boot-image regeneration, no `dex2oat`. Restart zygote/appspawn-x (or reboot).

7. **Verify on device:** repro noice cold-launch and watch for the swallowed NPE:
   `hilog -G 64M; hilog -r; <launch noice>; hilog -x | grep AppSpawnXInit`.
   Success criterion (from the chain doc): noice cold-launches, renders the Sound
   Library, survives the play tap, and navigates all bottom-nav pages with no
   `System.exit`. Walk the 7 gaps in the doc's order — each surviving NPE names
   the next unpatched service.

## CONFIRMED-transferable vs NEEDS-RE-DERIVATION — summary

**CONFIRMED-transferable (apply patcher as-is; only sanity-verify the noted
call-site invariant):**
- Gap 1 — `PatchPI` (PendingIntent) — verify move-result-object follows the invoke.
- Gap 3 — `PatchEmptyList` (AudioProductStrategy.initializeAudioProductStrategies).
- Gap 4 — `PatchEmptyList` (AudioVolumeGroup.initializeAudioVolumeGroups).
- Gap 5 — `PatchReturnNew` (DisplayManagerGlobal.getWifiDisplayStatus).
- Gap 6 — `PatchProxy` (MediaRouter$Static.<init>) — verify `$Static` + asInterface present, reg ≤ v15.
- Gap 7a — `PatchEmptyList` (ShortcutManager.getDynamicShortcuts/getManifestShortcuts).

**NEEDS RE-DERIVATION against the 8c377c13 baksmali (do step 2 first):**
- Gap 2 — `PatchMS` (MediaSession.<init>): re-confirm ctor arity, `.registers`,
  field names/types (`mBinder`/`mSessionToken`/`mController`), createSession sig.
- Gap 7b — `PatchS88` (SystemServiceRegistry$NN): find the real fetcher ordinal;
  `$88` is A15-specific.

## Staged artifacts in this directory

- `smali/` — 9 A15 reference smali (7 gap targets + `SystemServiceRegistry$88`
  post-patch reference + `$7` AlarmManager fetcher as the rewrite pattern example).
- `patchers/` — 7 dexlib2 patchers (`PatchPI`, `PatchMS`, `PatchEmptyList`,
  `PatchReturnNew`, `PatchProxy`, `PatchS88`, `PatchReturnVoid`) + `README.md`
  (tool→gap table) + `classpath.txt` (build classpath).

`PatchReturnVoid.java` is staged as an adjacent same-family tool (no-ops
`ContentResolver.register/unregisterContentObserver` for the IME/TextView
observer NPE). It is **not** one of the 7 audio-init gaps but is commonly needed
right after, so it is kept with the set.
