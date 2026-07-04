#pragma once

// Stub of the aconfig-generated com.android.graphics.hwui flag accessors
// used by hwui (Properties.cpp, DrawTextFunctor.h). Fixed defaults.

namespace com {
namespace android {
namespace graphics {
namespace hwui {
namespace flags {

constexpr bool clip_surfaceviews() {
    return false;
}

constexpr bool hdr_10bit_plus() {
    return false;
}

constexpr bool initialize_gl_always() {
    return false;
}

constexpr bool skip_eglmanager_telemetry() {
    return false;
}

constexpr bool resample_gainmap_regions() {
    return false;
}

constexpr bool high_contrast_text_luminance() {
    return false;
}

constexpr bool high_contrast_text_small_text_rect() {
    return false;
}

constexpr bool gainmap_animations() {
    return false;
}

constexpr bool gainmap_constructor_with_metadata() {
    return false;
}

constexpr bool animate_hdr_transitions() {
    return false;
}

constexpr bool draw_region() {
    return false;
}

constexpr bool animated_image_drawable_filter_bitmap() {
    return false;
}

constexpr bool requested_formats_v() {
    return false;
}

}  // namespace flags
}  // namespace hwui
}  // namespace graphics
}  // namespace android
}  // namespace com
