#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════════════
# regen-boot-arm64.sh — M3: 生成 DAYU600 arm64 boot image(route B / 我方自建同源)
#
# 由 ports/dayu600/scripts/{prepare-boot-workdir,run-host-boot-image-build}.ps1
# 合并、去 Windows/WSL 依赖,改为 Linux 编译机(compiler)直接可跑。
#
# 契约(observed,来自 docs/reference_boot_regen_cycle_2026-05-30.md +
# prepare-boot-workdir.ps1 + adapter-bootloop-wipe-recovery.md):
#   - dex2oat64 --instruction-set=arm64 --base=0x70000000 --compiler-filter=speed
#   - canonical 10-jar BCP 顺序必须 == launcher/appspawn-x kBootClasspath,否则加载即错位
#   - 产物 = 30 段:boot.{art,oat,vdex} + 9× boot-<jar>.{art,oat,vdex}
#   - ValidateOatFile checksum / vdex cdex 校验必须自洽(错配=SIGABRT/NoClassDefFound)
#
# 硬前置(M3 依赖,当前编译机上均缺,须先满足):
#   1) DEX2OAT64: host x86_64 二进制,交叉产 arm64 OAT。**必须与部署的 arm64 libart 同源
#      /同 OAT 版本**(route B 决策:用我方 v114 arm64 ART → 须用同源 v114 dex2oat)。
#      造法参照 local-build-adapters/art-latest/tools/relink-host-dex2oat.sh(需先全量编 host art)。
#   2) SUBSTRATE: 含 android/framework/{framework.jar, core-jars/*, adapter-*.jar} 的目录。
#      ⚠ 现有 workdir 的 framework.jar 是 **headless 占位**(prepare-boot-workdir.ps1 自述),
#      **证不了真 UI**;M9 需真 framework.jar(M0 框架版本决策 → M2 打补丁产出)。
#
# 用法:
#   DEX2OAT64=~/tools/dex2oat64 SUBSTRATE=~/b-route-stage/substrate \
#     bash regen-boot-arm64.sh [OUT_WORKDIR]
# ═══════════════════════════════════════════════════════════════════════════
set -euo pipefail

DEX2OAT64="${DEX2OAT64:-$HOME/tools/dex2oat64}"
SIGCHAIN="${SIGCHAIN:-$HOME/tools/lib64/libsigchain.so}"
SUBSTRATE="${SUBSTRATE:?set SUBSTRATE=<dir with android/framework/...>}"
OUT="${1:-$HOME/b-route-stage/boot-workdir}"
COMPILER_FILTER="${COMPILER_FILTER:-speed}"
BASE="${BASE:-0x70000000}"

FW="$SUBSTRATE/android/framework"
CORE="$FW/core-jars"

# canonical 10-jar boot 顺序(prepare-boot-workdir.ps1 jarPlan;dexLocation 用部署期路径)
#   name(workdir 内文件)              source(substrate 内来源)          dex-location(设备期)
JARS=(
  "core-oj.jar|$CORE/core-oj-fieldfix.jar|core-oj.jar"
  "core-libart.jar|$CORE/core-libart.jar|core-libart.jar"
  "core-icu4j.jar|$CORE/core-icu4j.jar|core-icu4j.jar"
  "okhttp.jar|$CORE/okhttp.jar|okhttp.jar"
  "bouncycastle.jar|$CORE/bouncycastle.jar|bouncycastle.jar"
  "apache-xml.jar|$CORE/apache-xml.jar|apache-xml.jar"
  "adapter-mainline-stubs.jar|$FW/adapter-mainline-stubs.jar|adapter-mainline-stubs.jar"
  "framework.jar|$FW/framework.jar|framework.jar"
  "adapter-runtime-bcp.jar|$FW/adapter-runtime-bcp.jar|adapter-runtime-bcp.jar"
  "oh-adapter-framework.jar|$FW/oh-adapter-framework.jar|oh-adapter-framework.jar"
)

echo "=== M3 arm64 boot-image regen ==="
echo "  dex2oat64 : $DEX2OAT64"
echo "  substrate : $SUBSTRATE"
echo "  out       : $OUT"
echo "  filter    : $COMPILER_FILTER   base: $BASE"

[ -x "$DEX2OAT64" ] || { echo "FATAL: dex2oat64 missing/not-exec: $DEX2OAT64 (见脚本头 M3 前置#1)"; exit 2; }

FWORK="$OUT/framework"; A64="$OUT/arm64"
rm -rf "$OUT"; mkdir -p "$FWORK" "$A64"

DEX_ARGS=(); BCP=(); ORDER=()
missing=0
for row in "${JARS[@]}"; do
  IFS='|' read -r name src dexloc <<<"$row"
  if [ ! -f "$src" ]; then echo "  MISSING jar: $name  <- $src"; missing=1; continue; fi
  cp -f "$src" "$FWORK/$name"
  DEX_ARGS+=( --dex-file="$FWORK/$name" --dex-location="/system/android/framework/$dexloc" )
  BCP+=( "/system/android/framework/$dexloc" )
  ORDER+=( "$name" )
done
[ "$missing" = 0 ] || { echo "FATAL: 缺 BCP jar(见上)——补齐 SUBSTRATE 后重跑(M2 产出真 framework/adapter jars)"; exit 3; }

# 落盘 bootclasspath.txt + jar-order.txt(供 launcher/appspawn-x 对齐一致性用)
( IFS=:; echo "${BCP[*]}" ) > "$OUT/bootclasspath.txt"
printf '%s\n' "${ORDER[@]}" > "$OUT/jar-order.txt"

export LD_LIBRARY_PATH="$(dirname "$SIGCHAIN")${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
[ -f "$SIGCHAIN" ] && export LD_PRELOAD="$SIGCHAIN${LD_PRELOAD:+:$LD_PRELOAD}"

echo "=== dex2oat (arm64) ==="
set -x
"$DEX2OAT64" \
  --android-root=/system \
  --instruction-set=arm64 \
  --base="$BASE" \
  --compiler-filter="$COMPILER_FILTER" \
  --runtime-arg -Xms64m \
  --runtime-arg -Xmx512m \
  --runtime-arg -Xverify:none \
  --image="$A64/boot.art" \
  --oat-file="$A64/boot.oat" \
  "${DEX_ARGS[@]}" 2>&1 | tee "$OUT/host-dex2oat.log"
set +x

echo "=== validate ==="
SEGS=$(ls "$A64"/boot*.{art,oat,vdex} 2>/dev/null | wc -l | tr -d ' ')
echo "  segments: $SEGS (期望 30)"
ls -l "$A64"/boot* 2>/dev/null || true
[ "$SEGS" = 30 ] || { echo "WARN: 段数 != 30 —— 检查一致性陷阱(cdex/ValidateOatFile checksum,见 adapter-bootloop-wipe-recovery.md)"; }
# ISA 抽检(oatdump 若在场)
OATDUMP="$(dirname "$DEX2OAT64")/oatdump"
[ -x "$OATDUMP" ] && "$OATDUMP" --oat-file="$A64/boot.oat" 2>/dev/null | grep -iE "INSTRUCTION SET|isa" | head -3 || true
echo "DONE -> $A64  (bootclasspath.txt / jar-order.txt 一并落 $OUT)"
