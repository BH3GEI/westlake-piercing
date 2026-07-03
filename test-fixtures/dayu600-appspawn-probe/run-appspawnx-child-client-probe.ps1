param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-child-looper-probe.ps1')
    & (Join-Path $fixture 'build-appspawnx-proto.ps1')
    & (Join-Path $fixture 'build-raw-client.ps1')
}

$so = Join-Path $fixture 'out\libwestlake_appspawn_child_probe.so'
$proto = Join-Path $fixture 'out\appspawn-x-proto'
$client = Join-Path $fixture 'out\westlake_appspawn_raw_client'
foreach ($path in @($so, $proto, $client)) {
    if (-not (Test-Path $path)) {
        throw "missing required probe artifact: $path"
    }
}

$remoteSo = '/data/local/tmp/libwestlake_appspawn_child_probe.so'
$remoteProto = '/data/local/tmp/appspawn-x-proto'
$remoteClient = '/data/local/tmp/westlake_appspawn_raw_client'
$remoteChildLog = '/data/local/tmp/westlake-appspawn-child-probe.log'
$remoteClientLog = '/data/local/tmp/westlake-appspawn-raw-client.log'
$remoteOut = '/data/local/tmp/westlake-appspawnx-child-client.stdout'
$remoteErr = '/data/local/tmp/westlake-appspawnx-child-client.stderr'

& $Hdc file send $so $remoteSo
& $Hdc file send $proto $remoteProto
& $Hdc file send $client $remoteClient
& $Hdc shell "chmod 755 $remoteSo $remoteProto $remoteClient; rm -f $remoteChildLog $remoteClientLog $remoteOut $remoteErr /dev/unix/socket/AppSpawnX"

$cmd = @"
LD_PRELOAD=$remoteSo $remoteProto -mode hybridspawn --process-name westlake.appspawnx.proto --start-flags daemon --type standard --sandbox-switch on --bundle-name westlake.appspawnx.proto --app-operate-type operate --render-command command --app-launch-type singleton --app-visible true >$remoteOut 2>$remoteErr &
pid=`$!
sleep 2
echo PID:`$pid
ls -l /dev/unix/socket/AppSpawnX 2>/dev/null
chmod 666 $remoteChildLog 2>/dev/null
$remoteClient
echo client_rc:`$?
sleep 2
kill `$pid 2>/dev/null
wait `$pid 2>/dev/null
rm -f /dev/unix/socket/AppSpawnX 2>/dev/null
echo appspawnx_child_client_done
"@
& $Hdc shell $cmd
& $Hdc shell "echo ===child-probe-log===; cat $remoteChildLog 2>/dev/null; echo ===raw-client-log===; cat $remoteClientLog 2>/dev/null; echo ===stderr-tail===; tail -160 $remoteErr 2>/dev/null; echo ===stdout-tail===; tail -120 $remoteOut 2>/dev/null; echo ===remaining===; ls -l /dev/unix/socket/AppSpawnX 2>/dev/null"
