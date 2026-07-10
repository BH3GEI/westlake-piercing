# Communication boundaries — architecture review

> Read-only review. Scope: every place code/data crosses a process, language, privilege,
> host, or ownership line in the W-001 (uptodown-on-DAYU600) path. Primary files read:
> `test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java`,
> `test-fixtures/dayu600-embedded-art-probe/westlake_embedded_art_dlopen_probe.c`,
> `oracle/verify/atom-43.sh`, `oracle/device/run-utd-w001.sh`,
> `docs/reference/host-build.md`, `state/LEDGER.md`, `tasks/doing/W-001.md`,
> `REPO_LOCK.toml`. Format per boundary: **concrete interface | why it must be a
> boundary | explicit? | risk**.

## Boundary inventory (12)

| # | Boundary | Explicit? |
|---|---|---|
| a | Java probe ↔ native sidecar (JNI RegisterNatives + shorty dispatch) | Partially |
| b | Sidecar ↔ ART/runtime shared libraries (dlopen+dlsym) | Partially |
| c | Java/native ↔ device heartbeat files (`/data/local/tmp/w001-*.txt`) | No (by design, but undeclared as a contract) |
| d | Java `AssetManager` ↔ native `AssetManager2` peer | Partially |
| e | App classloader(s) ↔ boot/system classloader | No |
| f | Host macOS ↔ compiler (Linux, ssh) ↔ board (OpenHarmony, hdc) | Partially |
| g | Oracle script ↔ board (PASS/FAIL contract) | Yes |
| h | Sidecar ↔ secondary native libraries (`libandroidfw.so`, `libsqlite_jni.so`, heavy-bridge) | Partially |
| i | Java probe ↔ smali-generated `WlPackageManager`/`WlPmHelper` | No |
| j | `REPO_LOCK.toml` / `ARTIFACT-INVENTORY.txt` ↔ actually-deployed artifact bytes | No |
| k | Shell launcher ↔ sidecar constructor, via environment variables | No |
| l | thinker/worker/oracle ↔ shared filesystem state (`state/`, `tasks/`, `evidence/`) | Yes (by protocol, not by tooling) |

---

## (a) Java probe → native sidecar: JNI `RegisterNatives` + interpreter shorty dispatch

**Concrete interface**: `Dayu600ApkStageProbe.java` declares six `private static native`
methods (`nativeFindClass`, `nativeWriteText`, `nativeRegisterTraceNatives`,
`nativeCallAddAssetPath`, `nativeAppendApkAssets`, `nativeW001Append`). The sidecar binds
them one-at-a-time via `RegisterNatives(env, probe_class, &methodN, 1)`
(`westlake_embedded_art_dlopen_probe.c:2652-2685`), deliberately per-method so one bad
signature doesn't drop the other five. Each JNI method has a compact type signature
("shorty") ART's interpreter uses to select a dispatch path: e.g.
`nativeWriteText(String,String)V` → shorty `VLL`, `nativeAppendApkAssets(Object,byte[])I`
→ shorty `ILL`. This board's ART fork (OpenHarmony) has an incomplete
`InterpreterJni::` dispatch table: static `ILL` is unhandled and every call logs
`interpreter.cc:1189] InterpreterJni: unhandled static shorty 'ILL' for int
Dayu600ApkStageProbe.nativeW001Append(...)` (verified in
`evidence/W-001/2026-07-10-hashlocked-ill-baseline.txt`) and the native body never runs.
The fix in place is the **ILL→VLL trampoline**: `nativeW001Append` was redeclared `void`
(shorty `VLL`, the same class as the already-working `nativeWriteText`) so the interpreter
dispatches it; it calls the real `int`-returning worker
(`westlake_native_append_apk_assets`) internally and discards the return value at the JNI
boundary (`westlake_native_w001_append_vll`, `westlake_embedded_art_dlopen_probe.c:1321-1355`).

**Why it must be a boundary**: this is the only path from unmodified Android Java bytecode
into native OpenHarmony-ART internals (AssetManager mutation, Trace/System native
registration). It cannot be inlined — JNI is the only cross-language call convention ART
exposes.

