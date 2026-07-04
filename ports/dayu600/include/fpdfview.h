#pragma once

// Minimal stub of pdfium's public fpdfview.h covering the API surface used
// by hwui's jni/pdf/*.cpp. Compile-only no-ops.

#include <errno.h>
#include <stddef.h>
#include <unistd.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void* FPDF_DOCUMENT;
typedef void* FPDF_PAGE;
typedef int FPDF_BOOL;
typedef unsigned long FPDF_DWORD;
typedef const char* FPDF_BYTESTRING;

typedef struct _FS_MATRIX_ {
    float a;
    float b;
    float c;
    float d;
    float e;
    float f;
} FS_MATRIX;

typedef struct _FS_RECTF_ {
    float left;
    float top;
    float right;
    float bottom;
} FS_RECTF;

typedef struct {
    unsigned long m_FileLen;
    int (*m_GetBlock)(void* param, unsigned long position, unsigned char* pBuf,
                      unsigned long size);
    void* m_Param;
} FPDF_FILEACCESS;

#define FPDF_ERR_SUCCESS 0
#define FPDF_ERR_UNKNOWN 1
#define FPDF_ERR_FILE 2
#define FPDF_ERR_FORMAT 3
#define FPDF_ERR_PASSWORD 4
#define FPDF_ERR_SECURITY 5
#define FPDF_ERR_PAGE 6
#define FPDF_ERR_XFALOAD 7
#define FPDF_ERR_XFALAYOUT 8

static inline void FPDF_InitLibrary(void) {}
static inline void FPDF_DestroyLibrary(void) {}

static inline unsigned long FPDF_GetLastError(void) {
    return FPDF_ERR_UNKNOWN;
}

static inline FPDF_DOCUMENT FPDF_LoadCustomDocument(FPDF_FILEACCESS* pFileAccess,
                                                    FPDF_BYTESTRING password) {
    (void)pFileAccess;
    (void)password;
    return nullptr;
}

static inline void FPDF_CloseDocument(FPDF_DOCUMENT document) {
    (void)document;
}

static inline int FPDF_GetPageCount(FPDF_DOCUMENT document) {
    (void)document;
    return 0;
}

static inline FPDF_PAGE FPDF_LoadPage(FPDF_DOCUMENT document, int page_index) {
    (void)document;
    (void)page_index;
    return nullptr;
}

static inline void FPDF_ClosePage(FPDF_PAGE page) {
    (void)page;
}

static inline double FPDF_GetPageWidth(FPDF_PAGE page) {
    (void)page;
    return 0.0;
}

static inline double FPDF_GetPageHeight(FPDF_PAGE page) {
    (void)page;
    return 0.0;
}

static inline int FPDF_GetPageSizeByIndex(FPDF_DOCUMENT document, int page_index, double* width,
                                          double* height) {
    (void)document;
    (void)page_index;
    if (width) *width = 0.0;
    if (height) *height = 0.0;
    return 0;
}

static inline FPDF_BOOL FPDF_VIEWERREF_GetPrintScaling(FPDF_DOCUMENT document) {
    (void)document;
    return 1;
}

#ifdef __cplusplus
}
#endif
