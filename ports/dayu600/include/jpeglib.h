#pragma once

/* Minimal C-compatible stub of libjpeg(-turbo)'s jpeglib.h covering only the
 * API surface used by hwui's jni/YuvToJpegEncoder.cpp. Compile-only; all
 * functions are no-ops. May be included inside extern "C" blocks. */

#include <stddef.h>
#include <stdio.h>

#ifndef JPEGLIB_STUB_BOOLEAN_DEFINED
#define JPEGLIB_STUB_BOOLEAN_DEFINED
typedef int boolean;
#endif

#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE 1
#endif

typedef unsigned char JSAMPLE;
typedef unsigned char JOCTET;
typedef unsigned int JDIMENSION;
typedef JSAMPLE* JSAMPROW;
typedef JSAMPROW* JSAMPARRAY;
typedef JSAMPARRAY* JSAMPIMAGE;

#define DCTSIZE 8
#define MAX_COMPONENTS 10

typedef enum {
    JCS_UNKNOWN,
    JCS_GRAYSCALE,
    JCS_RGB,
    JCS_YCbCr,
    JCS_CMYK,
    JCS_YCCK
} J_COLOR_SPACE;

typedef enum {
    JDCT_ISLOW,
    JDCT_IFAST,
    JDCT_FLOAT
} J_DCT_METHOD;

struct jpeg_common_struct;
struct jpeg_compress_struct;

typedef struct jpeg_common_struct* j_common_ptr;
typedef struct jpeg_compress_struct* j_compress_ptr;

struct jpeg_error_mgr {
    void (*error_exit)(j_common_ptr cinfo);
    void (*emit_message)(j_common_ptr cinfo, int msg_level);
    void (*output_message)(j_common_ptr cinfo);
    int msg_code;
    int trace_level;
    long num_warnings;
};

struct jpeg_destination_mgr {
    JOCTET* next_output_byte;
    size_t free_in_buffer;

    void (*init_destination)(j_compress_ptr cinfo);
    boolean (*empty_output_buffer)(j_compress_ptr cinfo);
    void (*term_destination)(j_compress_ptr cinfo);
};

typedef struct {
    int component_id;
    int component_index;
    int h_samp_factor;
    int v_samp_factor;
    int quant_tbl_no;
} jpeg_component_info;

struct jpeg_common_struct {
    struct jpeg_error_mgr* err;
};

struct jpeg_compress_struct {
    struct jpeg_error_mgr* err;
    struct jpeg_destination_mgr* dest;

    JDIMENSION image_width;
    JDIMENSION image_height;
    int input_components;
    J_COLOR_SPACE in_color_space;

    boolean raw_data_in;
    J_DCT_METHOD dct_method;

    int num_components;
    J_COLOR_SPACE jpeg_color_space;
    jpeg_component_info* comp_info;

    JDIMENSION next_scanline;
};

static inline void jpeg_stub_output_message(j_common_ptr cinfo) { (void)cinfo; }
static inline void jpeg_stub_error_exit(j_common_ptr cinfo) { (void)cinfo; }
static inline void jpeg_stub_emit_message(j_common_ptr cinfo, int msg_level) {
    (void)cinfo;
    (void)msg_level;
}

static inline struct jpeg_error_mgr* jpeg_std_error(struct jpeg_error_mgr* err) {
    err->error_exit = jpeg_stub_error_exit;
    err->emit_message = jpeg_stub_emit_message;
    err->output_message = jpeg_stub_output_message;
    err->msg_code = 0;
    err->trace_level = 0;
    err->num_warnings = 0;
    return err;
}

static inline void jpeg_create_compress(j_compress_ptr cinfo) {
    static jpeg_component_info stub_components[MAX_COMPONENTS];
    cinfo->comp_info = stub_components;
    cinfo->next_scanline = 0;
}

static inline void jpeg_destroy_compress(j_compress_ptr cinfo) { (void)cinfo; }

static inline void jpeg_set_defaults(j_compress_ptr cinfo) { (void)cinfo; }

static inline void jpeg_set_quality(j_compress_ptr cinfo, int quality,
                                    boolean force_baseline) {
    (void)cinfo;
    (void)quality;
    (void)force_baseline;
}

static inline void jpeg_set_colorspace(j_compress_ptr cinfo, J_COLOR_SPACE colorspace) {
    (void)cinfo;
    (void)colorspace;
}

static inline void jpeg_start_compress(j_compress_ptr cinfo, boolean write_all_tables) {
    (void)cinfo;
    (void)write_all_tables;
}

static inline void jpeg_finish_compress(j_compress_ptr cinfo) { (void)cinfo; }

static inline JDIMENSION jpeg_write_raw_data(j_compress_ptr cinfo, JSAMPIMAGE data,
                                             JDIMENSION num_lines) {
    (void)cinfo;
    (void)data;
    /* Pretend everything was consumed so caller loops terminate. */
    cinfo->next_scanline += num_lines;
    return num_lines;
}

static inline JDIMENSION jpeg_write_scanlines(j_compress_ptr cinfo, JSAMPARRAY scanlines,
                                              JDIMENSION num_lines) {
    (void)cinfo;
    (void)scanlines;
    cinfo->next_scanline += num_lines;
    return num_lines;
}
