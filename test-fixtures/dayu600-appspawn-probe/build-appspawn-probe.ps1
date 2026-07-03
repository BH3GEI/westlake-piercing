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
  -fPIC -shared -nostdlib -nodefaultlibs -fno-stack-protector \
  -Wl,--unresolved-symbols=ignore-all \
  -Wl,-soname,libwestlake_appspawn_probe.so \
  -o test-fixtures/dayu600-appspawn-probe/out/libwestlake_appspawn_probe.so \
  test-fixtures/dayu600-appspawn-probe/westlake_appspawn_probe.c
aarch64-linux-gnu-readelf -d test-fixtures/dayu600-appspawn-probe/out/libwestlake_appspawn_probe.so
aarch64-linux-gnu-readelf -Ws test-fixtures/dayu600-appspawn-probe/out/libwestlake_appspawn_probe.so | grep -E 'Add(ServerStage|AppSpawn)Hook|westlake_probe_init' || true
"@

wsl.exe -- sh -lc $cmd
Get-Item (Join-Path $out 'libwestlake_appspawn_probe.so')
