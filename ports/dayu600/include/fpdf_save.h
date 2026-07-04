#pragma once

// Minimal stub of pdfium's fpdf_save.h for the bringup build.

#include "fpdfview.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct FPDF_FILEWRITE_ {
    int version;
    int (*WriteBlock)(struct FPDF_FILEWRITE_* pThis, const void* pData, unsigned long size);
} FPDF_FILEWRITE;

#define FPDF_INCREMENTAL 1
#define FPDF_NO_INCREMENTAL 2
#define FPDF_REMOVE_SECURITY 3

static inline FPDF_BOOL FPDF_SaveAsCopy(FPDF_DOCUMENT document, FPDF_FILEWRITE* pFileWrite,
                                        FPDF_DWORD flags) {
    (void)document;
    (void)pFileWrite;
    (void)flags;
    return 0;
}

#ifdef __cplusplus
}
#endif
