#pragma once

// Stub of libbinder's android::Parcel for the OpenHarmony bringup build.
// hwui only includes this header transitively; JNI parcel access goes
// through the NDK AParcel wrappers (see android/binder_parcel.h stub).

#include <stddef.h>
#include <stdint.h>

namespace android {

class Parcel;

}  // namespace android
