param(
    [string]$AndroidSdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$JavaHome = "$env:USERPROFILE\.vscode\extensions\redhat.java-1.42.0-win32-x64\jre\21.0.7-win32-x86_64"
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$fixtures = Split-Path -Parent $fixture
$out = Join-Path $fixture 'out'
$classes = Join-Path $out 'classes'
$dexOut = Join-Path $out 'dex'

$buildTools = Join-Path $AndroidSdk 'build-tools\36.0.0'
$androidJar = Join-Path $AndroidSdk 'platforms\android-35\android.jar'
$javac = Join-Path $JavaHome 'bin\javac.exe'
$d8 = Join-Path $buildTools 'd8.bat'

foreach ($path in @($androidJar, $javac, $d8)) {
    if (!(Test-Path $path)) {
        throw "Missing required build tool: $path"
    }
}

$env:JAVA_HOME = $JavaHome
$env:PATH = (Join-Path $JavaHome 'bin') + [IO.Path]::PathSeparator + $env:PATH

Remove-Item -Recurse -Force $out -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $classes, $dexOut | Out-Null

$sources = Get-ChildItem -Path $fixture -Recurse -Filter '*.java' |
    ForEach-Object { $_.FullName }
$frameworkClasses = Join-Path $fixtures 'dayu600-framework-shim\out\classes'
$compileClasspath = if (Test-Path $frameworkClasses) {
    $frameworkClasses + [IO.Path]::PathSeparator + $androidJar
} else {
    $androidJar
}
& $javac --release 8 -cp $compileClasspath -d $classes @sources
if ($LASTEXITCODE -ne 0) { throw "javac failed with $LASTEXITCODE" }

$compileOnlyStub = Join-Path $classes 'com\digiplex\game\CustomButton.class'
Remove-Item -Force $compileOnlyStub -ErrorAction SilentlyContinue

Push-Location $fixture
try {
    $classFiles = @(Get-ChildItem -Path 'out\classes' -Recurse -Filter '*.class' |
        ForEach-Object { $_.FullName.Substring($fixture.Length + 1) })
    & $d8 --lib $androidJar --min-api 24 --output 'out\dex' @classFiles
    if ($LASTEXITCODE -ne 0) { throw "d8 failed with $LASTEXITCODE" }
} finally {
    Pop-Location
}

Copy-Item -Force (Join-Path $dexOut 'classes.dex') (Join-Path $out 'dayu600-androidx-overlay-stub.dex')
Get-Item (Join-Path $out 'dayu600-androidx-overlay-stub.dex') | Select-Object FullName,Length
