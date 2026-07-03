param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-shim.ps1')
}

$so = Join-Path $fixture 'out\libapk_installer.so'
if (-not (Test-Path $so)) {
    throw "missing shim: $so"
}

$remoteStage = '/data/local/tmp/libapk_installer.so.westlake-shim'
$remoteSystem = '/system/lib64/libapk_installer.so'

& $Hdc file send $so $remoteStage
& $Hdc shell "set -eu; ls -l $remoteStage; md5sum $remoteStage; mount -o remount,rw /; cp $remoteStage $remoteSystem; chmod 0644 $remoteSystem; chcon u:object_r:system_lib_file:s0 $remoteSystem 2>/dev/null || true; sync; ls -lZ $remoteSystem; md5sum $remoteSystem"

