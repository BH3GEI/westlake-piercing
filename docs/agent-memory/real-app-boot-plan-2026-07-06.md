# Real com.uptodown boot plan (workflow map-real-app-boot, 2026-07-06)

I verified the two critical fix sites on disk and located the parallel westlake-piercing shim tree. Here is the plan.

---

# Plan: Boot real com.uptodown on custom ART → real Android render stack (Wine-style adapter)

*Verified on disk 2026-07-06. Note: the 4th analysis ("current-blocker") is an empty placeholder ("Test minimal payload") — ignored. Also note a naming mismatch: the art-latest work booted `noice.apk`; the target is `com.uptodown`. The mechanics below are app-independent, but the specific DI/late walls (Q3) differ per app.*

---

## Q1 — Is it feasible, and how much work?

**Feasible in principle, but this is a multi-week-to-multi-month systems effort, and prior "success" is partly a dead end.** Be honest with yourself about three things:

1. **The onCreate that "worked" does not count.** It ran only via `Unsafe.allocateInstance` (PF-arch-017) on an Activity with `mBase=null`, plus `fillNullFieldsWithProxies` and `setActivityField`. That is a fake-Context path that (a) can never reach a real Window/Surface, and (b) **violates the repo's own contract** (`/Users/yao/westlake-piercing/docs/agent-memory/feedback_no_per_app_hacks.md` forbids `Unsafe.allocateInstance` and `setAccessible`). The real path requires deleting those hacks and letting real `ActivityThread.performLaunchActivity` run — so there is *rework*, not just forward progress.

2. **There are actually two trees, and the plan is to converge them.**
   - `/Users/yao/westlake-local-build/art-latest/` — the standalone bionic-arm64 `dalvikvm` + `ohbridge_stub.c` + 40 PF-arch patches (what doc-history/art-longjump/ohbridge-stubs describe).
   - `/Users/yao/westlake-piercing/` — the device-oriented tree with `framework-smali-patches/`, adapter shims, and an already-written generic **`OHServiceManager`** (`ports/dayu600/recovered/westlake-snippets/core/code/framework__core__java__OHServiceManager.java@85.snippet.java`) that dispatches `getService(name)` to `adapter.activity.*`, `adapter.window.DisplayManagerAdapter`, `adapter.packagemanager.*`, etc. **This is the sanctioned generic seam and already exists.** The real Wine path = art-latest's ART (with the long-jump fix) + westlake-piercing's OHServiceManager/adapters, minus the Unsafe hacks.

3. **ServiceManager is NOT the hard wall — the Surface/render handoff is.** getService NPE is just the next gate. The genuine research risk is giving `ViewRootImpl`/`ThreadedRenderer` a **real `Surface` backed by a real buffer composited to the panel**. Everything upstream (display info, package info, PhoneWindow, inflate) is bounded, mechanical shim work. The downstream render backend is *de-risked* by separate work: per your memory `westlake-dayu600-hwui-gate2`, `libhwui.so` already builds and paints on the DAYU600 panel (gates 1-2). The missing link is wiring `ThreadedRenderer`'s native surface to that libhwui + OHOS `NativeWindow`.

**Rough effort:** long-jump fix + display bootstrap to a real `getSystemContext`: days. Real Application→Activity→inflate on a real Context: 1-2 weeks. Real `ViewRootImpl` → Session-returns-Surface → ThreadedRenderer on OHOS: the multi-week research chunk, but with libhwui already painting, it's an integration problem, not greenfield.

---

## Q2 — Ordered changes to clear the current wall (`getService2` NPE)

### Step 0 (PREREQUISITE — do this first, it's already-known-good and currently regressed): re-apply the ART long-jump fix

**This is a hard prerequisite.** Confirmed on disk: `/Users/yao/westlake-local-build/art-latest/patches/runtime/entrypoints/quick/quick_throw_entrypoints.cc` (mtime Jul 1) is the **regressed A11 flat-array version** — line 36 declares `art_quick_do_long_jump(uintptr_t* gprs, uint64_t* fprs)` and lines 81/125 call it with flat arrays, but the linked asm is A15 (`ART=aosp-art-15`, expects `x0=Context*`). The PF-arch-016 guard file `patches/runtime/arch/context.cc` is **gone** (only `arch/x86_64/` exists). So today any delivered exception raw-SIGBUSes with no guard. Until this is fixed, **no `try/catch` in framework.jar can fire**, so no ServiceManager fix can be observed.

