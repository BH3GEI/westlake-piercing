param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$WorkDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\boot-workdir'),
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$RemoteRoot = '/data/local/tmp/westlake-boot-workdir',
    [switch]$SkipPush
)

$ErrorActionPreference = 'Stop'

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

if (-not $SkipPush) {
    & powershell -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot 'push-boot-workdir.ps1') `
        -RepoRoot $RepoRoot `
        -WorkDir $WorkDir `
        -Hdc $Hdc `
        -RemoteRoot $RemoteRoot `
        -Clean
}

$remoteCommand = "cd $RemoteRoot && sh regen_boot_arm64.on-device.sh $RemoteRoot; rc=`$?; echo WESTLAKE_RC:`$rc"
$remoteOutput = & $Hdc shell $remoteCommand 2>&1
$remoteOutput | Write-Output
if (-not ($remoteOutput -match 'WESTLAKE_RC:0')) {
    throw "remote dex2oat boot-image generation failed"
}

$localArm64 = Join-Path $WorkDir 'arm64'
New-Item -ItemType Directory -Force -Path $localArm64 | Out-Null

$checkOutput = & $Hdc shell "if [ -s $RemoteRoot/arm64/boot.art ] && [ -s $RemoteRoot/arm64/boot.oat ]; then echo WESTLAKE_BOOT_OK; else ls -l $RemoteRoot/arm64 2>/dev/null; echo WESTLAKE_BOOT_FAIL; fi" 2>&1
$checkOutput | Write-Output
if (-not ($checkOutput -match 'WESTLAKE_BOOT_OK')) {
    throw "remote boot image outputs were not created"
}

$remoteFiles = & $Hdc shell "ls $RemoteRoot/arm64" 2>$null
$outputs = @($remoteFiles | Where-Object { $_ -match '^boot.*\.(art|oat|vdex)$' } | ForEach-Object { $_.Trim() })
foreach ($name in $outputs) {
    $remote = "$RemoteRoot/arm64/$name"
    $local = Join-Path $localArm64 $name
    & $Hdc file recv $remote $local
    if ($LASTEXITCODE -ne 0) {
        Write-Warning "optional boot output not pulled: $remote"
    }
}

Write-Output "boot image workdir: $WorkDir"
