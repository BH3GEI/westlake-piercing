param(
    [string]$AndroidSdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$JavaHome = "$env:USERPROFILE\.vscode\extensions\redhat.java-1.42.0-win32-x64\jre\21.0.7-win32-x86_64"
)

$ErrorActionPreference = 'Stop'

$port = Resolve-Path (Join-Path $PSScriptRoot '..')
$src = Join-Path $port 'oh-adapter-framework-src'
$out = Join-Path $port 'out\oh-adapter-framework'
$classes = Join-Path $out 'classes'
$dexOut = Join-Path $out 'dex'

$buildTools = Join-Path $AndroidSdk 'build-tools\36.0.0'
$androidJar = Join-Path $AndroidSdk 'platforms\android-35\android.jar'
$javac = Join-Path $JavaHome 'bin\javac.exe'
$jar = Join-Path $JavaHome 'bin\jar.exe'
$d8 = Join-Path $buildTools 'd8.bat'

foreach ($path in @($androidJar, $javac, $jar, $d8)) {
    if (!(Test-Path $path)) {
        throw "Missing required build tool: $path"
    }
}

$env:JAVA_HOME = $JavaHome
$env:PATH = (Join-Path $JavaHome 'bin') + [IO.Path]::PathSeparator + $env:PATH

Remove-Item -Recurse -Force $out -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $classes, $dexOut | Out-Null

$sources = Get-ChildItem -Path $src -Recurse -Filter '*.java' |
    ForEach-Object { $_.FullName }
$javacArgs = @('--release', '8', '-cp', $androidJar, '-d', $classes) + $sources
& $javac @javacArgs
if ($LASTEXITCODE -ne 0) { throw "javac failed with $LASTEXITCODE" }

Push-Location $port
try {
    $classFiles = @(Get-ChildItem -Path 'out\oh-adapter-framework\classes' -Recurse -Filter '*.class' |
        ForEach-Object { $_.FullName.Substring($port.Path.Length + 1) })
    & $d8 --lib $androidJar --min-api 24 --output 'out\oh-adapter-framework\dex' @classFiles
    if ($LASTEXITCODE -ne 0) { throw "d8 failed with $LASTEXITCODE" }

    Push-Location (Join-Path $out 'dex')
    try {
        & $jar cf (Join-Path $out 'oh-adapter-framework.jar') 'classes.dex'
        if ($LASTEXITCODE -ne 0) { throw "jar failed with $LASTEXITCODE" }
    } finally {
        Pop-Location
    }
} finally {
    Pop-Location
}

Get-Item (Join-Path $out 'oh-adapter-framework.jar') | Select-Object FullName,Length

