#pragma once

#include <stdint.h>

#include <android/surface_control.h>

typedef struct ASurfaceControlStats ASurfaceControlStats;

typedef void (*ASurfaceControl_SurfaceStatsListener)(void* context,
                                                     ASurfaceControlStats* stats);
