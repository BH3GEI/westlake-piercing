#pragma once

#include <android/hardware_buffer.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AImage AImage;
typedef int32_t media_status_t;

enum {
    AMEDIA_OK = 0,
    AIMAGE_FORMAT_RGBA_8888 = 1,
};

void AImage_delete(AImage* image);
media_status_t AImage_getHardwareBuffer(AImage* image, AHardwareBuffer** buffer);

#ifdef __cplusplus
}
#endif
