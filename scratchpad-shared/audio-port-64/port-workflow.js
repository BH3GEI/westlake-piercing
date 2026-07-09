export const meta = {
  name: 'agent-audio-64bit-port',
  description: 'Port WestLake noice audio 6-gate chain from 32bit/A7 to 64bit/OHOS6.1/A16: build arm64 OHOS .so, prepare A16 smali patches, adversarially verify',
  phases: [
    { title: 'Port+Build' },
    { title: 'Framework' },
    { title: 'Verify' },
  ],
}

const TOOLCHAIN = `
SHELL IS ZSH (no unquoted word-splitting — pass --target/--sysroot as literal separate args).
Source the toolchain env first:
  source /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/toolchain.env
It exports: OHOS_CLANG, OHOS_CLANGXX, OHOS_SYSROOT, JNI_INC (has <jni.h>), LOG_INC (has <android/log.h>), REF (a2oh reference tree).
Canonical arm64 OHOS shared-lib compile (PROVEN working):
  \$OHOS_CLANGXX --target=aarch64-linux-ohos --sysroot="\$OHOS_SYSROOT" \\
    -std=c++2a -O2 -fPIC -w -shared -I"\$JNI_INC" -I"\$LOG_INC" SRC.cpp -o OUT.so
For C (stub): use \$OHOS_CLANG instead of clang++, drop -std=c++2a.
Output must be: ELF 64-bit LSB, ARM aarch64, musl (interpreter ld-musl-aarch64). Verify with \`file\` and \`nm -D\`.
`

const NATIVE_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  required: ['gate','source','deliverable_path','md5','file_type','exported_symbols','port_changes','abi_risks','build_command','blockers','status'],
  properties: {
    gate: { type: 'string' },
    source: { type: 'string' },
    deliverable_path: { type: 'string' },
    md5: { type: 'string' },
    file_type: { type: 'string' },
    exported_symbols: { type: 'array', items: { type: 'string' } },
    port_changes: { type: 'array', items: { type: 'string' }, description: '32->64 deltas actually applied to the source' },
    abi_risks: { type: 'array', items: { type: 'string' }, description: 'remaining ABI concerns a 64-bit build could hit' },
    build_command: { type: 'string' },
    blockers: { type: 'array', items: { type: 'string' }, description: 'what is still needed (board/integration) before this works on device' },
    status: { type: 'string', enum: ['built-clean','built-with-notes','blocked'] },
  },
}

const FRAMEWORK_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  required: ['gate','targets','patch_ready','apply_procedure','deliverables','blockers','status'],
  properties: {
    gate: { type: 'string' },
    targets: { type: 'array', items: {
      type: 'object', additionalProperties: false,
      required: ['klass','method','signature','present_in_a16','action'],
      properties: {
        klass: { type: 'string' }, method: { type: 'string' }, signature: { type: 'string' },
        present_in_a16: { type: 'string', enum: ['confirmed','likely','unknown-needs-board'] },
        action: { type: 'string' },
      },
    }},
    patch_ready: { type: 'boolean' },
    apply_procedure: { type: 'string' },
    deliverables: { type: 'array', items: { type: 'string' } },
    blockers: { type: 'array', items: { type: 'string' } },
    status: { type: 'string' },
  },
}

const VERIFY_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  required: ['item','valid_elf','arch_correct','required_symbol_present','abi_bug_found','findings','verdict'],
  properties: {
    item: { type: 'string' },
    valid_elf: { type: 'boolean' },
    arch_correct: { type: 'boolean' },
    required_symbol_present: { type: 'boolean' },
    abi_bug_found: { type: 'boolean' },
    findings: { type: 'array', items: { type: 'string' } },
    verdict: { type: 'string', enum: ['PASS','FAIL','PLAUSIBLE-ISSUE'] },
  },
}

phase('Port+Build')

