param(
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$ArtSource = "$env:USERPROFILE\a2oh-source-audit\art-latest\build-bionic-arm64\lib\libwestlake_art.so",
    [ValidateSet('onCreateNullTrace', 'gameStateJson', 'gameMoveJson', 'privateR', 'intParse', 'stringValueOnly')]
    [string]$Stage = 'onCreateNullTrace',
    [switch]$SkipBuild
    ,
    [switch]$CreateVm
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkipBuild) {
    & (Join-Path $fixture 'build-dlopen-probe.ps1')
}

$probe = Join-Path $fixture 'out\libwestlake_embedded_art_dlopen_probe.so'
foreach ($path in @($Hdc, $ArtSource, $probe)) {
    if (-not (Test-Path -LiteralPath $path)) {
        throw "missing required file: $path"
    }
}

$remoteRoot = '/data/local/tmp/westlake-dayu600'
$remoteArtDir = "$remoteRoot/art"
$remoteCompatDir = "$remoteRoot/compat"
$remoteArt = "$remoteArtDir/libwestlake_art.so"
$remoteProbe = '/data/local/tmp/libwestlake_embedded_art_dlopen_probe.so'
$remoteLog = '/data/local/tmp/westlake-embedded-art-dlopen-probe.log'
$remoteStdout = '/data/local/tmp/westlake-embedded-art-dlopen-probe.stdout'
$remoteArgs = "$remoteRoot/apks/probe-args.txt"
$remoteGameState = "$remoteRoot/apks/probe-logs/2048-game-state.json"

& $Hdc shell "mkdir -p $remoteArtDir $remoteCompatDir $remoteRoot/apks $remoteRoot/apks/probe-logs; rm -f $remoteLog $remoteStdout $remoteGameState $remoteProbe; printf 'com.digiplex.game.MainActivity\n$Stage\n0\n' > $remoteArgs"
& $Hdc file send $ArtSource $remoteArt
& $Hdc file send $probe $remoteProbe
& $Hdc shell "chmod 755 $remoteProbe $remoteArt; rm -f $remoteCompatDir/libdl.so $remoteCompatDir/libm.so $remoteCompatDir/libz.so $remoteCompatDir/liblog.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/libdl.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/libm.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/libz.so; ln -s /system/lib/ld-musl-aarch64.so.1 $remoteCompatDir/liblog.so"

$createVmEnv = if ($CreateVm) { "WESTLAKE_CREATE_VM=1 WESTLAKE_STAGE=$Stage " } else { "WESTLAKE_DLOPEN_ON_LOAD=1 " }
$cmd = "LD_LIBRARY_PATH=${remoteCompatDir}:/system/lib64 ${createVmEnv}LD_PRELOAD=$remoteProbe /system/bin/toybox true >$remoteStdout 2>&1; echo RC:`$?; echo ===embedded-art-dlopen-log===; cat $remoteLog 2>/dev/null; echo ===embedded-game-state===; cat $remoteGameState 2>/dev/null; echo ===runtime-tail===; tail -n 40 $remoteStdout 2>/dev/null"
& $Hdc shell $cmd
