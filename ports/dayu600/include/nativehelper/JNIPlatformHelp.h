#pragma once

#include <stdarg.h>
#include <jni.h>

#ifndef NELEM
#define NELEM(x) ((int) (sizeof(x) / sizeof((x)[0])))
#endif

#ifdef __cplusplus
extern "C" {
#endif

int jniRegisterNativeMethods(JNIEnv* env, const char* className,
                             const JNINativeMethod* methods, int numMethods);

#ifdef __cplusplus
}

inline int jniThrowExceptionFmt(JNIEnv*, const char*, const char*, va_list) { return -1; }

inline int jniThrowExceptionFmt(JNIEnv*, const char*, const char*, ...) { return -1; }

inline int jniThrowException(JNIEnv*, const char*, const char*) { return -1; }

inline int jniThrowNullPointerException(JNIEnv*, const char*) { return -1; }

inline int jniThrowRuntimeException(JNIEnv*, const char*) { return -1; }

inline jlong jniGetNioBufferPointer(JNIEnv*, jobject) { return 0; }

inline jarray jniGetNioBufferBaseArray(JNIEnv*, jobject) { return nullptr; }

inline jint jniGetNioBufferBaseArrayOffset(JNIEnv*, jobject) { return 0; }

inline int jniGetFDFromFileDescriptor(JNIEnv*, jobject) { return -1; }

inline jlong jniGetNioBufferFields(JNIEnv*, jobject, jint* position, jint* limit,
                                   jint* elementSizeShift) {
    if (position) *position = 0;
    if (limit) *limit = 0;
    if (elementSizeShift) *elementSizeShift = 0;
    return 0;
}
#endif
