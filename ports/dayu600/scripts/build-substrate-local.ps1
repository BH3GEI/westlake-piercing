param(
    [switch]$Push
)

$ErrorActionPreference = 'Stop'

$scripts = @(
    'build-appspawnx-dayu600.ps1',
    'build-android-runtime.ps1',
    'build-adapter-runtime-bcp.ps1',
    'build-oh-adapter-framework.ps1',
    'build-adapter-mainline-stubs.ps1',
    'build-framework-placeholder.ps1'
)

foreach ($script in $scripts) {
    $path = Join-Path $PSScriptRoot $script
    Write-Host "==> $script"
    & powershell -ExecutionPolicy Bypass -File $path
    if ($LASTEXITCODE -ne 0) {
        throw "$script failed with $LASTEXITCODE"
    }
}

$prepare = Join-Path $PSScriptRoot 'prepare-substrate.ps1'
Write-Host "==> prepare-substrate.ps1"
if ($Push) {
    & powershell -ExecutionPolicy Bypass -File $prepare -Push
} else {
    & powershell -ExecutionPolicy Bypass -File $prepare
}
if ($LASTEXITCODE -ne 0) {
    throw "prepare-substrate.ps1 failed with $LASTEXITCODE"
}

