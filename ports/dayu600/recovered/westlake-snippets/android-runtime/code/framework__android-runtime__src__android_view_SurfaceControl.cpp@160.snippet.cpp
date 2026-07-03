    sc->format = 1; // RGBA_8888
    sc->flags = 0;  sc->layer = 0;  sc->visible = false;
    sc->sessionId = 0;  // G2.14r: 0 = unattached (legacy)
    if (name) {
        std::strncpy(sc->name, name, sizeof(sc->name) - 1);
        sc->name[sizeof(sc->name) - 1] = 0;
    } else {
        std::strcpy(sc->name, "OhSurfaceControl");
    }
    return sc;
}
 
OhSurfaceControl* as_sc(jlong p) {
    auto* sc = reinterpret_cast<OhSurfaceControl*>(p);
    if (!sc || sc->magic != kOhSurfaceControlMagic) return nullptr;
    return sc;
}
 
// ----------------------------------------------------------------------------
// OhTransaction ??minimal struct backing SurfaceControl.Transaction.mNativeObject.
// AOSP transactions accumulate ops then apply them in one IPC.  For our
// shim each op is a no-op recorder; apply is a no-op flush.
// ----------------------------------------------------------------------------
struct OhTransaction {
    int32_t magic;
