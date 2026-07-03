#pragma once

#include <android/performance_hint.h>

enum SessionTag {
    SESSION_TAG_UNKNOWN = 0,
    SESSION_TAG_SURFACEFLINGER = 1,
    SESSION_TAG_HWUI = 2,
};

APerformanceHintSession* APerformanceHint_createSessionInternal(
        APerformanceHintManager* manager, const int32_t* tids, size_t tidCount,
        int64_t defaultTarget, SessionTag tag);
void APerformanceHint_sendHint(APerformanceHintSession* session, int32_t hintId);
int APerformanceHint_setThreads(APerformanceHintSession* session, const pid_t* tids, size_t size);
