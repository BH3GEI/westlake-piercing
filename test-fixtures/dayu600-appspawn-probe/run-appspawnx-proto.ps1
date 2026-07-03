param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-appspawn-probe.ps1')
    & (Join-Path $fixture 'build-appspawnx-proto.ps1')
}

$so = Join-Path $fixture 'out\libwestlake_appspawn_probe.so'
$proto = Join-Path $fixture 'out\appspawn-x-proto'
if (-not (Test-Path $so)) {
    throw "missing probe shared object: $so"
}
if (-not (Test-Path $proto)) {
    throw "missing appspawn proto: $proto"
}

$remoteSo = '/data/local/tmp/libwestlake_appspawn_probe.so'
$remoteProto = '/data/local/tmp/appspawn-x-proto'
$remoteLog = '/data/local/tmp/westlake-appspawn-probe.log'
$remoteOut = '/data/local/tmp/westlake-appspawnx-proto.stdout'
$remoteErr = '/data/local/tmp/westlake-appspawnx-proto.stderr'

& $Hdc file send $so $remoteSo
& $Hdc file send $proto $remoteProto
& $Hdc shell "chmod 755 $remoteSo $remoteProto; rm -f $remoteLog $remoteOut $remoteErr /dev/unix/socket/AppSpawnX"

$cmd = "LD_PRELOAD=$remoteSo $remoteProto -mode hybridspawn --process-name westlake.appspawnx.proto --start-flags daemon --type standard --sandbox-switch on --bundle-name westlake.appspawnx.proto --app-operate-type operate --render-command command --app-launch-type singleton --app-visible true >$remoteOut 2>$remoteErr & pid=`$!; sleep 2; echo PID:`$pid; ls -l /dev/unix/socket/AppSpawnX 2>/dev/null; kill `$pid 2>/dev/null; wait `$pid 2>/dev/null; rm -f /dev/unix/socket/AppSpawnX 2>/dev/null; echo appspawnx_proto_done"
& $Hdc shell $cmd
& $Hdc shell "echo ===probe-log===; cat $remoteLog 2>/dev/null; echo ===stderr-tail===; tail -120 $remoteErr 2>/dev/null; echo ===stdout-tail===; tail -80 $remoteOut 2>/dev/null; echo ===remaining===; ls -l /dev/unix/socket/AppSpawnX 2>/dev/null"
