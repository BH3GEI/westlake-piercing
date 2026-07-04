#pragma once

// Shadow header for the OpenHarmony bringup build: hwui's MaskFilter.cpp
// calls SkBlurMaskFilter::MakeEmboss, which the m133 Skia headers only
// declare behind SK_SUPPORT_LEGACY_EMBOSSMASKFILTER (AOSP defines it in
// its Skia build config). Enable the declaration and forward to the real
// header, which lives later on the include path.

#ifndef SK_SUPPORT_LEGACY_EMBOSSMASKFILTER
#define SK_SUPPORT_LEGACY_EMBOSSMASKFILTER
#endif

#include "include/effects/SkBlurMaskFilter.h"
