#!/usr/bin/env bash
# libandroidfw bring-up for DAYU600 (aarch64-linux-ohos) — real AssetManager/Resources.
# First foundation stone of the real-framework path (real DecorView needs this).
#
# STATUS (2026-07-05): ALL 21 androidfw core TUs COMPILE (OHOS libc++ compat done).
# NEXT: build core/jni/android_util_AssetManager.cpp, compile dep libs
# (libbase/libutils/libziparchive/libcutils) to LINK libandroidfw.so, register the
# AssetManager natives in the runtime, re-run the assetProbe stage.
#
# FETCH METHOD: googlesource GIT is blocked but HTTP ?format=TEXT (base64) works;
# github (push + aosp-mirror sparse clone) works.
set -euo pipefail
A2OH="${A2OH:-/Users/yao/a2oh-source-audit}"; L="${L:-/Users/yao/westlake-local-build}"
S15="$A2OH/aosp-15-src"; FW="$L/aosp-fb-androidfw"; PY=/opt/homebrew/bin/python3
CXX="$A2OH/ohos-sdk/native/llvm/bin/clang++"; SYSROOT="$A2OH/ohos-sdk/native/sysroot"
COMPAT=/Users/yao/westlake-piercing/ports/dayu600/include
OBJ="$L/androidfw-build/obj"; mkdir -p "$OBJ"
ag(){ curl -s -m 25 -o /tmp/ag.raw "https://android.googlesource.com/platform/$1/+/refs/tags/android-15.0.0_r9/$2?format=TEXT" 2>/dev/null
      "$PY" -c "import base64;open('$3','wb').write(base64.b64decode(open('/tmp/ag.raw','rb').read()))" 2>/dev/null && [ -s "$3" ] && echo "  ✓ $3"; }

echo "== [0] source: androidfw (github aosp-mirror sparse) + fetched header deps =="
# git clone --filter=blob:none --sparse --depth 1 --branch android-15.0.0_r9 \
#   https://github.com/aosp-mirror/platform_frameworks_base $FW ; (cd $FW && git sparse-checkout set libs/androidfw core/jni)
mkdir -p "$L/incfs-stub/util" "$L/incfs-stub/incfs" "$L/ndk-stub/android" "$L/fmt-15/fmt" \
         "$L/ftl-15/ftl/details" "$L/zip-15/ziparchive" "$L/binder-stub/binder"
[ -f "$L/incfs-stub/util/map_ptr.h" ] || ag system/incremental_delivery incfs/util/include/util/map_ptr.h "$L/incfs-stub/util/map_ptr.h"
[ -f "$L/ndk-stub/android/configuration.h" ] || ag frameworks/native include/android/configuration.h "$L/ndk-stub/android/configuration.h"
for h in args chrono color compile core format format-inl os ostream printf ranges std xchar; do
  [ -f "$L/fmt-15/fmt/$h.h" ] || ag external/fmtlib include/fmt/$h.h "$L/fmt-15/fmt/$h.h"; done
for h in small_vector.h static_vector.h initializer_list.h small_map.h details/array_traits.h details/type_traits.h; do
  [ -f "$L/ftl-15/ftl/$h" ] || ag frameworks/native include/ftl/$h "$L/ftl-15/ftl/$h"; done
for h in zip_archive.h zip_archive_stream_entry.h; do
  [ -f "$L/zip-15/ziparchive/$h" ] || ag system/libziparchive include/ziparchive/$h "$L/zip-15/ziparchive/$h"; done
# android/asset_manager.h (opaque stub) + binder/TextOutput.h (no-op stub) live in this repo (stubs/).
cp -n "$(dirname "$0")/stubs/android/asset_manager.h" "$L/ndk-stub/android/" 2>/dev/null || true
cp -n "$(dirname "$0")/stubs/binder/TextOutput.h" "$L/binder-stub/binder/" 2>/dev/null || true

