#pragma once

// Header-only stub of AOSP's libultrahdr ultrahdr/jpegr.h covering the API
// surface used by hwui's jni/YuvToJpegEncoder.cpp. Compile-only no-ops.

#include <stddef.h>
#include <stdint.h>

namespace ultrahdr {

typedef int status_t;

constexpr status_t JPEGR_NO_ERROR = 0;
constexpr status_t JPEGR_UNKNOWN_ERROR = -1;

typedef enum {
    ULTRAHDR_COLORGAMUT_UNSPECIFIED = -1,
    ULTRAHDR_COLORGAMUT_BT709 = 0,
    ULTRAHDR_COLORGAMUT_P3 = 1,
    ULTRAHDR_COLORGAMUT_BT2100 = 2,
    ULTRAHDR_COLORGAMUT_MAX = ULTRAHDR_COLORGAMUT_BT2100,
} ultrahdr_color_gamut;

typedef enum {
    ULTRAHDR_TF_UNSPECIFIED = -1,
    ULTRAHDR_TF_LINEAR = 0,
    ULTRAHDR_TF_HLG = 1,
    ULTRAHDR_TF_PQ = 2,
    ULTRAHDR_TF_SRGB = 3,
    ULTRAHDR_TF_MAX = ULTRAHDR_TF_SRGB,
} ultrahdr_transfer_function;

typedef enum {
    ULTRAHDR_OUTPUT_UNSPECIFIED = -1,
    ULTRAHDR_OUTPUT_SDR = 0,
    ULTRAHDR_OUTPUT_HDR_LINEAR = 1,
    ULTRAHDR_OUTPUT_HDR_PQ = 2,
    ULTRAHDR_OUTPUT_HDR_HLG = 3,
} ultrahdr_output_format;

struct jpegr_uncompressed_struct {
    void* data = nullptr;
    size_t width = 0;
    size_t height = 0;
    ultrahdr_color_gamut colorGamut = ULTRAHDR_COLORGAMUT_UNSPECIFIED;
    void* chroma_data = nullptr;
    size_t luma_stride = 0;
    size_t chroma_stride = 0;
};

struct jpegr_compressed_struct {
    void* data = nullptr;
    int length = 0;
    int maxLength = 0;
    ultrahdr_color_gamut colorGamut = ULTRAHDR_COLORGAMUT_UNSPECIFIED;
};

struct jpegr_exif_struct {
    void* data = nullptr;
    size_t length = 0;
};

typedef struct jpegr_uncompressed_struct* jr_uncompressed_ptr;
typedef struct jpegr_compressed_struct* jr_compressed_ptr;
typedef struct jpegr_exif_struct* jr_exif_ptr;

class JpegR {
public:
    status_t encodeJPEGR(jr_uncompressed_ptr /* p010_image_ptr */,
                         ultrahdr_transfer_function /* hdr_tf */,
                         jr_compressed_ptr /* dest */, int /* quality */,
                         jr_exif_ptr /* exif */) {
        return JPEGR_UNKNOWN_ERROR;
    }

    status_t encodeJPEGR(jr_uncompressed_ptr /* p010_image_ptr */,
                         jr_uncompressed_ptr /* yuv420_image_ptr */,
                         ultrahdr_transfer_function /* hdr_tf */,
                         jr_compressed_ptr /* dest */, int /* quality */,
                         jr_exif_ptr /* exif */) {
        return JPEGR_UNKNOWN_ERROR;
    }

    status_t encodeJPEGR(jr_uncompressed_ptr /* p010_image_ptr */,
                         jr_uncompressed_ptr /* yuv420_image_ptr */,
                         jr_compressed_ptr /* yuv420jpg_image_ptr */,
                         ultrahdr_transfer_function /* hdr_tf */,
                         jr_compressed_ptr /* dest */) {
        return JPEGR_UNKNOWN_ERROR;
    }

    status_t decodeJPEGR(jr_compressed_ptr /* jpegr_image_ptr */,
                         jr_uncompressed_ptr /* dest */,
                         float /* max_display_boost */ = 0.0f,
                         jr_exif_ptr /* exif */ = nullptr,
                         ultrahdr_output_format /* output_format */ = ULTRAHDR_OUTPUT_HDR_LINEAR,
                         jr_uncompressed_ptr /* gainmap_image_ptr */ = nullptr,
                         void* /* metadata */ = nullptr) {
        return JPEGR_UNKNOWN_ERROR;
    }
};

}  // namespace ultrahdr
