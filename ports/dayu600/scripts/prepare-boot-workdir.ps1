param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$SubstrateDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\substrate'),
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\boot-workdir'),
    [string]$Dex2Oat64 = '',
    [string]$LibDir = "$env:USERPROFILE\tools\lib64"
)

$ErrorActionPreference = 'Stop'

function Resolve-FirstExistingPath {
    param([string[]]$Candidates)
    foreach ($candidate in $Candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate)) {
            return (Resolve-Path -LiteralPath $candidate).Path
        }
    }
    return $null
}

function Copy-Jar {
    param(
        [string]$Name,
        [string]$Source,
        [string]$DexLocationName = $Name
    )
    $dest = Join-Path $frameworkDir $Name
    if (Test-Path -LiteralPath $Source) {
        Copy-Item -LiteralPath $Source -Destination $dest -Force
        $script:present += [ordered]@{ name = $Name; dexLocationName = $DexLocationName; source = $Source; destination = $dest }
    } else {
        $script:missing += [ordered]@{ name = $Name; dexLocationName = $DexLocationName; source = $Source; destination = $dest }
    }
}

Remove-Item -Recurse -Force $OutDir -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path
$frameworkDir = Join-Path $OutDir 'framework'
$arm64Dir = Join-Path $OutDir 'arm64'
$binDir = Join-Path $OutDir 'bin'
$bootLibDir = Join-Path $OutDir 'lib64'
New-Item -ItemType Directory -Force -Path $frameworkDir, $arm64Dir, $binDir, $bootLibDir | Out-Null

$SubstrateDir = (Resolve-Path -LiteralPath $SubstrateDir).Path
$fw = Join-Path $SubstrateDir 'android\framework'
$core = Join-Path $fw 'core-jars'

$script:present = @()
$script:missing = @()

# Real WestLake boot-image order must match appspawn-x kBootClasspath.
# Keep stringfactory.jar for standalone probes, but do not put it in this image.
$jarPlan = @(
    @{ Name = 'core-oj.jar'; Source = Join-Path $core 'core-oj-fieldfix.jar'; DexLocationName = 'core-oj.jar' },
    @{ Name = 'core-libart.jar'; Source = Join-Path $core 'core-libart.jar' },
    @{ Name = 'core-icu4j.jar'; Source = Join-Path $core 'core-icu4j.jar' },
    @{ Name = 'okhttp.jar'; Source = Join-Path $core 'okhttp.jar' },
    @{ Name = 'bouncycastle.jar'; Source = Join-Path $core 'bouncycastle.jar' },
    @{ Name = 'apache-xml.jar'; Source = Join-Path $core 'apache-xml.jar' },
    @{ Name = 'adapter-mainline-stubs.jar'; Source = Join-Path $fw 'adapter-mainline-stubs.jar' },
    @{ Name = 'framework.jar'; Source = Join-Path $fw 'framework.jar' },
    @{ Name = 'adapter-runtime-bcp.jar'; Source = Join-Path $fw 'adapter-runtime-bcp.jar' },
    @{ Name = 'oh-adapter-framework.jar'; Source = Join-Path $fw 'oh-adapter-framework.jar' }
)

foreach ($jar in $jarPlan) {
    $dexLocationName = if ($jar.DexLocationName) { $jar.DexLocationName } else { $jar.Name }
    Copy-Jar $jar.Name $jar.Source $dexLocationName
}

$bootClasspath = ($jarPlan | ForEach-Object {
    $dexLocationName = if ($_.DexLocationName) { $_.DexLocationName } else { $_.Name }
    "/system/android/framework/$dexLocationName"
}) -join ':'
$jarNames = ($jarPlan | ForEach-Object { $_.Name }) -join "`n"
$bootClasspath | Set-Content -LiteralPath (Join-Path $OutDir 'bootclasspath.txt') -Encoding ASCII
$jarNames | Set-Content -LiteralPath (Join-Path $OutDir 'jar-order.txt') -Encoding ASCII

$dexArgs = ($jarPlan | ForEach-Object {
    $dexLocationName = if ($_.DexLocationName) { $_.DexLocationName } else { $_.Name }
    "--dex-file=`"`$WORK/framework/$($_.Name)`" --dex-location=/system/android/framework/$dexLocationName"
}) -join " \`n  "

