# oh-tuanjie-hap — OH-native thin `.hap` that hosts the real Tuanjie engine on the DAYU600 panel

**Status (2026-07-13):** scaffold ready and staged; **blocked only on the colleague's il2cpp
payload archived to GZ02** (the precise, forwardable ask lives at
`../oh-xcomponent-hap/COLLEAGUE-ASK.md`). Retrieval from every machine I control is
exhausted (proven below). Engine present + byte-exact; the OH-native rail this rides on is already
first-framed on 5ce (the GLES2 sibling `oh-xcomponent-hap`). Data-arrival → game-on-panel = minutes.

## The one remaining blocker (and why it can't be self-served)
The game needs a **matched il2cpp payload** (this game's compiled managed code + metadata + scene):
`data.tj3d`, `global-metadata.dat`, `libil2cpp.so`, `boot.config` (+ `libc++_shared.so`,
maybe the OH-native `liboh_tuanjie_host.so`). It is NOT the engine and cannot be derived:
- the engine (`libtuanjie.so`) is generic; it *reads* this payload from `rawfile/Data/`.
- the colleague's shipped Android APK is 32-bit **Mono** (Assembly-CSharp.dll) — it has **no**
  `global-metadata.dat` / `libil2cpp.so`. il2cpp metadata+lib are a matched pair emitted only by an
  il2cpp Editor build (`OHBuild.BuildAll`), which ran on the **GZ02** fleet, not here.

**Retrieval exhausted (all negative):**
- whole-Mac + `~/Downloads` + WeChat: no `data.tj3d` / `global-metadata.dat` / `oh_game*.hap`
  (only skeleton `tj_data` dirs = 2 JSONs, and an unrelated andors-trail `libil2cpp.so`).
- `compiler` cloud box (`ecs-9f6c`): no `/opt/21.Game`, no `/mnt/gz02_nfs`, no `/data/10.AlexProject`,
  no tuanjie payload, no GZ mounts.
- `GZ02`/`GZ05` are the colleague's Guangzhou build fleet — not in `agent-infra/infra.md`, not in
  `~/.ssh/config`. Unreachable from here. → **colleague-gated** (`COLLEAGUE-ASK.md`).

## What is staged in `~/tuanjie-hvigor/` (clone of the on-panel GLES2 project)
```
entry/libs/arm64-v8a/libtuanjie.so                 ✅ STOCK engine e8397680 (27,752,432 B) — in place
entry/src/main/resources/rawfile/Data/             ✅ drop dir created
  ├─ RuntimeInitializeOnLoads.json                 ✅ skeleton (have)
  ├─ ScriptingAssemblies.json                      ✅ skeleton (have)
  ├─ data.tj3d                                      ❌ MISSING → colleague/GZ02
  ├─ boot.config                                    ❌ MISSING → colleague/GZ02
  └─ Managed/Metadata/global-metadata.dat           ❌ MISSING → colleague/GZ02
entry/libs/arm64-v8a/libil2cpp.so                  ❌ MISSING → colleague/GZ02 (126546a0, ~10.6MB)
entry/libs/arm64-v8a/libc++_shared.so              ⚠️  sourceable from OH SDK if not shipped (5297ec9b)
entry/src/main/ets/pages/Index.ets                 → XComponent(libraryname:'tuanjie')  (see below)
```

## Engine boot contract (RE-confirmed — `re/RE_napi_door.md` + on-Mac `strings`)
`libtuanjie.so` exports ONLY `UnitySendMessage`; everything else LOCAL. It self-registers as a napi
module (`.init_array` ctor → `napi_module_register`), and on load:
```
JSI_OnLoad → napi_define_properties(23 fns) → EnsurePlayerInited → TuanjiePlayer::RegisterXComponent
RegisterXComponent: napi_get_named_property(exports, "__NATIVE_XCOMPONENT_OBJ__") → napi_unwrap →
                    OH_NativeXComponent* → OH_NativeXComponent_RegisterCallback(comp,&cbs)
OnSurfaceCreated → OpenHarmonyGraphics::SetWindow → WindowSurfaceEGL::SetWindow → eglCreateWindowSurface → frame
Data root: engine reads rawfile/Data/{boot.config, tuanjie_app_guid, data.tj3d, Managed/Metadata/global-metadata.dat}
           via OH_ResourceManager OpenRawFile64. (filesDir is the writable extraction target.)
```
23 lifecycle JS fns the ArkTS side must drive, in order:
`nativeOnCreate → nativeSetWorker → nativeOnWindowStageActive → nativeOnResume`
(+ `nativeProcessUIThreadMessage` pumped from a worker; touch via the XComponent cbs).

## INTEGRATION SEAM (the one non-trivial bit if we get raw payload instead of the `.hap`)
`XComponent(libraryname:'tuanjie')` makes ArkUI dlopen `libtuanjie.so` and hand it the surface —
but two things a **real Tuanjie OH export auto-generates** are NOT in the bare engine and must be
authored (or come inside `oh_game1.hap`):
1. **`__NATIVE_XCOMPONENT_OBJ__` bridge** — ArkUI injects the standard `OH_NATIVE_XCOMPONENT_OBJ`;
   the engine reads Unity's `__NATIVE_XCOMPONENT_OBJ__`. A companion must re-expose it under that key.
2. **the 23-call ArkTS lifecycle driver** (EntryAbility + worker) calling the sequence above.
This is exactly why **`oh_game1.hap` (which bundles that glue + the data) is the fastest path** — it
needs only a 5ce re-sign, no glue authoring. Prefer it (option A in `../oh-xcomponent-hap/COLLEAGUE-ASK.md`).

## Drop-in + deploy runbook
**If colleague sends `oh_game1.hap` (preferred):**
```
# re-sign for 5ce dev cert, then install (board must be codex-idle — see below)
hap-sign-tool sign-app ... -inFile oh_game1.hap -outFile oh_game1-5ce.hap   # 5ce profile, devcert chain
hdc -t 5ce2dcee00000000000000000923012c install oh_game1-5ce.hap
hdc -t 5ce2dcee00000000000000000923012c shell aa start -b <bundle> -a EntryAbility
```
**If colleague sends the 6-file payload:**
```
cp data.tj3d boot.config            ~/tuanjie-hvigor/entry/src/main/resources/rawfile/Data/
cp global-metadata.dat              ~/tuanjie-hvigor/entry/src/main/resources/rawfile/Data/Managed/Metadata/
cp libil2cpp.so libc++_shared.so    ~/tuanjie-hvigor/entry/libs/arm64-v8a/
# author/verify the two seam pieces above, then:
cd ~/tuanjie-hvigor && ~/command-line-tools/bin/hvigorw assembleHap -p product=default -p buildMode=debug --no-daemon
# sign (5ce profile) + hdc install + aa start
```
Verify each dropped file against the md5s in `../oh-xcomponent-hap/COLLEAGUE-ASK.md` before building.

## Board discipline (unchanged)
5ce only. **No concurrent bring-up** — an M9/codex lane may hold 5ce (shared display/SoC); before any
`install`/`aa start`, confirm the board is idle (read-only `hdc shell` checks are fine). Never wipe/
flash/reboot; only private `/data/local/tmp/wl-*` runtime. The GLES2 sibling proves the rail; this
just swaps the payload from a GLES2 clear to the real engine.
