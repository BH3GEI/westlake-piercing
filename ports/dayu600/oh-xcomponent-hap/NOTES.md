# oh-xcomponent-hap — OH-native XComponent→panel rail proof (task #12)

**Why this exists (2026-07-12).** The ultimate goal is the 团结引擎 (Tuanjie/Unity)
MiniGame on the DAYU600 (5ce) panel. Two facts fix the route:

1. **Android-Unity is dead.** `libunity.so` C++ static-init takes a `pthread_mutex`
   while musl's dynamic-linker lock is held → deterministic deadlock (Agent-A,
   24/24, Unity 5.x & 2023). The colleague's Android-on-OH adapter can't rescue it
   (dies in musl). So the ART/adapter "Route B" is OFF the critical path here.
2. **Tuanjie-for-OH is native.** Vendor `libtuanjie.so` (have it: `/tmp/libtuanjie_re.so`,
   27MB) is an OpenHarmony-native il2cpp build — a napi module driven by an ArkUI
   `<XComponent>` (296 OH_* imports, 16 XComponent NDK, zero JNI). It needs NO ART,
   NO adapter: a thin OH `.hap` (ArkUI XComponent + engine + game data) rides OH's
   own XComponent→RenderService→panel rail.

**What this .hap proves.** The same rail, minimal: an `@Entry` page with an
`XComponent(type:SURFACE, libraryname:'entry')` → `libentry.so`
(`gl_xcomponent.cpp`) drives GLES2 `glClearColor` sweep onto the OH_NativeWindow
that ArkUI hands us in `OnSurfaceCreated` → real pixels to the uis7885 panel.
EGL path is the one already proven in `../gfx-smoke/westlake_rs_smoke.cpp`.
Once this sweeps color on 5ce, swap the render body for `libtuanjie` + game data.

**Toolchain (all verified LIVE on compiler 2026-07-12, task #14 DONE).**
node v20.18.1, es2abc+ets-loader (ArkTS→abc), restool, app_packing_tool.jar,
hap-sign-tool.jar + SDK debug cert, aarch64 XComponent+EGL NDK. No DevEco, no
hvigor (OH npm registry needs auth → drive `ets-loader/main.js` by env, see
`build-hap.sh`), no colleague, no new build host (Intel Mac NOT needed).

**Build:** `bash build-hap.sh` on the compiler. Iteration points (live-tune):
ets-loader env vocabulary, restool args, packing args, sign alias/pwd.

**Deploy:** `hdc -t 5ce2dcee00000000000000000923012c install build/glxc.hap`
(authorized: occupy 5ce + modify system) → `aa start -b com.westlake.glxc -a EntryAbility`
→ observe panel color sweep + `hilog | grep wl-glxc`.

**The one colleague-ask (task #13, not blocking this proof).** A complete Tuanjie
MiniGame *exported as an OpenHarmony project* — engine .so I have; missing = the
game's il2cpp data (GlobalGameManagers/*.assets) + the ArkUI project shell.
Can't self-serve (needs the Tuanjie Editor GUI export), so relay to colleague.
