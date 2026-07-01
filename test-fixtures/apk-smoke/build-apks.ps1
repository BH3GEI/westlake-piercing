param(
    [string]$AndroidSdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$JavaHome = "$env:USERPROFILE\.vscode\extensions\redhat.java-1.42.0-win32-x64\jre\21.0.7-win32-x86_64"
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path $fixture 'out'
$classes = Join-Path $out 'classes'
$dexRoot = Join-Path $out 'dex'
$flat = Join-Path $out 'flat'
$unsigned = Join-Path $out 'unsigned'
$aligned = Join-Path $out 'aligned'
$signed = Join-Path $out 'signed'

$buildTools = Join-Path $AndroidSdk 'build-tools\36.0.0'
$androidJar = Join-Path $AndroidSdk 'platforms\android-35\android.jar'
$javac = Join-Path $JavaHome 'bin\javac.exe'
$jar = Join-Path $JavaHome 'bin\jar.exe'
$keytool = Join-Path $JavaHome 'bin\keytool.exe'
$d8 = Join-Path $buildTools 'd8.bat'
$aapt2 = Join-Path $buildTools 'aapt2.exe'
$zipalign = Join-Path $buildTools 'zipalign.exe'
$apksigner = Join-Path $buildTools 'apksigner.bat'
$keystore = Join-Path $out 'debug.keystore'

foreach ($path in @($androidJar, $javac, $jar, $keytool, $d8, $aapt2, $zipalign, $apksigner)) {
    if (!(Test-Path $path)) {
        throw "Missing required build tool: $path"
    }
}

$env:JAVA_HOME = $JavaHome
$env:PATH = (Join-Path $JavaHome 'bin') + [IO.Path]::PathSeparator + $env:PATH

Remove-Item -Recurse -Force $out -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $classes, $dexRoot, $flat, $unsigned, $aligned, $signed | Out-Null

$sources = Get-ChildItem -Path (Join-Path $fixture 'src') -Recurse -Filter '*.java' | ForEach-Object { $_.FullName }
& $javac --release 8 -d $classes @sources
if ($LASTEXITCODE -ne 0) { throw "javac failed with $LASTEXITCODE" }

& $aapt2 compile --dir (Join-Path $fixture 'res') -o $flat
if ($LASTEXITCODE -ne 0) { throw "aapt2 compile failed with $LASTEXITCODE" }

if (!(Test-Path $keystore)) {
    & $keytool -genkeypair -keystore $keystore -storepass android -keypass android -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000 -dname 'CN=Android Debug,O=Android,C=US' | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "keytool failed with $LASTEXITCODE" }
}

$apps = @(
    @{ Name = 'hello-smoke'; Main = 'com.westlake.apk.HelloApkMain' },
    @{ Name = 'thread-smoke'; Main = 'com.westlake.apk.ThreadApkMain' },
    @{ Name = 'urlzip-smoke'; Main = 'com.westlake.apk.UrlZipApkMain' }
)

foreach ($app in $apps) {
    $dexOut = Join-Path $dexRoot $app.Name
    New-Item -ItemType Directory -Force $dexOut | Out-Null
    $classFiles = Get-ChildItem -Path $classes -Recurse -Filter '*.class' | ForEach-Object { $_.FullName }
    & $d8 --lib $androidJar --min-api 23 --output $dexOut @classFiles
    if ($LASTEXITCODE -ne 0) { throw "d8 failed for $($app.Name) with $LASTEXITCODE" }

    $manifest = Join-Path $out "$($app.Name)-AndroidManifest.xml"
    (Get-Content (Join-Path $fixture 'AndroidManifest.xml') -Raw).Replace(
        '<application android:label="@string/app_name" android:hasCode="true" />',
        '<application android:label="@string/app_name" android:hasCode="true"><activity android:name="' + $app.Main + '" android:exported="true" /></application>'
    ) | Set-Content -Encoding UTF8 $manifest

    $unsignedApk = Join-Path $unsigned "$($app.Name).apk"
    $flatArgs = @()
    foreach ($flatFile in (Get-ChildItem -Path $flat -File)) {
        $flatArgs += '-R'
        $flatArgs += $flatFile.FullName
    }
    & $aapt2 link -I $androidJar --auto-add-overlay --manifest $manifest -o $unsignedApk @flatArgs
    if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed for $($app.Name) with $LASTEXITCODE" }

    Push-Location $dexOut
    try {
        & $jar uf $unsignedApk classes.dex
        if ($LASTEXITCODE -ne 0) { throw "jar update failed for $($app.Name) with $LASTEXITCODE" }
    } finally {
        Pop-Location
    }

    $alignedApk = Join-Path $aligned "$($app.Name).apk"
    $signedApk = Join-Path $signed "$($app.Name).apk"
    & $zipalign -f 4 $unsignedApk $alignedApk
    if ($LASTEXITCODE -ne 0) { throw "zipalign failed for $($app.Name) with $LASTEXITCODE" }
    & $apksigner sign --ks $keystore --ks-pass pass:android --key-pass pass:android --out $signedApk $alignedApk
    if ($LASTEXITCODE -ne 0) { throw "apksigner failed for $($app.Name) with $LASTEXITCODE" }
    Copy-Item -Force $signedApk (Join-Path $out "$($app.Name).apk")
}

Get-ChildItem -Path $out -Filter '*-smoke.apk' | Select-Object Name,Length,FullName
