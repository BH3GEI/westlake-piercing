#!/usr/bin/env bash
# Agent-Audio arm64 deploy script
# Pushes the 4 native audio gates to a 64-bit OHOS board and runs toneplayer.
# Usage: ./deploy-audio-arm64.sh [hdc-target]
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-}"
HDC="hdc${TARGET:+ -t $TARGET}"

echo "[audio-deploy] target=$TARGET"

# Paths on the 64-bit board. The arm64 payload is bind-mounted from
# /data/a64deploy/sysandroid -> /system/android/; pushing into /system/android/lib64
# is the visible runtime path.
SYS_ANDROID_LIB64="/system/android/lib64"
SYSTEM_LIB64="/system/lib64"

copy_to() {
  local src="$1" dst="$2"
  echo "[audio-deploy] push $src -> $dst"
  $HDC shell "mount -o rw,remount /system 2>/dev/null || mount -o rw,remount /"
  $HDC file send "$src" "$dst"
}

# Gate 3 stub
# libmedia_jni.so must be visible to System.loadLibrary("media_jni") from both
# /system/lib64 and the android bind-mount.
copy_to "$HERE/media-jni-stub/libmedia_jni.so" "$SYSTEM_LIB64/libmedia_jni.so"
copy_to "$HERE/media-jni-stub/libmedia_jni.so" "$SYS_ANDROID_LIB64/libmedia_jni.so"

# Gate 4/5 async bridge (dlopened by the stub; prefer android lib path)
copy_to "$HERE/mediacodec-shim/liboh_mediacodec_shim.so" "$SYS_ANDROID_LIB64/liboh_mediacodec_shim.so"
copy_to "$HERE/mediacodec-shim/liboh_mediacodec_shim.so" "$SYSTEM_LIB64/liboh_mediacodec_shim.so"

# Gate 1 in-proc service (standalone .so fallback; primary integration is .o into adapter)
copy_to "$HERE/inproc-service/liboh_inproc_service.so" "$SYS_ANDROID_LIB64/liboh_inproc_service.so"

# Diagnostic deathcatch (optional)
copy_to "$HERE/toneplayer/libdeathcatch.so" "$SYS_ANDROID_LIB64/libdeathcatch.so"

# Toneplayer validation binary
copy_to "$HERE/toneplayer/toneplayer_arm64" "/data/local/tmp/toneplayer_arm64"
$HDC shell chmod +x /data/local/tmp/toneplayer_arm64

echo "[audio-deploy] running toneplayer_arm64 on device..."
$HDC shell "/data/local/tmp/toneplayer_arm64" || true

echo "[audio-deploy] done. If toneplayer reports rc=0 and no abort, audio backend is alive."
echo "[audio-deploy] next: apply framework patches, install noice, tap play, send VOLUME_UP."
