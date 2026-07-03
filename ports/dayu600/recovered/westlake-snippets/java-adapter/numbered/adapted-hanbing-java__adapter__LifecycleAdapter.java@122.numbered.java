// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.13\adapted-hanbing-java__adapter__LifecycleAdapter.java@122.html
// title: 16.13 adapted-hanbing-java/adapter/LifecycleAdapter.java:122
// summary: mapAndroidToOH</span><br><span>??Android CREATED/STARTED ?????OH INACTIVE??? PAUSED ?????OH FOREGROUND??? STOPPED ?????BACKGRO

  110:         int androidState = mapOHToAndroid(ohState);
  111:  
  112:         Log.d(TAG, "OH callback: state=" + ohStateName(ohState)
  113:                 + " -> Android state: " + androidStateName(androidState)
  114:                 + " (token=" + abilityToken + ")");
  115:  
  116:         // Trigger the corresponding Android lifecycle change via internal mechanism
  117:         dispatchAndroidLifecycle(abilityToken, androidState);
  118:     }
  119:  
  120:     // ==================== State Mapping ====================
  121:  
  122:     private int mapAndroidToOH(int androidState) {
  123:         switch (androidState) {
  124:             case ANDROID_STATE_CREATED:
  125:             case ANDROID_STATE_STARTED:
  126:                 return OH_STATE_INACTIVE;
  127:             case ANDROID_STATE_RESUMED:
  128:                 return OH_STATE_FOREGROUND_NEW;
  129:             case ANDROID_STATE_PAUSED:
  130:                 // OH has no pause equivalent, stay in foreground
  131:                 return OH_STATE_FOREGROUND_NEW;
  132:             case ANDROID_STATE_STOPPED:
  133:                 return OH_STATE_BACKGROUND_NEW;
  134:             case ANDROID_STATE_DESTROYED:
