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
mkdir -p test-fixtures/dayu600-apk-installer-shim/out
aarch64-linux-gnu-gcc \
  -fPIC -shared -nostdlib -nodefaultlibs -fno-stack-protector \
  -Wl,--unresolved-symbols=ignore-all \
  -Wl,-soname,libapk_installer.so \
  -o test-fixtures/dayu600-apk-installer-shim/out/libapk_installer.so \
  test-fixtures/dayu600-apk-installer-shim/westlake_apk_installer_shim.c
aarch64-linux-gnu-readelf -d test-fixtures/dayu600-apk-installer-shim/out/libapk_installer.so
aarch64-linux-gnu-readelf -Ws test-fixtures/dayu600-apk-installer-shim/out/libapk_installer.so | grep -E 'oh_adapter_install_apk|__cfi_check'
"@

wsl.exe -- sh -lc $cmd
Get-Item (Join-Path $out 'libapk_installer.so')

