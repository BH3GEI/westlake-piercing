// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__PackageInfoBuilder.java@143.html
// title: p1613 adapted-hanbing-java/adapter/client/PackageInfoBuilder.java:143
// summary: buildActivityInfo</span><br><span>OH ability/extension ??visible ????????? Android Activity/Service/Provider ??exported ????????f

  131:  
  132:         return ai;
  133:     }
  134:  
  135:     private static ActivityInfo buildActivityInfo(JSONObject abilityJson,
  136:                                                    String packageName) throws JSONException {
  137:         ActivityInfo ai = new ActivityInfo();
  138:         String abilityName = abilityJson.getString("name");
  139:  
  140:         // Reverse the Ability suffix to get Android class name
  141:         ai.name = IntentWantConverter.abilityNameToClassName(packageName, abilityName);
  142:         ai.packageName = packageName;
  143:         ai.exported = abilityJson.optBoolean("visible", false);
  144:  
  145:         // Launch mode reverse mapping
  146:         String launchMode = abilityJson.optString("launchMode", "STANDARD");
  147:         if ("SINGLETON".equals(launchMode)) {
  148:             ai.launchMode = ActivityInfo.LAUNCH_SINGLE_TASK;
  149:         } else {
  150:             ai.launchMode = ActivityInfo.LAUNCH_MULTIPLE;
  151:         }
  152:  
  153:         // Orientation reverse mapping
  154:         String orientation = abilityJson.optString("orientation", "UNSPECIFIED");
  155:         switch (orientation) {
