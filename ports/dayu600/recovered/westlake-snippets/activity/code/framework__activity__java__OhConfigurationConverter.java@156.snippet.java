        }
 
        Log.i(TAG, "Converted Configuration: locale=" + locale
                + " fontScale=" + cfg.fontScale
                + " densityDpi=" + cfg.densityDpi
                + " orientation=" + cfg.orientation
                + " screenWidthDp=" + cfg.screenWidthDp
                + " uiMode=0x" + Integer.toHexString(cfg.uiMode));
        return cfg;
    }
 
    /** Best-effort BCP-47 parse with safe fallback. */
    private static Locale parseLocale(String localeTag, String langOnly) {
        String tag = (localeTag != null && !localeTag.isEmpty()) ? localeTag : langOnly;
        if (tag != null && !tag.isEmpty()) {
            try {
                Locale loc = Locale.forLanguageTag(tag);
                if (loc != null && !loc.getLanguage().isEmpty()) {
                    return loc;
                }
            } catch (Throwable ignored) {}
        }
        // Fallback: JVM default ??en-US ultimate
        Locale def = Locale.getDefault();
        if (def == null || def.getLanguage().isEmpty()) {
