#pragma once

// Stub of BoringSSL's openssl/sha.h for the OpenHarmony bringup build.
// Only the SHA-256 one-shot/init-update-final API hwui uses.

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SHA256_DIGEST_LENGTH 32

typedef struct sha256_state_st {
    uint32_t h[8];
    uint64_t Nl, Nh;
    uint8_t data[64];
    unsigned num, md_len;
} SHA256_CTX;

static inline int SHA256_Init(SHA256_CTX* sha) {
    (void)sha;
    return 1;
}

static inline int SHA256_Update(SHA256_CTX* sha, const void* data, size_t len) {
    (void)sha;
    (void)data;
    (void)len;
    return 1;
}

static inline int SHA256_Final(uint8_t out[SHA256_DIGEST_LENGTH], SHA256_CTX* sha) {
    (void)sha;
    for (int i = 0; i < SHA256_DIGEST_LENGTH; ++i) out[i] = 0;
    return 1;
}

#ifdef __cplusplus
}
#endif
