// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_anativewindow_shim.cpp@254.html
// title: p1612 framework/window/jni/oh_anativewindow_shim.cpp:254

  242:     if (a) a->refCount.fetch_add(1, std::memory_order_acq_rel);
  243: }
  244: void anw_base_decRef(struct android_native_base_t* base) {
  245:     auto* a = base_to_adapter(base);
  246:     if (!a) return;
  247:     int32_t prev = a->refCount.fetch_sub(1, std::memory_order_acq_rel);
  248:     if (prev <= 1) {
  249:         // Final release. We don't own the OH handle, so just delete shim.
  250:         oh_anw_destroy(reinterpret_cast<struct ANativeWindow*>(a));
  251:     }
  252: }
  253:  
  254: // Buffer wrapping helpers
  255: AdapterAnwBuffer* wrap_oh_buffer(AdapterAnw* a, OHNativeWindowBuffer* ohBuf) {
  256:     if (!a || !ohBuf) return nullptr;
  257:     std::lock_guard<std::mutex> lock(a->bufCacheLock);
  258:     auto it = a->bufCache.find(ohBuf);
  259:     if (it != a->bufCache.end()) return it->second;
  260:  
  261:     auto* w = new AdapterAnwBuffer();
  262:     memset(&w->aosp, 0, sizeof(w->aosp));
  263:     w->aosp.common.magic   = ANDROID_NATIVE_BUFFER_MAGIC;
  264:     w->aosp.common.version = sizeof(struct ANativeWindowBuffer);
  265:     // incRef/decRef intentionally null ??hwui doesn't refcount buffers
  266:     // returned from dequeueBuffer (the window is the owner); we only need
