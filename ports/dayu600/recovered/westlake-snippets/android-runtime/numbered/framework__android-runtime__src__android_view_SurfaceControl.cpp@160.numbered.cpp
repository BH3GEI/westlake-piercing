// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_view_SurfaceControl.cpp@160.html
// title: p1612 framework/android-runtime/src/android_view_SurfaceControl.cpp:160
// summary: as_sc</span><br><span>SurfaceControl/Transaction ??nativeObject ?????magic ???????????????????? magic?????????????as_sc/as_t

  148:     sc->format = 1; // RGBA_8888
  149:     sc->flags = 0;  sc->layer = 0;  sc->visible = false;
  150:     sc->sessionId = 0;  // G2.14r: 0 = unattached (legacy)
  151:     if (name) {
  152:         std::strncpy(sc->name, name, sizeof(sc->name) - 1);
  153:         sc->name[sizeof(sc->name) - 1] = 0;
  154:     } else {
  155:         std::strcpy(sc->name, "OhSurfaceControl");
  156:     }
  157:     return sc;
  158: }
  159:  
  160: OhSurfaceControl* as_sc(jlong p) {
  161:     auto* sc = reinterpret_cast<OhSurfaceControl*>(p);
  162:     if (!sc || sc->magic != kOhSurfaceControlMagic) return nullptr;
  163:     return sc;
  164: }
  165:  
  166: // ----------------------------------------------------------------------------
  167: // OhTransaction ??minimal struct backing SurfaceControl.Transaction.mNativeObject.
  168: // AOSP transactions accumulate ops then apply them in one IPC.  For our
  169: // shim each op is a no-op recorder; apply is a no-op flush.
  170: // ----------------------------------------------------------------------------
  171: struct OhTransaction {
  172:     int32_t magic;
