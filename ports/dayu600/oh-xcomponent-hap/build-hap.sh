#!/usr/bin/env bash
# build-hap.sh — headless (no DevEco, no hvigor) build of the OH-native
# XComponent GLES2 panel-rail smoke .hap. Runs ON the compiler (x86_64 Linux).
#
# Toolchain (all verified live 2026-07-12, task #14):
#   node        ~/.local/node/bin/node            (v20.18.1)
#   NDK clang   ~/ohos-sdk/native/llvm/bin/clang++ --target=aarch64-linux-ohos
#   ets-loader  ~/ohos-sdk-full/ets/build-tools/ets-loader   (main.js + embedded webpack)
#   restool     ~/ohos-sdk-full/toolchains/restool
#   pack/sign   ~/ohos-sdk-full/toolchains/lib/{app_packing_tool,hap-sign-tool}.jar
#   debug cert  ~/ohos-sdk-full/toolchains/lib/{OpenHarmony.p12,OpenHarmonyProfileDebug.pem}
#
# Pipeline: [1] libentry.so (native GL) → [2] modules.abc (ArkTS) →
#           [3] resources.index (restool) → [4] pack unsigned .hap → [5] sign.
# Then (off this box): hdc -t 5ce install → aa start → observe panel color sweep.
set -uo pipefail

PROJ="$(cd "$(dirname "$0")" && pwd)"
SDK_NDK="$HOME/ohos-sdk/native"
SDK_FULL="$HOME/ohos-sdk-full"
ETS_LOADER="$SDK_FULL/ets/build-tools/ets-loader"
TOOLS="$SDK_FULL/toolchains"
NODE="$HOME/.local/node/bin/node"
export PATH="$HOME/.local/node/bin:$PATH"

MOD_ROOT="$PROJ/entry/src/main"
OUT="$PROJ/build"; LOADER_OUT="$OUT/loader_out"; ASSETS="$OUT/assets"
BUNDLE="com.westlake.glxc"; MODULE="entry"
rm -rf "$OUT"; mkdir -p "$OUT" "$LOADER_OUT" "$ASSETS/$MODULE/ets" "$ASSETS/$MODULE/resources"

log(){ printf '\n\033[1;36m== %s ==\033[0m\n' "$*"; }

# ── [1] native GL .so (aarch64) ──────────────────────────────────────────────
log "[1] libentry.so (aarch64 GLES2 XComponent)"
CLANGXX="$SDK_NDK/llvm/bin/clang++"
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SDK_NDK/sysroot" \
  -std=c++17 -O2 -fPIC -shared \
  -I"$SDK_NDK/sysroot/usr/include" \
  "$MOD_ROOT/cpp/gl_xcomponent.cpp" \
  -lace_napi.z -lace_ndk.z -lEGL -lGLESv3 -lnative_window -lhilog_ndk.z -luv \
  -o "$ASSETS/$MODULE/libs/arm64-v8a/libentry.so" 2>&1 | tail -20 || true
mkdir -p "$ASSETS/$MODULE/libs/arm64-v8a"
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SDK_NDK/sysroot" \
  -std=c++17 -O2 -fPIC -shared -I"$SDK_NDK/sysroot/usr/include" \
  "$MOD_ROOT/cpp/gl_xcomponent.cpp" \
  -lace_napi.z -lace_ndk.z -lEGL -lGLESv3 -lnative_window -lhilog_ndk.z -luv \
  -o "$ASSETS/$MODULE/libs/arm64-v8a/libentry.so"
ls -l "$ASSETS/$MODULE/libs/arm64-v8a/libentry.so"

# ── module.json5 / app.json5 → strict json (they are already strict JSON) ─────
log "config json"
cp "$MOD_ROOT/module.json5" "$OUT/module.json"
cp "$PROJ/AppScope/app.json5" "$OUT/app.json"

# ── [2] ArkTS → modules.abc via ets-loader (main.js, env-driven) ─────────────
# NOTE(iterate): this stage is the one requiring live tuning of the ace-loader
# env vocabulary (confirmed keys: aceModuleRoot/aceModuleBuild/aceModuleJsonPath/
# aceProfilePath/aceSoPath/aceManifestPath/bundleType/compileMode/compileTool).
# First attempt below; adjust after reading main.js diagnostics on the box.
log "[2] ArkTS → abc (ets-loader main.js)"
export aceModuleRoot="$MOD_ROOT"
export aceModuleBuild="$LOADER_OUT"
export aceModuleJsonPath="$OUT/module.json"
export aceProfilePath="$MOD_ROOT/resources/base/profile"
export aceSoPath="$ASSETS/$MODULE/libs"
export appResource="$LOADER_OUT/ResourceTable.txt"
export cachePath="$OUT/.cache"
export projectPath="$PROJ"
export bundleName="$BUNDLE"
export compileMode="esmodule"
export compileTool="rollup"
export buildMode="debug"
export isPreview="false"
mkdir -p "$LOADER_OUT" "$OUT/.cache"
( cd "$ETS_LOADER" && "$NODE" main.js ) 2>&1 | tail -40 || \
  echo "!! ets-loader stage needs env tuning — inspect output above (iteration point)"
# expected: $LOADER_OUT/**/modules.abc  → copy to $ASSETS/$MODULE/ets/
find "$LOADER_OUT" -name "*.abc" -exec cp {} "$ASSETS/$MODULE/ets/" \; 2>/dev/null || true

# ── [3] resources → resources.index (restool) ────────────────────────────────
log "[3] restool"
"$TOOLS/restool" -i "$PROJ/AppScope/resources" -i "$MOD_ROOT/resources" \
  -j "$OUT/module.json" -p "$BUNDLE" \
  -o "$ASSETS/$MODULE" -r "$OUT/ResourceTable.txt" 2>&1 | tail -20 || \
  echo "!! restool args need tuning (iteration point)"

# ── [4] pack unsigned .hap ───────────────────────────────────────────────────
log "[4] app_packing_tool → unsigned .hap"
cp "$OUT/module.json" "$ASSETS/$MODULE/module.json"
java -jar "$TOOLS/lib/app_packing_tool.jar" --mode hap \
  --json-path "$ASSETS/$MODULE/module.json" \
  --resources-path "$ASSETS/$MODULE/resources" \
  --ets-path "$ASSETS/$MODULE/ets" \
  --lib-path "$ASSETS/$MODULE/libs" \
  --index-path "$ASSETS/$MODULE/resources.index" \
  --out-path "$OUT/glxc-unsigned.hap" --force true 2>&1 | tail -20 || \
  echo "!! packing args need tuning (iteration point)"

# ── [5] sign with SDK debug material ─────────────────────────────────────────
log "[5] hap-sign-tool → signed .hap"
java -jar "$TOOLS/lib/hap-sign-tool.jar" sign-app \
  -keyAlias "OpenHarmony Application Profile Release" \
  -signAlg "SHA256withECDSA" \
  -mode localSign \
  -appCertFile "$TOOLS/lib/OpenHarmonyApplication.pem" \
  -profileFile "$TOOLS/lib/OpenHarmonyProfileDebug.pem" \
  -inFile "$OUT/glxc-unsigned.hap" \
  -keystoreFile "$TOOLS/lib/OpenHarmony.p12" \
  -outFile "$OUT/glxc.hap" \
  -keyPwd "123456" -keystorePwd "123456" 2>&1 | tail -20 || \
  echo "!! signing params need tuning (cert alias/pwd) — inspect (iteration point)"

log "DONE"
ls -l "$OUT/"*.hap 2>/dev/null || echo "no .hap produced yet — see iteration points above"
