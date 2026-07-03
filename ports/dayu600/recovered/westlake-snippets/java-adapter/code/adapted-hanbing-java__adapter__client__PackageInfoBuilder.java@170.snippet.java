                break;
            case "PORTRAIT":
                ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
                break;
            default:
                ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
                break;
        }
 
        return ai;
    }
 
    private static void buildExtensionInfos(JSONArray extensions,
                                              PackageInfo pi) throws JSONException {
        int serviceCount = 0;
        int providerCount = 0;
 
        // Count types first
        for (int i = 0; i < extensions.length(); i++) {
            JSONObject ext = extensions.getJSONObject(i);
            String type = ext.optString("type", "");
            if ("SERVICE".equals(type)) {
                serviceCount++;
            } else if ("DATASHARE".equals(type)) {
                providerCount++;
