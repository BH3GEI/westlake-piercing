param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$ArtRoot = "$env:USERPROFILE\a2oh-source-audit\art-latest",
    [string]$Apk = "$env:USERPROFILE\Downloads\2048-2-9.apk",
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\substrate'),
    [string]$Hdc = "$env:USERPROFILE\Desktop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe",
    [string]$RemoteRoot = '/data/local/tmp/westlake-dayu600-substrate',
    [switch]$Push
)

$ErrorActionPreference = 'Stop'

function Add-ManifestEntry {
    param(
        [ValidateSet('present', 'missing', 'optionalMissing')]
        [string]$Bucket,
        [string]$Name,
        [string]$Source,
        [string]$Destination,
        [string]$Role
    )
    $entry = [ordered]@{
        name = $Name
        source = $Source
        destination = $Destination
        role = $Role
    }
    switch ($Bucket) {
        'present' { $script:present = @($script:present) + $entry }
        'missing' { $script:missing = @($script:missing) + $entry }
        'optionalMissing' { $script:optionalMissing = @($script:optionalMissing) + $entry }
    }
}

function Copy-IfExists {
    param(
        [string]$Name,
        [string]$Source,
        [string]$Destination,
        [string]$Role,
        [switch]$Required
    )
    if (Test-Path $Source) {
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $Destination) | Out-Null
        Copy-Item -LiteralPath $Source -Destination $Destination -Force
        Add-ManifestEntry -Bucket 'present' -Name $Name -Source $Source -Destination $Destination -Role $Role
        return $true
    }

    $bucket = if ($Required) { 'missing' } else { 'optionalMissing' }
    Add-ManifestEntry -Bucket $bucket -Name $Name -Source $Source -Destination $Destination -Role $Role
    return $false
}

function Convert-ToRemotePath {
    param([string]$Path)
    $relative = Resolve-Path -LiteralPath $Path -Relative
    $relative = $relative -replace '^\.[\\/]', ''
    return ($RemoteRoot.TrimEnd('/') + '/' + ($relative -replace '\\', '/'))
}

$script:present = @()
$script:missing = @()
$script:optionalMissing = @()

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path

$sidecarDir = Join-Path $RepoRoot 'ports\dayu600\out\sidecars'
$androidRuntimeDir = Join-Path $RepoRoot 'ports\dayu600\out\android-runtime'
$adapterRuntimeDir = Join-Path $RepoRoot 'ports\dayu600\out\adapter-runtime'
$ohAdapterFrameworkDir = Join-Path $RepoRoot 'ports\dayu600\out\oh-adapter-framework'
$adapterMainlineStubsDir = Join-Path $RepoRoot 'ports\dayu600\out\adapter-mainline-stubs'
$frameworkPlaceholderDir = Join-Path $RepoRoot 'ports\dayu600\out\framework-placeholder'
$portAppspawnOut = Join-Path $RepoRoot 'ports\dayu600\out\appspawnx'
$appspawnProbeOut = Join-Path $RepoRoot 'test-fixtures\dayu600-appspawn-probe\out'
$embeddedProbeOut = Join-Path $RepoRoot 'test-fixtures\dayu600-embedded-art-probe\out'
$apkProbeOut = Join-Path $RepoRoot 'test-fixtures\dayu600-apk-probe\out'
$frameworkShimOut = Join-Path $RepoRoot 'test-fixtures\dayu600-framework-shim\out'
$androidxShimOut = Join-Path $RepoRoot 'test-fixtures\dayu600-androidx-overlay-stub\out'

$artLibCandidates = @(
    (Join-Path $ArtRoot 'build-ohos-arm64\lib\libwestlake_art.so'),
    (Join-Path $ArtRoot 'build-bionic-arm64\lib\libwestlake_art.so')
)
$artLib = $artLibCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
if (-not $artLib) {
    $artLib = $artLibCandidates[0]
}
Copy-IfExists 'libwestlake_art.so' $artLib (Join-Path $OutDir 'art\libwestlake_art.so') 'current arm64 ART candidate used by the DAYU600 probes' -Required | Out-Null
Copy-IfExists 'libart.so alias' $artLib (Join-Path $OutDir 'android\lib64\libart.so') 'future real adapter lib64 layout alias; same bytes as libwestlake_art.so for now' -Required | Out-Null

