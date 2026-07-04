#pragma once

/* Minimal stub of giflib 5.2's gif_lib.h covering the API surface used by
 * hwui's jni/GIFMovie.cpp. Compile-only; decode functions are no-ops. */

#include <stddef.h>

#define GIFLIB_MAJOR 5
#define GIFLIB_MINOR 2
#define GIFLIB_RELEASE 1

#define GIF_ERROR 0
#define GIF_OK 1

#define GIF_STAMP "GIFVER"
#define GIF_STAMP_LEN sizeof(GIF_STAMP) - 1
#define GIF_VERSION_POS 3
#define GIF87_STAMP "GIF87a"
#define GIF89_STAMP "GIF89a"

#define CONTINUE_EXT_FUNC_CODE 0x00
#define COMMENT_EXT_FUNC_CODE 0xfe
#define GRAPHICS_EXT_FUNC_CODE 0xf9
#define PLAINTEXT_EXT_FUNC_CODE 0x01
#define APPLICATION_EXT_FUNC_CODE 0xff

#define NO_TRANSPARENT_COLOR -1

#define DISPOSAL_UNSPECIFIED 0
#define DISPOSE_DO_NOT 1
#define DISPOSE_BACKGROUND 2
#define DISPOSE_PREVIOUS 3

typedef unsigned char GifPixelType;
typedef unsigned char* GifRowType;
typedef unsigned char GifByteType;
typedef unsigned int GifPrefixType;
typedef int GifWord;

typedef struct GifColorType {
    GifByteType Red, Green, Blue;
} GifColorType;

typedef struct ColorMapObject {
    int ColorCount;
    int BitsPerPixel;
    int SortFlag;
    GifColorType* Colors;
} ColorMapObject;

typedef struct GifImageDesc {
    GifWord Left, Top, Width, Height;
    int Interlace;
    ColorMapObject* ColorMap;
} GifImageDesc;

typedef struct ExtensionBlock {
    int ByteCount;
    GifByteType* Bytes;
    int Function;
} ExtensionBlock;

typedef struct SavedImage {
    GifImageDesc ImageDesc;
    GifByteType* RasterBits;
    int ExtensionBlockCount;
    ExtensionBlock* ExtensionBlocks;
} SavedImage;

typedef struct GifFileType {
    GifWord SWidth, SHeight;
    GifWord SColorResolution;
    GifWord SBackGroundColor;
    GifByteType AspectByte;
    ColorMapObject* SColorMap;
    int ImageCount;
    GifImageDesc Image;
    SavedImage* SavedImages;
    int ExtensionBlockCount;
    ExtensionBlock* ExtensionBlocks;
    int Error;
    void* UserData;
    void* Private;
} GifFileType;

typedef int (*InputFunc)(GifFileType*, GifByteType*, int);

static inline GifFileType* DGifOpen(void* userPtr, InputFunc readFunc, int* error) {
    (void)userPtr;
    (void)readFunc;
    if (error) *error = 0;
    return nullptr;
}

static inline int DGifSlurp(GifFileType* gifFile) {
    (void)gifFile;
    return GIF_ERROR;
}

static inline int DGifCloseFile(GifFileType* gifFile, int* errorCode) {
    (void)gifFile;
    if (errorCode) *errorCode = 0;
    return GIF_OK;
}
