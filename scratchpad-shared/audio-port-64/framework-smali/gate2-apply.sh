#!/usr/bin/env bash
# ============================================================================
# GATE 2 (audio focus) apply script  --  WestLake 64-bit / OHOS-6.1 / A16
# ----------------------------------------------------------------------------
# Rewrites EVERY int-returning overload of
#     android.media.AudioManager.requestAudioFocus(...)
# to `const/4 v0,1 ; return v0`  (return AUDIOFOCUS_REQUEST_GRANTED = 1)
# using the A2OH dexlib2 patcher PatchReturnOne.java, then rebuilds
# framework.jar in place.
#
# IMAGELESS DEPLOY (confirmed for our big board 5ce2dcee):
#   The A2OH 32-bit recipe regenerated the boot image with dex2oat after
#   patching framework's classesN.dex. OUR big board runs an IMAGELESS ART
#   substrate (project memory: "big board is imageless (no dex2oat needed) --
#   patched framework dex loads directly"). Therefore the dex2oat / boot-image
#   regen step DOES NOT APPLY to us. We simply replace the classesN.dex inside
#   framework.jar and push framework.jar back; ART loads the patched dex on the
#   next process spawn. No dex2oat64, no .art/.oat/.vdex regeneration.
#
# Usage:
#   ./gate2-apply.sh /path/to/framework.jar        # operate on a local jar (preferred; board offline)
#   ./gate2-apply.sh                                # pull from board via hdc (needs board online)
#
# Output: <same dir>/framework.patched.jar  (+ keeps original untouched)
# ============================================================================
set -euo pipefail

# ---- toolchain ------------------------------------------------------------
# Homebrew openjdk is UNLINKED; point JAVA_HOME at it and prepend to PATH so
# that d8 / java / javac all resolve. (java alone at /opt/homebrew/opt/openjdk/bin/java)
export JAVA_HOME="${JAVA_HOME:-/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home}"
export PATH="$JAVA_HOME/bin:$PATH"
JAVA="$JAVA_HOME/bin/java"
JAVAC="$JAVA_HOME/bin/javac"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCHER_SRC="$HERE/PatchReturnOne.java"          # staged next to this script
PATCHER_CLASSDIR="$HERE/.classes"                # compiled .class output

# ---- dexlib2 classpath ----------------------------------------------------
# classpath.txt (A2OH canonical, version 3.0.3) references, in order:
#   smali-dexlib2-3.0.3.jar : smali-baksmali-3.0.3.jar : smali-util-3.0.3.jar
#   : guava-31.1-jre.jar : jcommander-1.78.jar
# Locally installed under the Android cmdline-tools are 3.0.9 / guava-33.3.1-jre
# / jcommander-1.78 -- auto-detected below (newest wins) so version drift is a
# non-issue. Override ANDROID_SDK to relocate.
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
DEXLIB2_CP="$DEXLIB2_JAR:$BAKSMALI_JAR:$UTIL_JAR:$GUAVA_JAR:$JCMDR_JAR"

for j in "$DEXLIB2_JAR" "$BAKSMALI_JAR" "$UTIL_JAR" "$GUAVA_JAR" "$JCMDR_JAR"; do
  [ -f "$j" ] || { echo "!! missing dexlib2 jar (set ANDROID_SDK): $j" >&2; exit 3; }
done
echo "[gate2] dexlib2 classpath:"
echo "        $DEXLIB2_CP" | tr ':' '\n' | sed 's/^/          /'

# ---- 0) get framework.jar -------------------------------------------------
# Board reality (project memory Agent-F): arm64 payload lives at
#   /data/a64deploy/sysandroid  -> framework.jar under its framework/ dir.
# Expected md5 of the A16 framework.jar: 8c377c13...  (BAKLAVA / Android 16).
BOARD_JAR="${BOARD_JAR:-/data/a64deploy/sysandroid/framework/framework.jar}"
EXPECT_MD5_PREFIX="${EXPECT_MD5_PREFIX:-8c377c13}"

WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
if [ "${1:-}" != "" ]; then
  IN_JAR="$1"
  echo "[gate2] using local framework.jar: $IN_JAR"
