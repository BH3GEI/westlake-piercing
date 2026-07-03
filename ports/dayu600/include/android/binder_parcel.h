#pragma once

#include <stddef.h>
#include <stdint.h>

#include <android/binder_status.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AParcel AParcel;

void AParcel_delete(AParcel* parcel);
bool AParcel_getAllowFds(const AParcel* parcel);

binder_status_t AParcel_readInt32(const AParcel* parcel, int32_t* value);
binder_status_t AParcel_readUint32(const AParcel* parcel, uint32_t* value);
binder_status_t AParcel_readFloat(const AParcel* parcel, float* value);
binder_status_t AParcel_readByteArray(const AParcel* parcel, void* context,
                                      bool (*allocator)(void*, int32_t, int8_t**));
binder_status_t AParcel_readParcelFileDescriptor(const AParcel* parcel, int* fd);

binder_status_t AParcel_writeInt32(AParcel* parcel, int32_t value);
binder_status_t AParcel_writeUint32(AParcel* parcel, uint32_t value);
binder_status_t AParcel_writeFloat(AParcel* parcel, float value);
binder_status_t AParcel_writeByteArray(AParcel* parcel, const int8_t* data, int32_t length);
binder_status_t AParcel_writeParcelFileDescriptor(AParcel* parcel, int fd);

#ifdef __cplusplus
}
#endif
