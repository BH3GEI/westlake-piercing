#!/usr/bin/env bash
# apply-criticalnative-patch.sh — Agent-C
# Strips @CriticalNative annotations from graphics native methods in framework.jar
# so that Agent-C's AOSP-15-r9 libhwui-adapter.so registration tables (plain JNI
# signatures) match the A16 Baklava framework.jar (md5 8c377c13).
#
# Without this patch, RegisterNatives fails to bind e.g. Paint.nSetFlags and ART
# falls back to Java_android_graphics_Paint_nSetFlags -> ULE.
#
# Usage:
#   ./apply-criticalnative-patch.sh [board-serial]
#   (serial defaults to 5583f5be; pulls framework.jar from board, patches, pushes back)
#
# Requires: hdc, java, dexlib2 + baksmali + guava + jcommander jars on classpath.
# The script auto-discovers them from ANDROID_SDK/cmdline-tools/latest/lib/external.
#
# NOTE: dexlib2 3.0.9 (shipped with current cmdline-tools) reads the A16 dex but
# writes dex version 041 on output. This has NOT been locally verified with
# baksmali 3.0.9 (which rejects 041), so you MUST verify the patched jar on device
# before treating it as good. If the device rejects dex.041, use smali/baksmali 4.x
# or run this script on a Linux host with a newer dexlib2.
set -euo pipefail

JAVA_HOME="${JAVA_HOME:-/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home}"
PATH="$JAVA_HOME/bin:$PATH"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
T="${1:-5583f5be00000000000000000323012c}"
BOARD_JAR="/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar"
CLASSDIR="$HERE/.patcher-classes"; mkdir -p "$CLASSDIR"

ANDROID_SDK="${ANDROID_SDK:-$HOME/Library/Android/sdk}"
SMALI_BASE="$ANDROID_SDK/cmdline-tools/latest/lib/external/com/android/tools/smali"
GUAVA_BASE="$ANDROID_SDK/cmdline-tools/latest/lib/external/com/google/guava/guava"
JCMDR_BASE="$ANDROID_SDK/cmdline-tools/latest/lib/external/com/beust/jcommander"

pick() { ls $1 2>/dev/null | sort -V | tail -1; }
DEXLIB2_JAR="$(pick "$SMALI_BASE/smali-dexlib2/*/smali-dexlib2-*.jar")"
BAKSMALI_JAR="$(pick "$SMALI_BASE/smali-baksmali/*/smali-baksmali-*.jar")"
UTIL_JAR="$(pick "$SMALI_BASE/smali-util/*/smali-util-*.jar")"
GUAVA_JAR="$(pick "$GUAVA_BASE/*/guava-*.jar")"
JCMDR_JAR="$(pick "$JCMDR_BASE/*/jcommander-*.jar")"
CP="$DEXLIB2_JAR:$BAKSMALI_JAR:$UTIL_JAR:$GUAVA_JAR:$JCMDR_JAR"
for j in "$DEXLIB2_JAR" "$BAKSMALI_JAR" "$UTIL_JAR" "$GUAVA_JAR" "$JCMDR_JAR"; do
  [ -f "$j" ] || { echo "!! missing jar: $j (set ANDROID_SDK)"; exit 3; }
done

HDC="${HDC:-$HOME/.local/openharmony-tools/bin/hdc}"
command -v "$HDC" >/dev/null || { echo "!! hdc not found: $HDC"; exit 4; }

WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT

echo "[crit-patch] pulling $BOARD_JAR from $T"
"$HDC" -t "$T" file recv "$BOARD_JAR" "$WORK/framework.jar"
GOT_MD5="$(md5 -q "$WORK/framework.jar" 2>/dev/null || md5sum "$WORK/framework.jar" | awk '{print $1}')"
echo "[crit-patch] jar md5 = $GOT_MD5 (expect 8c377c13*)"

OUT_JAR="$WORK/framework.criticalnative-stripped.jar"
cp "$WORK/framework.jar" "$OUT_JAR"

# compile patcher
rm -rf "$CLASSDIR"; mkdir -p "$CLASSDIR"
javac -cp "$CP" -d "$CLASSDIR" "$HERE/StripCriticalNative.java"

DEXDIR="$WORK/dex"; mkdir -p "$DEXDIR"
( cd "$DEXDIR" && unzip -oq "$OUT_JAR" 'classes*.dex' )

# graphics classes that contain @CriticalNative natives and are registered by libhwui.
# This list derived from framework.jar 8c377c13 grep -r CriticalNative android/graphics.
# --class-prefix strips the annotation from EVERY native method in those classes.
PREFIXES=(
  Landroid/graphics/
)

# Patch each dex independently. StripCriticalNative is a no-op if the dex has no
# matching annotations.
for d in "$DEXDIR"/classes*.dex; do
  out="$d.patched"
  args=()
  for p in "${PREFIXES[@]}"; do args+=(--class-prefix "$p"); done
  echo "[crit-patch] processing $(basename "$d")"
  java -cp "$CP:$CLASSDIR" StripCriticalNative "$d" "$out" "${args[@]}" || true
  if [ -f "$out" ]; then
    mv "$out" "$d"
  fi
done

echo "[crit-patch] repackaging"
( cd "$DEXDIR" && zip -X -q "$OUT_JAR" classes*.dex )

echo "[crit-patch] DONE -> $OUT_JAR"
echo "[crit-patch] deploy: $HDC -t $T file send $OUT_JAR $BOARD_JAR"
echo "[crit-patch] WARNING: verify on device before use; dexlib2 3.0.9 may output dex version 041."
