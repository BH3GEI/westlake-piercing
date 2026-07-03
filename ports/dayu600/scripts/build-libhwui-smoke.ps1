param(
    [string]$HwuiSource = "$env:USERPROFILE\a2oh-source-audit\aosp-frameworks-base-15-r9\libs\hwui",
    [string]$OhosSdkRootWsl = "/home/yao/ohos-sdk-6.0.0.47",
    [string]$OhosHeadersWsl = "/mnt/c/Users/ufop/ohos-6.0-headers",
    [int]$MaxSources = 12
)

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path
$portRoot = Join-Path $repoRoot 'ports\dayu600'
$outDir = Join-Path $portRoot 'out\libhwui-build'
$sourceList = Join-Path $outDir 'libhwui-source-files.txt'

if (-not (Test-Path $sourceList)) {
    & (Join-Path $PSScriptRoot 'generate-libhwui-manifest.ps1') -HwuiSource $HwuiSource -OutDir $outDir
}

function Convert-ToWslPath([string]$Path) {
    $resolved = (Resolve-Path $Path).Path
    if ($resolved -notmatch '^([A-Za-z]):\\(.*)$') {
        throw "cannot convert Windows path to WSL path: $resolved"
    }
    return "/mnt/$($Matches[1].ToLower())/$($Matches[2] -replace '\\', '/')"
}

$repoWsl = Convert-ToWslPath $repoRoot
$hwuiWsl = Convert-ToWslPath $HwuiSource
$outWsl = Convert-ToWslPath $outDir
$sourceListWsl = Convert-ToWslPath $sourceList

$script = @'
set -euo pipefail

repo='__REPO_WSL__'
hwui='__HWUI_WSL__'
out='__OUT_WSL__'
sdk='__OHOS_SDK_ROOT_WSL__'
oh_headers='__OHOS_HEADERS_WSL__'
max_sources='__MAX_SOURCES__'
source_list='__SOURCE_LIST_WSL__'

native=''
for cand in "$sdk/linux/native" "$sdk/native" "/mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native"; do
  if [ -x "$cand/llvm/bin/aarch64-unknown-linux-ohos-clang++" ]; then
    native="$cand"
    break
  fi
done
if [ -z "$native" ]; then
  echo "OHOS native clang++ not found" >&2
  exit 2
fi

cxx="$native/llvm/bin/aarch64-unknown-linux-ohos-clang++"
sysroot="$native/sysroot"
mkdir -p "$out/obj" "$out/logs"

jni_inc=''
if [ -n "${JAVA_HOME:-}" ] && [ -f "$JAVA_HOME/include/jni.h" ]; then
  jni_inc="$JAVA_HOME/include"
else
  jni_inc="$(find /usr/lib/jvm -path '*/include/jni.h' -type f -print 2>/dev/null | sed 's#/jni.h$##' | head -n 1)"
fi
if [ -z "$jni_inc" ]; then
  echo "jni.h not found in WSL" >&2
  exit 2
fi

common_flags=(
  --target=aarch64-linux-ohos
  --sysroot="$sysroot"
  -std=c++20
  -O0
  -g
  -fPIC
  -fvisibility=hidden
  -fvisibility-inlines-hidden
  -fno-exceptions
  -fno-rtti
  -Wno-error
  -Wno-unused-parameter
  -Wno-unused-variable
  -Wno-non-virtual-dtor
  -Wno-maybe-uninitialized
  -Wno-conversion-null
  -Wno-implicit-fallthrough
  -DEGL_EGLEXT_PROTOTYPES
  -DGL_GLEXT_PROTOTYPES
  -DATRACE_TAG=ATRACE_TAG_VIEW
  -DLOG_TAG=\"HWUI\"
  -DU_USING_ICU_NAMESPACE=0
  -D__ANDROID_API__=35
  -D__ANDROID__
  -D__OHOS__
  -DUSE_M133_SKIA
  -include "$repo/ports/dayu600/include/westlake_ohos_compat.h"
  -include "$repo/ports/dayu600/include/sys/cdefs.h"
  -include "$repo/ports/dayu600/include/android/log.h"
  -include "$repo/ports/dayu600/include/android/choreographer.h"
)

