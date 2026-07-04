#pragma once

// Stub of the NDK binder C++ parcel helpers used by hwui (jni/Region.cpp).

#include <android/binder_parcel.h>
#include <android/binder_status.h>

#include <vector>

namespace ndk {

template <typename T>
inline binder_status_t AParcel_readVector(const AParcel* /* parcel */, std::vector<T>* vec) {
    if (vec != nullptr) {
        vec->clear();
    }
    return STATUS_OK;
}

template <typename T>
inline binder_status_t AParcel_writeVector(AParcel* /* parcel */,
                                           const std::vector<T>& /* vec */) {
    return STATUS_OK;
}

}  // namespace ndk
