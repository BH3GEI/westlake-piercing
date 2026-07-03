param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$WorkDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\boot-workdir'),
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$RemoteRoot = '/data/local/tmp/westlake-boot-workdir',
    [switch]$Clean
)

$ErrorActionPreference = 'Stop'

function Convert-ToRemotePath {
    param([string]$Path)
    $relative = Resolve-Path -LiteralPath $Path -Relative
    $relative = $relative -replace '^\.[\\/]', ''
    return ($RemoteRoot.TrimEnd('/') + '/' + ($relative -replace '\\', '/'))
}

if (-not (Test-Path -LiteralPath $Hdc)) {
    throw "hdc not found: $Hdc"
}
if (-not (Test-Path -LiteralPath $WorkDir)) {
    throw "boot workdir not found: $WorkDir; run prepare-boot-workdir.ps1 first"
}
if ($RemoteRoot -notlike '/data/local/tmp/westlake-*') {
    throw "refusing remote path outside /data/local/tmp/westlake-*: $RemoteRoot"
}

$WorkDir = (Resolve-Path -LiteralPath $WorkDir).Path

if ($Clean) {
    & $Hdc shell "rm -rf $RemoteRoot"
}
& $Hdc shell "mkdir -p $RemoteRoot"

Push-Location $WorkDir
try {
    foreach ($file in Get-ChildItem -File -Recurse) {
        $remote = Convert-ToRemotePath $file.FullName
        $remoteDir = Split-Path -Parent $remote
        $remoteDir = $remoteDir -replace '\\', '/'
        & $Hdc shell "mkdir -p $remoteDir"
        & $Hdc file send $file.FullName $remote
    }
} finally {
    Pop-Location
}

& $Hdc shell "chmod 755 $RemoteRoot/bin/dex2oat64 $RemoteRoot/regen_boot_arm64.on-device.sh 2>/dev/null || true"

Write-Output "boot workdir pushed: $WorkDir -> $RemoteRoot"
