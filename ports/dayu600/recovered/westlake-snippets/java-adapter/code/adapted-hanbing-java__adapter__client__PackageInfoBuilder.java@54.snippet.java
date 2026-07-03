     *
     * Expected JSON format (from BMS via JNI):
     * {
     *   "name": "com.example.app",
     *   "versionCode": 1,
     *   "versionName": "1.0",
     *   "uid": 10086,
     *   "maxSdkVersion": 33,
     *   "abilityInfos": [{"name":"MainActivityAbility","visible":true,...}],
     *   "extensionAbilityInfos": [{"name":"MyService","type":"SERVICE",...}],
     *   "reqPermissions": ["ohos.permission.INTERNET",...]
     * }
     */
    public static PackageInfo fromBundleInfo(String bundleInfoJson) {
        PackageInfo pi = new PackageInfo();
 
        if (bundleInfoJson == null || bundleInfoJson.isEmpty()) {
            Log.w(TAG, "Empty bundleInfoJson");
            return pi;
        }
 
        try {
            JSONObject json = new JSONObject(bundleInfoJson);
            return fromBundleInfoJson(json);
        } catch (JSONException e) {
