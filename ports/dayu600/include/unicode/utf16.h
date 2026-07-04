#pragma once

// Minimal stub of ICU's unicode/utf16.h with the UTF-16 helper macros used
// by hwui (jni/Paint.cpp). Definitions match the ICU originals.

#include <stdint.h>

#ifndef U16_IS_SINGLE
#define U16_IS_SINGLE(c) !(((c)&0xfffff800) == 0xd800)
#endif

#ifndef U16_IS_LEAD
#define U16_IS_LEAD(c) (((c)&0xfffffc00) == 0xd800)
#endif

#ifndef U16_IS_TRAIL
#define U16_IS_TRAIL(c) (((c)&0xfffffc00) == 0xdc00)
#endif

#ifndef U16_IS_SURROGATE
#define U16_IS_SURROGATE(c) (((c)&0xfffff800) == 0xd800)
#endif

#ifndef U16_IS_SURROGATE_LEAD
#define U16_IS_SURROGATE_LEAD(c) (((c)&0x400) == 0)
#endif

#ifndef U16_IS_SURROGATE_TRAIL
#define U16_IS_SURROGATE_TRAIL(c) (((c)&0x400) != 0)
#endif

#ifndef U16_SURROGATE_OFFSET
#define U16_SURROGATE_OFFSET ((0xd800 << 10UL) + 0xdc00 - 0x10000)
#endif

#ifndef U16_GET_SUPPLEMENTARY
#define U16_GET_SUPPLEMENTARY(lead, trail) \
    (((int32_t)(lead) << 10UL) + (int32_t)(trail)-U16_SURROGATE_OFFSET)
#endif

#ifndef U16_LEAD
#define U16_LEAD(supplementary) (uint16_t)(((supplementary) >> 10) + 0xd7c0)
#endif

#ifndef U16_TRAIL
#define U16_TRAIL(supplementary) (uint16_t)(((supplementary)&0x3ff) | 0xdc00)
#endif

#ifndef U16_LENGTH
#define U16_LENGTH(c) ((uint32_t)(c) <= 0xffff ? 1 : 2)
#endif

#ifndef U16_MAX_LENGTH
#define U16_MAX_LENGTH 2
#endif

#ifndef U16_NEXT
#define U16_NEXT(s, i, length, c)                            \
    do {                                                     \
        (c) = (s)[(i)++];                                    \
        if (U16_IS_LEAD(c)) {                                \
            uint16_t __c2;                                   \
            if ((i) != (length) && U16_IS_TRAIL(__c2 = (s)[(i)])) { \
                ++(i);                                       \
                (c) = U16_GET_SUPPLEMENTARY((c), __c2);      \
            }                                                \
        }                                                    \
    } while (false)
#endif

#ifndef U16_PREV
#define U16_PREV(s, start, i, c)                             \
    do {                                                     \
        (c) = (s)[--(i)];                                    \
        if (U16_IS_TRAIL(c)) {                               \
            uint16_t __c2;                                   \
            if ((i) > (start) && U16_IS_LEAD(__c2 = (s)[(i)-1])) { \
                --(i);                                       \
                (c) = U16_GET_SUPPLEMENTARY(__c2, (c));      \
            }                                                \
        }                                                    \
    } while (false)
#endif