Edit `quick_throw_entrypoints.cc`:
- Replace line 36 with an aliased decl (distinct C++ name avoids a signature clash with any ART header decl of the flat symbol):
  ```cpp
  extern "C" void art_quick_do_long_jump_ctx(Context* context) __asm__("art_quick_do_long_jump") __attribute__((noreturn));
  ```
- Collapse the body of `DoContextLongJump` (lines 45-132, both the x86_64 and aarch64 branches) to:
  ```cpp
  art_quick_do_long_jump_ctx(context);
  __builtin_unreachable();
  ```
This lets stock `artContextCopyForLongJump` run the real virtual `Arm64Context::CopyContextTo` (valid vtable) and `br` to the Java catch PC. **No Makefile change** — the A15 asm this targets is already linked. Rebuild: `cd $HOME/…/art-latest && make -f Makefile.bionic-arm64 -j8 link-runtime`.

### Step 1: confirm the real field names in the deployed framework.jar

Do not code the injection against assumed AOSP names. Baksmali the actual `ServiceManager` and read its fields/`getService`:
```
baksmali d framework.jar -o /tmp/fw && sed -n '1,60p' /tmp/fw/android/os/ServiceManager.smali
```
Confirm: the static cache field name/type (`sCache : Ljava/util/Map;` in AOSP), whether there is an `sServiceManager : Landroid/os/IServiceManager;` field, and the exact `getService`/`getService2`/`rawGetService` bodies (A16 added `getService2`).

### Step 2: install a generic **in-process** `IServiceManager` (the OHServiceManager path) — NOT a raw stub binder

Critical design point that kills the tempting shortcuts: `getService(name)` **must return a Binder whose `queryLocalInterface` returns a local `IInterface.Stub`**, so that `IXxx.Stub.asInterface(binder)` returns the local stub directly with **no transaction**. A raw `AllocObject(Binder)` (native sCache-injection, ohbridge-stubs Q3 Option B) is insufficient the moment any caller *uses* the service: `DisplayManagerGlobal.getInstance()` immediately calls `mDm.getDisplayInfo(...)`, which would `transact` → `Binder.transactNative` (unstubbed) → fail. So the in-process local-binder approach is the **only** viable one, and `OHServiceManager`/adapters already implement exactly that.

Install it via the **native JNI seam** (sanctioned; avoids the forbidden `setAccessible`). In `/Users/yao/westlake-local-build/art-latest/stubs/ohbridge_stub.c`, inside `OHBridge_JNI_OnLoad_Impl` (line 762), after `ServiceManager` is loadable, set its static IServiceManager field to a freshly constructed `OHServiceManager`:
```c
jclass sm  = (*env)->FindClass(env, "android/os/ServiceManager");
jfieldID f = (*env)->GetStaticFieldID(env, sm, "sServiceManager", "Landroid/os/IServiceManager;");
jclass ohsm = (*env)->FindClass(env, "com/ohos/shim/OHServiceManager");   // or whatever pkg it ships in
jmethodID ctor = (*env)->GetMethodID(env, ohsm, "<init>", "()V");
(*env)->SetStaticObjectField(env, sm, f, (*env)->NewObject(env, ohsm, ctor));
(*env)->ExceptionClear(env);
```
Then leave `ohb_bi_getContextObject` (line 543) returning NULL — it is no longer on the path, because `rawGetService`→`getIServiceManager()` now finds `sServiceManager` already set and never calls `getContextObject`. (If this framework.jar's `getService` reads `sCache` before `sServiceManager`, additionally have OHServiceManager populate nothing and rely on the `rawGetService` miss path — confirm from Step 1's smali.)

**Convergence dependency:** `OHServiceManager` and `adapter.*` classes live in the westlake-piercing adapter jar, not on the art-latest classpath today. Add that jar to the run `-Xbootclasspath`/`-classpath` (after `framework.jar` so it can see framework types). This is the concrete act of merging the two trees.

### Step 3: the FIRST local service the boot demands — `display`

