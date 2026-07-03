// the magic check (offset 0 of AdapterAnw is AOSP '_wnd', not OH WINDOW
// magic) ??effectively a no-op. hwui's actual refcount lifecycle is driven
// by the AOSP function pointer table at common.incRef/decRef (already wired
// to anw_base_incRef/decRef on the same atomic). So the shim was kept alive
// by the function-pointer path; the magic illegal was only a noisy warning.
//
// G2.14ag's first attempt added independent refcount mutation in these
// probes, but hwui's call pattern doesn't pair NDK acquire/release
// symmetrically with common.incRef/decRef ??two independent refcount paths
// over-decrement and destroy the shim while OH BufferQueue still holds the
// buffer ("buffer is released" errors, no CreateBufferLayer follow-through).
//
// Final design: keep the probes as literal no-ops on the AdapterAnw refcount.
// They only "consume" the call (return 1) so the compat shim doesn't forward
// to OH NativeObjectReference (which would re-trigger the magic illegal
// warning). The shim's refcount continues to be managed by anw_base_incRef
// / anw_base_decRef via the AOSP common function pointer slots ??the path
// that worked in G2.14af.
extern "C" int oh_anw_try_acquire(struct ANativeWindow* aosp) {
    auto* a = as_adapter(aosp);
    if (!a) return 0;
    return 1;  // consumed ??no refcount mutation (see comment above)
}
 
extern "C" int oh_anw_try_release(struct ANativeWindow* aosp) {
