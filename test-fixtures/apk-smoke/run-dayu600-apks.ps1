param(
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$Target = "5ce2dcee00000000000000000923012c"
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo = Split-Path -Parent (Split-Path -Parent $fixture)
$build = Join-Path $fixture 'build-apks.ps1'

& powershell -ExecutionPolicy Bypass -File $build
if ($LASTEXITCODE -ne 0) { throw "APK build failed with $LASTEXITCODE" }

& $Hdc -t $Target shell "mkdir -p /data/local/tmp/westlake-dayu600/apks"
foreach ($apk in @('hello-smoke.apk', 'thread-smoke.apk', 'urlzip-smoke.apk')) {
    & $Hdc -t $Target file send (Join-Path $fixture "out\$apk") "/data/local/tmp/westlake-dayu600/apks/$apk"
    if ($LASTEXITCODE -ne 0) { throw "hdc send failed for $apk with $LASTEXITCODE" }
}

$bcp = '-Xbootclasspath:./core-jars/core-oj-fieldfix.jar:./core-jars/core-libart.jar:./core-jars/core-icu4j.jar:./core-jars/bouncycastle.jar:./core-jars/apache-xml.jar:./core-jars/okhttp.jar -Xverify:none'
$vm = './art/dalvikvm-pristine-plus-classfix-threadjni-pathloader-charurl2'
$runs = @(
    @('hello-smoke.apk', 'com.westlake.apk.HelloApkMain'),
    @('thread-smoke.apk', 'com.westlake.apk.ThreadApkMain'),
    @('urlzip-smoke.apk', 'com.westlake.apk.UrlZipApkMain')
)

foreach ($run in $runs) {
    $apk = $run[0]
    $className = $run[1]
    Write-Host "===== $apk ====="
    & $Hdc -t $Target shell "cd /data/local/tmp/westlake-dayu600; timeout 25 $vm $bcp -classpath ./apks/$apk $className > ./apks/$apk.log 2>&1; rc=`$?; echo rc:`$rc; grep -E 'Native classpath open|Calling main|main\(\) returned|Exception class|FATAL|SIG|AssertionError|UnsatisfiedLinkError' ./apks/$apk.log | tail -30"
}