$coreJarNames = @(
    'stringfactory.jar',
    'core-oj-fieldfix.jar',
    'core-libart.jar',
    'core-icu4j.jar',
    'bouncycastle.jar',
    'apache-xml.jar',
    'okhttp.jar'
)
foreach ($jar in $coreJarNames) {
    Copy-IfExists $jar (Join-Path $ArtRoot "core-jars\$jar") (Join-Path $OutDir "android\framework\core-jars\$jar") 'AOSP core bootclasspath jar for the temporary arm64 ART path' -Required | Out-Null
}

$bootImageDir = Join-Path $RepoRoot 'ports\dayu600\out\boot-workdir\arm64'
$bootImageFiles = @(
    'boot.art',
    'boot.oat',
    'boot.vdex'
)
if (Test-Path -LiteralPath $bootImageDir) {
    $bootImageFiles += Get-ChildItem -LiteralPath $bootImageDir -File -Filter 'boot-*.*' |
        Select-Object -ExpandProperty Name
    $bootImageFiles = $bootImageFiles | Sort-Object -Unique
}
foreach ($file in $bootImageFiles) {
    Copy-IfExists $file `
        (Join-Path $bootImageDir $file) `
        (Join-Path $OutDir "android\framework\arm64\$file") `
        'generated DAYU600 arm64 boot image segment paired with the staged bootclasspath jars' `
        -Required | Out-Null
}

$sidecars = @(
    'libwestlake_dayu600_sidecar.so',
    'libwestlake_dayu600_bridge_heavy.so',
    'liboh_adapter_bridge.so',
    'liboh_ime_helper.so'
)
foreach ($so in $sidecars) {
    Copy-IfExists $so (Join-Path $sidecarDir $so) (Join-Path $OutDir "android\lib64\sidecars\$so") 'DAYU600 native bridge sidecar built against OHOS arm64 libs' | Out-Null
}

Copy-IfExists 'liboh_adapter_bridge.so canonical path' `
    (Join-Path $sidecarDir 'liboh_adapter_bridge.so') `
    (Join-Path $OutDir 'android\lib64\liboh_adapter_bridge.so') `
    'canonical legacy adapter bridge name used by liboh_android_runtime.so and libhwui.so dlopen paths' | Out-Null

Copy-IfExists 'liboh_android_runtime.so' `
    (Join-Path $androidRuntimeDir 'liboh_android_runtime.so') `
    (Join-Path $OutDir 'android\lib64\liboh_android_runtime.so') `
    'minimal DAYU600 AndroidRuntime JNI registration layer; first reconstructed real adapter piece' | Out-Null

Copy-IfExists 'adapter-runtime-bcp.jar' `
    (Join-Path $adapterRuntimeDir 'adapter-runtime-bcp.jar') `
    (Join-Path $OutDir 'android\framework\adapter-runtime-bcp.jar') `
    'minimal dex jar containing com.android.internal.os.AppSpawnXInit for appspawn-x preload/initChild' | Out-Null

Copy-IfExists 'oh-adapter-framework.jar' `
    (Join-Path $ohAdapterFrameworkDir 'oh-adapter-framework.jar') `
    (Join-Path $OutDir 'android\framework\oh-adapter-framework.jar') `
    'minimal dex jar containing preloadable adapter framework skeleton classes' | Out-Null

