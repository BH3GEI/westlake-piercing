param(
    [string]$StockAppspawn = "$env:USERPROFILE\Desktop\dayu600_current_audit\bin\appspawn",
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\appspawnx'),
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$RemoteRoot = '/data/local/tmp/westlake-dayu600-substrate',
    [switch]$PullStock,
    [switch]$Push
)

$ErrorActionPreference = 'Stop'

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path

if ($PullStock) {
    if (-not (Test-Path $Hdc)) {
        throw "hdc not found: $Hdc"
    }
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $StockAppspawn) | Out-Null
    & $Hdc file recv /system/bin/appspawn $StockAppspawn
}

if (-not (Test-Path $StockAppspawn)) {
    throw "stock appspawn not found: $StockAppspawn"
}

$target = Join-Path $OutDir 'appspawn-x.dayu600'
$bytes = [IO.File]::ReadAllBytes($StockAppspawn)
$needle = [Text.Encoding]::ASCII.GetBytes('HybridSpawn')
$replacementText = [Text.Encoding]::ASCII.GetBytes('AppSpawnX')
$replacement = New-Object byte[] $needle.Length
[Array]::Copy($replacementText, $replacement, $replacementText.Length)

$count = 0
for ($i = 0; $i -le $bytes.Length - $needle.Length; $i++) {
    $match = $true
    for ($j = 0; $j -lt $needle.Length; $j++) {
        if ($bytes[$i + $j] -ne $needle[$j]) {
            $match = $false
            break
        }
    }
    if ($match) {
        [Array]::Copy($replacement, 0, $bytes, $i, $replacement.Length)
        $count++
    }
}

if ($count -ne 1) {
    throw "expected exactly one HybridSpawn string in $StockAppspawn, patched $count"
}

[IO.File]::WriteAllBytes($target, $bytes)

$startScript = Join-Path $OutDir 'start-appspawnx-dayu600.sh'
@'
#!/system/bin/sh
set -eu

ROOT="${WESTLAKE_ROOT:-/data/local/tmp/westlake-dayu600-substrate}"
SOCKET="/dev/unix/socket/AppSpawnX"

if [ -S "$SOCKET" ]; then
  echo "AppSpawnX socket already exists: $SOCKET" >&2
  echo "Stop the temporary appspawn-x.dayu600 owner first; this script will not remove sockets." >&2
  exit 17
fi

export LD_LIBRARY_PATH="$ROOT/android/lib64/sidecars:$ROOT/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp"
export LD_PRELOAD="$ROOT/android/lib64/sidecars/libwestlake_dayu600_sidecar.so"

exec "$ROOT/android/bin/appspawn-x.dayu600" \
  -mode hybridspawn \
  --process-name westlake.appspawnx.dayu600 \
  --start-flags daemon \
  --type standard \
  --sandbox-switch on \
  --bundle-name westlake.appspawnx.dayu600 \
  --app-operate-type operate \
  --render-command command \
  --app-launch-type singleton \
  --app-visible true
'@ | Set-Content -LiteralPath $startScript -Encoding ASCII

$hash = Get-FileHash -Algorithm SHA256 $target
$manifest = [ordered]@{
    generatedAt = (Get-Date).ToString('o')
    kind = 'temporary DAYU600 AppSpawnX prototype'
    source = $StockAppspawn
    output = $target
    sha256 = $hash.Hash.ToLowerInvariant()
    patchedString = 'HybridSpawn -> AppSpawnX'
    warning = 'This is not the final westlake appspawn-x source build. It is a harmless DAYU600 arm64 socket prototype derived from stock appspawn.'
}
$manifestPath = Join-Path $OutDir 'appspawnx-dayu600.manifest.json'
$manifest | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $manifestPath -Encoding ASCII

if ($Push) {
    if (-not (Test-Path $Hdc)) {
        throw "hdc not found: $Hdc"
    }
    & $Hdc shell "mkdir -p $RemoteRoot/android/bin"
    & $Hdc file send $target "$RemoteRoot/android/bin/appspawn-x.dayu600"
    & $Hdc file send $startScript "$RemoteRoot/android/bin/start-appspawnx-dayu600.sh"
    & $Hdc shell "chmod 755 $RemoteRoot/android/bin/appspawn-x.dayu600 $RemoteRoot/android/bin/start-appspawnx-dayu600.sh"
}

Get-Item $target
Get-Item $startScript
Write-Output "manifest: $manifestPath"
Write-Output "sha256: $($hash.Hash.ToLowerInvariant())"
