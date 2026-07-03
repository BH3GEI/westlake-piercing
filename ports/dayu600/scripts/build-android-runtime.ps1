$ErrorActionPreference = 'Stop'

$repo = Resolve-Path (Join-Path $PSScriptRoot '..\..\..')
$repoPath = $repo.Path
if ($repoPath -notmatch '^([A-Za-z]):\\(.*)$') {
    throw "cannot convert Windows path to WSL path: $repoPath"
}

$repoWsl = "/mnt/$($Matches[1].ToLower())/$($Matches[2] -replace '\\', '/')"
$cmd = @"
set -eu
cd "$repoWsl"
bash ports/dayu600/scripts/build-android-runtime.sh
"@

wsl.exe -- bash -lc $cmd