Copy-IfExists 'adapter-mainline-stubs.jar' `
    (Join-Path $adapterMainlineStubsDir 'adapter-mainline-stubs.jar') `
    (Join-Path $OutDir 'android\framework\adapter-mainline-stubs.jar') `
    'minimal dex jar containing android.net mainline/service compatibility stubs' | Out-Null

Copy-IfExists 'framework.jar headless placeholder' `
    (Join-Path $frameworkPlaceholderDir 'framework.jar') `
    (Join-Path $OutDir 'android\framework\framework.jar') `
    'temporary headless framework shim packaged as framework.jar; enables classpath progress but does not provide real Android UI' | Out-Null

$portAppspawnFiles = @(
    @{ Name = 'appspawn-x.dayu600'; Source = Join-Path $portAppspawnOut 'appspawn-x.dayu600'; Dest = 'android\bin\appspawn-x.dayu600'; Role = 'temporary DAYU600 arm64 AppSpawnX prototype derived from stock appspawn' },
    @{ Name = 'start-appspawnx-dayu600.sh'; Source = Join-Path $portAppspawnOut 'start-appspawnx-dayu600.sh'; Dest = 'android\bin\start-appspawnx-dayu600.sh'; Role = 'manual /data/local/tmp launcher for the temporary AppSpawnX prototype' },
    @{ Name = 'appspawnx-dayu600.manifest.json'; Source = Join-Path $portAppspawnOut 'appspawnx-dayu600.manifest.json'; Dest = 'android\bin\appspawnx-dayu600.manifest.json'; Role = 'provenance for the temporary AppSpawnX prototype' }
)
foreach ($file in $portAppspawnFiles) {
    Copy-IfExists $file.Name $file.Source (Join-Path $OutDir $file.Dest) $file.Role | Out-Null
}

$probeFiles = @(
    @{ Name = 'appspawn-x-proto'; Source = Join-Path $appspawnProbeOut 'appspawn-x-proto'; Dest = 'bin\appspawn-x-proto'; Role = 'temporary stock-appspawn-derived AppSpawnX socket prototype' },
    @{ Name = 'libwestlake_appspawn_exec_probe.so'; Source = Join-Path $appspawnProbeOut 'libwestlake_appspawn_exec_probe.so'; Dest = 'probes\libwestlake_appspawn_exec_probe.so'; Role = 'temporary child hook that embeds the ART probe' },
    @{ Name = 'libwestlake_art_compat_stubs.so'; Source = Join-Path $appspawnProbeOut 'libwestlake_art_compat_stubs.so'; Dest = 'probes\libwestlake_art_compat_stubs.so'; Role = 'temporary bionic compatibility stubs for probe loading' },
    @{ Name = 'libwestlake_embedded_art_dlopen_probe.so'; Source = Join-Path $embeddedProbeOut 'libwestlake_embedded_art_dlopen_probe.so'; Dest = 'probes\libwestlake_embedded_art_dlopen_probe.so'; Role = 'temporary embedded ART launcher used inside the app child' },
    @{ Name = 'dayu600-apk-probe.dex'; Source = Join-Path $apkProbeOut 'dayu600-apk-probe.dex'; Dest = 'apks\dayu600-apk-probe.dex'; Role = 'Java stage probe for the 2048 APK' },
    @{ Name = 'dayu600-framework-shim.dex'; Source = Join-Path $frameworkShimOut 'dayu600-framework-shim.dex'; Dest = 'apks\dayu600-framework-shim.dex'; Role = 'headless probe-only Android framework shim; not sufficient for real UI' },
    @{ Name = 'dayu600-androidx-overlay-stub.dex'; Source = Join-Path $androidxShimOut 'dayu600-androidx-overlay-stub.dex'; Dest = 'apks\dayu600-androidx-overlay-stub.dex'; Role = 'probe-only AndroidX overlay stub' }
)
foreach ($file in $probeFiles) {
    Copy-IfExists $file.Name $file.Source (Join-Path $OutDir $file.Dest) $file.Role | Out-Null
}

Copy-IfExists '2048-2-9.apk' $Apk (Join-Path $OutDir 'apks\2048-2-9.apk') 'stock target APK, package com.digiplex.game' -Required | Out-Null