const NATIVE_GATES = [
  {
    key: 'media-jni-stub',
    label: 'gate3:media_jni_stub',
    prompt: `You are porting GATE 3 of the WestLake noice audio chain to arm64/OHOS-6.1.
${TOOLCHAIN}
SOURCE (read it fully): \$REF/native-libs/libmedia_jni_stub.c
BACKGROUND: android.media.MediaCodec/MediaCodecList <clinit> call loadLibrary("media_jni") then a native in the same clinit; ART re-resolves that class's natives against this lib at load, dropping the zygote RegisterNatives. This stub's JNI_OnLoad dlopens the bridge and calls register_MediaCodec_shim to re-register the shim natives in the child.
PORT TASK (32bit A7 -> 64bit OHOS6.1):
1. Copy the source to /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/media-jni-stub/libmedia_jni_stub.c and port it.
2. 64-bit deploy path: original deploys to /system/lib + /system/android/lib; on 64-bit it must be /system/lib64 + /system/android/lib64. The dlopen target: original tries liboh_adapter_bridge.so then /system/lib/liboh_adapter_bridge.so. On OUR 64-bit board the standalone audio shim will be liboh_mediacodec_shim.so (a sibling agent builds it). Make the stub try, in order: liboh_mediacodec_shim.so (RTLD_NOLOAD then NOW), then liboh_adapter_bridge.so, then /system/lib64/liboh_mediacodec_shim.so. Keep calling dlsym("register_MediaCodec_shim").
3. Compile to libmedia_jni.so for aarch64-linux-ohos (C, use \$OHOS_CLANG). Verify with \`file\` and \`nm -D | grep JNI_OnLoad\`.
4. md5 the .so.
Return the structured result. deliverable_path = the built libmedia_jni.so. blockers = which sibling .so must exist on-board + the /system/lib64 deploy step (board offline now).`,
  },
  {
    key: 'mediacodec-shim',
    label: 'gate4-5:mediacodec_shim',
    prompt: `You are porting GATES 4+5 of the WestLake noice audio chain to arm64/OHOS-6.1.
${TOOLCHAIN}
SOURCE (read it FULLY, it is ~473 lines): \$REF/bridge-src/oh_mediacodec_shim.cpp
BACKGROUND: bridges android.media.MediaCodec/MediaCodecList -> OHOS OH_AudioCodec (libnative_media_acodec.so, all dlopen/dlsym'd so NO OHOS headers needed to compile). noice's ExoPlayer uses the ASYNC MediaCodec adapter (setCallback); the shim must fire MediaCodec\$Callback.onInput/onOutputBufferAvailable from OH onNeedInputBuffer/onNewOutputBuffer, and must capture+store the OH_AVBuffer per index (GetInputBuffer(index) returns NULL in async). Gate 5: OH callback threads AttachCurrentThread'd must DetachCurrentThread via a pthread_key destructor or ART aborts.
PORT TASK (32bit -> 64bit) — this is the SUBTLE one, focus on ABI:
1. Copy source to /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/mediacodec-shim/oh_mediacodec_shim.cpp and port.
2. CRITICAL 32->64 ABI AUDIT: grep the source for every place a native pointer (OH_AVCodec*, OH_AVBuffer*, OH_AVFormat*, this-ptrs) is stored into or read from a Java field/jlong/jint. On 32-bit a pointer fits in jint; on 64-bit it MUST be stored in jlong and cast via (jlong)(uintptr_t)ptr / (T*)(uintptr_t)handle. Find ALL such casts. If any pointer is stored as jint or (int), that is a 64-bit-fatal bug — fix it to jlong/uintptr_t. Also check any reinterpret of jlong<->pointer. Report every change in port_changes and every risk you could not fully resolve in abi_risks.
3. Ensure register_MediaCodec_shim is exported extern "C" (it is called by the media_jni stub). If the file already defines it, keep it. The deliverable is a STANDALONE liboh_mediacodec_shim.so exporting register_MediaCodec_shim (and any JNINativeMethod registration entry points).
4. Compile to liboh_mediacodec_shim.so for aarch64-linux-ohos (\$OHOS_CLANGXX). If it references helper symbols not in this TU (e.g. a shared attachEnv), either it is self-contained (compile clean) or note the missing symbol; prefer making the .so self-contained by keeping only what this file defines and using -Wl,-undefined behavior default (report if unresolved externals appear). Verify \`file\` + \`nm -D | grep register_MediaCodec_shim\`.
5. md5 the .so.
Return structured result. Be exhaustive in port_changes/abi_risks — this gate's correctness is the crux.`,
  },
  {
    key: 'inproc-service',
    label: 'gate1:inproc_service',
    prompt: `You are porting GATE 1 of the WestLake noice audio chain to arm64/OHOS-6.1.
${TOOLCHAIN}
SOURCE (read it FULLY, ~527 lines): \$REF/bridge-src/oh_inproc_service.cpp
BACKGROUND: native synchronous/async in-process Android Service bind (inproc_bindServiceSync2 and the delegated scheduleCreateService path) so noice's SoundPlaybackService/SubscriptionStatusPollService bind works. All via JNI reflection (FindClass/GetMethodID at runtime) into adapter.activity.* classes — those are runtime lookups, NOT link-time symbols.
PORT TASK (32->64):
1. Copy source to /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/inproc-service/oh_inproc_service.cpp and port.
2. 32->64 ABI AUDIT: same discipline as the codec shim — any native pointer stored in a jint/jlong Java field, any (int)ptr cast, any assumption about sizeof(long)/pointer width, any jlong<->handle round-trip. Fix pointer-in-jint to jlong/uintptr_t. Report all in port_changes/abi_risks.
3. This file is normally compiled INTO the adapter bridge lib. First compile it as an OBJECT to prove it is 64-bit clean and self-contained at the C++ level:
   \$OHOS_CLANGXX --target=aarch64-linux-ohos --sysroot="\$OHOS_SYSROOT" -std=c++2a -O2 -fPIC -w -c -I"\$JNI_INC" -I"\$LOG_INC" oh_inproc_service.cpp -o oh_inproc_service.o
   Then ALSO attempt a standalone .so (-shared) and report whether it links or has unresolved externals (list them). The deliverable is the .o (proof of clean 64-bit compile) plus, if it links, liboh_inproc_service.so.
4. md5 the primary deliverable (.o, and .so if produced).
5. In blockers/abi_risks, document the integration point: which adapter bridge this .o must be linked into on-board, and the nativeConnectAbility wiring (light services createIfMissing=1, SoundPlaybackService reuse-only) that A2OH's activity_manager_adapter.cpp does — note that our 64-bit adapter must replicate that wiring (we do NOT have their activity_manager_adapter.cpp; flag it as a needed integration).
Return structured result. deliverable_path = the .o (and .so if linked).`,
  },
  {
    key: 'toneplayer',
    label: 'diag:toneplayer64',
    effort: 'low',
    prompt: `You are building the arm64/OHOS-6.1 validation binary for the WestLake noice audio chain.
${TOOLCHAIN}
SOURCE: \$REF/diagnostics/toneplayer.c  and also \$REF/diagnostics/deathcatch.c
TASK:
1. toneplayer.c: copy to /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/toneplayer/toneplayer64.c and adapt for 64-bit: the dlopen path "/system/lib/ndk/libohaudio.so" must become "/system/lib64/ndk/libohaudio.so" for a 64-bit process (keep a fallback to the 32-bit path only if the 64 path fails). Everything else (OH_AudioRenderer symbols, callback ABI) is pointer-clean already but double check the callback signature uses the right widths.
2. Compile toneplayer64.c -> toneplayer_arm64 for aarch64-linux-ohos (\$OHOS_CLANG, add -lm). Verify \`file\` shows ARM aarch64 ELF executable.
3. deathcatch.c: it is an LD_PRELOAD death-catcher (interposes process-teardown). Copy to the toneplayer/ dir and compile it -shared -> libdeathcatch.so for aarch64-linux-ohos. Report if any symbol/ABI issue (it may reference 32-bit-specific interpose targets; note them, do not force).
4. md5 both.
Return structured result. deliverable_path = toneplayer_arm64. blockers = must run ON the 6.1 board (offline now) to confirm OH_AudioRenderer produces a tone (Create/GenerateRenderer/Start rc=0). Note that this is the minimal proof gate-6-adjacent output backend works on 6.1.`,
  },
]

