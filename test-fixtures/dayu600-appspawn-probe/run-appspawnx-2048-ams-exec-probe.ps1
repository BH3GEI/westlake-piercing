param(
    [string]$Hdc = 'C:\Users\ufop\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe',
    [string]$Apk = "$env:USERPROFILE\Downloads\2048-2-9.apk",
    [string]$ArtSource = "$env:USERPROFILE\a2oh-source-audit\art-latest\build-bionic-arm64\lib\libwestlake_art.so",
    [string]$SidecarSo = "$env:USERPROFILE\westlake-piercing\ports\dayu600\out\sidecars\libwestlake_dayu600_sidecar.so",
    [string]$HeavyBridgeSo = "$env:USERPROFILE\westlake-piercing\ports\dayu600\out\sidecars\libwestlake_dayu600_bridge_heavy.so",
    [string]$ImeHelperSo = "$env:USERPROFILE\westlake-piercing\ports\dayu600\out\sidecars\liboh_ime_helper.so",
    [ValidateSet('appSpawnXInit', 'frameworkClassProbe', 'activityThreadMethodProbe', 'activityThreadMainProbe', 'activityThreadStepProbe', 'directOnCreateProgress', 'directOnCreateNull', 'directOnCreateTrace', 'viewCastTrace', 'systemTimeProbe', 'randomCtorProbe', 'reflectArrayProbe', 'onCreateNullTrace', 'onCreateManual', 'onCreateNull', 'gameStateJson', 'gameMoveJson', 'privateR', 'intParse', 'stringValueOnly')]
    [string]$Stage = 'directOnCreateProgress',
    [switch]$SkipBuild,
    [switch]$KeepAlive,
    [switch]$LoadHeavyBridge,
    [switch]$OmitFrameworkShim,
    [switch]$SkipTraceStep,
    [ValidateSet('beforeStage', 'afterStage')]
    [string]$HeavyBridgeTiming = 'afterStage'
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$embeddedFixture = Resolve-Path (Join-Path $fixture '..\dayu600-embedded-art-probe')
$apkProbeFixture = Resolve-Path (Join-Path $fixture '..\dayu600-apk-probe')
$frameworkFixture = Resolve-Path (Join-Path $fixture '..\dayu600-framework-shim')
$androidxFixture = Resolve-Path (Join-Path $fixture '..\dayu600-androidx-overlay-stub')
$repoRoot = Resolve-Path (Join-Path $fixture '..\..')
if (-not $SkipBuild) {
    & (Join-Path $frameworkFixture.Path 'build-framework-shim.ps1')
    & (Join-Path $androidxFixture.Path 'build-overlay.ps1')
    & (Join-Path $apkProbeFixture.Path 'build-probe.ps1')
    & (Join-Path $embeddedFixture.Path 'build-dlopen-probe.ps1')
    & (Join-Path $fixture 'build-art-compat-stubs.ps1')
    & (Join-Path $fixture 'build-exec-probe.ps1')
    & (Join-Path $fixture 'build-appspawnx-proto.ps1')
}

$so = Join-Path $fixture 'out\libwestlake_appspawn_exec_probe.so'
$compatSo = Join-Path $fixture 'out\libwestlake_art_compat_stubs.so'
$embeddedSo = Join-Path $embeddedFixture.Path 'out\libwestlake_embedded_art_dlopen_probe.so'
$proto = Join-Path $fixture 'out\appspawn-x-proto'
$frameworkDex = Join-Path $frameworkFixture.Path 'out\dayu600-framework-shim.dex'
$androidxDex = Join-Path $androidxFixture.Path 'out\dayu600-androidx-overlay-stub.dex'
$probeDex = Join-Path $apkProbeFixture.Path 'out\dayu600-apk-probe.dex'
$conscryptJar = Join-Path $repoRoot.Path 'ports\dayu600\out\substrate\android\framework\core-jars\conscrypt.jar'
$mainlineStubsJar = Join-Path $repoRoot.Path 'ports\dayu600\out\substrate\android\framework\adapter-mainline-stubs.jar'
foreach ($path in @($so, $compatSo, $embeddedSo, $proto, $ArtSource, $frameworkDex, $androidxDex, $probeDex, $Apk)) {
    if (-not (Test-Path $path)) {
        throw "missing required probe artifact: $path"
    }
}

$remoteSo = '/data/local/tmp/libwestlake_appspawn_exec_probe.so'
$remoteCompatSo = '/data/local/tmp/libwestlake_art_compat_stubs.so'
$remoteEmbeddedSo = '/data/local/tmp/libwestlake_embedded_art_dlopen_probe.so'
$remoteRoot = '/data/local/tmp/westlake-dayu600-substrate'
$remoteSidecarSo = "$remoteRoot/android/lib64/sidecars/libwestlake_dayu600_sidecar.so"
$remoteHeavyBridgeSo = "$remoteRoot/android/lib64/sidecars/libwestlake_dayu600_bridge_heavy.so"
$remoteImeHelperSo = "$remoteRoot/android/lib64/sidecars/liboh_ime_helper.so"
$remoteProto = '/data/local/tmp/appspawn-x-proto'
$remoteProbeLog = '/data/local/tmp/westlake-appspawn-exec-probe.log'
$remoteEmbeddedLog = '/data/local/tmp/westlake-embedded-art-dlopen-probe.log'
$remoteVmLog = "$remoteRoot/apks/probe-logs/appspawnx-2048-onCreateNullTrace.log"
$remoteGameState = "$remoteRoot/apks/probe-logs/2048-game-state.json"
$remoteGameStateProgress = "$remoteRoot/apks/probe-logs/2048-game-state-progress.txt"
$remoteEmbeddedExitCode = "$remoteRoot/apks/probe-logs/embedded-exit-code.txt"
$remoteDetail = "$remoteRoot/apks/probe-logs/detail.txt"
$remoteOut = '/data/local/tmp/westlake-appspawnx-2048-ams-exec.stdout'
$remoteErr = '/data/local/tmp/westlake-appspawnx-2048-ams-exec.stderr'
$remoteArtDir = "$remoteRoot/art"
$remoteCompatDir = "$remoteRoot/compat"
$remoteFrameworkDir = "$remoteRoot/framework-jars"
$remoteArt = "$remoteArtDir/libwestlake_art.so"

& $Hdc shell "ps -A | grep appspawn-x-prot | while read p rest; do kill -9 `$p 2>/dev/null; done; rm -f /dev/unix/socket/AppSpawnX; aa force-stop com.digiplex.game 2>&1"
& $Hdc shell "mkdir -p $remoteArtDir $remoteCompatDir $remoteFrameworkDir $remoteRoot/apks/probe-logs $remoteRoot/android/framework/core-jars $remoteRoot/android/lib64/sidecars $remoteRoot/android-data $remoteRoot/cache $remoteRoot/storage $remoteRoot/storage/emulated/0 $remoteRoot/metadata $remoteRoot/expand; rm -f $remoteEmbeddedLog $remoteGameState $remoteGameStateProgress $remoteEmbeddedExitCode $remoteDetail; rm -f $remoteCompatDir/libdl.so $remoteCompatDir/libm.so $remoteCompatDir/libz.so $remoteCompatDir/liblog.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/libdl.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/libm.so"
& $Hdc file send $ArtSource $remoteArt
if (Test-Path $conscryptJar) {
    & $Hdc file send $conscryptJar "$remoteRoot/android/framework/core-jars/conscrypt.jar"
}
if (Test-Path $mainlineStubsJar) {
    & $Hdc file send $mainlineStubsJar "$remoteRoot/android/framework/adapter-mainline-stubs.jar"
}
& $Hdc file send $frameworkDex "$remoteFrameworkDir/dayu600-framework-shim.dex"
& $Hdc file send $frameworkDex "$remoteRoot/apks/dayu600-framework-shim.dex"
& $Hdc file send $androidxDex "$remoteRoot/apks/dayu600-androidx-overlay-stub.dex"
& $Hdc file send $probeDex "$remoteRoot/apks/dayu600-apk-probe.dex"
& $Hdc file send $Apk "$remoteRoot/apks/2048-2-9.apk"
& $Hdc file send $compatSo $remoteCompatSo
& $Hdc file send $embeddedSo $remoteEmbeddedSo
& $Hdc file send $so $remoteSo
& $Hdc file send $proto $remoteProto
$preload = $remoteSo
if (Test-Path $SidecarSo) {
    & $Hdc file send $SidecarSo $remoteSidecarSo
    $preload = "$remoteSidecarSo $preload"
}
if (Test-Path $HeavyBridgeSo) {
    & $Hdc file send $HeavyBridgeSo $remoteHeavyBridgeSo
}
if (Test-Path $ImeHelperSo) {
    & $Hdc file send $ImeHelperSo $remoteImeHelperSo
}
& $Hdc shell "chmod 755 $remoteCompatSo $remoteEmbeddedSo $remoteSo $remoteProto $remoteArt $remoteSidecarSo $remoteHeavyBridgeSo $remoteImeHelperSo 2>/dev/null; rm -f $remoteProbeLog $remoteEmbeddedLog /data/local/tmp/westlake-art-compat-stubs.log $remoteVmLog $remoteOut $remoteErr /dev/unix/socket/AppSpawnX; mkdir -p /data/local/tmp/westlake-dayu600/apks/probe-logs; touch $remoteVmLog; chmod 666 $remoteVmLog"

$keepAliveFlag = if ($KeepAlive) { '1' } else { '0' }
$loadHeavyFlag = if ($LoadHeavyBridge) { '1' } else { '0' }
$omitFrameworkShimFlag = if ($OmitFrameworkShim) { '1' } else { '0' }
$skipTraceStepFlag = if ($SkipTraceStep) { '1' } else { '0' }
$heavyTiming = if ($LoadHeavyBridge) { $HeavyBridgeTiming } else { 'afterStage' }
$cmd = @"
ps -A | grep appspawn-x-prot | while read p rest; do kill -9 `$p 2>/dev/null; done
aa force-stop com.digiplex.game 2>&1
rm -f /dev/unix/socket/AppSpawnX
ANDROID_ROOT=$remoteRoot/android ANDROID_DATA=$remoteRoot/android-data ANDROID_EXPAND=$remoteRoot/expand ANDROID_STORAGE=$remoteRoot/storage EXTERNAL_STORAGE=$remoteRoot/storage/emulated/0 ANDROID_ART_ROOT=$remoteRoot/android/apex/com.android.art ANDROID_I18N_ROOT=$remoteRoot/android/apex/com.android.i18n ANDROID_TZDATA_ROOT=$remoteRoot/android/apex/com.android.tzdata DOWNLOAD_CACHE=$remoteRoot/cache OEM_ROOT=$remoteRoot/oem ODM_ROOT=$remoteRoot/odm VENDOR_ROOT=$remoteRoot/vendor PRODUCT_ROOT=$remoteRoot/product SYSTEM_EXT_ROOT=$remoteRoot/system_ext APEX_ROOT=$remoteRoot/android/apex LD_LIBRARY_PATH=${remoteArtDir}:${remoteRoot}/android/lib64:${remoteRoot}/probes:${remoteRoot}/android/lib64/sidecars:${remoteCompatDir}:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp WESTLAKE_ROOT=$remoteRoot WESTLAKE_LAYOUT=substrate WESTLAKE_TARGET=com.digiplex.game.MainActivity WESTLAKE_NO_EXIT=1 WESTLAKE_LOAD_COMPAT_STUBS=1 WESTLAKE_JAVA_STACK=1 WESTLAKE_LOAD_HEAVY_BRIDGE=$loadHeavyFlag WESTLAKE_HEAVY_BRIDGE_TIMING=$heavyTiming WESTLAKE_OMIT_FRAMEWORK_SHIM=$omitFrameworkShimFlag WESTLAKE_SKIP_TRACE_STEP=$skipTraceStepFlag WESTLAKE_APP_STAGE=$Stage LD_PRELOAD="$preload" $remoteProto -mode hybridspawn --process-name westlake.appspawnx.ams.exec --start-flags daemon --type standard --sandbox-switch on --bundle-name westlake.appspawnx.ams.exec --app-operate-type operate --render-command command --app-launch-type singleton --app-visible true >$remoteOut 2>$remoteErr &
pid=`$!
sleep 2
chmod 666 /dev/unix/socket/AppSpawnX 2>/dev/null
chown root:appspawn /dev/unix/socket/AppSpawnX 2>/dev/null || true
echo PROTO_PID:`$pid
ls -l /dev/unix/socket/AppSpawnX 2>&1
aa start -b com.digiplex.game -a com.digiplex.game.MainActivity -m entry 2>&1
sleep 25
echo __PS__
ps -A | grep -i -E 'digiplex|appspawn|dalvik|westlake'
echo __AMS_LOGS__
hilog -x | grep -i -E 'digiplex|MainActivity|2048|AndroidRuntime|dalvik|art|ClassLoader|Dex|base.apk|APK|AbilityThread|LoadLifecycle|AbilityTransition|Attach|appspawn|entry.hap|spawn|fail|error' | tail -240
if [ "$keepAliveFlag" = "1" ]; then
  echo KEEPALIVE_PROTO_PID:`$pid
else
  kill `$pid 2>/dev/null
  wait `$pid 2>/dev/null
  rm -f /dev/unix/socket/AppSpawnX 2>/dev/null
fi
echo appspawnx_2048_ams_exec_done
"@

& $Hdc shell $cmd
& $Hdc shell "echo ===exec-probe-log===; cat $remoteProbeLog 2>/dev/null; echo ===compat-stubs-log===; cat /data/local/tmp/westlake-art-compat-stubs.log 2>/dev/null; echo ===embedded-log===; cat $remoteEmbeddedLog 2>/dev/null; echo ===embedded-game-state-progress===; cat $remoteGameStateProgress 2>/dev/null; echo ===embedded-game-state===; cat $remoteGameState 2>/dev/null; echo ===embedded-exit-code===; cat $remoteEmbeddedExitCode 2>/dev/null; echo ===detail===; cat $remoteDetail 2>/dev/null; echo ===vm-log-tail===; tail -180 $remoteVmLog 2>/dev/null; echo ===stderr-tail===; tail -120 $remoteErr 2>/dev/null; echo ===stdout-tail===; tail -120 $remoteOut 2>/dev/null; echo ===remaining===; ls -l /dev/unix/socket/AppSpawnX 2>/dev/null"
