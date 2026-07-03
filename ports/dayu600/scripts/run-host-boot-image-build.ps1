param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$WorkDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\boot-workdir'),
    [string]$Dex2OatHost = "$env:USERPROFILE\a2oh-source-audit\art-latest\build\bin\dex2oat",
    [string]$HostLibDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\host-tools\lib64'),
    [ValidateSet('speed', 'verify', 'quicken')]
    [string]$CompilerFilter = 'speed'
)

$ErrorActionPreference = 'Stop'

function ConvertTo-WslPath {
    param([string]$Path)
    $resolved = (Resolve-Path -LiteralPath $Path).Path
    if ($resolved -match '^([A-Za-z]):\\(.*)$') {
        $drive = $matches[1].ToLowerInvariant()
        $rest = $matches[2] -replace '\\', '/'
        return "/mnt/$drive/$rest"
    }
    throw "cannot convert to WSL path: $resolved"
}

if (-not (Test-Path -LiteralPath $WorkDir)) {
    throw "boot workdir not found: $WorkDir; run prepare-boot-workdir.ps1 first"
}
if (-not (Test-Path -LiteralPath $Dex2OatHost)) {
    throw "host dex2oat not found: $Dex2OatHost"
}
if (-not (Test-Path -LiteralPath $HostLibDir)) {
    throw "host lib dir not found: $HostLibDir"
}

$WorkDir = (Resolve-Path -LiteralPath $WorkDir).Path
$Dex2OatHost = (Resolve-Path -LiteralPath $Dex2OatHost).Path
$HostLibDir = (Resolve-Path -LiteralPath $HostLibDir).Path

$frameworkDir = Join-Path $WorkDir 'framework'
$arm64Dir = Join-Path $WorkDir 'arm64'
$jarOrderPath = Join-Path $WorkDir 'jar-order.txt'
if (-not (Test-Path -LiteralPath $jarOrderPath)) {
    throw "jar order not found: $jarOrderPath"
}
New-Item -ItemType Directory -Force -Path $arm64Dir | Out-Null
Get-ChildItem -LiteralPath $arm64Dir -Filter 'boot*.*' -ErrorAction SilentlyContinue | Remove-Item -Force

$jarNames = Get-Content -LiteralPath $jarOrderPath | Where-Object { $_.Trim() }
foreach ($jar in $jarNames) {
    $jarPath = Join-Path $frameworkDir $jar
    if (-not (Test-Path -LiteralPath $jarPath)) {
        throw "missing boot jar: $jarPath"
    }
}

$workWsl = ConvertTo-WslPath $WorkDir
$dex2oatWsl = ConvertTo-WslPath $Dex2OatHost
$libWsl = ConvertTo-WslPath $HostLibDir

$dexArgs = ($jarNames | ForEach-Object {
    "--dex-file=`"`$WORK/framework/$_`" --dex-location=/system/android/framework/$_"
}) -join " \`n  "

$script = @"
#!/usr/bin/env bash
set -euo pipefail

WORK="$workWsl"
DEX2OAT="$dex2oatWsl"
LIBDIR="$libWsl"
LOG="`$WORK/host-dex2oat.log"

mkdir -p "`$WORK/arm64"
export LD_LIBRARY_PATH="`$LIBDIR`${LD_LIBRARY_PATH:+:`$LD_LIBRARY_PATH}"
if [ -f "`$LIBDIR/libsigchain.so" ]; then
  export LD_PRELOAD="`$LIBDIR/libsigchain.so`${LD_PRELOAD:+:`$LD_PRELOAD}"
fi

"`$DEX2OAT" \
  --android-root=/system \
  --instruction-set=arm64 \
  --base=0x70000000 \
  --compiler-filter=$CompilerFilter \
  --runtime-arg -Xms64m \
  --runtime-arg -Xmx512m \
  --runtime-arg -Xverify:none \
  --image="`$WORK/arm64/boot.art" \
  --oat-file="`$WORK/arm64/boot.oat" \
  $dexArgs >"`$LOG" 2>&1

ls -l "`$WORK/arm64"/boot* 2>/dev/null || true
"@

$scriptPath = Join-Path $WorkDir 'regen_boot_arm64.host.sh'
$script | Set-Content -LiteralPath $scriptPath -Encoding ASCII

$scriptWsl = ConvertTo-WslPath $scriptPath
Write-Output "host boot script: $scriptPath"
Write-Output "host dex2oat: $Dex2OatHost"
Write-Output "host libdir: $HostLibDir"

& wsl -e bash $scriptWsl
if ($LASTEXITCODE -ne 0) {
    $logPath = Join-Path $WorkDir 'host-dex2oat.log'
    if (Test-Path -LiteralPath $logPath) {
        Get-Content -LiteralPath $logPath -Tail 80
    }
    throw "host dex2oat failed with exit code $LASTEXITCODE"
}

$bootArt = Join-Path $arm64Dir 'boot.art'
$bootOat = Join-Path $arm64Dir 'boot.oat'
if (-not ((Test-Path -LiteralPath $bootArt) -and (Test-Path -LiteralPath $bootOat))) {
    throw "host dex2oat finished but boot.art/boot.oat are missing"
}

Write-Output "host boot image generated: $arm64Dir"
