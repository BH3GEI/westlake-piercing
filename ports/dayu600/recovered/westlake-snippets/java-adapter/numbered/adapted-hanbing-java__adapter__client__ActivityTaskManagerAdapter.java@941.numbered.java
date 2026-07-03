// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ActivityTaskManagerAdapter.java@941.html
// title: p1613 adapted-hanbing-java/adapter/client/ActivityTaskManagerAdapter.java:941
// summary: FLAG_ACTIVITY_SINGLE_TOP</span><br><span>SINGLE_TOP ?????Ability ???????????deliverOnNewIntent ???????????nativeStartAbilityInMission/??????

  929:         boolean forceNewTask = (flags & Intent.FLAG_ACTIVITY_NEW_TASK) != 0
  930:                 && (flags & Intent.FLAG_ACTIVITY_MULTIPLE_TASK) != 0;
  931:  
  932:         // Check if this app already has an active Mission
  933:         Integer existingMissionId = mActiveMissions.get(bundleName);
  934:  
  935:         if (!forceNewTask && existingMissionId != null) {
  936:             // Reuse existing Mission ??push new Activity onto Ability stack
  937:             Log.i(TAG, "startActivity: reusing Mission " + existingMissionId
  938:                     + " for " + bundleName + "/" + abilityName);
  939:  
  940:             // Handle FLAG_ACTIVITY_SINGLE_TOP: if target is already on top, deliver onNewIntent
  941:             if ((flags & Intent.FLAG_ACTIVITY_SINGLE_TOP) != 0) {
  942:                 if (nativeIsTopAbility(existingMissionId, abilityName)) {
  943:                     Log.i(TAG, "startActivity: SINGLE_TOP, top is already " + abilityName
  944:                             + ", delivering onNewIntent");
  945:                     deliverOnNewIntent(intent, abilityName);
  946:                     return 0;
  947:                 }
  948:             }
  949:  
  950:             // Handle FLAG_ACTIVITY_CLEAR_TOP: clear everything above target, then bring it to top
  951:             if ((flags & Intent.FLAG_ACTIVITY_CLEAR_TOP) != 0) {
  952:                 Log.i(TAG, "startActivity: CLEAR_TOP for " + abilityName
  953:                         + " in Mission " + existingMissionId);
