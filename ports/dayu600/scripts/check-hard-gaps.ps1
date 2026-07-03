param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path,
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\hard-gaps')
)

$ErrorActionPreference = 'Stop'

function Add-Check {
    param(
        [string]$Name,
        [string]$Status,
        [string]$Evidence,
        [string]$Next
    )
    $script:checks += [ordered]@{
        name = $Name
        status = $Status
        evidence = $Evidence
        next = $Next
    }
}

function First-Existing {
    param([string[]]$Paths)
    foreach ($path in $Paths) {
        if ($path -and (Test-Path -LiteralPath $path)) {
            return (Resolve-Path -LiteralPath $path).Path
        }
    }
    return $null
}

function Get-ElfMachine {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) {
        return $null
    }
    $fs = [IO.File]::OpenRead($Path)
    try {
        if ($fs.Length -lt 20) {
            return $null
        }
        $bytes = New-Object byte[] 20
        [void]$fs.Read($bytes, 0, $bytes.Length)
        if ($bytes[0] -ne 0x7f -or $bytes[1] -ne 0x45 -or $bytes[2] -ne 0x4c -or $bytes[3] -ne 0x46) {
            return $null
        }
        $little = $bytes[5] -eq 1
        if ($little) {
            $machine = $bytes[18] -bor ($bytes[19] -shl 8)
        } else {
            $machine = ($bytes[18] -shl 8) -bor $bytes[19]
        }
        switch ($machine) {
            62 { return 'x86_64' }
            183 { return 'aarch64' }
            40 { return 'arm' }
            default { return "machine-$machine" }
        }
    } finally {
        $fs.Dispose()
    }
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path
$script:checks = @()

$substrate = Join-Path $RepoRoot 'ports\dayu600\out\substrate'
$bootWorkdir = Join-Path $RepoRoot 'ports\dayu600\out\boot-workdir'
$stagedRealAppspawn = Join-Path $substrate 'android\bin\appspawn-x'
$prototypeAppspawn = Join-Path $substrate 'android\bin\appspawn-x.dayu600'
$stagedHwui = Join-Path $substrate 'android\lib64\libhwui.so'
$stagedBoot = Join-Path $substrate 'android\framework\arm64\boot.art'
$generatedBoot = Join-Path $bootWorkdir 'arm64\boot.art'

$realAppspawnCandidates = @(
    $stagedRealAppspawn,
    "$env:USERPROFILE\Dev\scopec-deploy\appspawn-x",
    "$env:USERPROFILE\Desktop\A2OH-westlake-piercing-main\scopec-deploy\appspawn-x",
    "$env:USERPROFILE\Desktop\westlake-piercing-work\scopec-deploy\appspawn-x",
    "$env:USERPROFILE\westlake-complete\system\bin\appspawn-x",
    "$env:USERPROFILE\bridge-build\out\adapter\appspawn-x"
)
$realAppspawn = First-Existing $realAppspawnCandidates
if ($realAppspawn) {
    Add-Check 'real appspawn-x' 'present' $realAppspawn 'Verify it is aarch64 and its bootclasspath order matches the staged jars.'
} elseif (Test-Path -LiteralPath $prototypeAppspawn) {
    Add-Check 'real appspawn-x' 'missing' "Only prototype exists: $prototypeAppspawn" 'Recover/rebuild framework/appspawn-x source; prototype does not preload ART/framework.'
} else {
    Add-Check 'real appspawn-x' 'missing' '<not found>' 'Recover/rebuild framework/appspawn-x source.'
}

$hwuiCandidates = @(
    $stagedHwui,
    "$env:USERPROFILE\bridge-build\out\aosp_lib\libhwui.so",
    "$env:USERPROFILE\Desktop\A2OH-westlake-piercing-main\out\aosp_lib\libhwui.so",
    "$env:USERPROFILE\Desktop\westlake-piercing-work\out\aosp_lib\libhwui.so",
    "$env:USERPROFILE\westlake-complete\system\android\lib64\libhwui.so",
    "$env:USERPROFILE\westlake-complete\system\android\lib\libhwui.so"
)
$hwui = First-Existing $hwuiCandidates
if ($hwui) {
    $hwuiMachine = Get-ElfMachine $hwui
    if ($hwuiMachine -eq 'aarch64') {
        Add-Check 'libhwui.so' 'present' "$hwui ($hwuiMachine)" 'Verify exported register_android_* symbols and OH EGL/ANativeWindow hooks.'
    } else {
        Add-Check 'libhwui.so' 'wrong-arch' "$hwui ($hwuiMachine)" 'Need an aarch64 AOSP hwui cross-build or known-good arm64 binary; do not deploy this file.'
    }
} else {
    $rejectedHwui = First-Existing @(
        (Join-Path $RepoRoot 'ports\dayu600\out\sdk-system-image\system-full-extract\system\lib64\libhwui.so')
    )
    if ($rejectedHwui) {
        $rejectedMachine = Get-ElfMachine $rejectedHwui
        Add-Check 'libhwui.so' 'missing' "No usable aarch64 libhwui found; rejected $rejectedHwui ($rejectedMachine)" 'Need AOSP hwui cross-build or known-good arm64 binary; do not replace with the SDK/x86_64 lib or a fake stub.'
    } else {
        Add-Check 'libhwui.so' 'missing' '<not found>' 'Need AOSP hwui cross-build or known-good arm64 binary; do not replace with a fake stub.'
    }
}

