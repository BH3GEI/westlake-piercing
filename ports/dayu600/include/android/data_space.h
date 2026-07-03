#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef enum ADataSpace {
    ADATASPACE_UNKNOWN = 0,
    ADATASPACE_SRGB = 142671872,
    ADATASPACE_DISPLAY_P3 = 143261696,
    ADATASPACE_BT2020_PQ = 163971072,
} ADataSpace;

#ifdef __cplusplus
}
#endif
