#pragma once

#include <sys/mman.h>

inline int ashmem_create_region(const char*, size_t) { return -1; }
inline int ashmem_set_prot_region(int, int) { return -1; }