**Explicit?** Partially. The *declared* half (method name + JNI signature string) is
explicit and versioned in two places that must agree byte-for-byte (`.java` native decl
and the `JNINativeMethod` signature string in the `.c` file) — nothing enforces that
agreement at build time; a mismatch fails silently at `RegisterNatives` (returns non-zero,
logged, and execution continues without that native bound). The *dispatchable-shorty*
half is **not** explicit anywhere in this repo: which shortys the board's ART interpreter
handles is an empirically reverse-engineered fact (grep board logs for "unhandled static
shorty"), not a spec. `interpreter.cc:1189` is inside the closed/prebuilt ART binary, not
in this repo's source tree.

**Risk (real, active)**: the dispatchable-shorty set is a **private, undocumented,
board/ART-build-specific contract**. Nothing pins it: a different OHOS ART build, a
different board, or a future OS update could handle a different subset of shortys (or
none), silently un-fixing every method that currently relies on being shorty-compatible
with `nativeWriteText`. There is no compile-time or CI check that a native declaration's
shorty is in the known-good set — the only detector is a human grepping a device log
after the fact. Any future native method with an `I`, `J`, `F`, `D`, or multi-arg-mixed
return added to this probe needs the same manual VLL-shaped workaround, and there is no
guard rail stopping someone from adding an `ILL`/`IL`/`JLL` method and getting a silent
no-op instead of a build error.

## (b) Sidecar → ART interpreter/runtime: shorty table + exported `Java_*` symbols

**Concrete interface**: two independent binding mechanisms coexist:
1. Explicit `RegisterNatives` for `Trace`/`System`/`MotionEvent`/probe natives
   (`register_trace_natives_on`, `westlake_embedded_art_dlopen_probe.c:2103-2126`; System
   registration at `:1647-1671`).
2. ART's **implicit symbol-name convention**: functions exported as
   `Java_<pkg>_<Class>_<method>` (e.g. `Java_android_view_MotionEvent_nativeInitialize`,
   `Java_android_os_Trace_nativeTraceBegin`, `Java_java_lang_System_currentTimeMillis`) are
   found by ART via `dlsym` on the loaded shared object *without* any `RegisterNatives`
   call, per the standard JNI ABI.

Separately, the sidecar reaches the ART runtime itself via `dlopen(build_art_path())` →
`libwestlake_art.so`, then `dlsym(handle, "JNI_CreateJavaVM")` (public, documented JNI
invocation-API symbol) and `dlsym(handle, "Westlake_FindClassInSystemLoader")` (a
**project-private, non-standard** symbol name, `:1451-1466`). It also loads
`liboh_android_runtime.so` and `dlsym`s `westlake_android_runtime_startReg` — an
OpenHarmony-adapter-internal, unversioned symbol that is known to sometimes crash and is
called inside a `sigsetjmp`/`siglongjmp` guard (`:2310-2346`).

**Why it must be a boundary**: the sidecar has no other way to reach ART's VM-creation
and class-registration internals — there is no public C API for "create this VM and run
the 54 framework native registrars," so the probe must dlopen the prebuilt `.so` and dlsym
by name.

**Explicit?** Partially. `JNI_CreateJavaVM` is a documented, stable ABI symbol — genuinely
explicit. `Westlake_FindClassInSystemLoader` and `westlake_android_runtime_startReg` are
**not** part of any published interface; they are private symbols in a project-specific
ART/android_runtime fork, discoverable only by having built or disassembled that fork.
The dual `RegisterNatives`-vs-`Java_*`-symbol overlap for the same class (`Trace`,
`System`) is also implicit: both mechanisms register into the *same* interpreter table,
so whichever runs last silently wins, and there is no code comment enumerating which
classes use which mechanism as the source of truth.

**Risk**: `Westlake_FindClassInSystemLoader` and `westlake_android_runtime_startReg` are
private symbols with no ABI guarantee — an ART/OHOS rebuild that renames, inlines, or
strips them fails silently (`dlsym` returns 0, logged as "missing", and the caller
degrades rather than aborting: see `:1462-1466`, `:1509-1521`). The startReg crash-guard
(`sigsetjmp`/`siglongjmp` around a function pointer resolved by string name) is itself
evidence the interface is known-unstable; catching SIGTRAP and continuing means a partial
framework-registration failure is swallowed and the process proceeds in a
partially-initialized state rather than failing the run.

## (c) Java/native → device heartbeat files (`/data/local/tmp/w001-*.txt`)

**Concrete interface**: status is communicated **out of band from the JNI return channel**
via plain-text files written with raw `openat`/`write`/`close` syscalls
(`c_write_heartbeat`, `:2036-2047`) or via `writeText`/`earlyWriteLiteral` from Java. Fixed
paths, e.g. `w001-native-append.txt` (append-only log: `ENTER` → `DISPATCH_OK` →
`nativeSet=ok ck=N`), `w001-ckApp.txt` / `w001-ckFw.txt` (per-call rc, one file per asset
leg, routed by string-matching `"framework-res"` in the path bytes), `w001-abA.txt` /
`w001-abB.txt` (A/B theme-attribute verdict strings), `uptodown-early.txt` (step-by-step
progress marker), and the probe's own crash/exception dumps (`w001-failex.txt`,
`w001-failmsg.txt`, `w001-abAex.txt`). This exists specifically **because** the VLL
trampoline (boundary a) returns `void` — Java can no longer read `nativeW001Append`'s
result through the normal call-return channel, so the contract moved entirely to files
the oracle script later `cat`s (see boundary g).

**Why it must be a boundary**: once the return-value channel was sacrificed to cross the
ILL shorty wall, *some* side channel was required to observe native-side success/failure.
Files under `/data/local/tmp` are the only medium both the Java/native probe process and
the host-side oracle script (via `hdc shell cat`) can both reach.

