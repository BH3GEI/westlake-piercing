#!/usr/bin/env bash
# Agent-Audio framework patch script for 64-bit / OHOS-6.1 / A16
# Applies gate 2 (AudioManager.requestAudioFocus -> return 1) and the 7-gap
# audio-init NPE crash-chain to framework.jar.
#
# Usage:
#   ./apply-framework-patches.sh /path/to/framework.jar   # local jar
#   ./apply-framework-patches.sh                          # pull from board via hdc
#
# Output: framework.patched.jar next to the input jar.
set -euo pipefail

JAVA_HOME="${JAVA_HOME:-/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home}"
PATH="$JAVA_HOME/bin:$PATH"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCHERS="$HERE/framework-smali/crashchain/patchers"
GATE2_PATCHER="$HERE/framework-smali/PatchReturnOne.java"
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
  [ -f "$j" ] || { echo "!! missing dexlib2 jar: $j (set ANDROID_SDK)" && exit 3; }
done

echo "[fw-patch] dexlib2 classpath ready"

BOARD_JAR="${BOARD_JAR:-/data/a64deploy/sysandroid/framework/framework.jar}"
EXPECT_MD5_PREFIX="${EXPECT_MD5_PREFIX:-8c377c13}"

WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
if [ "${1:-}" != "" ]; then
  IN_JAR="$1"
  echo "[fw-patch] using local jar: $IN_JAR"
else
  command -v hdc >/dev/null || { echo "!! hdc not found and no jar arg" && exit 4; }
  echo "[fw-patch] pulling $BOARD_JAR from board"
  hdc file recv "$BOARD_JAR" "$WORK/framework.jar"
  IN_JAR="$WORK/framework.jar"
fi
[ -f "$IN_JAR" ] || { echo "!! jar not found: $IN_JAR" && exit 4; }
GOT_MD5="$(md5 -q "$IN_JAR" 2>/dev/null || md5sum "$IN_JAR" | awk '{print $1}')"
echo "[fw-patch] jar md5 = $GOT_MD5 (expect $EXPECT_MD5_PREFIX*)"

OUT_JAR="$(cd "$(dirname "$IN_JAR")" && pwd)/framework.patched.jar"
cp "$IN_JAR" "$OUT_JAR"

# ---- compile patchers ----
echo "[fw-patch] compiling patchers"
rm -rf "$CLASSDIR"; mkdir -p "$CLASSDIR"
LOADLIB_PATCHER="$HERE/framework-smali/PatchLoadLibrary.java"
javac -cp "$CP" -d "$CLASSDIR" "$GATE2_PATCHER" "$LOADLIB_PATCHER" "$PATCHERS"/Patch*.java

# ---- extract dexes ----
DEXDIR="$WORK/dex"; mkdir -p "$DEXDIR"
( cd "$DEXDIR" && unzip -oq "$OUT_JAR" 'classes*.dex' )

# find which dex holds a class descriptor
dex_for() {
  local desc="$1"
  for d in "$DEXDIR"/classes*.dex; do
    [ -f "$d" ] || continue
    # list classes outputs one descriptor per line; require exact match so we find
    # the dex that DEFINES the class, not merely references it.
    if java -cp "$CP" com.android.tools.smali.baksmali.Main list classes "$d" 2>/dev/null | grep -Fx -q "$desc"; then
      echo "$d"; return 0
    fi
  done
  return 1
}

run_patcher() {
  local cls="$1"; shift
  local dex="$1"; shift
  local out="$dex.tmp"
  echo "[fw-patch] $cls on $(basename "$dex")"
  java -cp "$CP:$CLASSDIR" "$@" "$dex" "$out" && mv "$out" "$dex"
}

# ---- gate 2: AudioManager.requestAudioFocus ----
AUDIO_DEX="$(dex_for 'Landroid/media/AudioManager;')"
[ -n "$AUDIO_DEX" ] || { echo "!! AudioManager not found in any classes*.dex"; exit 5; }
echo "[fw-patch] gate2 AudioManager in $(basename "$AUDIO_DEX")"
java -cp "$CP:$CLASSDIR" PatchReturnOne "$AUDIO_DEX" "$AUDIO_DEX.patched" 'Landroid/media/AudioManager;|requestAudioFocus'
mv "$AUDIO_DEX.patched" "$AUDIO_DEX"

# ---- apply crash-chain patchers (function defined before use) ----
# apply each patcher; "patcher" is first extra arg, then its own args come after.
# All patchers take: in out [filter...] — dex/out go at the end, filter args in "$@".
patch_dex_with() {
  local dex="$1"; shift
  local cls="$1"; shift
  local out="$dex.p"
  echo "[fw-patch] $cls on $(basename "$dex")"
  local patcher="$1"; shift
  java -cp "$CP:$CLASSDIR" "$patcher" "$dex" "$out" "$@" && mv "$out" "$dex"
}

