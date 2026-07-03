param(
    [string]$JavaHome = "$env:USERPROFILE\.vscode\extensions\redhat.java-1.42.0-win32-x64\jre\21.0.7-win32-x86_64",
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path
)

$ErrorActionPreference = 'Stop'

$jar = Join-Path $JavaHome 'bin\jar.exe'
if (!(Test-Path $jar)) {
    throw "Missing jar tool: $jar"
}

$shimDex = Join-Path $RepoRoot 'test-fixtures\dayu600-framework-shim\out\dayu600-framework-shim.dex'
if (!(Test-Path $shimDex)) {
    throw "Missing framework shim dex: $shimDex"
}

$out = Join-Path $RepoRoot 'ports\dayu600\out\framework-placeholder'
$work = Join-Path $out 'work'
Remove-Item -Recurse -Force $out -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $work | Out-Null

Copy-Item -LiteralPath $shimDex -Destination (Join-Path $work 'classes.dex') -Force

Push-Location $work
try {
    & $jar cf (Join-Path $out 'framework.jar') 'classes.dex'
    if ($LASTEXITCODE -ne 0) { throw "jar failed with $LASTEXITCODE" }
} finally {
    Pop-Location
}

Get-Item (Join-Path $out 'framework.jar') | Select-Object FullName,Length

