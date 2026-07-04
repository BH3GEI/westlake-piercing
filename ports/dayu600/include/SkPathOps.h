#pragma once

// Forwarding header: hwui includes "SkPathOps.h" unqualified, but the m133
// Skia tree keeps it under include/pathops/, which is not on the -I list.

#include "include/pathops/SkPathOps.h"
