#!/bin/bash
# deploy-launcher-icon.sh — Deploy entry.hap + clear launcher cache on DAYU600
#
# Usage:
#   export PATH="$HOME/.local/openharmony-tools/bin:$PATH"
#   ./deploy-launcher-icon.sh <hap_path> <pkg_name> [board_serial]
#
# Examples:
#   ./deploy-launcher-icon.sh noice/entry.hap com.github.ashutoshgngwr.noice
#   ./deploy-launcher-icon.sh /tmp/com.example.myapp/entry.hap com.example.myapp 5583f5be
#
# Prerequisites:
#   - Board must be reachable via hdc
#   - appspawn-x should be up (or will be auto-started by the bringup script)
#   - BMS must have the app registered (bm install already run)

set -euo pipefail

HAP_PATH="${1:-}"
PKG="${2:-}"
BOARD="${3:-}"  # empty = first available board

if [[ -z "$HAP_PATH" || -z "$PKG" ]]; then
  echo "Usage: $0 <hap_path> <pkg_name> [board_serial]"
  echo "  hap_path: path to entry.hap or directory containing <pkg>/entry.hap"
  echo "  pkg_name: Android package name"
  echo "  board_serial: optional, defaults to first available"
  exit 1
fi

# Resolve hap path: if it's a directory, append /entry.hap
if [[ -d "$HAP_PATH" ]]; then
  HAP_PATH="$HAP_PATH/$PKG/entry.hap"
fi

if [[ ! -f "$HAP_PATH" ]]; then
  echo "ERROR: entry.hap not found: $HAP_PATH"
  exit 1
fi

HDC="${HDC:-$HOME/.local/openharmony-tools/bin/hdc}"

# Find board
if [[ -n "$BOARD" ]]; then
  TARGET="$BOARD"
else
  # Pick first online board that's NOT 5ce2dcee (B's exclusive board)
  TARGET=$($HDC shell 'for f in /dev/bus/usb/*/*; do echo $f; done' 2>/dev/null | head -1 || true)
  # Fallback: use hdc list targets
  TARGETS=$($HDC list targets 2>/dev/null | grep -v "^$" | grep -v "^Available" || true)
  TARGET=$(echo "$TARGETS" | grep -v "5ce2dcee" | head -1 | awk '{print $1}' || true)
  if [[ -z "$TARGET" ]]; then
    echo "ERROR: No available board found"
    exit 1
  fi
fi

echo "=== Deploying launcher icon ==="
echo "  Board: $TARGET"
echo "  Package: $PKG"
echo "  HAP: $HAP_PATH"

# Step 1: Create bundle directory
echo "[1/5] Creating bundle directory..."
$HDC -t "$TARGET" shell "mkdir -p /data/app/el1/bundle/public/$PKG" 2>/dev/null

# Step 2: Send entry.hap
echo "[2/5] Sending entry.hap..."
$HDC -t "$TARGET" file send "$HAP_PATH" /data/app/el1/bundle/public/$PKG/entry.hap 2>/dev/null

# Step 3: Set permissions (critical — BMS won't read it without correct context)
echo "[3/5] Setting permissions..."
$HDC -t "$TARGET" shell "chown installs:installs /data/app/el1/bundle/public/$PKG/entry.hap && \
  chmod 0644 /data/app/el1/bundle/public/$PKG/entry.hap && \
  chcon u:object_r:data_app_el1_file:s0 /data/app/el1/bundle/public/$PKG/entry.hap" 2>/dev/null

# Step 4: Clear launcher layout cache
echo "[4/5] Clearing launcher layout cache..."
$HDC -t "$TARGET" shell "rm -f /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db*" 2>/dev/null

# Step 5: Restart launcher
echo "[5/5] Restarting launcher..."
$HDC -t "$TARGET" shell "stop com.ohos.launcher && start com.ohos.launcher" 2>/dev/null

echo ""
echo "=== Done ==="
echo "The '$PKG' icon should appear in the launcher."
echo ""
echo "To verify:"
echo "  $HDC -t $TARGET shell 'hilog | grep -i launcher'"
echo "  $HDC -t $TARGET shell 'bm dump -n $PKG'"
echo ""
echo "Note: If icon doesn't appear, check:"
echo "  1. bm install succeeded (bundleType should be 10)"
echo "  2. entry.hap iconId matches ability's icon field (0x01000005)"
echo "  3. Run: $HDC -t $TARGET shell 'ls -la /data/app/el1/bundle/public/$PKG/'"