includes=(
  -I"$hwui"
  -I"$hwui/platform/android"
  -I"$hwui/apex/include"
  -I"$hwui/jni"
  -I"$repo/ports/dayu600/include"
  -I"$repo/ports/dayu600/bridge-src"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/system/core/libutils/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/system/core/libcutils/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/system/core/libsystem/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/system/core/base/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/libnativehelper/header_only_include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/libnativehelper/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/libnativehelper/platform_include"
  -I"$sysroot/usr/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11/libnativehelper/include_jni"
  -I"$jni_inc"
  -I"$jni_inc/linux"
  -I"$oh_headers/third_party_skia/m133"
  -I"$oh_headers/third_party_skia/m133/include"
  -I"$oh_headers/third_party_skia/m133/include/android"
  -I"$oh_headers/third_party_skia/m133/include/codec"
  -I"$oh_headers/third_party_skia/m133/include/core"
  -I"$oh_headers/third_party_skia/m133/include/encode"
  -I"$oh_headers/third_party_skia/m133/include/config"
  -I"$oh_headers/third_party_skia/m133/include/effects"
  -I"$oh_headers/third_party_skia/m133/include/gpu"
  -I"$oh_headers/third_party_skia/m133/include/private"
  -I"$oh_headers/third_party_skia/m133/include/utils"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133/include"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133/include/android"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133/client_utils/android"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133/src/gpu"
  -I"/mnt/c/Users/ufop/a2oh-source-audit/openharmony-third-party-skia/m133/src/gpu/ganesh"
  -I"$oh_headers/third_party_skia/m133/src/core"
  -I"$oh_headers/third_party_skia/m133/src/utils"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/surface"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/common"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/buffer_handle"
  -I"$oh_headers/graphic_graphic_2d/interfaces/inner_api/common"
  -I"$oh_headers/graphic_graphic_2d/rosen/modules/platform"
  -I"$oh_headers/hiviewdfx_hilog/interfaces/native/innerkits/include"
)

count=0
failed=0
while IFS= read -r rel; do
  rel="${rel%$'\r'}"
  [ -z "$rel" ] && continue
  count=$((count + 1))
  [ "$count" -gt "$max_sources" ] && break
  src="$hwui/$rel"
  safe="$(printf '%s' "$rel" | tr '/.' '__')"
  obj="$out/obj/$safe.o"
  log="$out/logs/$safe.log"
  echo "CXX[$count] $rel"
  if ! "$cxx" "${common_flags[@]}" "${includes[@]}" -c "$src" -o "$obj" >"$log" 2>&1; then
    echo "FAILED[$count] $rel"
    tail -80 "$log" || true
    failed=1
    break
  fi
done < "$source_list"

echo "compiled_attempted=$count"
if [ "$failed" -ne 0 ]; then
  exit 1
fi
'@

$script = $script.Replace('__REPO_WSL__', $repoWsl)
$script = $script.Replace('__HWUI_WSL__', $hwuiWsl)
$script = $script.Replace('__OUT_WSL__', $outWsl)
$script = $script.Replace('__OHOS_SDK_ROOT_WSL__', $OhosSdkRootWsl)
$script = $script.Replace('__OHOS_HEADERS_WSL__', $OhosHeadersWsl)
$script = $script.Replace('__MAX_SOURCES__', [string]$MaxSources)
$script = $script.Replace('__SOURCE_LIST_WSL__', $sourceListWsl)

$scriptPath = Join-Path $outDir 'build-libhwui-smoke.sh'
Set-Content -Encoding ascii -NoNewline -Path $scriptPath -Value ($script -replace "`r`n", "`n")
$scriptPathWsl = (& wsl -e wslpath -a $scriptPath) -join ''
& wsl -e bash $scriptPathWsl
