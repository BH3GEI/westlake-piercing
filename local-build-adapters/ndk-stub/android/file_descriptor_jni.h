#pragma once
// [DAYU600] minimal NDK file_descriptor_jni.h stub for nativehelper JNIPlatformHelp.
#include <jni.h>
#ifdef __cplusplus
extern "C" {
#endif
jobject AFileDescriptor_create(JNIEnv*);
int AFileDescriptor_getFd(JNIEnv*, jobject);
void AFileDescriptor_setFd(JNIEnv*, jobject, int);
#ifdef __cplusplus
}
#endif
