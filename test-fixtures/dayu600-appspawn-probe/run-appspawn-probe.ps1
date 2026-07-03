param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-appspawn-probe.ps1')
}

$so = Join-Path $fixture 'out\libwestlake_appspawn_probe.so'
if (-not (Test-Path $so)) {
    throw "missing probe shared object: $so"
}

$remoteSo = '/data/local/tmp/libwestlake_appspawn_probe.so'
$remoteLog = '/data/local/tmp/westlake-appspawn-probe.log'
$remoteOut = '/data/local/tmp/westlake-appspawn-probe.stdout'
$remoteErr = '/data/local/tmp/westlake-appspawn-probe.stderr'

& $Hdc file send $so $remoteSo
& $Hdc shell "chmod 755 $remoteSo; rm -f $remoteLog $remoteOut $remoteErr /data/local/tmp/westlake-appspawn-probe.cold.stdout /data/local/tmp/westlake-appspawn-probe.cold.stderr"

Write-Host '== service-mode preload smoke =='
$cmd = "LD_PRELOAD=$remoteSo /system/bin/appspawn -mode appspawn --process-name westlake.probe --start-flags daemon --type standard >$remoteOut 2>$remoteErr & pid=`$!; sleep 2; kill `$pid 2>/dev/null; wait `$pid 2>/dev/null; echo appspawn_probe_done"
& $Hdc shell $cmd
& $Hdc shell "echo ===probe-log===; cat $remoteLog 2>/dev/null; echo ===stderr-tail===; tail -80 $remoteErr 2>/dev/null; echo ===stdout-tail===; tail -40 $remoteOut 2>/dev/null"

Write-Host '== cold-run preload hook smoke =='
& $Hdc shell "rm -f $remoteLog; LD_PRELOAD=$remoteSo /system/bin/appspawn -mode app_cold -fd -1 0 0 -param westlake.probe 1 >/data/local/tmp/westlake-appspawn-probe.cold.stdout 2>/data/local/tmp/westlake-appspawn-probe.cold.stderr; echo RC:`$?; echo ===probe-log===; cat $remoteLog 2>/dev/null; echo ===stderr-tail===; tail -80 /data/local/tmp/westlake-appspawn-probe.cold.stderr 2>/dev/null"
