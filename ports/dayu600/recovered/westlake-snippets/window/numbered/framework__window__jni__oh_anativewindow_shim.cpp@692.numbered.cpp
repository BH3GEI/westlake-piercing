// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__window__jni__oh_anativewindow_shim.cpp@692.html
// title: 16.12 framework/window/jni/oh_anativewindow_shim.cpp:692
// summary: oh_anw_try_acquire</span><br><span>??? AdapterAnw ?????NDK acquire/release ??????????????????????????? AOSP common.incRef/decRef ???????????

  680: // the magic check (offset 0 of AdapterAnw is AOSP '_wnd', not OH WINDOW
  681: // magic) ??effectively a no-op. hwui's actual refcount lifecycle is driven
  682: // by the AOSP function pointer table at common.incRef/decRef (already wired
  683: // to anw_base_incRef/decRef on the same atomic). So the shim was kept alive
  684: // by the function-pointer path; the magic illegal was only a noisy warning.
  685: //
  686: // G2.14ag's first attempt added independent refcount mutation in these
  687: // probes, but hwui's call pattern doesn't pair NDK acquire/release
  688: // symmetrically with common.incRef/decRef ??two independent refcount paths
  689: // over-decrement and destroy the shim while OH BufferQueue still holds the
  690: // buffer ("buffer is released" errors, no CreateBufferLayer follow-through).
  691: //
  692: // Final design: keep the probes as literal no-ops on the AdapterAnw refcount.
  693: // They only "consume" the call (return 1) so the compat shim doesn't forward
  694: // to OH NativeObjectReference (which would re-trigger the magic illegal
  695: // warning). The shim's refcount continues to be managed by anw_base_incRef
  696: // / anw_base_decRef via the AOSP common function pointer slots ??the path
  697: // that worked in G2.14af.
  698: extern "C" int oh_anw_try_acquire(struct ANativeWindow* aosp) {
  699:     auto* a = as_adapter(aosp);
  700:     if (!a) return 0;
  701:     return 1;  // consumed ??no refcount mutation (see comment above)
  702: }
  703:  
  704: extern "C" int oh_anw_try_release(struct ANativeWindow* aosp) {
