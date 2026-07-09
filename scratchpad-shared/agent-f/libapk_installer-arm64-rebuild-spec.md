# libapk_installer.so arm64 rebuild spec
# Based on: 32-bit ARM ELF analysis (libapk_installer-arm.so, 375KB, full symbols)
# Plus: arm64 stub from 5ce2dcee (68KB, md5 5f1fe609)
# Date: 2026-07-08

## Source artifacts (on this Mac)
- **32-bit ARM ELF (full impl)**: `scratchpad-shared/agent-f/libapk_installer-arm.so`
  - md5: 61eaa7bd60519c4ca9f620c4aea08e46
  - Source: small board dd011a41 /system/android/lib/libapk_installer.so
  - Full symbols: `scratchpad-shared/agent-f/libapk_installer-arm-symbols.txt` (821 lines)
  - Dynamic symbols: `libapk_installer-arm-dynamic-symbols.txt` (509 lines)
  - Size: 375KB — COMPLETE implementation (ApkInstaller, AxmlParser, ApkManifestParser, ApkSignatureVerifier, PermissionMapper)
- **arm64 ELF (STUB only)**: `scratchpad-shared/agent-f/libapk_installer-5ce2dcee-stub.so`
  - md5: 5f1fe6096fec5e0020d25b6231a1ef58
  - Source: 5ce2dcee /system/lib64/libapk_installer.so
  - Size: 68KB — STUB shim, NOT full implementation
  - Exports: `oh_adapter_install_apk_with_manifest` (read JSON from /data/local/tmp/westlake-apk-installer-manifest.json), `oh_adapter_install_apk` (returns -38)
  - Identical to: `test-fixtures/dayu600-apk-installer-shim/westlake_apk_installer_shim.c`
- **arm64 libziparchive (real)**: `scratchpad-shared/agent-f/libziparchive-a64.so`
  - Source: big board 5583f5be /data/a64deploy/sysandroid/lib64/libziparchive.so
  - Size: 601KB, ARM aarch64, provides OpenArchive/ExtractToMemory/ExtractEntryToFile

## What exists vs what's missing

| Binary | Size | Full impl? | Contains |
|---|---|---|---|
| libapk_installer-arm.so (32-bit) | 375KB | YES ✅ | ApkInstaller::*, AxmlParser::*, ApkManifestParser::*, ApkSignatureVerifier::*, PermissionMapper::*, minizip |
| libapk_installer-5ce2dcee-stub.so (64-bit) | 68KB | NO ❌ | Just the JSON manifest shim (same as test-fixtures) |
| libziparchive-a64.so (64-bit) | 601KB | YES ✅ | OpenArchive, ExtractToMemory, etc. (for APK parsing) |

**GAP-1 remains: no full arm64 libapk_installer.so exists anywhere.**

## Export contract (what BMS dlopen'd and dlsym's)
```c
// Global C symbols in libapk_installer.so:
int oh_adapter_install_apk_with_manifest(const char *apkPath, int userId,
                                         char *manifestJsonOut, int manifestJsonOutLen);
int oh_adapter_install_apk(const char *apkPath, int userId);
```

## Class hierarchy (32-bit symbols, demangled)
### oh_adapter::ApkInstaller
```
void ApkInstaller::GetSupportedAbis() -> std::vector<string>
void ApkInstaller::SelectPrimaryAbi(string) -> string
bool ApkInstaller::DeployApk(string srcApk, string destDir, int uid, int gid)
bool ApkInstaller::CreateInstallDirs(string bundlePath)
bool ApkInstaller::ExtractNativeLibs(string apkPath, string libDir, string abi)
bool ApkInstaller::CopyApk(string src, string dest)
bool ApkInstaller::RunDexOpt(string apkPath, string oatDir, int uid, string dex2oatFlags)
bool ApkInstaller::ExtractAndPackResourceHap(string apkPath, string outHapPath)
bool ApkInstaller::SetPermissions(string bundlePath, int uid, int gid, uint perms)
bool ApkInstaller::CreateDataDirs(string packageName, int uid, int gid)
bool ApkInstaller::RemoveApk(string bundlePath)
```

