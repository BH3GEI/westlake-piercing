// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__LifecycleAdapter.java@83.html
// title: p1613 adapted-hanbing-java/adapter/LifecycleAdapter.java:83

   71:     }
   72:  
   73:     private LifecycleAdapter() {
   74:     }
   75:  
   76:     /**
   77:      * Convert Android Activity lifecycle state changes to OH Ability state changes.
   78:      * Called when ActivityThread processes lifecycle events.
   79:      *
   80:      * @param activityToken Activity identifier
   81:      * @param androidState  Target Android lifecycle state
   82:      */
   83:     public void onAndroidLifecycleChanged(int activityToken, int androidState) {
   84:         int currentOHState = mStateMap.getOrDefault(activityToken, OH_STATE_INITIAL);
   85:         int targetOHState = mapAndroidToOH(androidState);
   86:  
   87:         Log.d(TAG, "Android state change: " + androidStateName(androidState)
   88:                 + " -> OH state: " + ohStateName(targetOHState)
   89:                 + " (token=" + activityToken + ")");
   90:  
   91:         if (targetOHState != currentOHState) {
   92:             mStateMap.put(activityToken, targetOHState);
   93:             notifyOHStateChange(activityToken, targetOHState);
   94:         }
   95:  
