#!/bin/bash
# DEPLOY.sh — WestLake input-line deploy for DAYU600 board 5583f5be
# Board: 5583f5be (USB gadget must be enumerated on Mac side)
# Prerequisites: hdc connectivity + serial UART (/dev/cu.usbserial-AF95736F at 1.5M baud)
# Artifacts on build host:
#   /tmp/probe22.so            — 65504 bytes, md5 a6b9522a2f54f7044a2856a1146a9ff1
#   /tmp/ivs-final2.jar        — 7380 bytes, md5 e3d8fa011db26b32fb8982e8af4b50db
#   /tmp/libwestlake_input.so  — 36992 bytes, md5 4fdbd3e48aadeb01ba9ae52848f6b67f

set -e
HDC=${HDC:-/Users/yao/.local/openharmony-tools/bin/hdc}
BOARD=${1:-5583f5be}

echo "=== WestLake Input-Line Deploy ==="
echo "Target: $BOARD"

# --- Step 0: Verify board connectivity ---
echo "[0] Checking board connectivity..."
TARGETS=$($HDC list targets -v 2>&1 | grep -v "^$" | grep "$BOARD")
if echo "$TARGETS" | grep -q "Offline\|Unknown"; then
    echo "ERROR: Board $BOARD not online. Targets:"
    $HDC list targets -v
    exit 1
fi
if echo "$TARGETS" | grep -q "UART"; then
    echo "WARNING: Board in UART mode (USB gadget may not be fully up). Will try anyway."
fi
echo "Board appears online: $TARGETS"

# --- Step 1: Verify artifacts on build host ---
echo "[1] Verifying artifacts..."
ARTIFACTS=(
    "/tmp/probe22.so:65504:a6b9522a2f54f7044a2856a1146a9ff1"
    "/tmp/ivs-final2.jar:7380:e3d8fa011db26b32fb8982e8af4b50db"
    "/Users/yao/westlake-piercing/scratchpad-shared/wl-input-d/libwestlake_input.so:36992:4fdbd3e48aadeb01ba9ae52848f6b67f"
)
for a in "${ARTIFACTS[@]}"; do
    path=$(echo $a | cut -d: -f1)
    expected_size=$(echo $a | cut -d: -f2)
    expected_md5=$(echo $a | cut -d: -f3)
    if [ ! -f "$path" ]; then
        echo "ERROR: $path not found on build host"
        exit 1
    fi
    actual_size=$(wc -c < "$path")
    actual_md5=$(md5 -q "$path")
    if [ "$actual_size" != "$expected_size" ] || [ "$actual_md5" != "$expected_md5" ]; then
        echo "ERROR: $path MD5/size mismatch."
        echo "  Expected: $expected_size bytes, md5=$expected_md5"
        echo "  Actual:   $actual_size bytes, md5=$actual_md5"
        exit 1
    fi
    echo "  OK: $path ($actual_size bytes, md5=$actual_md5)"
done

# --- Step 2: Deploy artifacts to board ---
echo "[2] Deploying to board..."

# Deploy probe .so (the C dlopen probe with systemMain fallback)
$HDC file send /tmp/probe22.so /data/local/tmp/westlake_embedded_art_dlopen_probe.so
echo "  probe22.so deployed"

# Deploy IVS jar (4 classes: InputVerifyStage, WestlakeUpscreen, WestlakeTouchPump, WestlakeInputTestView)
$HDC file send /tmp/ivs-final2.jar /data/local/tmp/ivs-classes.jar
echo "  ivs-final2.jar deployed"

# Deploy libwestlake_input.so (native stubs + tap/text pollers)
# FIX BUG 1: Deploy to both paths for compatibility
$HDC file send /Users/yao/westlake-piercing/scratchpad-shared/wl-input-d/libwestlake_input.so /data/local/tmp/libwestlake_input.so
echo "  libwestlake_input.so deployed (primary path)"
$HDC file send /Users/yao/westlake-piercing/scratchpad-shared/wl-input-d/libwestlake_input.so /data/local/tmp/wl-input-d/libwestlake_input.so
echo "  libwestlake_input.so deployed (alt path)"

# --- Step 3: Check substrate framework ---
echo "[3] Checking substrate framework..."
SUBSTRATE_PATH="/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar"
if ! $HDC shell "ls -la $SUBSTRATE_PATH" 2>&1 | grep -q "framework.jar"; then
    echo "WARNING: $SUBSTRATE_PATH not found!"
    echo "Substrate may need redeployment."
    # List what's in /data/local/tmp/
    echo "Contents of /data/local/tmp/:"
    $HDC shell "ls -la /data/local/tmp/ 2>&1" | head -20
fi

# --- Step 4: Run IVS with -Ximage:none ---
echo "[4] Running InputVerifyStage with -Ximage:none..."
# NOTE: Must use -Ximage:none to skip boot image mismatch
DALVIKVM_CMD="/data/local/tmp/wl-imgboot/dalvikvm \
  -Ximage:none \
  -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
  -classpath /data/local/tmp/ivs-classes.jar \
  adapter.window.InputVerifyStage"

# Start hilog in background first
echo "[5] Starting hilog monitor..."
$HDC shell "hilog -w 4 2>/dev/null &" 2>/dev/null || true

# Run the IVS
echo "Executing dalvikvm command on board..."
$HDC shell "$DALVIKVM_CMD" 2>&1 &
DALVIKVM_PID=$!

# Wait for initial output
sleep 5

# Check for IVS markers
echo ""
echo "=== Checking for IVS markers ==="
$HDC shell "hilog 2>/dev/null | grep -E 'IVS|WLTEST|WLTEXT|systemMain|InjectTouch' | tail -30" 2>&1

# Also check for errors
echo ""
echo "=== Checking for errors ==="
$HDC shell "hilog 2>/dev/null | grep -iE 'error|exception|failed|crash|FATAL' | tail -10" 2>&1

echo ""
echo "=== Deploy complete ==="
echo "Dalogvm PID: $DALVIKVM_PID"
echo ""
echo "Expected logcat markers (hilog | grep -E 'IVS|WLTEST'):"
echo "  IVS stage begin          — harness started"
echo "  IVS test view created    — View created OK"
echo "  IVS looper ready         — Looper thread running"
echo "  IVS show ret=2           — shown on panel (ret=2 is 'on panel')"
echo "  IVS so loaded            — libwestlake_input.so loaded"
echo "  WLTEST touch DOWN        — touch DOWN event reached view"
echo "  WLTEST touch UP          — touch UP event reached view"
echo "  WLTEST CLICK             — click handler fired (full chain proven)"
echo ""
echo "=== Manual verification ==="
echo "hilog | grep -E 'IVS|WLTEST|WLTEXT|systemMain'"
echo ""
echo "=== To stop ==="
echo "kill $DALVIKVM_PID"
