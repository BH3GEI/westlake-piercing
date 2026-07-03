 
        return ai;
    }
 
    private static ActivityInfo buildActivityInfo(JSONObject abilityJson,
                                                   String packageName) throws JSONException {
        ActivityInfo ai = new ActivityInfo();
        String abilityName = abilityJson.getString("name");
 
        // Reverse the Ability suffix to get Android class name
        ai.name = IntentWantConverter.abilityNameToClassName(packageName, abilityName);
        ai.packageName = packageName;
        ai.exported = abilityJson.optBoolean("visible", false);
 
        // Launch mode reverse mapping
        String launchMode = abilityJson.optString("launchMode", "STANDARD");
        if ("SINGLETON".equals(launchMode)) {
            ai.launchMode = ActivityInfo.LAUNCH_SINGLE_TASK;
        } else {
            ai.launchMode = ActivityInfo.LAUNCH_MULTIPLE;
        }
 
        // Orientation reverse mapping
        String orientation = abilityJson.optString("orientation", "UNSPECIFIED");
        switch (orientation) {
