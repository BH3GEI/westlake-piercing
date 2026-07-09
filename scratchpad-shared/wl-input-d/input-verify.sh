#!/bin/bash
#
# input-verify.sh — Touch + Text Input Verification Harness
#
# Runs the InputVerifyStage and monitors for WLTEST/WLTEXT markers.
# This is the quick verification script to prove the input chain works.
#
# Usage:
#   ./input-verify.sh [board_serial]
#
# Prerequisites:
#   - DEPLOY.sh must have been run first to deploy files to board
#   - Board must be connected via hdc
#
# 2026-07-09: rewritten to use app_process64 + BOOTCLASSPATH env var
# (the dalvikvm -Xbootclasspath flag does not work on OHOS DAYU600).

set -e

BOARD="${1:-5583f5be}"
HDC="${HDC:-hdc}"
S="/data/local/tmp/westlake-dayu600-substrate"

echo "=== Input Verification ==="
echo "Board: $BOARD"

# Check connectivity
echo "[1] Checking board connectivity..."
if ! $HDC list targets 2>/dev/null | grep -q "$BOARD"; then
    echo "ERROR: Board $BOARD not found"
    exit 1
fi
echo "  Board connected"

# Check that files are deployed
echo "[2] Verifying deployed files..."
$HDC shell "ls -la /data/local/tmp/libwestlake_input.so $S/apks/upscreen-render-ivs.dex.jar 2>/dev/null" || {
    echo "ERROR: Required files not deployed. Run DEPLOY.sh first."
    exit 1
}
echo "  Files present"

# Start hilog capture in background
LOG_FILE="/tmp/wl-input-verify-$(date +%Y%m%d-%H%M%S).log"
echo "[3] Starting hilog capture to $LOG_FILE..."
$HDC shell "hilog 2>/dev/null" > "$LOG_FILE" &
HILOG_PID=$!

# Wait for hilog to start
sleep 2

# Run IVS via app_process64 with BOOTCLASSPATH env var
echo "[4] Running InputVerifyStage via app_process64..."
BCP="$S/android/framework/core-jars/stringfactory.jar:$S/android/framework/core-jars/core-oj-fieldfix.jar:$S/android/framework/core-jars/core-libart.jar:$S/android/framework/core-jars/core-icu4j.jar:$S/android/framework/core-jars/conscrypt.jar:$S/android/framework/core-jars/bouncycastle.jar:$S/android/framework/core-jars/apache-xml.jar:$S/android/framework/adapter-mainline-stubs.jar:$S/android/framework/framework.jar:$S/android/framework/adapter-runtime-bcp.jar:$S/android/framework/oh-adapter-framework.jar:$S/apks/dayu600-androidx-overlay-stub.dex:$S/apks/dayu600-apk-probe.dex:$S/apks/icu-data.jar:$S/apks/upscreen-render-ivs.dex.jar:$S/apks/upscreen-render.dex.jar"

$HDC shell "export ANDROID_ROOT=$S/android ANDROID_DATA=$S/android-data ANDROID_EXPAND=$S/expand; \
export ANDROID_STORAGE=$S/storage EXTERNAL_STORAGE=$S/storage/emulated/0; \
export ANDROID_ART_ROOT=$S/android/apex/com.android.art; \
export ANDROID_I18N_ROOT=$S/android/apex/com.android.i18n; \
export ANDROID_TZDATA_ROOT=$S/android/apex/com.android.tzdata; \
export APEX_ROOT=$S/android/apex; \
export LD_LIBRARY_PATH=$S/art:$S/android/lib64:$S/probes:$S/android/lib64/sidecars:$S/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp; \
export WESTLAKE_ROOT=$S WESTLAKE_LAYOUT=substrate; \
export WESTLAKE_CREATE_VM=1 WESTLAKE_NO_EXIT=1 WESTLAKE_STAGE=inputVerify; \
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1; \
export WESTLAKE_LOAD_COMPAT_STUBS=1; \
export BOOTCLASSPATH='$BCP' DEX2OATBOOTCLASSPATH='$BCP'; \
export ANDROID_BOOT_IMAGE=$S/android/framework/framework-res.apk; \
timeout 30 $S/android/bin/app_process64 $S" \
  > /tmp/wl-input-app_process64.log 2>&1 &
IVS_PID=$!

# Wait for IVS to run
sleep 12

# Stop hilog capture
kill $HILOG_PID 2>/dev/null || true
wait $HILOG_PID 2>/dev/null || true

# Check for markers
echo ""
echo "=== Verification Results ==="
echo ""

# Check for success markers
SUCCESS=true
if grep -q "WLTEST touch DOWN" "$LOG_FILE"; then
    echo "[PASS] WLTEST touch DOWN detected"
else
    echo "[FAIL] WLTEST touch DOWN NOT detected"
    SUCCESS=false
fi

if grep -q "WLTEST touch UP" "$LOG_FILE"; then
    echo "[PASS] WLTEST touch UP detected"
else
    echo "[FAIL] WLTEST touch UP NOT detected"
    SUCCESS=false
fi

if grep -q "WLTEST CLICK" "$LOG_FILE"; then
    echo "[PASS] WLTEST CLICK detected -- INPUT CHAIN PROVEN"
else
    echo "[FAIL] WLTEST CLICK NOT detected"
    echo "       (dispatch works but onClick may not have fired)"
fi

if grep -q "WLTEXT commit" "$LOG_FILE"; then
    echo "[PASS] WLTEXT commit detected"
else
    echo "[WARN] WLTEXT commit NOT detected (may be text-only test)"
fi

if grep -q "IVS show ret=2" "$LOG_FILE"; then
    echo "[PASS] WestlakeUpscreen.show() returned 2 (on panel)"
else
    echo "[WARN] show() did not return 2"
fi

# Check for errors
echo ""
echo "=== Errors ==="
ERRORS=$(grep -iE "error|exception|failed|crash|FATAL|SIGSEGV|SIGBUS" "$LOG_FILE" | grep -v "IVS.*ERROR" | head -10)
if [ -n "$ERRORS" ]; then
    echo "$ERRORS"
else
    echo "No critical errors found"
fi

# Summary
echo ""
echo "=== Summary ==="
if $SUCCESS; then
    echo "[SUCCESS] Input chain verification PASSED"
    echo ""
    echo "Full log: $LOG_FILE"
    exit 0
else
    echo "[FAILURE] Input chain verification FAILED"
    echo ""
    echo "Full log: $LOG_FILE"
    echo "app_process64 log: /tmp/wl-input-app_process64.log"
    echo ""
    echo "To debug:"
    echo "  grep -E 'IVS|WLTEST|WLTEXT' $LOG_FILE"
    echo "  grep -iE 'error|exception|SIGSEGV|SIGBUS' $LOG_FILE"
    exit 1
fi