const buildResults = await parallel(NATIVE_GATES.map(g => () =>
  agent(g.prompt, { label: g.label, phase: 'Port+Build', schema: NATIVE_SCHEMA, ...(g.effort ? { effort: g.effort } : {}) })
))

phase('Framework')

const FRAMEWORK_GATES = [
  {
    label: 'gate2:audiofocus-patch',
    prompt: `You are preparing GATE 2 (audio focus) of the WestLake noice audio chain for our 64-bit / OHOS-6.1 / A16 framework.
REFERENCE FILES (read them):
  - \$REF/framework-patch-tools/PatchReturnOne.java  (env: REF=/Users/yao/westlake-piercing/scratchpad-shared/audio-a2oh-ref)
  - \$REF/framework-patch-tools/classpath.txt , \$REF/framework-patch-tools/README.md
BACKGROUND: PatchReturnOne rewrites EVERY overload of android.media.AudioManager.requestAudioFocus(...) to \`const/4 v0,1; return v0\` (return AUDIOFOCUS_REQUEST_GRANTED=1) via dexlib2. On A2OH's 32-bit build this ran on framework classes2.dex + boot-image regen.
OUR SITUATION (constraints — do NOT try to fetch a board):
  - The A16 framework.jar (md5 8c377c13...) is ONLY on the big board 5ce2dcee which is OFFLINE right now.
  - dexlib2/smali jars are NOT installed locally; Java runtime is at /opt/homebrew/opt/openjdk/bin/java (unlinked). apktool is at /opt/homebrew/bin/apktool.
  - Our big board runs an IMAGELESS ART substrate (per project memory: no dex2oat/boot-image regen needed — patched framework dex loads directly). So the A2OH "boot-image regen" step likely does NOT apply to us; the patched classesN.dex just replaces the one in framework.jar. CONFIRM this reasoning and state it.
TASK (prepare, do not require the board):
1. Enumerate the AudioManager.requestAudioFocus overloads that must be patched. Search any local A16/A15 framework source you can find (try: find /Users/yao/a2oh-source-audit -path '*media/AudioManager.java'; and /Users/yao/westlake-local-build). If not found, derive the overload set from the AOSP AudioManager public API for API34/35 and from the reference. For each: give the exact smali signature (descriptor) and mark present_in_a16 = confirmed/likely/unknown-needs-board.
2. Produce a ready-to-run apply script at /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/framework-smali/gate2-apply.sh that: (a) pulls framework.jar from the board OR takes it as \$1, (b) unzips, finds the classesN.dex containing android/media/AudioManager, (c) runs \`java -cp <dexlib2-jars>:. PatchReturnOne in.dex out.dex 'Landroid/media/AudioManager;|requestAudioFocus'\`, (d) rezips + notes the imageless deploy (push patched framework.jar back, no dex2oat). Include the javac compile line for PatchReturnOne.java and the exact dexlib2 jar names from classpath.txt.
3. Copy PatchReturnOne.java into the framework-smali/ output dir so it is staged.
Return structured result. patch_ready reflects whether everything except the board-side jar+apply is ready. blockers = board offline (need jar 8c377c13) + dexlib2 jars must be present on the build host.`,
  },
  {
    label: 'crashchain:npe-smali',
    prompt: `You are preparing the noice AUDIO-INIT NPE CRASH CHAIN framework patches for our 64-bit / OHOS-6.1 / A16 framework.
REFERENCE (read the doc + every smali patch):
  - \$REF/docs/noice-mediasession-npe-chain.md  (env REF=/Users/yao/westlake-piercing/scratchpad-shared/audio-a2oh-ref)
  - \$REF/framework-smali-patches/*.smali  (esp: android_app_PendingIntent, android_media_session_MediaSession, android_media_audiopolicy_AudioProductStrategy, android_media_audiopolicy_AudioVolumeGroup, android_hardware_display_DisplayManagerGlobal, android_media_MediaRouter\$Static, android_content_pm_ShortcutManager, android_app_SystemServiceRegistry\$88, android_app_SystemServiceRegistry\$7)
  - \$REF/framework-patch-tools/*.java (PatchPI, PatchMS, PatchReturnNew, PatchEmptyList, PatchProxy, PatchReturnVoid, PatchS88 — map which patcher drives which gap)
BACKGROUND: noice's SoundPlaybackService.onCreate eager-inits MediaSession and hits 7 unimplemented adapter system services, each an uncaught NPE swallowed by System.exit. The doc's table lists the 7 gaps and their framework-layer fixes.
OUR CONSTRAINTS: A16 framework.jar (8c377c13) is on the OFFLINE board; imageless ART substrate (no boot regen); only partial A16 source locally (find /Users/yao/a2oh-source-audit -name '*.java' -path '*media*' / '*app*').
TASK (prepare):
1. Build a table: for each of the 7 gaps -> {class, method, signature, which A2OH patcher/smali implements it, present_in_a16 confirmed/likely/unknown-needs-board}. Verify class/method existence against any local A16/A15 source; where you cannot, mark unknown-needs-board and say the smali must be re-derived from the actual 8c377c13 jar's baksmali.
2. Stage all the relevant reference .smali + .java patchers into /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/framework-smali/crashchain/ (copy them).
3. Write /Users/yao/westlake-piercing/scratchpad-shared/audio-port-64/framework-smali/crashchain/APPLY-A16.md documenting: the ordered apply procedure on the Linux build host (baksmali framework.jar -> apply each patch via its patcher or hand-graft the staged .smali -> smali back -> rezip -> push to board, imageless so no dex2oat), and clearly separate CONFIRMED-transferable patches from those NEEDING re-derivation against 8c377c13.
Return structured result. Be honest: most of this is 'prepared, needs board jar to finalize'. patch_ready = the plan+staged artifacts are ready even though final apply is board-gated.`,
  },
]

