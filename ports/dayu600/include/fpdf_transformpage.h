#pragma once

// Minimal stub of pdfium's fpdf_transformpage.h for the bringup build.

#include "fpdfview.h"

#ifdef __cplusplus
extern "C" {
#endif

static inline void FPDFPage_SetMediaBox(FPDF_PAGE page, float left, float bottom, float right,
                                        float top) {
    (void)page; (void)left; (void)bottom; (void)right; (void)top;
}

static inline void FPDFPage_SetCropBox(FPDF_PAGE page, float left, float bottom, float right,
                                       float top) {
    (void)page; (void)left; (void)bottom; (void)right; (void)top;
}

static inline FPDF_BOOL FPDFPage_GetMediaBox(FPDF_PAGE page, float* left, float* bottom,
                                             float* right, float* top) {
    (void)page;
    if (left) *left = 0;
    if (bottom) *bottom = 0;
    if (right) *right = 0;
    if (top) *top = 0;
    return 0;
}

static inline FPDF_BOOL FPDFPage_GetCropBox(FPDF_PAGE page, float* left, float* bottom,
                                            float* right, float* top) {
    (void)page;
    if (left) *left = 0;
    if (bottom) *bottom = 0;
    if (right) *right = 0;
    if (top) *top = 0;
    return 0;
}

static inline FPDF_BOOL FPDFPage_TransFormWithClip(FPDF_PAGE page, const FS_MATRIX* matrix,
                                                   const FS_RECTF* clipRect) {
    (void)page;
    (void)matrix;
    (void)clipRect;
    return 0;
}

#ifdef __cplusplus
}
#endif
