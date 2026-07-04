#pragma once

#include <malloc.h>
#include <sys/mman.h>

inline int ashmem_create_region(const char*, size_t) { return -1; }
inline int ashmem_set_prot_region(int, int) { return -1; }
inline int ashmem_valid(int) { return 0; }
inline size_t ashmem_get_size_region(int) { return 0; }

// Bionic mallopt() extension used by hwui; OHOS musl has mallopt but not
// this parameter. Harmless: mallopt returns failure for unknown params.
#ifndef M_PURGE
#define M_PURGE (-101)
#endif
