// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.13\adapted-hanbing-java__adapter__client__ActivityTaskManagerAdapter.java@912.html
// title: 16.13 adapted-hanbing-java/adapter/client/ActivityTaskManagerAdapter.java:912
// summary: bridgeStartActivityWithStack</span><br><span>??OH Mission/Ability ?????? Android task flag??EW_TASK+MULTIPLE_TASK ?????Mission?????Mission 

  900:      *
  901:      * If the target app already has an active Mission, the new Activity is pushed
  902:      * onto that Mission's Ability stack (via StartAbilityInMission).
  903:      * Otherwise, a new Mission is created (via StartAbility).
  904:      *
  905:      * This ensures Android apps get one Mission per app (like Android's one Task per app),
  906:      * while OH native apps remain unaffected.
  907:      *
  908:      * @param intent the Android Intent
  909:      * @param flags  Intent flags (FLAG_ACTIVITY_NEW_TASK, CLEAR_TOP, etc.)
  910:      * @return result code
  911:      */
  912:     private int bridgeStartActivityWithStack(Intent intent, int flags) {
  913:         if (intent == null) {
  914:             Log.w(TAG, "bridgeStartActivityWithStack called with null Intent");
  915:             return 0;
  916:         }
  917:  
  918:         IntentWantConverter.WantParams want = IntentWantConverter.intentToWant(intent);
  919:         String bundleName = want.bundleName;
  920:         String abilityName = want.abilityName;
  921:  
  922:         if (bundleName == null || bundleName.isEmpty()) {
  923:             // No target bundle ??fall through to standard StartAbility
  924:             return nativeStartAbility(want.bundleName, want.abilityName,
