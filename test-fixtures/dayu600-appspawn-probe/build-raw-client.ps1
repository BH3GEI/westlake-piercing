$ErrorActionPreference = 'Stop'

$fixture = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo = Resolve-Path (Join-Path $fixture '..\..')
$out = Join-Path $fixture 'out'
New-Item -ItemType Directory -Force -Path $out | Out-Null

$repoPath = $repo.Path
if ($repoPath -notmatch '^([A-Za-z]):\\(.*)$') {
    throw "cannot convert Windows path to WSL path: $repoPath"
}
$repoWsl = "/mnt/$($Matches[1].ToLower())/$($Matches[2] -replace '\\', '/')"
$cmd = @"
set -eu
cd "$repoWsl"
mkdir -p test-fixtures/dayu600-appspawn-probe/out
aarch64-linux-gnu-gcc \
  -nostdlib -nodefaultlibs -fno-stack-protector -static \
  -Wl,-e,_start \
  -o test-fixtures/dayu600-appspawn-probe/out/westlake_appspawn_raw_client \
  test-fixtures/dayu600-appspawn-probe/westlake_appspawn_raw_client.c
file test-fixtures/dayu600-appspawn-probe/out/westlake_appspawn_raw_client
aarch64-linux-gnu-readelf -h test-fixtures/dayu600-appspawn-probe/out/westlake_appspawn_raw_client | grep -E 'Class|Machine|Entry'
"@

wsl.exe -- sh -lc $cmd
Get-Item (Join-Path $out 'westlake_appspawn_raw_client')
