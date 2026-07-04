#pragma once

// Stub of libcutils' cutils/properties.h for the OpenHarmony bringup build
// (shadows the AOSP 11 copy, which needs bionic sys/system_properties.h).

#include <stddef.h>
#include <string.h>

#define PROPERTY_KEY_MAX 32
#define PROPERTY_VALUE_MAX 92

#ifdef __cplusplus
extern "C" {
#endif

static inline int property_get(const char* key, char* value, const char* default_value) {
    (void)key;
    if (value == NULL) return 0;
    if (default_value == NULL) {
        value[0] = '\0';
        return 0;
    }
    strncpy(value, default_value, PROPERTY_VALUE_MAX - 1);
    value[PROPERTY_VALUE_MAX - 1] = '\0';
    return (int)strlen(value);
}

static inline int property_set(const char* key, const char* value) {
    (void)key;
    (void)value;
    return 0;
}

static inline int8_t property_get_bool(const char* key, int8_t default_value) {
    (void)key;
    return default_value;
}

static inline int32_t property_get_int32(const char* key, int32_t default_value) {
    (void)key;
    return default_value;
}

static inline int64_t property_get_int64(const char* key, int64_t default_value) {
    (void)key;
    return default_value;
}

#ifdef __cplusplus
}
#endif
