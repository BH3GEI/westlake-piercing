# Expert brief — imageless-ART DAYU600: the resource/arsc JNI natives aren't the winning binding

**Date:** 2026-07-11 · **Card:** W-001 (wall #43 → #53) · **Author:** thinker/worker on westlake-piercing

> ## UPDATE (2026-07-11, after deeper disassembly) — root cause CORRECTED; candidate fix in flight
> The JNI layer is **NOT missing**. A **custom, WestLake-instrumented `libandroidfw.so`** on the board has its **own real `JNI_OnLoad` @0x2ae46c** (confirmed `nm -D`: `T JNI_OnLoad`; disasm starts `GetEnv(vm,&env,JNI_VERSION_1_6)`) that `RegisterNatives`×6 the full `android.content.res.*` stack (`ApkAssets`/`AssetManager`/`StringBlock`/`XmlBlock`/`Theme`) with `[WL]`-tagged file logging. Its real arsc parser **works when reached**: `probe-logs/nativeload.txt` shows `[WL] Open(resources.arsc)=>OK … LoadedArsc::Load=>OK loaded=1` for the assetProbe apk.
>
> **The real problem is invocation/ordering, not absence.** Our sidecar's embed bootstrap calls a fixed list of registrar variants — `call_optional_onload(handle,"JNI_OnLoad_icu"/…/"JNI_OnLoad_ohbridge",vm)` — but **never calls `libandroidfw`'s plain `JNI_OnLoad`**. And Java-side `System.load(libandroidfw)` **dedups** (libandroidfw is already mmap'd as a transitive dep) so ART skips its `JNI_OnLoad`. Net: the `android.content.res.*` natives are left bound to the **OHBridge no-op stubs** (register cookie 0 / `getResourceName`→"notfound" gracefully, no `UnsatisfiedLinkError`) — exactly the benign failure we see.
>
> **Candidate fix (building now):** in the sidecar, after the `JNI_OnLoad_ohbridge` call, `dlopen(libandroidfw, RTLD_NOW|RTLD_NOLOAD)` to grab the mapped handle, `dlsym("JNI_OnLoad")`, and call it directly `(vm, NULL)` — LAST, so its `RegisterNatives` wins over the stubs. Requires a cross-host sidecar rebuild. **We may not need you** if this lands — but the ordering/ABI risks in §6 (revised) are where a second opinion would help most. The original "missing layer" framing below (§4/§5) is kept for the raw evidence; read the UPDATE as the current truth.

## 0. One-sentence ask (revised)
On an **imageless OpenHarmony (OHOS) board** (AOSP-15 ART C++ runtime + Android-15 `framework.jar`), a **custom `libandroidfw.so`** already contains a working real arsc engine **and** a `JNI_OnLoad` that registers the `android.content.res.*` natives — but that `JNI_OnLoad` is never the **last/winning** registrar, so the resource natives resolve to OHBridge no-op stubs and no resource ever resolves. We want confirmation of the safest way to make `libandroidfw`'s `JNI_OnLoad` the deterministic final registrar, and the ordering/ABI hazards to watch. Details + hard evidence below.

## 1. The overall goal (context, not the ask)
Make an **unmodified** Uptodown APK render its **own first frame** on this board (framework wall **#53**), pixel-verified. There is **no boot image and no zygote** — ART is embedded and the framework runs "franken" on a tolerant/stub layer. The current sub-wall (**#43**) is: `new Resources(am,dm,cfg)` must succeed **and** `Theme.obtainStyledAttributes({app windowActionBar 0x7f040691, android windowContentOverlay 0x01010059, app colorPrimary 0x7f040141})` must return real values (`hasValue(i)==true`). That is the last hard native wall before the APK can inflate its first view.

## 2. Environment
- **SoC/board:** uis7885 (Unisoc), arm64 (aarch64), OpenHarmony userspace.
- **ART:** AOSP-15 ART C++ runtime, embedded via a custom `libwestlake_art.so` (a **static** ART build — see §6 note). No boot image, no zygote, no `app_process`. Our probe is invoked through a native embed path.
- **Framework:** stock Android-15 `framework.jar` (unmodified) loaded into this ART.
- **OHOS runtime adapter:** `liboh_android_runtime.so` (43 KB) — a **modified/minimal** replacement for AOSP `libandroid_runtime.so`. Exposes a **custom** registration entry `westlake_android_runtime_startReg(JNIEnv*)` (not stock AOSP). **The real `libandroid_runtime.so` does NOT exist anywhere on the board.**
- **Real asset engine:** `libandroidfw.so` (3.5 MB) is present and is the **real AOSP C++ arsc engine** (see §4.C), but has **no `JNI_OnLoad`**.
- **Our sidecar:** `westlake_embedded_art_dlopen_probe.so` — a freestanding (`-nostdlib`) helper we build and can extend. It already binds `android.os.Trace` natives via a proven field-poke (writes `entry_point_from_jni_` at ArtMethod offset 16) and hosts hand-rolled probe natives (`nativeAppendApkAssets`, `nativeW001Append`, `nativeCallAddAssetPath`, …).
- **Known board quirks (may matter for any Java-side workaround):**
  - **Broken Java reflection:** `Class.getMethod()`/`getDeclaredMethod()` **NPE** (`getGenericReturnType()`/`getReturnType()` on null). `getDeclaredConstructor`, `Field` reflection, and **compile-time direct calls** work. Native `GetMethodID`/`CallXMethod` work fine.
  - **Dual-String ArrayStore hazard:** String concatenation in the early path can throw `ArrayStoreException`; we write single literals only.
  - **Probe class is boot-loaded** in the early path → `Class.getClassLoader()==null` → Java `System.load(absolutePath)` throws `NPE ("String.length() on null")` inside ART's `nativeLoad` (library-search-path derivation). So **Java-side `System.load` of a lib is unreliable in this path**; the sidecar's native `dlopen` is reliable.

## 3. What we can and cannot do today (observed)
Working (proven this session):
- Sentinel `AssetManager` via private `AssetManager(boolean)` ctor (native `nativeCreate` only) → non-null `mObject`.
- Seeding `AssetManager.sSystem` (reflection on the static Field) so `getSystem()` early-returns → **`new Resources(am,dm,cfg)` now completes** on a clean board (5ce2dcee). (On the acceptance board 5583 there is an *unrelated* tolerant-ART misdispatch into `ResourcesImpl.startPreloading()` — separate issue, out of scope for this brief.)
- `android.os.Trace` natives bound (field-poke). `SystemProperties` + `MessageQueue` natives bound (by `westlake_android_runtime_startReg`).
- `Java_android_content_res_XmlBlock_*` / `StringBlock_*` natives **are present in `libandroidfw.so`** (real XML/StringBlock JNI wrappers).

**Broken (the wall):**
- After appending `framework-res.apk` + app APK to the sentinel `am` and building `new Resources(am,…)`:
  - `res.getResourceName(0x01010059)` → **not found** (even the *framework* attr).
  - `res.getResourceName(0x7f15000e / 0x7f040691)` → **not found** (app package).
  - `Theme.obtainStyledAttributes(...)` → `hasValue(i)==false` for all (uamHasWab=false).
  - The framework's own `AssetManager.addAssetPath(path)` (invoked from native via `GetMethodID`+`CallIntMethod`, bypassing broken Java reflection) → **returns cookie 0** (honest failure) for BOTH the app APK and `framework-res.apk`.
  - Our hand-rolled `nativeAppendApkAssets` reports `nativeSet=ok ck=2`, but that "ck" is only the **Java `mApkAssets.length`** we set — it is **not** proof the native `AssetManager2` accepted anything.

## 4. Hard evidence (symbol dumps; local copies pulled from the board)

### A. `liboh_android_runtime.so` (43 KB) registers ONLY Trace + SystemProperties + MessageQueue
`strings` of its JNINativeMethod tables — the complete set of native method names it knows:
```
nativeTraceBegin nativeTraceEnd nativeTraceCounter nativeIsTagEnabled
nativeAsyncTraceBegin/End nativeAsyncTraceForTrackBegin/End nativeInstant nativeInstantForTrack
nativeSetAppTracingAllowed nativeSetTracingEnabled
nativePollOnce nativeWake nativeIsPolling nativeSetFileDescriptorEvents native_add_change_callback
native_get native_set native_get_boolean native_get_int native_get_long native_report_sysprop_change
logger_entry_max_payload_native
JNI_OnLoad   (also exported: westlake_android_runtime_startReg — the custom entry the sidecar calls)
```
- **No `ApkAssets`, `AssetManager`, `getResource*`, `applyStyle`, `Theme*`, `addAssetPath` methods at all.**
- `nm -u liboh_android_runtime.so | grep _ZN7android | wc -l` → **0**. It imports **zero** `android::` C++ symbols ⇒ it does **not** bridge into `libandroidfw`'s engine.

### B. `libandroidfw.so` (3.5 MB) has the XML/StringBlock JNI wrappers but NOT the arsc/AssetManager ones
```
nm -D libandroidfw.so | grep Java_android_content_res_ApkAssets     → 0 matches
nm -D libandroidfw.so | grep Java_android_content_res_AssetManager  → 0 matches
nm -D libandroidfw.so | grep register_android                       → 0 matches   (no register_android_content_res_*)
nm -D libandroidfw.so | grep JNI_OnLoad                             → none
# but present:
Java_android_content_res_StringBlock_nativeCreate/Destroy/GetSize/GetString/GetStyle
Java_android_content_res_XmlBlock_nativeCreateParseState/DestroyParseState/GetAttribute*/...
```
Interpretation: this looks like a **custom `libandroidfw` build midway through absorbing the framework JNI layer** — `XmlBlock`/`StringBlock` wrappers were added, but the **`ApkAssets` + `AssetManager` + `Resources.Theme` + `TypedArray` wrappers were never added**, and there is **no `register_android_content_res_*` entry** to call.

### C. `libandroidfw.so` DOES export the full real C++ arsc engine (exact mangled symbols, all `T`/global)
```
_ZN7android9ApkAssets4LoadERKNSt4__n112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEj   // ApkAssets::Load(const string& path, uint32_t flags)
_ZN7android9ApkAssets4LoadENSt4__n110unique_ptrINS_14AssetsProviderE...EEj                        // ApkAssets::Load(unique_ptr<AssetsProvider>, flags)
_ZN7android9ApkAssets10LoadFromFdE...                                                              // ApkAssets::LoadFromFd(...)
_ZN7android9ApkAssets11LoadOverlayE...                                                             // ApkAssets::LoadOverlay(...)
_ZN7android13AssetManager212SetApkAssetsENSt4__n14spanIKNS_2spIKNS_9ApkAssetsEEE...Lm...EEb        // AssetManager2::SetApkAssets(span<sp<const ApkAssets>>, bool)
_ZN7android13AssetManager212SetApkAssetsESt16initializer_listINS_2spIKNS_9ApkAssetsEEEEb           // AssetManager2::SetApkAssets(initializer_list<sp<const ApkAssets>>, bool)
_ZN7android13AssetManager215PresetApkAssetsE...                                                    // AssetManager2::PresetApkAssets(...)
_ZNK7android13AssetManager215GetResourceNameEj                                                     // AssetManager2::GetResourceName(uint32_t)
_ZNK7android13AssetManager213GetResourceIdERKNSt4__n112basic_string...S9_S9_                        // AssetManager2::GetResourceId(name, defType, defPackage)
_ZNK7android13AssetManager211GetResourceEjbt                                                       // AssetManager2::GetResource(resid, may_be_bag, density)
_ZNK7android13AssetManager224GetResourceTypeSpecFlagsEj
_ZN7android10LoadedArsc4LoadE...   _ZN7android10LoadedArsc14LoadStringPoolE...   _ZN7android10LoadedArsc9LoadTableE...
```
So the engine is all there; only the **JNI plumbing from `android.content.res.*` native methods → these C++ entry points is missing.**

## 5. Root cause (our conclusion, high confidence)
The board's OHOS runtime provides JNI bindings **only** for `Trace`/`SystemProperties`/`MessageQueue`. The `android.content.res` resource stack — `ApkAssets.nativeLoad`, `AssetManager.nativeCreate`/`nativeSetApkAssets`/`nativeGetResourceName`/`nativeGetResourceIdentifier`/`nativeGetResourceValue`, `AssetManager.nativeApplyStyle`/`nativeResolveAttrs`/`nativeThemeCreate`/`nativeThemeApplyStyle`/`nativeThemeGetAttributeValue`, `TypedArray` fill — is **not registered by anything on this board**. `libandroidfw.so` holds the real engine but exposes no JNI wrappers or registrar for these classes. Hence `ApkAssets.loadFromPath` produces no parsed arsc, `SetApkAssets` builds no `DynamicRefTable`, app package `0x7f` is never assigned, and every `getResource*`/`obtainStyledAttributes` returns nothing.

(Any `getResourceName`/`nativeSetApkAssets` calls we make today are either hitting an unregistered method that silently no-ops via our sidecar's tolerant path, or a partial stub — either way the real `AssetManager2` is never populated.)

## 6. Questions for the expert
1. **Shortcut vs. hand-roll:** Is there a known-good prebuilt `libandroid_runtime.so` (or a `register_android_content_res_*` object) that is ABI-compatible with **this** `libandroidfw.so` (AOSP-15, `__n1` libc++ namespace, see mangling) that we could drop in and call, instead of hand-writing the JNI layer? If not —
2. **Minimal native JNI set:** To make `Theme.obtainStyledAttributes(int[])` return values on a sentinel `AssetManager`, what is the **minimal** set of `android.content.res.*` natives we must implement+`RegisterNatives` (against the §4.C C++ symbols)? Our current list: `AssetManager.nativeCreate`, `ApkAssets.nativeLoad`, `AssetManager.nativeSetApkAssets`, `nativeGetResourceIdentifier`/`nativeGetResourceName`, `nativeThemeCreate`, `nativeThemeApplyStyle`, `nativeApplyStyle`/`nativeResolveAttrs`/`nativeRetrieveAttributes`, `nativeGetResourceValue`. Which are strictly required vs. optional for the theme walk, and in what call/registration order?
3. **The `SetApkAssets` ABI boundary:** The two overloads take `std::span<const sp<const ApkAssets>>` and `std::initializer_list<sp<const ApkAssets>>`. From a hand-written JNI wrapper, what is the safe way to (a) obtain the `sp<const ApkAssets>` for each Java `ApkAssets` object (its `mNativePtr`/`long` field points to what C++ type — `ApkAssets*`? a `sp` control block?), and (b) construct the `span`/`initializer_list` and call `SetApkAssets` so the `DynamicRefTable`/package-id `0x7f` assignment happens? Any gotchas with `sp<>` refcounting across the JNI boundary here?
4. **`nativeCreate`/`mObject` identity:** On this board, who owns the sentinel `AssetManager`'s `mObject`? If we implement our own `nativeCreate` returning a real `AssetManager2*`, does the Java `AssetManager.mObject` (a `long`) map straight to that pointer in AOSP-15, so our `nativeSetApkAssets` and the framework's `getResourceName` operate on the same C++ object? (We must ensure the object the framework calls `getResourceName` on is the one we populated.)
5. **`libandroidfw.so` provenance:** It already carries `XmlBlock`/`StringBlock` JNI wrappers but not `ApkAssets`/`AssetManager`. Does this match a known partial port, and is the cleaner fix to **rebuild `libandroidfw.so`** with the remaining `register_android_content_res_ApkAssets/_AssetManager/_ResXMLTree` compilation units linked in (we'd need the build target names), rather than hand-binding in our sidecar?
6. **Static-ART constraint:** `libwestlake_art.so` is a **static** ART build; its `JavaVMExt::LoadNativeLibrary` returns *"Dynamic loading not supported (static build)"*. So we cannot rely on ART's own `System.loadLibrary` to run a `JNI_OnLoad`; we bind natives by (a) sidecar `dlopen`+`RegisterNatives`, or (b) the field-poke of `entry_point_from_jni_`. Does that constrain option choice in Q2/Q5 (e.g., must the wrappers be `RegisterNatives`'d explicitly since no `JNI_OnLoad` will auto-run)?

## 7. What we will do with the answer
Implement the missing wrappers in our sidecar (or rebuild `libandroidfw`), `RegisterNatives` them, re-append `framework-res.apk`+app APK, and re-run the oracle expecting `nativeSet=ok ck=2`, `getResourceName(0x7f040691)!=notfound`, and `obtainStyledAttributes → uamHasWab=true`. Then port to the acceptance board (5583) after clearing its separate tolerant-ART `startPreloading` misdispatch.

## 8. Artifacts the expert may want
- `libandroidfw.so`, `liboh_android_runtime.so` — pulled to `/tmp/w001-so/` (and live on board at `/data/local/tmp/westlake-dayu600-substrate/android/lib64/`; note siblings `libandroidfw_stubs.so`, `liboh_android_runtime.so.pre_hwui/pre_trace/pre_fatalbt` — this adapter has been iterated).
- Sidecar source: `test-fixtures/dayu600-embedded-art-probe/westlake_embedded_art_dlopen_probe.c` (append path at lines ~1116-1300; `westlake_android_runtime_startReg` call at ~1487-1520).
- Java probe: `test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java` (`runEarlyThemeOracle`).
- Decompiled framework: `/tmp/w001-fw/` (`ApkAssets.java`, `AssetManager.java`, `ResourcesImpl.java`).