The trace NPEs at `getService("display")` inside `DisplayManagerGlobal.getInstance()`. Wire `OHServiceManager.lookupAdapter("display")` → `adapter.window.DisplayManagerAdapter.getInstance().asBinder()` (already referenced in the OHServiceManager snippet). `DisplayManagerAdapter` must be a `IDisplayManager.Stub` subclass returning one logical default display + a `DisplayInfo` (density 160 to match `Configuration.nativeSetConfiguration` already observed; a sane 1920×1080 or the DAYU600 panel size). With this, `ResourcesManager.getDisplayMetrics` → `ContextImpl.createSystemContext` → `ActivityThread.getSystemContext()` **completes for real** — the exact chain that currently NPEs (doc lines 340-364). That is the wall cleared.

### Step 4: delete the fake-Context hacks

Once getSystemContext returns a real Context: remove/disable PF-arch-017 (`Unsafe.allocateInstance` in `MiniActivityManager.instantiateActivity:160`), `setActivityField`, and `fillNullFieldsWithProxies`. Let the real `Instrumentation.newApplication` / `performLaunchActivity` run against the real Context. (Keep them behind a flag for one build so you can A/B the crash if the real path regresses.)

---

## Q3 — The next 3-5 walls after ServiceManager, and the approach for each

1. **`bindApplication` / `LoadedApk.makeApplication` needs `getService("package")`.** Real `ActivityThread` builds the app record from `ApplicationInfo`. Approach: implement a local `IPackageManager.Stub` (adapter.packagemanager.PackageManagerAdapter) whose `getApplicationInfo`/`getPackageInfo` are synthesized from the target APK's own `AndroidManifest.xml` (parse it, or hardcode the fields ART reads: sourceDir=apk path, dataDir=a scratch dir, targetSdk, className=app's `<application android:name>`). Also `getService("activity")` → `IActivityManager.Stub` with no-op `getIntentSender`/`registerReceiver`-class calls returning benign defaults. Keyed by Android service name → satisfies no-per-app rule.

2. **Activity.attach() + Window is abstract (`Window.getDecorView()` AbstractMethodError, PF-arch-023).** Real `Activity.attach` sets `mWindow = new PhoneWindow(this,…)`. With a real Context this runs. Wall: `com.android.internal.policy.PhoneWindow` must load and construct — it pulls in `WindowManagerImpl`, theme resolution, and `getService("window")`. Approach: local `IWindowManager.Stub` for the metadata calls; ensure PhoneWindow's policy class resolves (it's in framework.jar). Drop the `tryGetDecorView` shim once the real PhoneWindow exists.

3. **`setContentView` → real `LayoutInflater.inflate`.** Needs a real `Resources` with a working `AssetManager` (already ~11/12 natives) and theme. Wall: **`AssetManager.nativeThemeDestroy(J)V` signature mismatch vs A16** (doc line 510) — fix that native's signature in `ohbridge_stub.c`; theme/attr resolution (`Resources.Theme`, `obtainStyledAttributes`) must return real `TypedArray`s. XmlBlock natives are already stubbed. Approach: get theme apply/resolve natives correct so inflate produces real `View`/`ViewGroup` objects (not proxies). This is where remaining AssetManager/`ResStringPool` native fidelity gets exercised hard.

4. **`WindowManager.addView(decorView)` → `ViewRootImpl` → `IWindowSession.addToDisplay`/`relayout` must return a real `Surface`.** *This is the real wall.* ViewRootImpl calls `mWindowSession.relayout(...)` and expects an out-`Surface` it can render into. Approach: implement a local `IWindowSession.Stub` (adapter.window.SessionAdapter) whose `relayoutWindow` fills the out-`Surface` with a Surface wrapping an **OHOS `NativeWindow`/producer buffer**. This is the SurfaceFlinger/WMS substitute and the point of contact with the OHOS display. Converge here with the `westlake-dayu600-hwui-gate2` work (libhwui already paints on the panel) — the Surface's native side must hand ThreadedRenderer the same OHOS buffer libhwui knows how to present.

5. **`ViewRootImpl.performTraversals` → `ThreadedRenderer.initialize(Surface)` → native hwui/EGL on OHOS.** Approach: point ThreadedRenderer's native render surface at the OHOS `NativeWindow` from wall 4; drive `draw` through the already-built `libhwui.so`. Because libhwui already composites to the panel (gates 1-2 per memory), this is wiring the EGL/HardwareBuffer handoff, not writing a renderer.

   *Sub-wall 5b (will bite immediately):* **Choreographer/vsync.** `ViewRootImpl` schedules traversals off `DisplayEventReceiver` vsync. With no real vsync, the render loop never ticks. Approach: stub a software vsync source (a ~16.6ms timer calling `DisplayEventReceiver.dispatchVsync`) so `Choreographer` advances frames.

