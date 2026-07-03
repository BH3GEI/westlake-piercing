#pragma once

#include <jni.h>
#include <android/binder_parcel.h>

inline AParcel* AParcel_fromJavaParcel(JNIEnv*, jobject) { return nullptr; }
