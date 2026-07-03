// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__activity__java__ActivityClientControllerAdapter.java@186.html
// title: 16.12 framework/activity/java/ActivityClientControllerAdapter.java:186

  174:     // actually draws.  Hook ViewTreeObserver.OnDrawListener on the Activity's
  175:     // DecorView; on first onDraw ??report FOREGROUND + remove listener.
  176:     // Fallback 800ms timeout (< 1s OH AMS LIFECYCLE_HALF_TIMEOUT) ensures we
  177:     // don't get stuck if the first frame never draws (e.g., empty Activity,
  178:     // RenderThread death).
  179:     // ====================================================================
  180:  
  181:     /** Per-token first-frame state. true = already reported FG, suppress dup. */
  182:     private static final java.util.WeakHashMap<IBinder, Boolean> sFgReported =
  183:             new java.util.WeakHashMap<>();
  184:  
  185:     @Override
  186:     public void activityResumed(IBinder token, boolean handleSplashScreenExit) {
  187:         // Android Activity.onResume done ??defer OH AbilityState.FOREGROUND
  188:         // report until first hwui frame draws (Bug B fix).
  189:         if (token == null) {
  190:             Log.w(TAG, "activityResumed: null token");
  191:             return;
  192:         }
  193:  
  194:         // Re-resume scenario (token already saw first frame in a prior cycle):
  195:         // OH AMS is already past first-launch state machine; reporting FG
  196:         // immediately is safe + needed to satisfy LIFECYCLE_HALF_TIMEOUT.
  197:         synchronized (sFgReported) {
  198:             if (Boolean.TRUE.equals(sFgReported.get(token))) {
