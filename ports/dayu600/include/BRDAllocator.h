#pragma once

// Wrapper around the real OpenHarmony Skia m133 BRDAllocator so hwui jni
// sources and skia client_utils agree on a single definition (the local copy
// used to redefine the class and broke jni/BitmapRegionDecoder.cpp).
// Requires -I<skia>/m133 on the include path.
#include "client_utils/android/BRDAllocator.h"