const fwResults = await parallel(FRAMEWORK_GATES.map(g => () =>
  agent(g.prompt, { label: g.label, phase: 'Framework', schema: FRAMEWORK_SCHEMA })
))

phase('Verify')

// Adversarially verify each native artifact that claims to be built.
const built = buildResults.filter(Boolean).filter(r => r.status !== 'blocked' && r.deliverable_path)
const verifyResults = await parallel(built.map(r => () =>
  agent(`Adversarially verify a claimed arm64/OHOS build artifact for the WestLake audio port. Do NOT trust the builder's claims — re-check independently with your own Bash commands.
ARTIFACT: ${r.deliverable_path}
CLAIMED: gate=${r.gate}, status=${r.status}, exported_symbols=${JSON.stringify(r.exported_symbols)}, md5=${r.md5}
CHECKS:
1. \`file "${r.deliverable_path}"\` — must be ELF 64-bit LSB, ARM aarch64 (musl interpreter for exe/so). valid_elf + arch_correct.
2. \`nm -D "${r.deliverable_path}"\` (or \`nm\` for .o) — confirm the REQUIRED export is present: media-jni-stub->JNI_OnLoad; mediacodec-shim->register_MediaCodec_shim; inproc-service->(object: check it has symbols, no need for a specific export); toneplayer->main (it's an executable, check \`file\` says executable). required_symbol_present.
3. ABI BUG HUNT (the important one): read the ported source next to the artifact and grep for 64-bit-fatal patterns: a native pointer truncated into jint/int, \`(jint)\` on a pointer, storing a pointer in a Java int field, GetIntField/SetIntField used for a handle that should be GetLongField/SetLongField, any \`(int)(long)ptr\` or \`reinterpret_cast<jint>\`. If the source stores/loads native handles, they MUST use jlong + (uintptr_t). Report abi_bug_found=true with specifics if you find any pointer-width truncation. Also check the OH callback thread detach (pthread_key destructor) is present for the codec shim (gate 5).
4. md5 -q the file and compare to claimed.
verdict PASS only if valid ELF + right arch + required symbol + NO abi truncation bug. FAIL if arch/symbol wrong. PLAUSIBLE-ISSUE if you find a real ABI risk that would misbehave at runtime.`,
    { label: `verify:${r.gate}`, phase: 'Verify', schema: VERIFY_SCHEMA, effort: 'high' })
))

return {
  native: buildResults,
  framework: fwResults,
  verify: verifyResults,
}
