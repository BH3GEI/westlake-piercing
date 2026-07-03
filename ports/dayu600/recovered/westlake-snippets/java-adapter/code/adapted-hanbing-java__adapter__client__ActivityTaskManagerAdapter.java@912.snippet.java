     *
     * If the target app already has an active Mission, the new Activity is pushed
     * onto that Mission's Ability stack (via StartAbilityInMission).
     * Otherwise, a new Mission is created (via StartAbility).
     *
     * This ensures Android apps get one Mission per app (like Android's one Task per app),
     * while OH native apps remain unaffected.
     *
     * @param intent the Android Intent
     * @param flags  Intent flags (FLAG_ACTIVITY_NEW_TASK, CLEAR_TOP, etc.)
     * @return result code
     */
    private int bridgeStartActivityWithStack(Intent intent, int flags) {
        if (intent == null) {
            Log.w(TAG, "bridgeStartActivityWithStack called with null Intent");
            return 0;
        }
 
        IntentWantConverter.WantParams want = IntentWantConverter.intentToWant(intent);
        String bundleName = want.bundleName;
        String abilityName = want.abilityName;
 
        if (bundleName == null || bundleName.isEmpty()) {
            // No target bundle ??fall through to standard StartAbility
            return nativeStartAbility(want.bundleName, want.abilityName,
