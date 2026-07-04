#pragma once

// Shadow header: hwui calls SkAndroidFrameworkUtils::clipWithStencil, which
// the m133 header only declares under SK_GANESH. The smoke build does not
// define SK_GANESH globally, so enable it just for this header to get the
// declaration (never linked).

#ifndef SK_GANESH
#define SK_GANESH
#define SK_GANESH_DEFINED_BY_PORT_SHIM
#endif

#include "include/android/SkAndroidFrameworkUtils.h"

#ifdef SK_GANESH_DEFINED_BY_PORT_SHIM
#undef SK_GANESH
#undef SK_GANESH_DEFINED_BY_PORT_SHIM
#endif
