#pragma once

#include <stdarg.h>
#include <jni.h>

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
#endif
