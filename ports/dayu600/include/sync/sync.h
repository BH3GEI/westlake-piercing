#pragma once

// Stub of libsync's sync/sync.h for the OpenHarmony bringup build.

#include <stdint.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

struct sync_file_info {
    char name[32];
    int32_t status;
    uint32_t flags;
    uint32_t num_fences;
    uint32_t pad;
    uint64_t sync_fence_info;
};

static inline int sync_wait(int fd, int timeout) {
    (void)fd;
    (void)timeout;
    return 0;
}

static inline struct sync_file_info* sync_file_info(int32_t fd) {
    (void)fd;
    return NULL;
}

static inline void sync_file_info_free(struct sync_file_info* info) {
    free(info);
}

#ifdef __cplusplus
}
#endif
