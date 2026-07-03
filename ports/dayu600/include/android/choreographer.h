#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AChoreographer AChoreographer;
typedef struct AChoreographerFrameCallbackData AChoreographerFrameCallbackData;

typedef void (*AChoreographer_frameCallback)(long frameTimeNanos, void* data);
typedef void (*AChoreographer_vsyncCallback)(const AChoreographerFrameCallbackData* callbackData,
                                             void* data);

AChoreographer* AChoreographer_getInstance();
void AChoreographer_postFrameCallback(AChoreographer* choreographer,
                                      AChoreographer_frameCallback callback, void* data);
void AChoreographer_postVsyncCallback(AChoreographer* choreographer,
                                      AChoreographer_vsyncCallback callback, void* data);
long AChoreographerFrameCallbackData_getFrameTimeNanos(
        const AChoreographerFrameCallbackData* data);

#ifdef __cplusplus
}
#endif
