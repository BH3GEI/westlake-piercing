#pragma once

// Minimal stub of pdfium's fpdf_edit.h for the bringup build.

#include "fpdfview.h"

#ifdef __cplusplus
extern "C" {
#endif

static inline void FPDFPage_Delete(FPDF_DOCUMENT document, int page_index) {
    (void)document;
    (void)page_index;
}

#ifdef __cplusplus
}
#endif
