/*
 * ABI shims for the westlake_rs_smoke build.
 *
 * The device libraries (librender_service_client.z.so etc.) were built with a
 * libc++ whose ABI namespace is std::__h, while this SDK toolchain mangles
 * std types as std::__n1. Any device API whose mangled name contains std::
 * types therefore does not bind at link time.
 *
 * For those (and only those) symbols we provide the __n1 definition here and
 * forward to the __h-mangled device symbol via dlsym. libc++'s shared_ptr
 * layout (two pointers, virtual control block) is identical between the two
 * builds, so passing/returning shared_ptr across the boundary is safe; the
 * control block created inside the device library carries its own deleter.
 *
 * No rendering logic lives here.
 */
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <new>

#include "ui/rs_surface_node.h"

namespace {

void* MustDlsym(const char* mangled)
{
    // The device lib is a link-time DT_NEEDED dependency of this binary, so
    // it is already mapped; RTLD_DEFAULT finds the __h-mangled export.
    void* fn = dlsym(RTLD_DEFAULT, mangled);
    if (fn == nullptr) {
        std::fprintf(stderr, "[rs-smoke-shim] dlsym(%s) failed: %s\n", mangled, dlerror());
        std::abort();
    }
    return fn;
}

} // namespace

namespace OHOS {
namespace Rosen {

// Device export (std::__h):
//   _ZN4OHOS5Rosen13RSSurfaceNode6CreateERKNS0_19RSSurfaceNodeConfigEb
//       NSt3__h10shared_ptrINS0_11RSUIContextEEE
// We define the std::__n1 spelling the SDK toolchain emits and forward.
RSSurfaceNode::SharedPtr RSSurfaceNode::Create(
    const RSSurfaceNodeConfig& surfaceNodeConfig, bool isWindow, std::shared_ptr<RSUIContext> rsUIContext)
{
    using CreateFn = RSSurfaceNode::SharedPtr (*)(
        const RSSurfaceNodeConfig&, bool, std::shared_ptr<RSUIContext>);
    static CreateFn real = reinterpret_cast<CreateFn>(MustDlsym(
        "_ZN4OHOS5Rosen13RSSurfaceNode6CreateERKNS0_19RSSurfaceNodeConfigEb"
        "NSt3__h10shared_ptrINS0_11RSUIContextEEE"));

    // ABI fixup for the 6.0-header / 6.1-device-library skew:
    // the device's RSSurfaceNodeConfig gained at least one trailing bool at
    // offset 72, right past the end of the 6.0 struct (sizeof == 72).
    // Verified by disassembling the device librender_service_client.z.so:
    //   ldrb w8, [config, #72]; cmp w8, #2; b.hs __ubsan_handle_load_invalid_
    //   value_minimal_abort   (the "ubsan: load-invalid-value" abort on-board)
    // and then `cset w8, ne` -> stored as a node flag, so 0 (false) is the
    // 6.1 default. All other config reads in Create/the RSSurfaceNode ctor
    // stay within the 6.0 layout (offsets 0..49 match field-for-field).
    // Re-home the caller's config at the start of an over-sized, zero-filled
    // buffer so every byte the 6.1 code reads beyond the 6.0 struct is 0.
    struct PaddedConfig {
        alignas(RSSurfaceNodeConfig) unsigned char bytes[sizeof(RSSurfaceNodeConfig) + 64];
    } padded;
    std::memset(padded.bytes, 0, sizeof(padded.bytes));
    auto* cfg = new (padded.bytes) RSSurfaceNodeConfig(surfaceNodeConfig);

    RSSurfaceNode::SharedPtr node = real(*cfg, isWindow, std::move(rsUIContext));
    cfg->~RSSurfaceNodeConfig();
    return node;
}

} // namespace Rosen
} // namespace OHOS
