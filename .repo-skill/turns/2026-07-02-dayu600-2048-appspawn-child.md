# 2026-07-02 DAYU600 2048 APK AppSpawnX app-child

## User Input

The user required running the real `C:\Users\ufop\Downloads\2048-2-9.apk` on the
DAYU600 / uis7885 OpenHarmony board through the A2OH/westlake-piercing port,
not a rewritten local clone.

## Agent Action

Added DAYU600-specific probe fixtures and pushed the current runtime test stack
to `/data/local/tmp/westlake-dayu600`:

- `test-fixtures/dayu600-apk-probe/`
- `test-fixtures/dayu600-framework-shim/`
- `test-fixtures/dayu600-androidx-overlay-stub/`
- `test-fixtures/dayu600-game-overlay-stub/`
- `test-fixtures/dayu600-appspawn-probe/`

Updated the local A2OH ART runtime candidate so standalone DAYU600 execution can
handle the app's primitive string route:

- fixed `String.valueOf(int)` / `Integer.toString(int)` in the interpreter path;
- kept `stringfactory.jar` first on the bootclasspath;
- staged `dalvikvm-dayu600-monitorfix` only under `/data/local/tmp`.

Built a temporary AppSpawnX probe that listens on `AppSpawnX`, receives the
`aa start` request for `com.digiplex.game`, loads embedded ART inside the forked
OHOS `m.digiplex.game` child, runs the real APK probe through
`Dayu600ApkStageProbe.embeddedMainNoExit`, and lets AMS complete the normal
ability transition.

## Code Delta

No legacy DAYU200/RK3568 32-bit binaries were deployed.

No stock `/system/bin/appspawn` replacement was performed.

The committed repo changes are source/scripts/docs only; generated `out/`
directories are ignored and rebuildable.

## Verification

Standalone 2048 APK probe:

```powershell
python .repo-skill\src\dot_runner.py dayu600-2048
```

The headless stage currently reports:

```text
stringValueOnly RC:0
intParse RC:0
prefsKTrace RC:0
privateR RC:0
onCreateNullTrace RC:0
onCreateManual RC:0
gameStateJson RC:0
gameMoveJson RC:0
```

The AppSpawnX app-child stage currently reaches:

```text
aa start -b com.digiplex.game -a com.digiplex.game.MainActivity -m entry
start ability successfully
AppSpawnX receives processName:com.digiplex.game
forked process is m.digiplex.game
embedded libwestlake_art.so creates the JVM
Dayu600ApkStageProbe.embeddedMainNoExit(onCreateNullTrace) returns RC:0
stock OHOS child reaches AbilityTransitionDone
WindowManager shows focused game0
```

## Next Agent Notes

This is not yet launcher-visible Android UI.

The next hard porting gap is an aarch64 DAYU600 adapter path that replaces the
current framework shim with the real Android framework/runtime bridge and
attaches Android `ViewRoot` / `Surface` rendering to the OHOS window. The current
app-child route proves the APK/runtime/request chain but does not render Android
views on screen.

`entry.hap` is also absent for `com.digiplex.game`; fixing it will improve
resources/icon/label, but it will not by itself make Android UI render.
