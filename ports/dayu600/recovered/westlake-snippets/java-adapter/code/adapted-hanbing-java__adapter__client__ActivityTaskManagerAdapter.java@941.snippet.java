        boolean forceNewTask = (flags & Intent.FLAG_ACTIVITY_NEW_TASK) != 0
                && (flags & Intent.FLAG_ACTIVITY_MULTIPLE_TASK) != 0;
 
        // Check if this app already has an active Mission
        Integer existingMissionId = mActiveMissions.get(bundleName);
 
        if (!forceNewTask && existingMissionId != null) {
            // Reuse existing Mission ??push new Activity onto Ability stack
            Log.i(TAG, "startActivity: reusing Mission " + existingMissionId
                    + " for " + bundleName + "/" + abilityName);
 
            // Handle FLAG_ACTIVITY_SINGLE_TOP: if target is already on top, deliver onNewIntent
            if ((flags & Intent.FLAG_ACTIVITY_SINGLE_TOP) != 0) {
                if (nativeIsTopAbility(existingMissionId, abilityName)) {
                    Log.i(TAG, "startActivity: SINGLE_TOP, top is already " + abilityName
                            + ", delivering onNewIntent");
                    deliverOnNewIntent(intent, abilityName);
                    return 0;
                }
            }
 
            // Handle FLAG_ACTIVITY_CLEAR_TOP: clear everything above target, then bring it to top
            if ((flags & Intent.FLAG_ACTIVITY_CLEAR_TOP) != 0) {
                Log.i(TAG, "startActivity: CLEAR_TOP for " + abilityName
                        + " in Mission " + existingMissionId);
