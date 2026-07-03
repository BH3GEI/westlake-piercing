param(
    [string]$EvidenceRoot = "$env:USERPROFILE\Downloads\192.168.8.17_8000\19.53_RunTime_AonB",
    [string]$OutDir = (Join-Path (Resolve-Path (Join-Path $PSScriptRoot '..')).Path 'recovered\appspawnx-snippets')
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $EvidenceRoot)) {
    throw "evidence root not found: $EvidenceRoot"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$OutDir = (Resolve-Path $OutDir).Path

$files = Get-ChildItem -Path $EvidenceRoot -Recurse -File |
    Where-Object { $_.Name -match 'framework__appspawn-x__.*\.html$' }

$manifest = @()
foreach ($file in $files) {
    $raw = Get-Content -LiteralPath $file.FullName -Raw
    $title = [regex]::Match($raw, '<title>(?<title>.*?)</title>').Groups['title'].Value
    $codeMatches = [regex]::Matches(
        $raw,
        '<tr(?: class=hit)?>\s*<td class=ln>(?<line>\d+)</td><td class=cd>(?<code>.*?)</td></tr>',
        [System.Text.RegularExpressions.RegexOptions]::Singleline)

    if ($codeMatches.Count -eq 0) {
        continue
    }

    $baseName = [IO.Path]::GetFileNameWithoutExtension($file.Name)
    $safeName = ($baseName -replace '[^\w.@-]+', '_')
    $dest = Join-Path $OutDir "$safeName.snippet.cpp"

    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add("// recovered from: $($file.FullName)") | Out-Null
    if ($title) {
        $lines.Add("// title: $([System.Net.WebUtility]::HtmlDecode($title))") | Out-Null
    }
    $lines.Add('') | Out-Null

    foreach ($m in $codeMatches) {
        $lineNo = $m.Groups['line'].Value
        $code = [System.Net.WebUtility]::HtmlDecode($m.Groups['code'].Value)
        $lines.Add(('{0,5}: {1}' -f [int]$lineNo, $code)) | Out-Null
    }

    $lines | Set-Content -LiteralPath $dest -Encoding ASCII
    $manifest += [ordered]@{
        source = $file.FullName
        destination = $dest
        title = [System.Net.WebUtility]::HtmlDecode($title)
        lineCount = $codeMatches.Count
    }
}

$manifestPath = Join-Path $OutDir 'manifest.json'
$manifest | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $manifestPath -Encoding ASCII

Write-Output "snippets: $($manifest.Count)"
Write-Output "out: $OutDir"
Write-Output "manifest: $manifestPath"