$dex2oatCandidates = @(
    (Join-Path $bootWorkdir 'bin\dex2oat64'),
    "$env:USERPROFILE\a2oh-source-audit\art-latest\build-ohos-arm64\bin\dex2oat",
    "$env:USERPROFILE\tools\dex2oat64",
    "$env:USERPROFILE\tools\dex2oat64.exe",
    "$env:USERPROFILE\bridge-build\tools\dex2oat64",
    "$env:USERPROFILE\a2oh-source-audit\art-latest\build-bionic-arm64\bin\dex2oat",
    "$env:USERPROFILE\a2oh-source-audit\art-latest\out\host\linux-x86\bin\dex2oat64"
)
$dex2oat = First-Existing $dex2oatCandidates
$sigchainCandidates = @(
    "$env:USERPROFILE\tools\lib64\libsigchain.so",
    "$env:USERPROFILE\bridge-build\tools\lib64\libsigchain.so"
)
$sigchain = First-Existing $sigchainCandidates
if ($dex2oat -and $sigchain) {
    Add-Check 'boot-image toolchain' 'present' "$dex2oat ; $sigchain" 'Generate arm64 boot image from exact staged jar order.'
} elseif ($dex2oat) {
    Add-Check 'boot-image toolchain' 'present' $dex2oat 'Use the staged static ARM64 dex2oat on the device; libsigchain is optional for this build.'
} else {
    Add-Check 'boot-image toolchain' 'missing' '<dex2oat64 not found>' 'Need ARM64 dex2oat capable of this ART/OAT version.'
}

if (Test-Path -LiteralPath $stagedBoot) {
    Add-Check 'arm64 boot image' 'present' $stagedBoot 'Verify all 30 boot image segments match the exact jars.'
} elseif (Test-Path -LiteralPath $generatedBoot) {
    Add-Check 'arm64 boot image' 'partial' $generatedBoot 'Generated in workdir only; stage it into substrate after validating the matching boot.oat/vdex outputs.'
} else {
    Add-Check 'arm64 boot image' 'missing' $stagedBoot 'Push ports/dayu600/out/boot-workdir and run regen_boot_arm64.on-device.sh on the device.'
}

$bridgeBuild = First-Existing @(
    "$env:USERPROFILE\bridge-build",
    "$env:USERPROFILE\westlake-complete",
    "$env:USERPROFILE\Dev\scopec-deploy",
    "$env:USERPROFILE\Desktop\A2OH-westlake-piercing-main",
    "$env:USERPROFILE\Desktop\westlake-piercing-work\westlake-piercing"
)
if ($bridgeBuild) {
    Add-Check 'legacy source/bundle root' 'present' $bridgeBuild 'Inspect for build/build_appspawn_x.sh and build/build_aosp_lib.sh; public repos may contain docs without private binaries.'
} else {
    Add-Check 'legacy source/bundle root' 'missing' '<bridge-build/westlake-complete/scopec-deploy not found>' 'Need recovered private source/bundle or reconstruct from evidence snippets.'
}

$aospHwuiSource = First-Existing @(
    "$env:USERPROFILE\a2oh-source-audit\aosp-frameworks-base-15-r9\libs\hwui",
    "$env:USERPROFILE\a2oh-source-audit\aosp-android-11\frameworks\base\libs\hwui",
    "$env:USERPROFILE\a2oh-source-audit\aosp-android-14\frameworks\base\libs\hwui",
    "$env:USERPROFILE\a2oh-source-audit\aosp-android-15\frameworks\base\libs\hwui",
    "$env:USERPROFILE\bridge-build\aosp\frameworks\base\libs\hwui",
    "$env:USERPROFILE\Desktop\a2oh-factory\aosp\frameworks\base\libs\hwui"
)
if ($aospHwuiSource) {
    Add-Check 'AOSP hwui source' 'present' $aospHwuiSource 'Wire ports/dayu600/bridge-src/hwui_oh_abi_patch.cpp into this libhwui build with -Bsymbolic-functions.'
} else {
    Add-Check 'AOSP hwui source' 'missing' '<frameworks/base/libs/hwui not found>' 'Fetch or recover AOSP frameworks/base/libs/hwui matching the framework.jar generation before libhwui.so can be rebuilt.'
}

$manifest = [ordered]@{
    generatedAt = (Get-Date).ToString('o')
    repoRoot = $RepoRoot
    substrate = $substrate
    checks = $script:checks
}

$json = Join-Path $OutDir 'hard-gaps.json'
$manifest | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $json -Encoding ASCII

$script:checks | Format-Table -AutoSize
Write-Output "hard-gap report: $json"
