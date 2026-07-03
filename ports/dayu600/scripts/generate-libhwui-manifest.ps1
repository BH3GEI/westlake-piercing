param(
    [string]$HwuiSource = "$env:USERPROFILE\a2oh-source-audit\aosp-frameworks-base-15-r9\libs\hwui",
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'out\libhwui-build')
)

$ErrorActionPreference = 'Stop'

function Get-QuotedPathsInRange {
    param(
        [string[]]$Lines,
        [int]$StartLine,
        [int]$EndLine
    )
    $items = New-Object System.Collections.Generic.List[string]
    for ($i = $StartLine - 1; $i -lt $EndLine -and $i -lt $Lines.Count; $i++) {
        foreach ($match in [regex]::Matches($Lines[$i], '"([^"]+\.(cpp|proto|sysprop))"')) {
            $items.Add($match.Groups[1].Value)
        }
    }
    return @($items)
}

if (-not (Test-Path (Join-Path $HwuiSource 'Android.bp'))) {
    throw "Android.bp not found under $HwuiSource"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$bp = Join-Path $HwuiSource 'Android.bp'
$lines = Get-Content $bp

$groups = [ordered]@{
    android_graphics_apex = Get-QuotedPathsInRange $lines 271 286
    android_graphics_jni = Get-QuotedPathsInRange $lines 336 435
    libhwui_core = Get-QuotedPathsInRange $lines 536 608
    libhwui_android = Get-QuotedPathsInRange $lines 624 650
}

$entries = New-Object System.Collections.Generic.List[object]
foreach ($group in $groups.Keys) {
    foreach ($rel in $groups[$group]) {
        $path = Join-Path $HwuiSource $rel
        $entries.Add([pscustomobject]@{
            group = $group
            rel = $rel
            present = Test-Path $path
            path = $path
            kind = [IO.Path]::GetExtension($rel).TrimStart('.')
        })
    }
}

$isPresent = { param($entry) [bool]$entry.PSObject.Properties['present'].Value }
$entryArray = @($entries.ToArray())

$summary = [ordered]@{
    hwuiSource = (Resolve-Path $HwuiSource).Path
    androidBp = $bp
    generatedAt = (Get-Date).ToString('o')
    groups = @{}
    missing = @($entryArray | Where-Object { -not (& $isPresent $_) })
    entries = @($entryArray)
    notes = @(
        'This is a source manifest only; it does not claim libhwui.so is buildable yet.',
        'HWUIProperties.sysprop, protos, generated flags, and Skia/static library dependencies still need build glue.',
        'DAYU600 must compile with OHOS clang and link the OH ABI patch into libhwui.so with -Wl,-Bsymbolic-functions.'
    )
}

foreach ($group in $groups.Keys) {
    $groupEntries = @($entryArray | Where-Object { $_.group -eq $group })
    $summary.groups[$group] = [ordered]@{
        total = $groupEntries.Count
        present = @($groupEntries | Where-Object { & $isPresent $_ }).Count
        missing = @($groupEntries | Where-Object { -not (& $isPresent $_) }).Count
    }
}

$jsonPath = Join-Path $OutDir 'libhwui-source-manifest.json'
$txtPath = Join-Path $OutDir 'libhwui-source-files.txt'
$summary | ConvertTo-Json -Depth 8 | Set-Content -Encoding UTF8 $jsonPath
@($entryArray | Where-Object { $_.kind -eq 'cpp' } | ForEach-Object { $_.rel }) |
    Set-Content -Encoding ASCII $txtPath

Write-Output "manifest: $jsonPath"
Write-Output "source-list: $txtPath"
foreach ($group in $summary.groups.Keys) {
    $g = $summary.groups[$group]
    Write-Output ("{0}: total={1} present={2} missing={3}" -f $group, $g.total, $g.present, $g.missing)
}
if ($summary.missing.Count -gt 0) {
    Write-Output "missing sources:"
    $summary.missing | ForEach-Object { Write-Output ("  {0} :: {1}" -f $_.group, $_.rel) }
    exit 2
}
