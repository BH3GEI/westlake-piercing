#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ASurfaceControl ASurfaceControl;
typedef struct ASurfaceTransaction ASurfaceTransaction;

enum {
    ASURFACE_TRANSACTION_VISIBILITY_HIDE = 0,
    ASURFACE_TRANSACTION_VISIBILITY_SHOW = 1,
};

void ASurfaceTransaction_setVisibility(ASurfaceTransaction* transaction,
                                       ASurfaceControl* surface_control, int8_t visibility);
void ASurfaceTransaction_reparent(ASurfaceTransaction* transaction,
                                  ASurfaceControl* surface_control,
                                  ASurfaceControl* new_parent);

#ifdef __cplusplus
}
#endif
