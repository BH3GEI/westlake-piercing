    public static String abilityNameToClassName(String packageName, String abilityName) {
        String simpleName = mapAbilityToClassName(abilityName);
        if (simpleName.contains(".")) {
            return simpleName;
        }
        return packageName + "." + simpleName;
    }
 
    /**
     * Parse a Want JSON string (from C++ Want::ToString()) and construct an Android Intent.
     * JSON format: {"bundleName":"...","abilityName":"...","action":"...","uri":"...","params":{...}}
     */
    public static Intent wantJsonToIntent(String wantJson) {
        Intent intent = new Intent();
        if (wantJson == null || wantJson.isEmpty()) {
            return intent;
        }
        try {
            org.json.JSONObject json = new org.json.JSONObject(wantJson);
            String bundleName = json.optString("bundleName", null);
            String abilityName = json.optString("abilityName", null);
 
            if (bundleName == null) {
                // Try nested element format from Want::ToString()
                org.json.JSONObject element = json.optJSONObject("element");
