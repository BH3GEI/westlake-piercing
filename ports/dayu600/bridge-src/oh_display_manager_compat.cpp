/*
 * DAYU600 compatibility shims for OH NativeDisplayManager C APIs that are not
 * exported on the stock board image but are referenced by the legacy hwui
 * patch.  The values are conservative and only keep hwui display discovery
 * alive; real window sizing still comes from WMS/RSSurfaceNode.
 */

#include <cstdint>
#include <cstdlib>
#include <cstring>

typedef struct {
    uint32_t colorSpaceLength;
    uint32_t* colorSpaces;
} NativeDisplayManager_DisplayColorSpace;

typedef struct {
    uint32_t id;
    char name[33];
    bool isAlive;
    int32_t width;
    int32_t height;
    int32_t physicalWidth;
    int32_t physicalHeight;
    uint32_t refreshRate;
    uint32_t availableWidth;
    uint32_t availableHeight;
    float densityDPI;
    float densityPixels;
    float scaledDensity;
    float xDPI;
    float yDPI;
    int rotation;
    int state;
    int orientation;
    void* hdrFormat;
    NativeDisplayManager_DisplayColorSpace* colorSpace;
} NativeDisplayManager_DisplayInfo;

extern "C" __attribute__((visibility("default")))
int OH_NativeDisplayManager_CreatePrimaryDisplay(
    NativeDisplayManager_DisplayInfo** displayInfo)
{
    if (!displayInfo) {
        return -1;
    }

    auto* info = static_cast<NativeDisplayManager_DisplayInfo*>(
        std::calloc(1, sizeof(NativeDisplayManager_DisplayInfo)));
    auto* color = static_cast<NativeDisplayManager_DisplayColorSpace*>(
        std::calloc(1, sizeof(NativeDisplayManager_DisplayColorSpace)));
    auto* spaces = static_cast<uint32_t*>(std::calloc(1, sizeof(uint32_t)));
    if (!info || !color || !spaces) {
        std::free(spaces);
        std::free(color);
        std::free(info);
        *displayInfo = nullptr;
        return -1;
    }

    spaces[0] = 4; // OH ColorSpaceName::SRGB
    color->colorSpaceLength = 1;
    color->colorSpaces = spaces;

    info->id = 0;
    std::strncpy(info->name, "DAYU600-primary", sizeof(info->name) - 1);
    info->isAlive = true;
    info->width = 1200;
    info->height = 1920;
    info->physicalWidth = 1200;
    info->physicalHeight = 1920;
    info->refreshRate = 60;
    info->availableWidth = 1200;
    info->availableHeight = 1920;
    info->densityDPI = 320.0f;
    info->densityPixels = 2.0f;
    info->scaledDensity = 2.0f;
    info->xDPI = 320.0f;
    info->yDPI = 320.0f;
    info->rotation = 0;
    info->state = 1;
    info->orientation = 0;
    info->colorSpace = color;
    *displayInfo = info;
    return 0;
}

extern "C" __attribute__((visibility("default")))
void OH_NativeDisplayManager_DestroyDisplay(
    NativeDisplayManager_DisplayInfo* displayInfo)
{
    if (!displayInfo) {
        return;
    }
    if (displayInfo->colorSpace) {
        std::free(displayInfo->colorSpace->colorSpaces);
        std::free(displayInfo->colorSpace);
    }
    std::free(displayInfo);
}

extern "C" __attribute__((visibility("default")))
int OH_NativeDisplayManager_GetDefaultDisplayId(uint64_t* displayId)
{
    if (!displayId) {
        return -1;
    }
    *displayId = 0;
    return 0;
}