### oh_adapter::AxmlParser
```
void AxmlParser::setTo(void *data, unsigned size)
bool AxmlParser::next()
uint16_t AxmlParser::getElementName()
uint16_t AxmlParser::getAttributeName(uint16_t idx)
uint16_t AxmlParser::getAttributeCount()
uint8_t AxmlParser::getAttributeValue(uint16_t idx, ResValue *out)
uint16_t AxmlParser::getAttributeNameResID(uint16_t idx)
uint16_t AxmlParser::getAttributeStringValue(uint16_t idx)
uint32_t AxmlParser::getString(int index)
```

### oh_adapter::ApkManifestParser
```
bool ApkManifestParser::Parse(string apkPath, ManifestData &out)
bool ApkManifestParser::ParseAXML(void *data, uint32_t size, ManifestData &out)
bool ApkManifestParser::ResolveClassName(string pkgName, ManifestData &data)
```

### oh_adapter::ApkSignatureVerifier
```
bool Verify(string apkPath)           // V2 → V1 fallback
bool VerifyV1(string apkPath)
bool VerifyV2(string apkPath)
bool HasSameCertificate(string apk1, string apk2)
void ComputeSHA256(void *data, size_t len, vector<uint8_t> &out)
string ToHexString(vector<uint8_t>)
bool FindSigningBlock(string apkPath, int64_t &outOffset)
```

### oh_adapter::PermissionMapper
```
string MapToAndroid(string ohPerm)
string MapToOH(string androidPerm)
```

## Internal dependencies
- minizip (zlib-based): unzOpen, unzCloseCurrentFile, zipOpenNewFileInZip, zipClose, zipCloseFileInZip
  → Replace with: OpenArchive/ExtractToMemory from libziparchive-a64.so (AOSP API)
- libhilog: OH (Android OHOS) logging
- libcrypto: SHA256 (for signing block)
- libssl: TLS (not used in APK install path)
- libc++: std::string, std::vector, etc.

## Build toolchain
```bash
OHOS_SDK=/Users/yao/a2oh-source-audit/ohos-sdk
CXX="$OHOS_SDK/native/llvm/bin/clang++"
SYSROOT="$OHOS_SDK/native/sysroot"
ARCH=aarch64-unknown-linux-ohos

$CXX \
  --target=$ARCH \
  --sysroot=$SYSROOT \
  -std=c++17 \
  -O2 \
  -fPIC \
  -fvisibility=hidden \
  -shared \
  -Wl,--gc-sections \
  -Wl,-soname,libapk_installer.so \
  -I"$OHOS_SDK/native/sysroot/usr/include" \
  -I"$OHOS_SDK/native/sysroot/usr/include/aarch64-linux-ohos" \
  -lz \
  ... \
  -o libapk_installer.so
```

## Replacement strategy for AxmlParser
The 32-bit version uses a custom binary XML parser (not Android's AXML).
Can replace with:
1. Binary XML parsing using libziparchive to extract AndroidManifest.xml from APK
   → parse with std::string + manual tag scanning (simpler than full AXML)
2. Or: use Android's binary XML parsing from framework (if available)

## Binary translation alternative (faster path)
Since all symbols are known and the 32-bit ELF is complete:
- Use `arm-linux-musleabihf-objcopy` + `aarch64-linux-musl-objcopy`
  to do ELF32→ELF64 header conversion
- Rewire function addresses (ARM32→ARM64 call conventions differ)
- Replace all `libhilog`, `libz`, `libcrypto`, `libssl` DT_NEEDED with OHOS arm64 versions
  - libhilog.so: already on big board
  - libz.so: /aarch64-linux-ohos/libz.so in OHOS NDK sysroot
  - libcrypto.so: big board sysandroid has libcrypto_openssl.z.so
  - libssl.so: big board sysandroid has libssl_openssl.z.so

This is NOT a trivial binary patch — the ARM32→ARM64 register mapping
(ARM EABI → AAPCS64) requires rewriting every function.

## Fastest path to working arm64 libapk_installer.so
1. **Best**: Contact 02A/HBC owner to share the arm64 build tree
2. **Good**: Binary translation from 32-bit ELF (needs careful register rewriting)
3. **Medium**: Full C++ reconstruction using OHOS NDK (weeks of work)
4. **Minimum viable**: Implement a shim that does the BMS manifest JSON generation
   (the hard part is writing the JSON; the actual APK copy/permission/dexopt
   can be done with simpler shell calls)
