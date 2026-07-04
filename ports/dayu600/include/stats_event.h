#pragma once

// Stub of libstatssocket's stats_event.h for the OpenHarmony bringup build.

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

struct AStatsEvent;
typedef struct AStatsEvent AStatsEvent;

static inline AStatsEvent* AStatsEvent_obtain() {
    return nullptr;
}
static inline void AStatsEvent_build(AStatsEvent* event) {
    (void)event;
}
static inline int AStatsEvent_write(AStatsEvent* event) {
    (void)event;
    return 0;
}
static inline void AStatsEvent_release(AStatsEvent* event) {
    (void)event;
}
static inline void AStatsEvent_setAtomId(AStatsEvent* event, uint32_t atomId) {
    (void)event;
    (void)atomId;
}
static inline void AStatsEvent_writeInt32(AStatsEvent* event, int32_t value) {
    (void)event;
    (void)value;
}
static inline void AStatsEvent_writeInt64(AStatsEvent* event, int64_t value) {
    (void)event;
    (void)value;
}
static inline void AStatsEvent_writeFloat(AStatsEvent* event, float value) {
    (void)event;
    (void)value;
}
static inline void AStatsEvent_writeBool(AStatsEvent* event, bool value) {
    (void)event;
    (void)value;
}
static inline void AStatsEvent_writeByteArray(AStatsEvent* event, const uint8_t* buf,
                                              size_t numBytes) {
    (void)event;
    (void)buf;
    (void)numBytes;
}
static inline void AStatsEvent_writeString(AStatsEvent* event, const char* value) {
    (void)event;
    (void)value;
}
static inline void AStatsEvent_addBoolAnnotation(AStatsEvent* event, uint8_t annotationId,
                                                 bool value) {
    (void)event;
    (void)annotationId;
    (void)value;
}
static inline void AStatsEvent_addInt32Annotation(AStatsEvent* event, uint8_t annotationId,
                                                  int32_t value) {
    (void)event;
    (void)annotationId;
    (void)value;
}

#ifdef __cplusplus
}
#endif
