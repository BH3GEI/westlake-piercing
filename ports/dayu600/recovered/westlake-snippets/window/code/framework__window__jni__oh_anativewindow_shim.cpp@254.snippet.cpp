    if (a) a->refCount.fetch_add(1, std::memory_order_acq_rel);
}
void anw_base_decRef(struct android_native_base_t* base) {
    auto* a = base_to_adapter(base);
    if (!a) return;
    int32_t prev = a->refCount.fetch_sub(1, std::memory_order_acq_rel);
    if (prev <= 1) {
        // Final release. We don't own the OH handle, so just delete shim.
        oh_anw_destroy(reinterpret_cast<struct ANativeWindow*>(a));
    }
}
 
// Buffer wrapping helpers
AdapterAnwBuffer* wrap_oh_buffer(AdapterAnw* a, OHNativeWindowBuffer* ohBuf) {
    if (!a || !ohBuf) return nullptr;
    std::lock_guard<std::mutex> lock(a->bufCacheLock);
    auto it = a->bufCache.find(ohBuf);
    if (it != a->bufCache.end()) return it->second;
 
    auto* w = new AdapterAnwBuffer();
    memset(&w->aosp, 0, sizeof(w->aosp));
    w->aosp.common.magic   = ANDROID_NATIVE_BUFFER_MAGIC;
    w->aosp.common.version = sizeof(struct ANativeWindowBuffer);
    // incRef/decRef intentionally null ??hwui doesn't refcount buffers
    // returned from dequeueBuffer (the window is the owner); we only need
