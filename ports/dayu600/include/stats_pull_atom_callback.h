#pragma once

// Stub of libstatspull's stats_pull_atom_callback.h for the bringup build.

#include <stdint.h>

#include <stats_event.h>

#ifndef MS_PER_SEC
#define MS_PER_SEC 1000
#endif

#ifdef __cplusplus
extern "C" {
#endif

struct AStatsEventList;
typedef struct AStatsEventList AStatsEventList;

static inline AStatsEvent* AStatsEventList_addStatsEvent(AStatsEventList* pulledData) {
    (void)pulledData;
    return nullptr;
}

struct AStatsManager_PullAtomMetadata;
typedef struct AStatsManager_PullAtomMetadata AStatsManager_PullAtomMetadata;

static inline AStatsManager_PullAtomMetadata* AStatsManager_PullAtomMetadata_obtain() {
    return nullptr;
}
static inline void AStatsManager_PullAtomMetadata_release(
        AStatsManager_PullAtomMetadata* metadata) {
    (void)metadata;
}
static inline void AStatsManager_PullAtomMetadata_setCoolDownMillis(
        AStatsManager_PullAtomMetadata* metadata, int64_t cool_down_millis) {
    (void)metadata;
    (void)cool_down_millis;
}
static inline void AStatsManager_PullAtomMetadata_setTimeoutMillis(
        AStatsManager_PullAtomMetadata* metadata, int64_t timeout_millis) {
    (void)metadata;
    (void)timeout_millis;
}

typedef int32_t AStatsManager_PullAtomCallbackReturn;

enum {
    AStatsManager_PULL_SUCCESS = 0,
    AStatsManager_PULL_SKIP = 1,
};

typedef AStatsManager_PullAtomCallbackReturn (*AStatsManager_PullAtomCallback)(
        int32_t atom_tag, AStatsEventList* data, void* cookie);

static inline void AStatsManager_setPullAtomCallback(int32_t atom_tag,
                                                     AStatsManager_PullAtomMetadata* metadata,
                                                     AStatsManager_PullAtomCallback callback,
                                                     void* cookie) {
    (void)atom_tag;
    (void)metadata;
    (void)callback;
    (void)cookie;
}

static inline void AStatsManager_clearPullAtomCallback(int32_t atom_tag) {
    (void)atom_tag;
}

#ifdef __cplusplus
}
#endif
