// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__activity__java__OhConfigurationConverter.java@156.html
// title: p1612 framework/activity/java/OhConfigurationConverter.java:156
// summary: parseLocale</span><br><span>OH locale ?????? BCP-47 ???????????????????JVM ??? Locale ??Locale.US?????Android Configuration ??????

  144:         }
  145:  
  146:         Log.i(TAG, "Converted Configuration: locale=" + locale
  147:                 + " fontScale=" + cfg.fontScale
  148:                 + " densityDpi=" + cfg.densityDpi
  149:                 + " orientation=" + cfg.orientation
  150:                 + " screenWidthDp=" + cfg.screenWidthDp
  151:                 + " uiMode=0x" + Integer.toHexString(cfg.uiMode));
  152:         return cfg;
  153:     }
  154:  
  155:     /** Best-effort BCP-47 parse with safe fallback. */
  156:     private static Locale parseLocale(String localeTag, String langOnly) {
  157:         String tag = (localeTag != null && !localeTag.isEmpty()) ? localeTag : langOnly;
  158:         if (tag != null && !tag.isEmpty()) {
  159:             try {
  160:                 Locale loc = Locale.forLanguageTag(tag);
  161:                 if (loc != null && !loc.getLanguage().isEmpty()) {
  162:                     return loc;
  163:                 }
  164:             } catch (Throwable ignored) {}
  165:         }
  166:         // Fallback: JVM default ??en-US ultimate
  167:         Locale def = Locale.getDefault();
  168:         if (def == null || def.getLanguage().isEmpty()) {
