#pragma once

#include <stdarg.h>

#include <jni.h>
#include <nativehelper/JNIPlatformHelp.h>

inline int jniThrowIOException(JNIEnv*, int) { return -1; }
inline int jniGetFDFromFileDescriptor(JNIEnv*, jobject) { return -1; }
