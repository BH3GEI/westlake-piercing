param(
    [string]$StockAppspawn = 'C:\Users\ufop\Desktop\dayu600_current_audit\bin\appspawn'
)

$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path $fixture 'out'
New-Item -ItemType Directory -Force -Path $out | Out-Null

$target = Join-Path $out 'appspawn-x-proto'
$bytes = [IO.File]::ReadAllBytes($StockAppspawn)
$needle = [Text.Encoding]::ASCII.GetBytes('HybridSpawn')
$replacementText = [Text.Encoding]::ASCII.GetBytes('AppSpawnX')
$replacement = New-Object byte[] $needle.Length
[Array]::Copy($replacementText, $replacement, $replacementText.Length)

$count = 0
for ($i = 0; $i -le $bytes.Length - $needle.Length; $i++) {
    $match = $true
    for ($j = 0; $j -lt $needle.Length; $j++) {
        if ($bytes[$i + $j] -ne $needle[$j]) {
            $match = $false
            break
        }
    }
    if ($match) {
        [Array]::Copy($replacement, 0, $bytes, $i, $replacement.Length)
        $count++
    }
}

if ($count -ne 1) {
    throw "expected exactly one HybridSpawn string in $StockAppspawn, patched $count"
}

[IO.File]::WriteAllBytes($target, $bytes)
Get-FileHash -Algorithm MD5 $target
Get-Item $target
