#!/usr/bin/env bash
# =============================================================================
# Re-link the DEPLOYED 3.5MB libandroidfw.so (obj/*.o + dep-obj/*.o + jni.o +
# stub + libz.a), after editing westlake_androidfw_dlopen_stubs.cpp to add
# __android_log_print. Recovered from Claude Code transcripts, exact recipe.
#
# WHAT PRODUCED THE DEPLOYED 3.5MB .so (jni.o + stub, stripped):
#   session 970210e5-...jsonl  line 11181  @ 2026-07-05T14:37:38Z (== 23:37 local)
#   That is the LAST main-.so link; it globs $DOBJ/*.o (which includes the
#   compiled stub, dep-obj/atrace_stub.o), adds jni.o + libz.a, then strips.
#   File mtime of the deployed libandroidfw.so + jni.o is Jul 5 23:37 local,
#   which is exactly 14:37Z at UTC+9 -> this IS the deployed build.
#
#   -------- ORIGINAL LINK COMMAND (verbatim, L11181) --------------------------
#   $CXX --target=aarch64-linux-ohos --sysroot=$SYSROOT -shared -fPIC -static-libstdc++ \
#     -Wl,--allow-shlib-undefined -Wl,--allow-multiple-definition -Wl,--export-dynamic \
#     -Wl,-soname,libandroidfw.so $OBJ/*.o $DOBJ/*.o $L/androidfw-build/jni.o $L/libz.a \
#     -o $OUT -ldl 2>&1 | grep -aiE 'error|undefined' | head -5
#   $STRIP --strip-all $OUT
#   ---------------------------------------------------------------------------
#
# THE STUB IS NOT A SEPARATE OBJECT ON THE LINK LINE.
#   westlake_androidfw_dlopen_stubs.cpp is the saved copy of the accumulated
#   /tmp/atrace_stub.cpp, and it was ALWAYS compiled to dep-obj/atrace_stub.o
#   and pulled in via $DOBJ/*.o. Verified: dep-obj/atrace_stub.o defines
#   atrace_*, ErrorCodeString, __android_log_* (all EXCEPT __android_log_print),
#   posix_strerror_r, LogdClose, native_handle_*. The deployed .so shows exactly
#   "U __android_log_print" -> that is the lone missing symbol you just added.
#   So: recompile the edited stub -> dep-obj/atrace_stub.o, then re-run the link.
#
#   -------- ORIGINAL STUB COMPILE COMMAND (verbatim, e.g. L9006) --------------
#   $CXX --target=aarch64-linux-ohos --sysroot="$SYSROOT" -O0 -fPIC -c \
#       /tmp/atrace_stub.cpp -o "$DOBJ/atrace_stub.o"
#   (no -std, no -I; stub only needs stdint/string/stdio/stdarg from sysroot)
#   ---------------------------------------------------------------------------
#
# jni.o does NOT need rebuilding (unchanged); we relink the existing 23:37 jni.o.
# =============================================================================
set -euo pipefail

A2OH=/Users/yao/a2oh-source-audit
L=/Users/yao/westlake-local-build
CXX=$A2OH/ohos-sdk/native/llvm/bin/clang++
SYSROOT=$A2OH/ohos-sdk/native/sysroot
STRIP=$A2OH/ohos-sdk/native/llvm/bin/llvm-strip
NM=$A2OH/ohos-sdk/native/llvm/bin/llvm-nm

OBJ=$L/androidfw-build/obj
DOBJ=$L/androidfw-build/dep-obj
JNI=$L/androidfw-build/jni.o
STUB_SRC=$L/androidfw-build/westlake_androidfw_dlopen_stubs.cpp
STUB_OBJ=$DOBJ/atrace_stub.o       # <-- the stub's object slot in the link glob
OUT=$L/androidfw-build/libandroidfw.so

# 1) Recompile the edited stub -> dep-obj/atrace_stub.o (exact original flags)
echo "== compiling stub -> $STUB_OBJ =="
$CXX --target=aarch64-linux-ohos --sysroot="$SYSROOT" -O0 -fPIC -c \
  "$STUB_SRC" -o "$STUB_OBJ"
echo "   __android_log_print now defined in stub object:"
"$NM" "$STUB_OBJ" | grep -a '__android_log_print$' || { echo "!! stub missing __android_log_print"; exit 1; }

# 2) Re-link with the EXACT deployed object set / flags / libs / soname, then strip
echo "== linking $OUT (obj + dep-obj + jni.o + libz.a) =="
$CXX --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared -fPIC -static-libstdc++ \
  -Wl,--allow-shlib-undefined -Wl,--allow-multiple-definition -Wl,--export-dynamic \
  -Wl,-soname,libandroidfw.so \
  "$OBJ"/*.o "$DOBJ"/*.o "$JNI" "$L/libz.a" \
  -o "$OUT" -ldl 2>&1 | grep -aiE 'error|undefined' | head -5 || true

$STRIP --strip-all "$OUT"
echo "== done: libandroidfw.so $(wc -c <"$OUT" | tr -d ' ') bytes =="

# 3) Sanity: __android_log_print must now be RESOLVED (no longer undefined)
echo "== remaining U __android_log_print (expect 0): =="
"$NM" -D -u "$OUT" 2>/dev/null | grep -ac '__android_log_print' || true
echo "== soname: =="
$A2OH/ohos-sdk/native/llvm/bin/llvm-readelf -d "$OUT" 2>/dev/null | grep -ai soname || true
