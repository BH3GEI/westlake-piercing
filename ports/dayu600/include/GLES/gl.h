#pragma once

// Shim: the OHOS SDK sysroot has no GLES 1.x headers; the GLES2 header
// provides all the GL types and common enums hwui uses.

#include <GLES2/gl2.h>
