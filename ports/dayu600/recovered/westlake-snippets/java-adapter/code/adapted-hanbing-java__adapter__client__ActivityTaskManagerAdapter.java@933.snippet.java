 
        if (bundleName == null || bundleName.isEmpty()) {
            // No target bundle ??fall through to standard StartAbility
            return nativeStartAbility(want.bundleName, want.abilityName,
                    want.action, want.uri, want.extrasJson);
        }
 
        // Check if we should force a new Mission
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
