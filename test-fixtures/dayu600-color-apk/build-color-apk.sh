#!/usr/bin/env bash
# Build a minimal, real Android APK whose OWN code (ColorView.onDraw -> Canvas.drawColor)
# paints a cycling pure color. Packaged as a dex-bearing APK container (the DAYU600
# substrate loads APKs as dex containers; no aapt2/manifest/resources needed).
# Toolchain mirrors build-probe-mac.sh: brew openjdk + android-35 android.jar + d8 (r8.jar).
set -euo pipefail

JDK="${JDK:-/opt/homebrew/opt/openjdk/bin}"
SDK="${ANDROID_SDK:-$HOME/Library/Android/sdk}"
AJAR="$SDK/platforms/android-35/android.jar"
R8="$SDK/cmdline-tools/latest/lib/r8.jar"
D8=("$JDK/java" -cp "$R8" com.android.tools.r8.D8)

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$HERE/src"
OUT="$HERE/out"
export TZ=UTC

for f in "$AJAR" "$R8" "$JDK/javac"; do [ -e "$f" ] || { echo "missing: $f" >&2; exit 2; }; done

echo "== [1] javac (cp android.jar) =="
rm -rf "$OUT"; mkdir -p "$OUT/classes" "$OUT/dex"
"$JDK/javac" --release 8 -nowarn -cp "$AJAR" -d "$OUT/classes" $(find "$SRC" -name '*.java' | LC_ALL=C sort)
echo "   classes: $(find "$OUT/classes" -name '*.class' | wc -l | tr -d ' ')"

echo "== [2] d8 -> classes.dex =="
"${D8[@]}" --lib "$AJAR" --min-api 23 --output "$OUT/dex" $(find "$OUT/classes" -name '*.class' | LC_ALL=C sort)
# zip stores the input mtime even with -X; pin it so identical sources produce an
# identical APK hash across rebuilds (1980 is the earliest portable ZIP timestamp).
touch -t 198001010000 "$OUT/dex/classes.dex"
ls -la "$OUT/dex/classes.dex" | awk '{print "   dex:", $5, "bytes"}'

echo "== [3] zip -> color-smoke.apk (dex container) =="
( cd "$OUT/dex" && zip -q -X "$OUT/color-smoke.apk" classes.dex )
ls -la "$OUT/color-smoke.apk" | awk '{print "Built:", $NF, $5, "bytes"}'
shasum -a 256 "$OUT/color-smoke.apk" | awk '{print "sha256:", $1}'
