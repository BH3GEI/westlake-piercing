#!/usr/bin/env bash
# Verify every undefined dynamic symbol of the smoke binary is actually
# exported by the real device libraries (pulled from the 6.1 board) or by
# the platform libc/ldso. The header clones are 6.0-Release, so this is the
# guard against "links on host, fails to load on device".
set -euo pipefail

AUDIT=/Users/yao/a2oh-source-audit
NM="$AUDIT/ohos-sdk/native/llvm/bin/llvm-nm"
DEVICE_LIBS="$AUDIT/device-libs"
SYSROOT="$AUDIT/ohos-sdk/native/sysroot"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN="${1:-$HERE/../out/gfx-smoke/westlake_rs_smoke}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# 1. Undefined dynamic symbols of the binary (drop weak-undefined: the
#    loader tolerates unresolved weak symbols).
"$NM" -D --undefined-only "$BIN" | awk '$1 == "U" {print $2}' | sort -u > "$TMP/undef.txt"

# 2. Everything the device libs export.
for so in "$DEVICE_LIBS"/*.so; do
    "$NM" -D --defined-only "$so" 2>/dev/null | awk '{print $NF}'
done | sort -u > "$TMP/device.txt"

# 3. Everything platform libc (musl, includes dl*/pthread) exports.
#    The SDK sysroot libc.so tracks the device libc interface.
for so in "$SYSROOT/usr/lib/aarch64-linux-ohos/libc.so"; do
    "$NM" -D --defined-only "$so" 2>/dev/null | awk '{print $NF}'
done | sort -u > "$TMP/libc.txt"

MISSING="$(comm -23 "$TMP/undef.txt" <(sort -u "$TMP/device.txt" "$TMP/libc.txt"))"

echo "binary: $BIN"
echo "undefined dynamic symbols: $(wc -l < "$TMP/undef.txt" | tr -d ' ')"
if [ -n "$MISSING" ]; then
    echo "MISSING (not exported by device-libs nor libc):"
    echo "$MISSING" | sed 's/^/  /'
    exit 1
fi

# Extra sanity: no std::__n1 symbol may remain undefined (device libs only
# export std::__h; such a symbol would never bind on the board).
if grep -q '__n1' "$TMP/undef.txt"; then
    echo "MISSING: std::__n1 symbols still undefined:"
    grep '__n1' "$TMP/undef.txt" | sed 's/^/  /'
    exit 1
fi

echo "OK: all undefined symbols resolve against device-libs + libc"