echo "== [1] OHOS libc++ COMPAT PATCHES on the fetched androidfw working copy =="
A2H="$FW/libs/androidfw/include/androidfw/AssetManager2.h"
CIH="$FW/libs/androidfw/include/androidfw/CombinedIterator.h"
ASC="$FW/libs/androidfw/Asset.cpp"; A2C="$FW/libs/androidfw/AssetManager2.cpp"
# (a) std::span lacks C++20 range ctor under OHOS libc++ -> construct explicitly
perl -0pi -e 's/return configurations_;/return std::span<const ResTable_config>(configurations_.begin(), configurations_.size());/ if /GetConfigurations/' "$A2H" 2>/dev/null || true
# (b) Theme::Entry: give a ctor (OHOS construct_at has no parenthesized-aggregate-init) + operator< (pair merge-sort)
grep -q 'Entry(ApkAssetsCookie c' "$A2C" || perl -0pi -e 's/(struct Theme::Entry \{\n  ApkAssetsCookie cookie;\n  uint32_t type_spec_flags;\n  Res_value value;\n)\};/$1  Entry() = default;\n  Entry(ApkAssetsCookie c, uint32_t f, const Res_value& v) : cookie(c), type_spec_flags(f), value(v) {}\n  bool operator<(const Entry& o) const { return cookie < o.cookie; }\n};/s' "$A2C"
# (c) CombinedIterator: add rvalue-ref swap overload (iter_swap passes operator* prvalue proxies)
grep -q 'swap(RefPair&& l' "$CIH" || perl -0pi -e 's/(  friend void swap\(RefPair& l, RefPair& r\) \{\n    using std::swap;\n    swap\(l.first, r.first\);\n    swap\(l.second, r.second\);\n  \}\n)/$1  friend void swap(RefPair&& l, RefPair&& r) { using std::swap; swap(l.first, r.first); swap(l.second, r.second); }\n/s' "$CIH"
# (d) Asset.cpp: OHOS NULL is 0L; IncFsFileMap has no !=long -> check unsafe_data()
perl -pi -e 's/assert\(dataMap != NULL\);/assert(dataMap.unsafe_data() != nullptr);/g' "$ASC"

echo "== [2] compile all 21 androidfw core TUs =="
INCS=(-I"$FW/libs/androidfw/include" -I"$FW/libs/androidfw/include_pathutils"
  -I"$S15/system/libbase/include" -I"$S15/system/core/libutils/include"
  -I"$S15/system/core/libcutils/include" -I"$S15/system/logging/liblog/include"
  -I"$L/aosp-android-11/system/core/libsystem/include" -I"$L/zip-15"
  -I"$L/aosp-android-11/system/core/libziparchive/include" -I"$L/binder-stub"
  -I"$L/incfs-stub" -I"$L/ndk-stub" -I"$L/fmt-15" -I"$L/ftl-15" -I"$SYSROOT/usr/include")
FLAGS=(--target=aarch64-linux-ohos --sysroot="$SYSROOT" -std=c++20 -O0 -fPIC -fno-exceptions
  -Wno-error -D__ANDROID__ -D__OHOS__ -D__ANDROID_API__=35 -include "$COMPAT/westlake_ohos_compat.h")
ok=0
for s in ApkAssets Asset AssetDir AssetManager AssetManager2 AssetsProvider AttributeResolution \
         ConfigDescription Idmap LoadedArsc Locale misc ResourceTypes StringPool ZipFileRO \
         ZipUtils ChunkIterator ApkParsing FileStream BigBuffer BigBufferStream; do
  [ -f "$FW/libs/androidfw/$s.cpp" ] || continue
  "$CXX" "${FLAGS[@]}" "${INCS[@]}" -c "$FW/libs/androidfw/$s.cpp" -o "$OBJ/$s.o" \
    && ok=$((ok+1)) || echo "  FAIL $s"
done
echo "compiled $ok/21"
echo "== NEXT: JNI (android_util_AssetManager.cpp) + dep libs (libbase/libutils/libziparchive) + link libandroidfw.so + register natives + assetProbe =="