$realAdapterRequired = @(
    @{ Name = 'real appspawn-x'; Dest = 'android\bin\appspawn-x'; Role = 'westlake zygote-equivalent built for aarch64; current repo lacks source/build tree' },
    @{ Name = 'liboh_android_runtime.so'; Dest = 'android\lib64\liboh_android_runtime.so'; Role = 'real AndroidRuntime JNI registration layer; required for true ViewRoot/Surface UI' },
    @{ Name = 'libhwui.so'; Dest = 'android\lib64\libhwui.so'; Role = 'AOSP hwui with OH EGL/ANativeWindow patch; required for rendering' },
    @{ Name = 'framework.jar'; Dest = 'android\framework\framework.jar'; Role = 'real patched AOSP framework; current probe shim is headless only' },
    @{ Name = 'adapter-runtime-bcp.jar'; Dest = 'android\framework\adapter-runtime-bcp.jar'; Role = 'westlake BCP runtime package info/lifecycle glue' },
    @{ Name = 'oh-adapter-framework.jar'; Dest = 'android\framework\oh-adapter-framework.jar'; Role = 'westlake Java adapter bridge classes' },
    @{ Name = 'adapter-mainline-stubs.jar'; Dest = 'android\framework\adapter-mainline-stubs.jar'; Role = 'westlake mainline service stubs used by the real bootclasspath' },
    @{ Name = 'arm64 boot image'; Dest = 'android\framework\arm64\boot.art'; Role = 'dex2oat64 output paired with the exact framework jar set' }
)
foreach ($item in $realAdapterRequired) {
    $dest = Join-Path $OutDir $item.Dest
    if (-not (Test-Path $dest)) {
        Add-ManifestEntry -Bucket 'missing' -Name $item.Name -Source '<not recovered yet>' -Destination $dest -Role $item.Role
    }
}

$manifest = [ordered]@{
    generatedAt = (Get-Date).ToString('o')
    target = 'HH-SCDAYU600 / DAYU600 / uis7885 / arm64-v8a'
    outDir = $OutDir
    notes = @(
        'This staging tree is safe by default: it does not write /system.',
        'Probe-only framework shim proves APK bytecode/lifecycle reachability but cannot render real Android UI.',
        'Real UI requires the missing westlake adapter items listed under missing.'
    )
    present = $script:present
    missing = $script:missing
    optionalMissing = $script:optionalMissing
}

$manifestPath = Join-Path $OutDir 'manifest.json'
$manifest | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $manifestPath -Encoding ASCII

if ($Push) {
    if (-not (Test-Path $Hdc)) {
        throw "hdc not found: $Hdc"
    }
    & $Hdc shell "mkdir -p $RemoteRoot"
    Push-Location $OutDir
    try {
        foreach ($file in Get-ChildItem -File -Recurse) {
            $remote = Convert-ToRemotePath $file.FullName
            $remoteDir = Split-Path -Parent $remote
            $remoteDir = $remoteDir -replace '\\', '/'
            & $Hdc shell "mkdir -p $remoteDir"
            & $Hdc file send $file.FullName $remote
        }
        & $Hdc shell "chmod 755 $RemoteRoot/android/bin/appspawn-x.dayu600 $RemoteRoot/android/bin/start-appspawnx-dayu600.sh $RemoteRoot/bin/appspawn-x-proto $RemoteRoot/probes/*.so $RemoteRoot/android/lib64/sidecars/*.so $RemoteRoot/android/lib64/liboh_adapter_bridge.so $RemoteRoot/android/lib64/liboh_android_runtime.so $RemoteRoot/art/libwestlake_art.so $RemoteRoot/android/lib64/libart.so 2>/dev/null"
    } finally {
        Pop-Location
    }
}

Write-Output "substrate staging: $OutDir"
Write-Output "manifest: $manifestPath"
Write-Output "present: $($script:present.Count)"
Write-Output "missing-real-adapter: $($script:missing.Count)"
Write-Output "optional-missing: $($script:optionalMissing.Count)"
