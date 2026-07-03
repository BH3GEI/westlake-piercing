param(
    [string]$EvidenceRoot = "$env:USERPROFILE\Downloads\192.168.8.17_8000\19.53_RunTime_AonB",
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'recovered\westlake-snippets')
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $EvidenceRoot)) {
    throw "evidence root not found: $EvidenceRoot"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path

$westlakeName = '^(framework__|adapted-hanbing-java__|ohos_patches__).*\.html$'
$files = Get-ChildItem -Path $EvidenceRoot -Recurse -File |
    Where-Object { $_.Name -match $westlakeName }

function Get-Category {
    param([string]$Name)
    if ($Name -match '^adapted-hanbing-java__') { return 'java-adapter' }
    if ($Name -match '^framework__android-runtime__') { return 'android-runtime' }
    if ($Name -match '^framework__appspawn-x__') { return 'appspawn-x' }
    if ($Name -match '^framework__window__') { return 'window' }
    if ($Name -match '^framework__surface__') { return 'surface' }
    if ($Name -match '^framework__hwui-shim__') { return 'hwui-shim' }
    if ($Name -match '^framework__package-manager__') { return 'package-manager' }
    if ($Name -match '^framework__contentprovider__') { return 'contentprovider' }
    if ($Name -match '^framework__activity__') { return 'activity' }
    if ($Name -match '^framework__core__') { return 'core' }
    if ($Name -match '^ohos_patches__') { return 'ohos-patches' }
    return 'other'
}

function Get-Extension {
    param([string]$Name)
    if ($Name -match '\.java@') { return 'java' }
    if ($Name -match '\.c@') { return 'c' }
    if ($Name -match '\.h@') { return 'h' }
    if ($Name -match '\.patch@') { return 'patch' }
    return 'cpp'
}

$manifest = @()
foreach ($file in $files) {
    $raw = Get-Content -LiteralPath $file.FullName -Raw
    $title = [System.Net.WebUtility]::HtmlDecode(
        [regex]::Match($raw, '<title>(?<title>.*?)</title>').Groups['title'].Value)
    $summary = [System.Net.WebUtility]::HtmlDecode(
        [regex]::Match($raw, '<div class=h>.*?<span>(?<summary>.*?)</span></div>', 'Singleline').Groups['summary'].Value)
    $codeMatches = [regex]::Matches(
        $raw,
        '<tr(?: class=hit)?>\s*<td class=ln>(?<line>\d+)</td><td class=cd>(?<code>.*?)</td></tr>',
        [System.Text.RegularExpressions.RegexOptions]::Singleline)

    if ($codeMatches.Count -eq 0) {
        continue
    }

    $category = Get-Category $file.Name
    $ext = Get-Extension $file.Name
    $categoryDir = Join-Path $OutDir $category
    $codeDir = Join-Path $categoryDir 'code'
    $numberedDir = Join-Path $categoryDir 'numbered'
    New-Item -ItemType Directory -Force -Path $codeDir, $numberedDir | Out-Null

    $baseName = [IO.Path]::GetFileNameWithoutExtension($file.Name)
    $safeName = ($baseName -replace '[^\w.@-]+', '_')
    $codeDest = Join-Path $codeDir "$safeName.snippet.$ext"
    $numberedDest = Join-Path $numberedDir "$safeName.numbered.$ext"

    $codeLines = New-Object System.Collections.Generic.List[string]
    $numberedLines = New-Object System.Collections.Generic.List[string]
    $numberedLines.Add("// recovered from: $($file.FullName)") | Out-Null
    if ($title) {
        $numberedLines.Add("// title: $title") | Out-Null
    }
    if ($summary) {
        $numberedLines.Add("// summary: $summary") | Out-Null
    }
    $numberedLines.Add('') | Out-Null

    foreach ($m in $codeMatches) {
        $lineNo = [int]$m.Groups['line'].Value
        $code = [System.Net.WebUtility]::HtmlDecode($m.Groups['code'].Value)
        $codeLines.Add($code) | Out-Null
        $numberedLines.Add(('{0,5}: {1}' -f $lineNo, $code)) | Out-Null
    }

    $codeLines | Set-Content -LiteralPath $codeDest -Encoding ASCII
    $numberedLines | Set-Content -LiteralPath $numberedDest -Encoding ASCII

    $manifest += [ordered]@{
        source = $file.FullName
        category = $category
        extension = $ext
        code = $codeDest
        numbered = $numberedDest
        title = $title
        summary = $summary
        lineCount = $codeMatches.Count
    }
}

$manifestPath = Join-Path $OutDir 'manifest.json'
$manifest | Sort-Object category, title |
    ConvertTo-Json -Depth 6 |
    Set-Content -LiteralPath $manifestPath -Encoding ASCII

$byCategory = $manifest | Group-Object { $_['category'] } | Sort-Object Name | ForEach-Object {
    [ordered]@{ category = $_.Name; count = $_.Count }
}
$byCategory | ConvertTo-Json -Depth 4 |
    Set-Content -LiteralPath (Join-Path $OutDir 'category-counts.json') -Encoding ASCII

Write-Output "snippets: $($manifest.Count)"
Write-Output "out: $OutDir"
Write-Output "manifest: $manifestPath"
