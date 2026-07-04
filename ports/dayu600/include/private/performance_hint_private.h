#pragma once

#include <android/performance_hint.h>

enum class SessionTag : int32_t {
    OTHER = 0,
    SURFACEFLINGER = 1,
    HWUI = 2,
    GAME = 3,
    APP = 4,
};

enum class SessionHint : int32_t {
    CPU_LOAD_UP = 0,
    CPU_LOAD_DOWN = 1,
    CPU_LOAD_RESET = 2,
    CPU_LOAD_RESUME = 3,
    POWER_EFFICIENCY = 4,
    GPU_LOAD_UP = 5,
    GPU_LOAD_DOWN = 6,
    GPU_LOAD_RESET = 7,
};

APerformanceHintSession* APerformanceHint_createSessionInternal(
        APerformanceHintManager* manager, const int32_t* tids, size_t tidCount,
        int64_t defaultTarget, SessionTag tag);
void APerformanceHint_sendHint(APerformanceHintSession* session, int32_t hintId);
int APerformanceHint_setThreads(APerformanceHintSession* session, const pid_t* tids, size_t size);
