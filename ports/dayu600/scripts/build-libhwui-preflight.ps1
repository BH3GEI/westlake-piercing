param(
    [string]$HwuiSource = "$env:USERPROFILE\a2oh-source-audit\aosp-frameworks-base-15-r9\libs\hwui",
    [string]$OhosSdkRootWsl = "/home/yao/ohos-sdk-6.0.0.47",
    [string]$OhosHeadersWin = "$env:USERPROFILE\ohos-6.0-headers"
)

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path
$portRoot = Join-Path $repoRoot 'ports\dayu600'
$patch = Join-Path $portRoot 'bridge-src\hwui_oh_abi_patch.cpp'
$outDir = Join-Path $portRoot 'out\libhwui-preflight'
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

function Add-Check {
    param(
        [string]$Name,
        [string]$Status,
        [string]$Evidence,
        [string]$Next
    )
    [pscustomobject]@{
        name = $Name
        status = $Status
        evidence = $Evidence
        next = $Next
    }
}

$checks = New-Object System.Collections.Generic.List[object]

if (Test-Path (Join-Path $HwuiSource 'Android.bp')) {
    $cppCount = (Get-ChildItem -Path $HwuiSource -Recurse -Filter '*.cpp' -ErrorAction SilentlyContinue | Measure-Object).Count
    $checks.Add((Add-Check 'AOSP hwui source' 'present' "$HwuiSource ($cppCount cpp files)" 'Use this as the libhwui source input.'))
} else {
    $checks.Add((Add-Check 'AOSP hwui source' 'missing' "$HwuiSource\Android.bp not found" 'Fetch frameworks/base/libs/hwui before attempting libhwui.'))
}

if (Test-Path $patch) {
    $checks.Add((Add-Check 'OH ABI patch' 'present' $patch 'Compile into libhwui itself with -Wl,-Bsymbolic-functions.'))
} else {
    $checks.Add((Add-Check 'OH ABI patch' 'missing' $patch 'Recover ports/dayu600/bridge-src/hwui_oh_abi_patch.cpp.'))
}

if (Test-Path $OhosHeadersWin) {
    $checks.Add((Add-Check 'OHOS headers' 'present' $OhosHeadersWin 'Use for Window/Surface/RS/EGL bridge includes.'))
} else {
    $checks.Add((Add-Check 'OHOS headers' 'missing' $OhosHeadersWin 'Extract matching OpenHarmony headers before compiling bridge pieces.'))
}

$wslProbe = @'
set -e
sdk='__OHOS_SDK_ROOT_WSL__'
native=''
for cand in "$sdk/linux/native" "$sdk/native" "/mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native"; do
  if [ -x "$cand/llvm/bin/aarch64-unknown-linux-ohos-clang++" ]; then
    native="$cand"
    break
  fi
  if [ -x "$cand/llvm/bin/clang++" ]; then
    native="$cand"
    break
  fi
done
if [ -z "$native" ]; then
  echo "missing|$sdk"
  exit 0
fi
cxx="$native/llvm/bin/aarch64-unknown-linux-ohos-clang++"
if [ ! -x "$cxx" ]; then cxx="$native/llvm/bin/clang++"; fi
sysroot="$native/sysroot"
if [ ! -d "$sysroot" ]; then
  echo "no-sysroot|$native"
  exit 0
fi
ver="$($cxx --version | head -n 1)"
echo "present|$native|$cxx|$ver"
'@
$wslProbe = $wslProbe.Replace('__OHOS_SDK_ROOT_WSL__', $OhosSdkRootWsl.Replace("'", "'\''"))

$probePathWin = Join-Path $outDir 'probe-ohos-native.sh'
$wslProbe = $wslProbe -replace "`r`n", "`n"
Set-Content -Encoding ascii -NoNewline -Path $probePathWin -Value $wslProbe
$probePathWsl = (& wsl -e wslpath -a $probePathWin) -join ''
$wslOut = (& wsl -e bash $probePathWsl) -join "`n"
if ($wslOut -match '^present\|([^|]+)\|([^|]+)\|(.+)$') {
    $checks.Add((Add-Check 'OHOS native clang' 'present' $Matches[2] $Matches[3]))
} elseif ($wslOut -match '^no-sysroot\|(.+)$') {
    $checks.Add((Add-Check 'OHOS native clang' 'incomplete' $Matches[1] 'native/sysroot is missing.'))
} else {
    $checks.Add((Add-Check 'OHOS native clang' 'missing' $wslOut 'Install/extract OHOS native SDK in WSL.'))
}

$jsonPath = Join-Path $outDir 'preflight.json'
$checks | ConvertTo-Json -Depth 4 | Set-Content -Encoding UTF8 $jsonPath
$checks | Format-Table -AutoSize
Write-Host ""
Write-Host "libhwui preflight report: $jsonPath"

$hardBlockers = @($checks | Where-Object { $_.status -in @('missing', 'incomplete') })
if ($hardBlockers.Count -gt 0) {
    exit 2
}