$resolvedDex2Oat = if ($Dex2Oat64) {
    Resolve-FirstExistingPath @($Dex2Oat64)
} else {
    Resolve-FirstExistingPath @(
        (Join-Path $env:USERPROFILE 'a2oh-source-audit\art-latest\build-ohos-arm64\bin\dex2oat'),
        (Join-Path $env:USERPROFILE 'tools\dex2oat64'),
        (Join-Path $env:USERPROFILE 'a2oh-source-audit\art-latest\build-bionic-arm64\bin\dex2oat')
    )
}

$stagedDex2Oat = $null
if ($resolvedDex2Oat) {
    $stagedDex2Oat = Join-Path $binDir 'dex2oat64'
    Copy-Item -LiteralPath $resolvedDex2Oat -Destination $stagedDex2Oat -Force
}

$resolvedLibDir = Resolve-FirstExistingPath @($LibDir)
$stagedSigchain = $null
if ($resolvedLibDir) {
    $sigchain = Join-Path $resolvedLibDir 'libsigchain.so'
    if (Test-Path -LiteralPath $sigchain) {
        $stagedSigchain = Join-Path $bootLibDir 'libsigchain.so'
        Copy-Item -LiteralPath $sigchain -Destination $stagedSigchain -Force
    }
}

$template = @'
#!/system/bin/sh
set -eu

WORK="${1:-/data/local/tmp/westlake-boot-workdir}"
DEX2OAT64="$WORK/bin/dex2oat64"
LIBDIR="$WORK/lib64"

if [ ! -f "$DEX2OAT64" ]; then
  echo "missing dex2oat64: $DEX2OAT64" >&2
  exit 2
fi
chmod 0755 "$DEX2OAT64" 2>/dev/null || true

if [ -f "$LIBDIR/libsigchain.so" ]; then
  export LD_LIBRARY_PATH="$LIBDIR${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
  export LD_PRELOAD="$LIBDIR/libsigchain.so${LD_PRELOAD:+:$LD_PRELOAD}"
fi

mkdir -p "$WORK/arm64"

"$DEX2OAT64" \
  --android-root=/system \
  --instruction-set=arm64 \
  --base=0x70000000 \
  --compiler-filter=speed \
  --runtime-arg -Xms64m \
  --runtime-arg -Xmx512m \
  --runtime-arg -Xverify:none \
  --image="$WORK/arm64/boot.art" \
  --oat-file="$WORK/arm64/boot.oat" \
  __DEX_ARGS__
'@
$template = $template.Replace('__DEX_ARGS__', $dexArgs)
$templatePath = Join-Path $OutDir 'regen_boot_arm64.on-device.sh'
$template | Set-Content -LiteralPath $templatePath -Encoding ASCII

$manifest = [ordered]@{
    generatedAt = (Get-Date).ToString('o')
    substrate = $SubstrateDir
    outDir = $OutDir
    instructionSet = 'arm64'
    notes = @(
        'This prepares a boot-image workdir only; it does not write /system.',
        'framework.jar is currently a headless placeholder, so a generated boot image would not prove real UI.',
        'regen_boot_arm64.on-device.sh is meant to run on the DAYU600 device under /data/local/tmp/westlake-boot-workdir.',
        'libsigchain.so is optional here because the staged OHOS dex2oat is currently static.'
    )
    dex2oat = [ordered]@{
        source = $resolvedDex2Oat
        staged = $stagedDex2Oat
        present = [bool]$resolvedDex2Oat
    }
    sigchain = [ordered]@{
        source = $stagedSigchain
        present = [bool]$stagedSigchain
    }
    present = $script:present
    missing = $script:missing
    bootClasspath = $bootClasspath
    template = $templatePath
}

$manifestPath = Join-Path $OutDir 'manifest.json'
$manifest | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $manifestPath -Encoding ASCII

Write-Output "boot workdir: $OutDir"
Write-Output "present jars: $($script:present.Count)"
Write-Output "missing jars: $($script:missing.Count)"
Write-Output "template: $templatePath"
