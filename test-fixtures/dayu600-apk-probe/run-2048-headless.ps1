param(
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$Apk = "$env:USERPROFILE\Downloads\2048-2-9.apk",
    [string]$RemoteRoot = "/data/local/tmp/westlake-dayu600",
    [string[]]$Stages = @(
        "stringValueOnly",
        "intParse",
        "prefsKTrace",
        "privateR",
        "onCreateNullTrace",
        "onCreateManual",
        "gameStateJson",
        "gameMoveJson"
    ),
    [ValidateSet('full', 'support', 'preferences', 'none')]
    [string]$GameOverlayFlavor = 'none',
    [switch]$SkipBuild,
    [switch]$SkipUpload
)

$ErrorActionPreference = 'Stop'

$probeDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$fixtures = Split-Path -Parent $probeDir
$repo = Split-Path -Parent $fixtures

$frameworkDir = Join-Path $fixtures 'dayu600-framework-shim'
$androidxDir = Join-Path $fixtures 'dayu600-androidx-overlay-stub'
$gameDir = Join-Path $fixtures 'dayu600-game-overlay-stub'

$frameworkDex = Join-Path $frameworkDir 'out\dayu600-framework-shim.dex'
$androidxDex = Join-Path $androidxDir 'out\dayu600-androidx-overlay-stub.dex'
$gameDexName = switch ($GameOverlayFlavor) {
    'full' { 'dayu600-game-overlay-stub.dex' }
    'support' { 'dayu600-game-support-overlay-stub.dex' }
    'preferences' { 'dayu600-game-preferences-overlay-stub.dex' }
    default { $null }
}
$gameDex = if ($gameDexName) { Join-Path $gameDir "out\$gameDexName" } else { $null }
$probeDex = Join-Path $probeDir 'out\dayu600-apk-probe.dex'

function Invoke-Checked {
    param(
        [string]$Label,
        [scriptblock]$Block
    )

    Write-Host "== $Label =="
    & $Block
    if ($LASTEXITCODE -ne 0) {
        throw "$Label failed with exit code $LASTEXITCODE"
    }
}

foreach ($path in @($Hdc, $Apk)) {
    if (!(Test-Path -LiteralPath $path)) {
        throw "Missing required file: $path"
    }
}

if (!$SkipBuild) {
    Invoke-Checked 'build framework shim' { & powershell -ExecutionPolicy Bypass -File (Join-Path $frameworkDir 'build-framework-shim.ps1') }
    Invoke-Checked 'build androidx overlay' { & powershell -ExecutionPolicy Bypass -File (Join-Path $androidxDir 'build-overlay.ps1') }
    if ($GameOverlayFlavor -ne 'none') {
        Invoke-Checked "build game overlay ($GameOverlayFlavor)" {
            & powershell -ExecutionPolicy Bypass -File (Join-Path $gameDir 'build-game-overlay.ps1') -Flavor $GameOverlayFlavor
        }
    }
    Invoke-Checked 'build apk probe' { & powershell -ExecutionPolicy Bypass -File (Join-Path $probeDir 'build-probe.ps1') }
}

$builtDexes = @($frameworkDex, $androidxDex, $probeDex)
if ($gameDex) {
    $builtDexes += $gameDex
}

foreach ($path in $builtDexes) {
    if (!(Test-Path -LiteralPath $path)) {
        throw "Missing built dex: $path"
    }
}

if (!$SkipUpload) {
    Invoke-Checked 'create remote dirs' { & $Hdc shell "mkdir -p $RemoteRoot/apks $RemoteRoot/framework-jars $RemoteRoot/apks/probe-logs" }
    Invoke-Checked 'upload 2048 apk' { & $Hdc file send $Apk "$RemoteRoot/apks/2048-2-9.apk" }
    Invoke-Checked 'upload framework shim' { & $Hdc file send $frameworkDex "$RemoteRoot/framework-jars/dayu600-framework-shim.dex" }
    Invoke-Checked 'upload androidx overlay' { & $Hdc file send $androidxDex "$RemoteRoot/apks/dayu600-androidx-overlay-stub.dex" }
    if ($gameDex) {
        Invoke-Checked "upload game overlay ($GameOverlayFlavor)" { & $Hdc file send $gameDex "$RemoteRoot/apks/$gameDexName" }
    }
    Invoke-Checked 'upload probe' { & $Hdc file send $probeDex "$RemoteRoot/apks/dayu600-apk-probe.dex" }
}

$stageList = ($Stages | ForEach-Object { $_.Replace("'", "'\''") }) -join ' '
$gameCp = if ($gameDexName) { ":./apks/$gameDexName" } else { "" }
$remote = @"
cd $RemoteRoot || exit 2
mkdir -p ./apks/probe-logs
vm=./art/dalvikvm-dayu600-monitorfix
boot=-Xbootclasspath:./core-jars/stringfactory.jar:./core-jars/core-oj-fieldfix.jar:./core-jars/core-libart.jar:./core-jars/core-icu4j.jar:./core-jars/bouncycastle.jar:./core-jars/apache-xml.jar:./framework-jars/dayu600-framework-shim.dex:./framework-jars/android-35-ctor-noop.dex
cp=./apks/dayu600-androidx-overlay-stub.dex${gameCp}:./apks/dayu600-apk-probe.dex:./apks/2048-2-9.apk
fail=0
for s in $stageList; do
  log=./apks/probe-logs/2048-headless-`$s.log
  rm -f ./apks/probe-logs/detail.txt ./apks/probe-logs/2048-game-state.json
  printf 'com.digiplex.game.MainActivity\n%s\n0\n' "`$s" > ./apks/probe-args.txt
  timeout 45 `$vm `$boot -Xverify:none -classpath `$cp Dayu600ApkStageProbe > `$log 2>&1
  rc=`$?
  bytes=`$(wc -c < `$log)
  echo "`$s RC:`$rc BYTES:`$bytes LOG:`$log"
  if [ -s ./apks/probe-logs/detail.txt ]; then sed -n '1,14p' ./apks/probe-logs/detail.txt; fi
  if [ -s ./apks/probe-logs/2048-game-state.json ]; then cat ./apks/probe-logs/2048-game-state.json; echo; fi
  if [ `$rc -ne 0 ]; then fail=`$rc; fi
done
exit `$fail
"@

Invoke-Checked 'run 2048 headless lifecycle probe' { & $Hdc shell $remote }