**Explicit?** No. There is no schema file, no single source enumerating all `w001-*.txt`
paths and their exact text formats — the contract lives split across three places: the
Java doc-comment on `nativeW001Append` (`Dayu600ApkStageProbe.java:15-20`), the C comment
above the VLL trampoline (`:1317-1320`), and the grep patterns inside
`oracle/verify/atom-43.sh` (`grep -q 'nativeSet=ok ck=2'`, `grep -q 'wabAttr=0x7f040691'`,
`grep -q 'uamHasWab=true'`). Nothing type-checks that the C `cbuf` formatting
(`"nativeSet=ok ck=" + digits + "\n"`) actually matches what the oracle's grep expects; a
future change to either side silently breaks the other with no compiler or linker error.

**Risk (top-tier)**: this is a **stringly-typed, unversioned, three-way-split protocol**.
Concrete failure modes already latent in the code:
- `atom-43.sh` clears these files before each run (`rm -f ... w001-ckApp.txt
  w001-ckFw.txt w001-abA.txt w001-abB.txt`) but heartbeat files are **append-only**
  (`O_APPEND`, `c_write_heartbeat`) — if a run is retried without going through
  `atom-43.sh`'s cleanup (e.g. a manual `hdc shell` invocation during debugging), stale
  content from a previous run concatenates with new content and a `grep -q` match against
  a *stale* line would false-positive a PASS that the current run never actually produced.
  The evidence file for this exact wall already shows `ck=2 (x5 across retries)` in one
  heartbeat file — i.e. multiple runs' output is already observed to coexist in the same
  file.
- The files are plain world-writable paths under `/data/local/tmp` with no per-run nonce
  or PID tag; two concurrent invocations (e.g. a stray leftover process from a prior
  worker plus a new oracle run) would interleave writes into the same files
  indistinguishably.
- Text-format coupling is entirely by convention: `atom-43.sh`'s `grep -q 'nativeSet=ok
  ck=2'` must match the exact literal the C code assembles byte-by-byte in a hand-rolled
  integer-to-ASCII loop (`:1298-1313`); nothing verifies the two stay in sync except human
  review.

## (d) Java `AssetManager` ↔ native `AssetManager2` peer

**Concrete interface**: `android.content.res.AssetManager` holds two fields the native
side treats as its real interface: `mApkAssets` (`[Landroid/content/res/ApkAssets;`, the
Java-visible array of loaded asset packages) and `mObject` (`J`, a raw pointer/handle to
the native `AssetManager2` peer object). The native worker
(`westlake_native_append_apk_assets`, `:1149-1315`) does not call the hidden
`addAssetPath(String)` method (explicitly avoided — see `addAssetPathDirect`'s comment,
Java side, `:731-732`: "NEVER fall back to addAssetPath (dead-recursion SOE)"). Instead it:
1. Loads an `ApkAssets` object via `ApkAssets.loadFromPath(String[, int])`.
2. Grows `mApkAssets` by one slot in Java-array space via `SetObjectField` directly
   (bypassing any Java-side setter).
3. Reads `mObject` via `GetLongField` and, if non-zero, calls the **4-argument** static
   native `AssetManager.nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V`
   (`:1276-1286`) to push the *same* array into the native peer, so the C++-side
   `AssetManager2` object (referenced by the `mObject` pointer) actually knows about the
   new package — not just the Java array.

**Why it must be a boundary**: `AssetManager` is intentionally split — a thin Java object
holding a native handle, with the real asset-resolution logic (arsc parsing, resource
lookup) living in native `AssetManager2`. Any code that wants a newly-loaded APK's
resources to be resolvable through `Resources`/`Theme`/`TypedArray` must update *both*
sides; updating only the Java array is a decoy.

