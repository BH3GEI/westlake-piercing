#!/usr/bin/env bash
# macOS port of build-probe.ps1 — builds dayu600-apk-probe.dex without WSL/Windows.
# Toolchain: brew openjdk (javac 21+/25), Android SDK android-35 android.jar, d8 via r8.jar.
# Also (re)builds the framework-shim out/classes used as the probe compile classpath.
set -euo pipefail

JDK="${JDK:-/opt/homebrew/opt/openjdk/bin}"
SDK="${ANDROID_SDK:-$HOME/Library/Android/sdk}"
AJAR="$SDK/platforms/android-35/android.jar"
R8="$SDK/cmdline-tools/latest/lib/r8.jar"
D8=("$JDK/java" -cp "$R8" com.android.tools.r8.D8)

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FIX="$(cd "$HERE/.." && pwd)"
FS="$FIX/dayu600-framework-shim"
PD="$HERE"

for f in "$AJAR" "$R8" "$JDK/javac"; do [ -e "$f" ] || { echo "missing: $f" >&2; exit 2; }; done

echo "== [1] framework-shim out/classes (probe compile classpath) =="
rm -rf "$FS/out"; mkdir -p "$FS/out/classes"
"$JDK/javac" --release 8 -nowarn -cp "$AJAR" -d "$FS/out/classes" $(find "$FS" -name '*.java')
echo "   shim classes: $(find "$FS/out/classes" -name '*.class' | wc -l | tr -d ' ')"

echo "== [2] compile probe (classpath = shim + android.jar) =="
rm -rf "$PD/out"; mkdir -p "$PD/out/classes" "$PD/out/dex"
"$JDK/javac" --release 8 -nowarn -cp "$FS/out/classes:$AJAR" -d "$PD/out/classes" $(find "$PD" -name '*.java')

echo "== [3] drop compileOnly app classes (real ones come from the APK at runtime) =="
rm -f "$PD/out/classes/com/digiplex/game/c.class" \
      "$PD/out/classes/com/digiplex/game/MainActivity.class"

echo "== [4] d8 -> dex =="
"${D8[@]}" --lib "$AJAR" --min-api 23 --output "$PD/out/dex" $(find "$PD/out/classes" -name '*.class') $(ls "$PD/wlpm/WlPackageManager.dex" 2>/dev/null) $(ls "$PD/wlams/WlActivityManagerService.dex" 2>/dev/null)
cp -f "$PD/out/dex/classes.dex" "$PD/out/dayu600-apk-probe.dex"
ls -la "$PD/out/dayu600-apk-probe.dex" | awk '{print "Built:", $NF, $5, "bytes"}'