*App-specific caveat for com.uptodown:* whatever DI/init the app does in `Application.onCreate` (Uptodown historically uses its own singletons/OkHttp, not necessarily Hilt like noice) will demand more `getService(...)` names (e.g. `connectivity`, `notification`) — `OHServiceManager` returns null for unmapped names (known wall W17). Add local stubs for the ones the boot path actually hits, still keyed by service name.

---

## Q4 — What to do FIRST (single most concrete action on the device)

**Re-apply the long-jump fix in `quick_throw_entrypoints.cc`, rebuild the runtime, and re-run to capture a clean baseline crash.** This is one ~15-line edit, no Makefile change, already-known-good (it previously got boot to onCreate), currently regressed, and it is the prerequisite for observing *any* subsequent exception/`catch` behavior.

Exact sequence:
1. Edit `/Users/yao/westlake-local-build/art-latest/patches/runtime/entrypoints/quick/quick_throw_entrypoints.cc` as in Q2 Step 0 (alias decl + collapse `DoContextLongJump` to `art_quick_do_long_jump_ctx(context); __builtin_unreachable();`).
2. `cd $HOME/…/art-latest && make -f Makefile.bionic-arm64 -j8 link-runtime`.
3. Run the standard invocation (from doc invariants), teeing to `run_pf37.out`:
   `./dalvikvm -Xbootclasspath:core-oj.jar:core-libart.jar:core-icu4j.jar:bouncycastle.jar:aosp-shim.dex:framework.jar:ext.jar:services.jar -Xverify:none -classpath aosp-shim.dex:com.uptodown.apk com.westlake.engine.WestlakeLauncher`
4. **Confirm the exit signature flips from raw SIGBUS (135/139) to the ServiceManager NPE being *delivered* to a Java frame** (i.e., you now see the NPE as a caught/propagated Java exception at `DisplayManagerGlobal.getInstance`, not a native fault). That confirmation is the green light to start Q2 Step 1 (baksmali the real `ServiceManager` fields) and Step 2 (install OHServiceManager via the JNI seam).

---

### Key file references (all absolute)
- Long-jump fix: `/Users/yao/westlake-local-build/art-latest/patches/runtime/entrypoints/quick/quick_throw_entrypoints.cc` (regressed; line 36 extern, lines 81/125 flat calls, line 139 caller). Guard `patches/runtime/arch/context.cc` is absent.
- Native stub / ServiceManager injection seam: `/Users/yao/westlake-local-build/art-latest/stubs/ohbridge_stub.c` (`ohb_bi_getContextObject`→NULL at line 543; `OHBridge_JNI_OnLoad_Impl` at 762; `BinderInternal` reg at 963-968; `AssetManager` block at 938-956 for the `nativeThemeDestroy` fix).
- Generic IServiceManager already written: `/Users/yao/westlake-piercing/ports/dayu600/recovered/westlake-snippets/core/code/framework__core__java__OHServiceManager.java@85.snippet.java` (dispatches to `adapter.window.DisplayManagerAdapter`, `adapter.activity.*`, `adapter.packagemanager.*`).
- No-per-app contract to respect (forbids Unsafe/setAccessible/per-app branches): `/Users/yao/westlake-piercing/docs/agent-memory/feedback_no_per_app_hacks.md`.
- Build/binary: `/Users/yao/westlake-local-build/art-latest/build-bionic-arm64/bin/dalvikvm`; Makefiles `Makefile.bionic-arm64` / `Makefile.ohos-arm64` in the same dir.
- Render backend to converge with: memory `westlake-dayu600-hwui-gate2` (libhwui.so paints on panel, gates 1-2).

**Bottom line:** feasible, but budget weeks; the ServiceManager NPE is a bounded shim job (in-process local-binder services via the existing OHServiceManager), the long-jump fix is a mandatory 15-line re-apply to even see it, and the real difficulty is the ViewRootImpl→Session→Surface→ThreadedRenderer handoff to the OHOS display — which is de-risked but not free because libhwui already paints on the panel.

---

## Full analyses

```json
[]
```