**Explicit?** Partially. `mApkAssets`/`mObject`/`nativeSetApkAssets` are private
implementation fields reached via reflection (`GetFieldID`, `GetStaticMethodID`), not a
public API — accessing them at all depends on this specific AOSP/AndroidX framework
revision keeping those exact field names and that exact 4-arg signature. The invariant is
explicitly named in a comment (`:1266-1267`: *"A Java-array length is not a cookie/proof
until the adapter's AssetManager2 accepted the same ApkAssets array"*) — i.e. the team
already knows and documents that the naive/implicit read (array length) is a **leaky**
signal, and treats a successful `nativeSetApkAssets` call, not the array-length return
value, as the load-bearing invariant.

**Risk**: exactly the risk the code comment already calls out, and it is the single most
important invariant this whole wall (#43) rests on. Before the 2026-07-10 fix, the code
computed `ck = old_len + 1` (Java array length) and treated it as a success cookie even
though the 4-arg `nativeSetApkAssets` call could fail or be skipped (missing `mObject`,
missing `nativeSetApkAssets(ZZ)` method) — a **false-positive success signal** (documented
in `tasks/doing/W-001.md:22`: *"旧 `ck=2`=array length 的假信号已消除"*, i.e. "the old
ck=2 = array-length false signal has been eliminated"). The fix routes the real
proof-of-work signal through heartbeat text (`nativeSet=ok ck=N`, boundary c) rather than
through any Java-visible return value, meaning **the true acceptance test now lives
entirely outside the JNI call/return contract** — a second, harder-to-audit layer of
indirection stacked on top of an already-reflective, non-public field/method interface.
Any AOSP revision that renames `mObject`, changes `nativeSetApkAssets`'s arity, or moves
the peer-refresh responsibility elsewhere breaks this silently (`GetFieldID`/
`GetStaticMethodID` returning 0 is handled by early-return, not by a hard failure the
Java side can observe synchronously — see boundary c).

## (e) App classloader(s) ↔ boot/system classloader (dual-class hazard)

**Concrete interface**: several distinct classloading paths exist simultaneously in one
process:
- `-Xbootclasspath` (built in `build_bootclasspath_option`, `:607-687`) puts
  `framework.jar`, the framework shim dex, the app probe dex, and (optionally) a whole
  APK on the **boot classpath**, so `FindClass` from native code resolves them via the
  boot definer.
- `-Djava.class.path` (`build_classpath_value`, `:689-737`) separately puts a subset of
  the same/related dex files on the **system/app classpath**.
- Java-side code also constructs *real* child classloaders explicitly:
  `new dalvik.system.PathClassLoader(apkPath(...), parent)` (`Dayu600ApkStageProbe.java:1278,
  2044, 2058`) and `new dalvik.system.DexClassLoader(...)` (`:2341`).
- Native code separately resolves `android.os.Trace` and `java.lang.System` two different
  ways: once via plain `FindClass` (binds whatever the "boot" definer returns) and again
  via `AssetManager.class.getClassLoader().loadClass(...)`
  (`reregister_trace_via_assetmanager_loader`, `:2131-2186`) — explicitly because these
  can be **two different `Class` objects for the same binary name**, each with its own
  independently-empty native-method table.

**Why it must be a boundary**: OpenHarmony's ART fork does not give this substrate a
single, real Android-style "boot classloader → PathClassLoader(app)" hierarchy the way a
real device does; the probe assembles an approximation from `-Xbootclasspath` +
`-Djava.class.path` + ad hoc `PathClassLoader`/`DexClassLoader` instances, and different
subsystems (early `Resources()` construction vs. later reflective code) end up resolving
the "same" class through different loader instances.

**Explicit?** No. There is no single authoritative statement of "which loader owns which
class for which subsystem" — it is discovered empirically per-symptom
(`UnsatisfiedLinkError: android.os.Trace.nativeIsTagEnabled` when the *wrong* `Trace`
class got the native binding) and patched with a targeted re-bind function
(`reregister_trace_via_assetmanager_loader`) rather than a structural fix. The Java-side
`loadClass` fallback (`tryNativeFindClass`, `:23-48`) is a second, independent workaround
for the same underlying class-identity ambiguity, applied only at `Class.forName`
call sites that already anticipated the problem.

**Risk (top-tier)**: this is the **active frontier wall** (LEDGER #43, `state/LEDGER.md`
line 60) as of this review — `new Resources(am, dm, cfg)` throws
`UnsatisfiedLinkError: boolean android.os.Trace.nativeIsTagEnabled(long)` because the
early-oracle path's `ensureTraceNatives()` binds the *boot* `Trace` class while
`Resources`'s constructor resolves a *different* `Trace` Class object
(`evidence/W-001/2026-07-10-vll-trampoline-advance.txt:33-42`). The fix that exists in the
sidecar (`reregister_trace_via_assetmanager_loader`) is not yet wired into the early-theme
path before `Resources` construction (per `tasks/doing/W-001.md:21`, "下一修法"/next fix
still pending) — i.e. **the dual-class hazard is a known, live, unresolved defect**, not a
hypothetical risk. Any code (present or future) that calls `FindClass`/`Class.forName`
without going through the same loader-resolution dance risks silently binding natives to
a `Class` object nothing else in the process actually calls methods on — an
`UnsatisfiedLinkError` at best, silent divergent behavior (two independent static-field
sets, e.g. two `Trace` classes with independently-`false` tracing-enabled state) at worst.

## (f) Host macOS ↔ compiler (Linux, ssh) ↔ board (OpenHarmony, hdc)

**Concrete interface**: a three-machine build/deploy chain, documented in
`docs/reference/host-build.md`:
1. **macOS → compiler**: `ssh compiler` (config alias, not literal hostname —
   `~/.ssh/config Host compiler`). Native `.so` rebuilds happen there with
   `aarch64-linux-gnu-gcc` under a hard ABI constraint: `-nostdlib -nodefaultlibs
   -fno-stack-protector -Wl,--unresolved-symbols=ignore-all` (glibc-linked builds fail to
   `LD_PRELOAD` on the musl/OHOS board — documented failure signature: dependency on
   `ld-linux-aarch64.so.1`/`__longjmp_chk`). JNI headers are pinned to a specific path on
   that specific machine (`/usr/lib/jvm/java-17-openjdk-amd64/include`).
2. **compiler → macOS**: `scp`/`rsync` brings built artifacts back into the repo tree
   (path recorded per-card/evidence, not automated).
3. **macOS/compiler → board**: `hdc file send` deploys three repo-owned artifacts to
   fixed board paths: `oracle/device/run-utd-w001.sh` → `/data/local/tmp/run-utd-w001.sh`
   (launcher), the built probe DEX → `.../apks/dayu600-apk-probe.dex`, and the built
   sidecar `.so` → **two** locations:
   `.../probes/libwestlake_embedded_art_dlopen_probe.so` (the `LD_PRELOAD` target,
   resolved by the process loader at exec time) and
   `.../android/lib64/sidecars/libwestlake_embedded_art_dlopen_probe.so` (found via
   `LD_LIBRARY_PATH` search order for any second load path, e.g. dependent-library
   resolution). `run-utd-w001.sh`'s `LD_LIBRARY_PATH` lists `$S/probes` and
   `$S/android/lib64/sidecars` both, meaning the two copies can legitimately be resolved
   by different consumers in the same process.

**Why it must be a boundary**: cross-architecture build (arm64 target, must not be built
on the Mac host per explicit user directive in `host-build.md:3`: *"重编译走中国 Linux
编译机,不要默认在本机 Mac 上扛"*), cross-privilege deploy (only `hdc` can push files to
the OpenHarmony board), and a musl/glibc ABI incompatibility (documented, has bitten this
project before — "旧 `libwestlake_embedded_art_dlopen_probe.so`" glibc regression,
`host-build.md:47-51`) that makes the compiler step non-optional for native code changes.

**Explicit?** Partially. The chain is well documented in prose (`host-build.md`) and the
final deploy step is hash-gated (see boundary g) — genuinely explicit *at the oracle
layer*. But the compiler→repo copy-back step ("`scp`/`rsync`... path written into card/
evidence") is manual and undeclared in any machine-checkable form; nothing in the repo
enforces that what got built on `compiler` is what actually lands in
`test-fixtures/*/out/`. Two on-device copies of the same `.so` existing at all is an
implicit assumption (some consumer resolves via `probes/`, another via
`android/lib64/sidecars/`) that is nowhere justified in comments — only inferable from the
`LD_LIBRARY_PATH` construction in `run-utd-w001.sh`.

**Risk**: the two-copy `.so` deploy is a duplication hazard by construction — if a human
`hdc file send`s a rebuilt sidecar to only one of the two paths (easy to do outside the
`atom-43.sh` guard, e.g. while iterating manually during debugging), the two copies
diverge and whichever one a given code path happens to resolve first becomes
non-deterministic based on link order/search order rather than intent. `atom-43.sh` does
catch this **only when invoked** (it independently hashes both remote paths and requires
both equal the local build), but any ad hoc `hdc shell` testing between oracle runs is
unprotected — and the JNI-header/toolchain pin on the compiler machine
(`java-17-openjdk-amd64`, noted as replacing a now-missing `java-21` path) is a fact about
one specific remote machine's current state, not something this repo can detect drifting.

## (g) Oracle script ↔ board: PASS/FAIL contract

**Concrete interface**: `oracle/verify/atom-43.sh <serial>` is the **sole** state-changing
entry point for LEDGER wall #43 (per `AGENTS.md` contract 3: "LEDGER 状态跃迁只认
`oracle/` 脚本 PASS"). Contract, read directly from the script:
1. Require `hdc` on PATH; run `oracle/board-health.sh <serial>` first (fail closed if
   unhealthy).
2. **sha256 gate**: compute local sha256 of the launcher script, the built DEX, and the
   built sidecar `.so`; compute remote sha256 of the same three board paths *plus* the
   second sidecar copy (4 remote hashes total); require the launcher/DEX/sidecar-primary
   hashes to match **and** the sidecar-primary hash to equal the sidecar-copy hash. Any
   mismatch → immediate `FAIL`, exit 1, before anything runs on the board.
3. Clear all W-001-owned board log files (`rm -f` a fixed list) so heartbeat files can't
   carry over stale content into this run (see boundary c's risk about this not always
   being followed on ad hoc runs).
4. Run the launcher over `hdc shell` with a timeout watchdog (`kill` after
   `$W001_TIMEOUT_SECONDS`, default 90s).
5. Collect all heartbeat/log files in one `hdc shell cat ...` round-trip, tagged with
   `__W001_NATIVE__`/`__W001_EARLY__`/`__W001_PROBE__`/`__W001_CK__`/`__W001_AB__`
   section markers.
6. **PASS** requires exactly: process exit code 0, `grep -q 'nativeSet=ok ck=2'`,
   `grep -q 'wabAttr=0x7f040691'`, `grep -q 'uamHasWab=true'` — all four, all in the
   captured log. Anything else prints the last 80 log lines and `FAIL`s (exit 1).
7. Terminal output is always exactly `PASS` or `FAIL` on the last line — the contract
   `WORKER`/`thinker` protocols rely on.

**Why it must be a boundary**: per repo contract, no agent's self-report ("I tested it and
it works") is allowed to move a wall's LEDGER status — only this script's exit behavior
and literal `PASS`/`FAIL` output is authoritative. It is also the only place that
re-verifies the build/deploy chain (boundary f) actually reached the board bit-for-bit
before trusting anything the board says.

**Explicit?** Yes — this is the most explicit boundary in the system: a single script,
version-controlled, with a literal machine-checkable contract (hash equality + fixed grep
patterns + fixed exit codes) and a written policy in `AGENTS.md` making it the *only*
legitimate way to flip LEDGER state.

**Risk (low, by design — but note one gap)**: the grep-pattern contract
(`'nativeSet=ok ck=2'`, `'wabAttr=0x7f040691'`, `'uamHasWab=true'`) is duplicated
knowledge — the same literal strings must be produced by hand-formatted C/Java code
elsewhere (boundaries c/d) with no shared constant, so a rename on either side is a silent
false-`FAIL` (safe direction) or, in the worse case, a coincidental string collision could
false-`PASS` (the script does a substring `grep`, not an anchored/structured parse, so
e.g. any other line in the 4.7MB captured log that happens to contain `uamHasWab=true` as
a substring — including from a stale un-cleared heartbeat file, see boundary c — would
satisfy that criterion regardless of which run produced it).

## (h) Sidecar → secondary native libraries (`libandroidfw.so`, `libsqlite_jni.so`, heavy-bridge)

**Concrete interface**: beyond the primary `libwestlake_art.so`/`liboh_android_runtime.so`
pair (boundary b), the probe process loads further native libraries at different times
via different call sites:
- Java-side `System.load(".../android/lib64/libandroidfw.so")` (`Dayu600ApkStageProbe.java:1569,
  2003`) — deliberately timed *after* forcing `XmlBlock`/`StringBlock` `<clinit>` so an
  OHOS-adapter ("OHBridge") native registration happens first and this load's JNI_OnLoad
  "wins" by re-registering on top (explicit comment, `:1562-1563`) — i.e. **registration
  order is itself part of the contract**, not just presence of the library.
- Java-side `System.load(rootPath() + "/android/lib64/libsqlite_jni.so")`
  (`:2709`).
- Native-side conditional `dlopen` of a "heavy bridge" library
  (`libwestlake_dayu600_bridge_heavy.so`), gated by `WESTLAKE_LOAD_HEAVY_BRIDGE=1` and a
  configurable timing (`WESTLAKE_HEAVY_BRIDGE_TIMING`, default `"afterStage"`) env var
  (`load_heavy_bridge_if_requested`, `:997-1027`).

**Why it must be a boundary**: OpenHarmony's own android-runtime adapter registers some of
the same native methods this project needs registered differently (or with the real
upstream implementation vs. a stub); layering requires explicit, order-sensitive
re-registration.

**Explicit?** Partially. The *intent* is documented in a comment, but the mechanism
("whichever native registration runs last wins") is an implicit property of the
JNI/ART native-method table (last `RegisterNatives`/`Java_*`-symbol-resolution call for a
given method silently overwrites the prior binding) rather than anything JNI or Android
guarantees as stable behavior to depend on.

**Risk**: order-dependent registration is inherently fragile — any change to
initialization order elsewhere (e.g. a future refactor that constructs `Resources`,
which itself triggers class init and possibly library loads, earlier than today) can
silently flip which implementation "wins" for a given native method, with no error, just
different runtime behavior.

## (i) Java probe → smali-generated `WlPackageManager` / `WlPmHelper`

**Concrete interface**: `ProbeContext.getPackageManager()` resolves
`Class.forName("WlPackageManager", true, getClass().getClassLoader())` and instantiates it
reflectively (`Dayu600ApkStageProbe.java:332-343`). `WlPackageManager` is described in
comments as "smali-generated" (implementing ~179 abstract `PackageManager` methods) and
"delegates to `WlPmHelper`" — **neither class is defined in this Java source file**; they
are generated/assembled elsewhere (smali/baksmali toolchain) and are referenced here only
by string class name, with no compile-time type, no shared interface file, and no
build-graph dependency visible in this file.

**Why it must be a boundary**: `PackageManager` is an abstract class with a large method
surface; hand-writing a concrete Java subclass with ~179 method stubs is impractical, so
the project generates one out-of-band and loads it purely by reflection/name at runtime.

**Explicit?** No. This is a **string-name interface** (`Class.forName("WlPackageManager",
...)`) with zero static verification that the class exists, implements
`android.content.pm.PackageManager`, or has a no-arg constructor — all three are assumed
and only surface as a runtime `Throwable` swallowed by the surrounding `catch (Throwable t)
{ /* leave null */ }` (`:339-340`), silently leaving `pm == null` rather than failing loud.

**Risk**: silent degradation — if the smali-generated class is missing, stale, or fails to
load for any reason (classpath ordering, verifier rejection, ABI mismatch with the
`PackageManager` abstract method set on this specific framework build),
`getPackageManager()` returns `null` with no diagnostic beyond whatever incidental
`WL_GPM_CALLS` counter exists, and every app code path that assumed a non-null
`PackageManager` degrades or NPEs somewhere downstream instead of at the point of failure.

## (j) `REPO_LOCK.toml` / `ARTIFACT-INVENTORY.txt` ↔ actually-deployed artifact bytes

**Concrete interface**: `REPO_LOCK.toml` records hand-maintained sha256 values for
generated binaries (e.g. `[artifacts.w001_oracle_checkpoint]`:
`device_launcher_sha256`, `apk_probe_dex_sha256`, `embedded_art_probe_sha256`), separate
from and *not read by* `oracle/verify/atom-43.sh`, which instead computes its own
local/remote hashes independently at run time.

**Why it must be a boundary**: large generated binaries are `.gitignore`d
(per `AGENTS.md`: "大型生成二进制不进 git...来源和 hash 记 `REPO_LOCK.toml`"), so
`REPO_LOCK.toml` is the only durable, version-controlled record of what a given commit's
artifacts were supposed to hash to.

**Explicit?** No. Nothing enforces that the sha256 values recorded in `REPO_LOCK.toml`
(a human-edited TOML file) match what `oracle/verify/atom-43.sh` actually computed on the
last PASS/FAIL run, or what's currently sitting in `test-fixtures/*/out/`. The two hash
records (`REPO_LOCK.toml`'s `w001_oracle_checkpoint` block and the evidence file's own
recorded hashes) already show **different DEX/sidecar hash values** for what is presumably
meant to be the same checkpoint lineage (`apk_probe_dex_sha256` differs between
`REPO_LOCK.toml:236` and `evidence/W-001/2026-07-10-vll-trampoline-advance.txt`'s
`dex_sha256`, since the evidence file predates or postdates a `REPO_LOCK.toml` update) —
i.e. this is a **documentation ledger, not an enforced contract**; only `atom-43.sh`'s
live comparison against the board is enforced.

**Risk**: a human (or agent) trusting `REPO_LOCK.toml` as ground truth for "what's
currently deployed" can be wrong — it only reflects whatever was last hand-copied into it,
with no automated sync from either the build output or the oracle's own hash
computations. This is a real, visible discrepancy already present in the repo (different
`apk_probe_dex_sha256` values in the two files noted above), not a hypothetical.

## (k) Shell launcher → sidecar constructor: environment-variable protocol

**Concrete interface**: `oracle/device/run-utd-w001.sh` configures the entire run purely
through `export`ed environment variables read back via `getenv()` in the sidecar's
`__attribute__((constructor))` init function and helper functions: `WESTLAKE_ROOT`,
`WESTLAKE_LAYOUT` (`"substrate"` string-compared, `westlake_uses_substrate_layout`,
`:536-540`), `WESTLAKE_OMIT_FRAMEWORK_SHIM` (`"1"` string-compared,
`westlake_uses_framework_shim`, `:542-546`), `WESTLAKE_INCLUDE_GAME_APK`,
`WESTLAKE_STAGE`, `WESTLAKE_NO_EXIT`, `WESTLAKE_DLOPEN_ON_LOAD`, `WESTLAKE_CREATE_VM`,
`WESTLAKE_LOAD_COMPAT_STUBS`, `WESTLAKE_LOAD_HEAVY_BRIDGE`,
`WESTLAKE_HEAVY_BRIDGE_TIMING`, `WESTLAKE_HEAVY_BRIDGE_PATH`, `WESTLAKE_TARGET`. These
flags fan out into structurally different bootclasspath/classpath strings
(`build_bootclasspath_option`, `build_classpath_value`) — i.e. **which framework jars and
dex files end up on the boot/app classpath is entirely a function of which env vars are
set**, not a single declared configuration.

**Why it must be a boundary**: the sidecar is a preloaded native library injected into a
process whose entry point (`toybox true`) is not the sidecar's own — the constructor has
no argv/CLI it controls, so environment variables are the only channel the launcher script
has to pass configuration into the sidecar before `main()` even runs.

**Explicit?** No. There is no schema, no enum validation, no "unknown/misspelled variable"
diagnostic — every flag is read with a bespoke `getenv()` + `streq()` check that silently
treats anything not exactly matching the expected value as "unset/false." E.g.
`westlake_uses_substrate_layout()` returns false (switching the *entire* bootclasspath
construction to the non-substrate branch, a structurally different set of jar paths) for
any value of `WESTLAKE_LAYOUT` other than the exact string `"substrate"` — a typo, wrong
casing, or trailing whitespace from a shell-quoting mistake silently reconfigures the
whole classpath rather than failing.

**Risk**: this is a classic **implicit stringly-typed config protocol** with no validation
layer — the launcher (`run-utd-w001.sh`) and the sidecar's `getenv()` call sites must agree
on ~13 variable names and their exact accepted string values purely by convention; nothing
catches drift between them at build or start time. Given that `atom-43.sh` hash-locks the
launcher script itself (boundary g), the *currently-tested* configuration is pinned, but
any manual `hdc shell` invocation with a hand-typed or slightly-different environment
(common during interactive debugging, as this repo's evidence trail shows happens
regularly) silently exercises a different code path with no warning that it has drifted
from the oracle-verified configuration.

## (l) thinker/worker/oracle roles ↔ shared filesystem state

**Concrete interface** (control-plane, not runtime, but a real communication boundary):
`state/` (facts, thinker-only write), `tasks/<card>.md` (task ownership, worker writes only
its own card), `evidence/<card>/` (worker-writable proof artifacts), `oracle/` (scripts —
the only writer of LEDGER truth), all coordinated by convention documented in `AGENTS.md`'s
"六条合同" (six contracts), not by filesystem permissions or any programmatic enforcement
in this review's read-only pass.

**Why it must be a boundary**: this project runs multiple independent, stateless CLI agent
invocations ("workers") plus a longer-lived "thinker" role across sessions with no shared
memory — the filesystem *is* the IPC mechanism between agent invocations, analogous to
boundary (c)'s heartbeat files but at the project-management layer instead of the
runtime layer.

**Explicit?** Yes as *written protocol* (`AGENTS.md`, `protocol/WORKER.md`,
`protocol/THINKER.md`), but **not machine-enforced** — nothing stops a worker process from
writing outside its assigned card, or a thinker session from hand-editing
`docs/dashboard/progress.html` (explicitly forbidden by `tasks/doing/W-001.md`'s own
"禁区" section: *"不把手改 `docs/dashboard/progress.html` 当进度"*), except discipline and
review.

**Risk**: same class of risk as every other filesystem-as-IPC boundary in this system
(c, j, k) — convention-enforced, not tool-enforced. Out of scope for a deeper writeup here
since the task's primary target is the runtime/build boundaries above, but worth naming
because it is architecturally the same *pattern* (untyped shared mutable file state as the
cross-component contract) repeated at a different layer of the system.

---

## Top 3 implicit/leaky-interface risks

1. **The dispatchable-shorty contract (boundary a) is a private, unpinned fact about a
   closed ART binary, discovered by grepping device logs, not by any spec in this repo.**
   `interpreter.cc:1189`'s exact handled-shorty set is not reproducible from source
   available here; the current fix (VLL trampoline) works only because it happens to share
   a shorty class with an already-proven-good method. Nothing prevents a regression the
   next time a native method with a different return type is added, and nothing detects it
   except a human reading device logs after a `FAIL`.

2. **Two live, un-synced hash ledgers for the same artifacts** (boundary j):
   `REPO_LOCK.toml`'s `w001_oracle_checkpoint` block and the evidence trail
   (`evidence/W-001/2026-07-10-vll-trampoline-advance.txt`) already record **different**
   sha256 values for what should be the same DEX/sidecar lineage, because `REPO_LOCK.toml`
   is hand-maintained and not read or written by `oracle/verify/atom-43.sh`. Only the
   oracle's own live hash comparison is enforced; the documentation ledger can silently
   drift and mislead anyone who trusts it as current.

3. **The dual-classloader / dual-class hazard (boundary e) is the project's current,
   unresolved frontier wall**, not a theoretical risk: `Resources()` construction is
   failing *right now* with `UnsatisfiedLinkError: android.os.Trace.nativeIsTagEnabled`
   because the early-oracle code path binds native methods to one `Trace` `Class` object
   while the framework's `Resources` constructor resolves a structurally different `Trace`
   `Class` object from a different loader. The general-purpose fix
   (`reregister_trace_via_assetmanager_loader`) exists in the sidecar but is not yet wired
   into the code path that needs it — meaning any other class resolved the "wrong" way
   (via plain `FindClass` instead of through the AssetManager's loader) is exposed to the
   same class of failure, and there is no structural guarantee (only ad hoc per-symptom
   patches) that all such call sites have been found.

Runner-up, worth tracking: the **heartbeat-file protocol (boundary c)** is append-only
with no per-run nonce and is matched by unanchored `grep -q` substring search
(boundary g) — the evidence trail already shows the same heartbeat file accumulating
`ck=2` from five separate retries in one run; a manual/uncleaned re-run outside
`atom-43.sh`'s `rm -f` step could produce a false PASS from stale content, or the current
literal-string coupling between C's hand-formatted heartbeat text and the oracle's grep
patterns could silently desync on either side's next edit.
