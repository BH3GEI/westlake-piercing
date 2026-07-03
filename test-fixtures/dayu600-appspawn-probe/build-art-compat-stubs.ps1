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
  -Wl,-soname,libwestlake_art_compat_stubs.so \
  -o test-fixtures/dayu600-appspawn-probe/out/libwestlake_art_compat_stubs.so \
  test-fixtures/dayu600-appspawn-probe/westlake_art_compat_stubs.c
aarch64-linux-gnu-readelf -Ws test-fixtures/dayu600-appspawn-probe/out/libwestlake_art_compat_stubs.so | grep -E '__register_atfork|android_get_device_api_level|__system_property_get|pthread_sigmask64|_ZTVN3art9ExecUtilsE' || true
"@

wsl.exe -- sh -lc $cmd
Get-Item (Join-Path $out 'libwestlake_art_compat_stubs.so')
