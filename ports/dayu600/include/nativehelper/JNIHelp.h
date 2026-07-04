#pragma once

#include <stdarg.h>

#include <jni.h>
#include <nativehelper/JNIPlatformHelp.h>

inline int jniThrowIOException(JNIEnv*, int) { return -1; }
// jniGetFDFromFileDescriptor comes from JNIPlatformHelp.h
