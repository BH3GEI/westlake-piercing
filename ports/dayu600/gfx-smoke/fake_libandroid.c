// Minimal fake libandroid.so for DAYU600.
// hwui's RenderThread ctor (ASurfaceControlFunctions) dlopen("libandroid.so")
// and dlsym's these 9 symbols, LOG_ALWAYS_FATAL if any is null. OHOS has no
// libandroid.so. Our RenderProxy GL path never actually invokes the
// ASurfaceControl transaction API (EGL owns present), so non-null no-op stubs
// are enough to pass the asserts. create/transaction_create hand back a small
// heap sentinel in case anything dereferences the handle.
#include <stdlib.h>

typedef struct ASurfaceControl ASurfaceControl;
typedef struct ASurfaceTransaction ASurfaceTransaction;
typedef struct ANativeWindow ANativeWindow;

__attribute__((visibility("default")))
ASurfaceControl* ASurfaceControl_create(ANativeWindow* parent, const char* debug_name) {
    (void)parent; (void)debug_name;
    return (ASurfaceControl*)calloc(1, 64);
}

__attribute__((visibility("default")))
void ASurfaceControl_acquire(ASurfaceControl* sc) { (void)sc; }

__attribute__((visibility("default")))
void ASurfaceControl_release(ASurfaceControl* sc) { (void)sc; }

__attribute__((visibility("default")))
ASurfaceTransaction* ASurfaceTransaction_create(void) {
    return (ASurfaceTransaction*)calloc(1, 64);
}

__attribute__((visibility("default")))
void ASurfaceTransaction_delete(ASurfaceTransaction* t) { free(t); }

__attribute__((visibility("default")))
void ASurfaceTransaction_apply(ASurfaceTransaction* t) { (void)t; }

__attribute__((visibility("default")))
void ASurfaceTransaction_reparent(ASurfaceTransaction* t, ASurfaceControl* sc,
                                  ASurfaceControl* parent) {
    (void)t; (void)sc; (void)parent;
}

__attribute__((visibility("default")))
void ASurfaceTransaction_setVisibility(ASurfaceTransaction* t, ASurfaceControl* sc,
                                       signed char visibility) {
    (void)t; (void)sc; (void)visibility;
}

__attribute__((visibility("default")))
void ASurfaceTransaction_setZOrder(ASurfaceTransaction* t, ASurfaceControl* sc, int z) {
    (void)t; (void)sc; (void)z;
}

__attribute__((visibility("default")))
void ASurfaceControl_registerSurfaceStatsListener(ASurfaceControl* sc, int id, void* ctx,
                                                  void* func) {
    (void)sc; (void)id; (void)ctx; (void)func;
}

__attribute__((visibility("default")))
void ASurfaceControl_unregisterSurfaceStatsListener(void* ctx, void* func) {
    (void)ctx; (void)func;
}

// ASurfaceControlStats accessors.
__attribute__((visibility("default")))
long ASurfaceControlStats_getAcquireTime(void* stats) { (void)stats; return 0; }
__attribute__((visibility("default")))
unsigned long ASurfaceControlStats_getFrameNumber(void* stats) { (void)stats; return 0; }