else
  echo "[gate2] no jar arg -> pulling from board via hdc: $BOARD_JAR"
  command -v hdc >/dev/null || { echo "!! hdc not found and no jar arg given" >&2; exit 4; }
  hdc file recv "$BOARD_JAR" "$WORK/framework.jar"
  IN_JAR="$WORK/framework.jar"
fi
[ -f "$IN_JAR" ] || { echo "!! framework.jar not found: $IN_JAR" >&2; exit 4; }

GOT_MD5="$(md5 -q "$IN_JAR" 2>/dev/null || md5sum "$IN_JAR" | awk '{print $1}')"
echo "[gate2] framework.jar md5 = $GOT_MD5  (expect prefix $EXPECT_MD5_PREFIX)"
case "$GOT_MD5" in
  "$EXPECT_MD5_PREFIX"*) echo "[gate2] md5 prefix MATCHES expected A16 framework.jar" ;;
  *) echo "[gate2] WARN: md5 prefix mismatch -- confirm this is the A16 (8c377c13) jar" ;;
esac

OUT_JAR="$(cd "$(dirname "$IN_JAR")" && pwd)/framework.patched.jar"
cp "$IN_JAR" "$OUT_JAR"

# ---- 1) compile the patcher ----------------------------------------------
echo "[gate2] compiling PatchReturnOne.java"
rm -rf "$PATCHER_CLASSDIR"; mkdir -p "$PATCHER_CLASSDIR"
# --- exact javac line ---
"$JAVAC" -cp "$DEXLIB2_CP" -d "$PATCHER_CLASSDIR" "$PATCHER_SRC"

# ---- 2) unzip + locate the classesN.dex holding android/media/AudioManager
echo "[gate2] extracting dex entries"
DEXDIR="$WORK/dex"; mkdir -p "$DEXDIR"
( cd "$DEXDIR" && unzip -oq "$OUT_JAR" 'classes*.dex' )

TARGET_DEX=""
for d in "$DEXDIR"/classes*.dex; do
  [ -f "$d" ] || continue
  # class descriptor string lives in the dex string pool; grep the raw bytes.
  if grep -l -a 'Landroid/media/AudioManager;' "$d" >/dev/null 2>&1; then
    TARGET_DEX="$d"; break
  fi
done
[ -n "$TARGET_DEX" ] || { echo "!! no classesN.dex contains android/media/AudioManager" >&2; exit 5; }
DEX_NAME="$(basename "$TARGET_DEX")"
echo "[gate2] AudioManager lives in: $DEX_NAME"

# ---- 3) run the patcher (const/4 v0,1 ; return v0 on every int overload) ---
echo "[gate2] patching requestAudioFocus overloads"
"$JAVA" -cp "$DEXLIB2_CP:$PATCHER_CLASSDIR" PatchReturnOne \
    "$TARGET_DEX" "$TARGET_DEX.patched" \
    'Landroid/media/AudioManager;|requestAudioFocus'
mv "$TARGET_DEX.patched" "$TARGET_DEX"

# ---- 4) rebuild framework.jar (replace the single dex entry in place) ------
# `zip archive entry` replaces just that entry; every other class stays intact.
echo "[gate2] rebuilding $DEX_NAME into framework.patched.jar"
( cd "$DEXDIR" && zip -X -q "$OUT_JAR" "$DEX_NAME" )

echo
echo "[gate2] DONE -> $OUT_JAR"
echo
echo "==================== IMAGELESS DEPLOY (no dex2oat) ===================="
echo "  Our big board (5ce2dcee) runs an imageless ART substrate: the patched"
echo "  framework dex loads directly, so there is NO boot-image regen step."
echo "  Push the patched jar back and relaunch -- do NOT run dex2oat64:"
echo
echo "    hdc shell mount -o rw,remount /   # if the target path is read-only"
echo "    hdc file send $OUT_JAR $BOARD_JAR"
echo "    # (optionally) clear any stale oat/vdex sidecars if present:"
echo "    hdc shell 'rm -f ${BOARD_JAR%.jar}.oat ${BOARD_JAR%.jar}.vdex 2>/dev/null || true'"
echo "    # relaunch the target app / restart the ART app process; framework"
echo "    # dex is re-read on next spawn. NO dex2oat, NO .art regeneration."
echo "======================================================================"
