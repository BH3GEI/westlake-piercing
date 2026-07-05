#!/usr/bin/env bash
# Run when the DAYU600 is back online. Restores the working shim baseline, confirms it,
# then tries the conservative shim strip and reports where the View path gets to.
set -uo pipefail
HDC=~/.local/openharmony-tools/bin/hdc
R=/data/local/tmp/westlake-dayu600-substrate
CONS=/Users/yao/westlake-piercing/westlake-art-runtime/pathA-view/shim-variants/dayu600-framework-shim-conservative.dex

wait_dev(){ for i in $(seq 1 8); do $HDC list targets 2>&1 | grep -qaE '[0-9a-f]{6}' && return 0; $HDC kill 2>/dev/null; sleep 2; $HDC start 2>/dev/null; sleep 3; done; return 1; }
readlog(){ $HDC shell "cat $R/apks/probe-logs/asset-probe.txt" 2>&1 | grep -avE 'Fail|No such' | grep -aoE 'VIEWINFLATE=\[[^]]*\]|VIEW_FAIL:[^]]*|INFLATED[^]]*'; }

echo "== [0] wait for device =="
wait_dev || { echo "device still offline"; exit 1; }

echo "== [1] restore working baseline shim (.bak) =="
$HDC shell "[ -f $R/apks/dayu600-framework-shim.dex.bak ] && cp $R/apks/dayu600-framework-shim.dex.bak $R/apks/dayu600-framework-shim.dex && wc -c $R/apks/dayu600-framework-shim.dex" 2>&1 | grep -aoE '^[0-9]+' | head -1 | xargs echo "  baseline shim now:"
# make sure OMIT is 0 (keep shim) for the baseline
$HDC shell "sed -i 's/WESTLAKE_OMIT_FRAMEWORK_SHIM=1/WESTLAKE_OMIT_FRAMEWORK_SHIM=0/' /data/local/tmp/deploy-dayu600.sh"

echo "== [2] confirm baseline runs (expect the getOpPackageName wall) =="
$HDC shell "rm -f $R/apks/probe-logs/asset-probe.txt; cd /data/local/tmp && timeout 50 sh deploy-dayu600.sh >/dev/null 2>&1"
wait_dev; echo "  baseline result:"; readlog

echo "== [3] try CONSERVATIVE strip =="
$HDC file send "$CONS" $R/apks/dayu600-framework-shim.dex >/dev/null 2>&1
$HDC shell "wc -c $R/apks/dayu600-framework-shim.dex" 2>&1 | grep -aoE '^[0-9]+' | head -1 | xargs echo "  conservative shim deployed:"
$HDC shell "rm -f $R/apks/probe-logs/asset-probe.txt; cd /data/local/tmp && timeout 50 sh deploy-dayu600.sh >/dev/null 2>&1"
if wait_dev; then
  echo "  conservative-strip result:"; readlog
  sz=$($HDC shell "wc -c $R/apks/probe-logs/asset-probe.txt" 2>/dev/null | grep -aoE '^[0-9]+' | head -1)
  [ -z "$sz" -o "$sz" = "0" ] && echo "  NO probe output -> conservative strip ALSO broke bootstrap; restoring .bak" && \
    $HDC shell "cp $R/apks/dayu600-framework-shim.dex.bak $R/apks/dayu600-framework-shim.dex"
else
  echo "  DEVICE WENT OFFLINE again -> conservative strip broke bootstrap. Power-cycle, then restore .bak."
fi
