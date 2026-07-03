// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__activity__IntentWantConverter.java@173.html
// title: p1613 adapted-hanbing-java/adapter/activity/IntentWantConverter.java:173

  161:     public static String abilityNameToClassName(String packageName, String abilityName) {
  162:         String simpleName = mapAbilityToClassName(abilityName);
  163:         if (simpleName.contains(".")) {
  164:             return simpleName;
  165:         }
  166:         return packageName + "." + simpleName;
  167:     }
  168:  
  169:     /**
  170:      * Parse a Want JSON string (from C++ Want::ToString()) and construct an Android Intent.
  171:      * JSON format: {"bundleName":"...","abilityName":"...","action":"...","uri":"...","params":{...}}
  172:      */
  173:     public static Intent wantJsonToIntent(String wantJson) {
  174:         Intent intent = new Intent();
  175:         if (wantJson == null || wantJson.isEmpty()) {
  176:             return intent;
  177:         }
  178:         try {
  179:             org.json.JSONObject json = new org.json.JSONObject(wantJson);
  180:             String bundleName = json.optString("bundleName", null);
  181:             String abilityName = json.optString("abilityName", null);
  182:  
  183:             if (bundleName == null) {
  184:                 // Try nested element format from Want::ToString()
  185:                 org.json.JSONObject element = json.optJSONObject("element");