# ---- gate 1 loader: make every app process load liboh_inproc_service.so early ----
# The in-proc service binder needs to register before any app calls bindService.
# Patching ActivityThread.main to call System.loadLibrary("oh_inproc_service") at
# process start is the cleanest imageless hook.
AT_DEX="$(dex_for 'Landroid/app/ActivityThread;')"
[ -n "$AT_DEX" ] && patch_dex_with "$AT_DEX" "ActivityThread.main" PatchLoadLibrary \
  'Landroid/app/ActivityThread;|main|oh_inproc_service'

# ---- locate crash-chain dexes first (needed for derivation) ----
PI_DEX="$(dex_for 'Landroid/app/PendingIntent;')"
MS_DEX="$(dex_for 'Landroid/media/session/MediaSession;')"
APS_DEX="$(dex_for 'Landroid/media/audiopolicy/AudioProductStrategy;')"
AVG_DEX="$(dex_for 'Landroid/media/audiopolicy/AudioVolumeGroup;')"
DMG_DEX="$(dex_for 'Landroid/hardware/display/DisplayManagerGlobal;')"
MRS_DEX="$(dex_for 'Landroid/media/MediaRouter$Static;')"
SCM_DEX="$(dex_for 'Landroid/content/pm/ShortcutManager;')"
SSREG_DEX="$(dex_for 'Landroid/app/SystemServiceRegistry;')"

# ---- derive version-specific items from the real jar ----
echo "[fw-patch] deriving ShortcutManager fetcher ordinal..."
SC_FILE=""
if [ -n "$SSREG_DEX" ]; then
  BKSOUT="$WORK/baksmali"
  java -cp "$CP" com.android.tools.smali.baksmali.Main d -o "$BKSOUT" "$SSREG_DEX" 2>/dev/null || true
  if [ -d "$BKSOUT/android/app" ]; then
    SC_FILE="$(grep -rl 'createService(Landroid/app/ContextImpl;)Landroid/content/pm/ShortcutManager;' "$BKSOUT/android/app" 2>/dev/null | head -1 || true)"
  fi
fi
if [ -n "$SC_FILE" ]; then
  SC_CLASS="Landroid/app/$(basename "$SC_FILE" .smali);"
  echo "[fw-patch] ShortcutManager fetcher class = $SC_CLASS"
  # PatchS88 reads its target class from a constant C; easiest is to rewrite the source and recompile
  sed -e "s|C = \"Landroid/app/SystemServiceRegistry\\\$88;\"|C = \"$SC_CLASS\"|" "$PATCHERS/PatchS88.java" > "$WORK/PatchS88.java"
  javac -cp "$CP" -d "$CLASSDIR" "$WORK/PatchS88.java"
else
  echo "[fw-patch] WARN: could not derive ShortcutManager fetcher ordinal; PatchS88 may miss"
fi

# ---- apply crash-chain patchers ----
[ -n "$PI_DEX" ]   && patch_dex_with "$PI_DEX"  "PendingIntent"      PatchPI
[ -n "$MS_DEX" ]   && patch_dex_with "$MS_DEX"  "MediaSession"       PatchMS
[ -n "$APS_DEX" ]  && patch_dex_with "$APS_DEX" "AudioProductStrategy" PatchEmptyList \
  'Landroid/media/audiopolicy/AudioProductStrategy;|initializeAudioProductStrategies'
[ -n "$AVG_DEX" ]  && patch_dex_with "$AVG_DEX" "AudioVolumeGroup"   PatchEmptyList \
  'Landroid/media/audiopolicy/AudioVolumeGroup;|initializeAudioVolumeGroups'
[ -n "$DMG_DEX" ]  && patch_dex_with "$DMG_DEX" "DisplayManagerGlobal" PatchReturnNew \
  'Landroid/hardware/display/DisplayManagerGlobal;|getWifiDisplayStatus|Landroid/hardware/display/WifiDisplayStatus;'
[ -n "$MRS_DEX" ]  && patch_dex_with "$MRS_DEX" "MediaRouter\$Static" PatchProxy \
  'Landroid/media/MediaRouter$Static;|<init>|Landroid/media/IMediaRouterService$Stub;|Landroid/media/IMediaRouterService;'

# ShortcutManager: both methods
if [ -n "$SCM_DEX" ]; then
  patch_dex_with "$SCM_DEX" "ShortcutManager" PatchEmptyList \
    'Landroid/content/pm/ShortcutManager;|getDynamicShortcuts' \
    'Landroid/content/pm/ShortcutManager;|getManifestShortcuts'
fi

# SystemServiceRegistry fetcher (only if we derived it)
if [ -n "$SSREG_DEX" ] && [ -n "$SC_FILE" ]; then
  patch_dex_with "$SSREG_DEX" "SystemServiceRegistry\$NN" PatchS88
fi

# ---- repackage ----
echo "[fw-patch] repackaging patched dex entries into $OUT_JAR"
( cd "$DEXDIR" && zip -X -q "$OUT_JAR" classes*.dex )

echo "[fw-patch] DONE -> $OUT_JAR"
echo "[fw-patch] deploy: hdc file send $OUT_JAR $BOARD_JAR (remount /system rw first)"
