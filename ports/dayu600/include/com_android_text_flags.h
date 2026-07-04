#pragma once

// Stub of the aconfig-generated com.android.text flag accessors used by
// hwui's FeatureFlags.h. Bringup returns fixed defaults.

#ifdef __cplusplus
extern "C" {
#endif

inline bool com_android_text_flags_letter_spacing_justification() {
    return false;
}

inline bool com_android_text_flags_typeface_redesign() {
    return false;
}

inline bool com_android_text_flags_fix_line_height_for_locale() {
    return false;
}

inline bool com_android_text_flags_deprecate_ui_fonts() {
    return false;
}

inline bool com_android_text_flags_new_fonts_fallback_xml() {
    return false;
}

inline bool com_android_text_flags_use_bounds_for_width() {
    return false;
}

#ifdef __cplusplus
}
#endif
