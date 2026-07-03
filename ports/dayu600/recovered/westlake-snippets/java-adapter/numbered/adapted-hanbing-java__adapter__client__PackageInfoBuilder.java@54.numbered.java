// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__PackageInfoBuilder.java@54.html
// title: p1613 adapted-hanbing-java/adapter/client/PackageInfoBuilder.java:54

   42:      *
   43:      * Expected JSON format (from BMS via JNI):
   44:      * {
   45:      *   "name": "com.example.app",
   46:      *   "versionCode": 1,
   47:      *   "versionName": "1.0",
   48:      *   "uid": 10086,
   49:      *   "maxSdkVersion": 33,
   50:      *   "abilityInfos": [{"name":"MainActivityAbility","visible":true,...}],
   51:      *   "extensionAbilityInfos": [{"name":"MyService","type":"SERVICE",...}],
   52:      *   "reqPermissions": ["ohos.permission.INTERNET",...]
   53:      * }
   54:      */
   55:     public static PackageInfo fromBundleInfo(String bundleInfoJson) {
   56:         PackageInfo pi = new PackageInfo();
   57:  
   58:         if (bundleInfoJson == null || bundleInfoJson.isEmpty()) {
   59:             Log.w(TAG, "Empty bundleInfoJson");
   60:             return pi;
   61:         }
   62:  
   63:         try {
   64:             JSONObject json = new JSONObject(bundleInfoJson);
   65:             return fromBundleInfoJson(json);
   66:         } catch (JSONException e) {
