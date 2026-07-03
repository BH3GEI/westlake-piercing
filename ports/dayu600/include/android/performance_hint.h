#pragma once

#include <stdint.h>
#include <stddef.h>
#include <sys/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct APerformanceHintManager APerformanceHintManager;
typedef struct APerformanceHintSession APerformanceHintSession;

APerformanceHintManager* APerformanceHint_getManager();
APerformanceHintSession* APerformanceHint_createSession(APerformanceHintManager* manager,
                                                        const int32_t* threadIds,
                                                        size_t size,
                                                        int64_t initialTargetWorkDurationNanos);
void APerformanceHint_closeSession(APerformanceHintSession* session);
void APerformanceHint_updateTargetWorkDuration(APerformanceHintSession* session,
                                               int64_t targetDurationNanos);
void APerformanceHint_reportActualWorkDuration(APerformanceHintSession* session,
                                               int64_t actualDurationNanos);

#ifdef __cplusplus
}
#endif
