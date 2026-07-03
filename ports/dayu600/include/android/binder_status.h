#pragma once

#include <stdint.h>

typedef int32_t binder_status_t;

enum {
    STATUS_OK = 0,
    STATUS_UNKNOWN_ERROR = -1,
    STATUS_NO_MEMORY = -12,
    STATUS_BAD_VALUE = -22,
    STATUS_NOT_ENOUGH_DATA = -61,
    STATUS_FAILED_TRANSACTION = -2147483646,
};
