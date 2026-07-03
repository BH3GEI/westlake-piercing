param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-child-looper-probe.ps1')
}

$so = Join-Path $fixture 'out\libwestlake_appspawn_child_probe.so'
if (-not (Test-Path $so)) {
    throw "missing child probe shared object: $so"
}

$remoteSo = '/data/local/tmp/libwestlake_appspawn_child_probe.so'
$remoteLog = '/data/local/tmp/westlake-appspawn-child-probe.log'
$remoteOut = '/data/local/tmp/westlake-appspawn-child-probe.stdout'
$remoteErr = '/data/local/tmp/westlake-appspawn-child-probe.stderr'

& $Hdc file send $so $remoteSo
& $Hdc shell "chmod 755 $remoteSo; rm -f $remoteLog $remoteOut $remoteErr"

$cmd = "LD_PRELOAD=$remoteSo /system/bin/appspawn -mode app_cold -fd -1 0 0 -param westlake.child.probe 1 >$remoteOut 2>$remoteErr; echo RC:`$?; echo ===child-probe-log===; cat $remoteLog 2>/dev/null; echo ===stderr-tail===; tail -120 $remoteErr 2>/dev/null; echo ===stdout-tail===; tail -80 $remoteOut 2>/dev/null"
& $Hdc shell $cmd
