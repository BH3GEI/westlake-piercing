// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__activity__java__LifecycleAdapter.java@277.html
// title: p1612 framework/activity/java/LifecycleAdapter.java:277
// summary: dispatchByActivityToken</span><br><span>OH binder ????????Runnable ??Handler(Looper.getMainLooper)????????? schedule ClientTransaction 

  265:      * appThread.scheduleTransaction() local-call goes through ActivityThread.H
  266:      * Handler which is bound to main Looper, but ClientTransaction.preExecute()
  267:      * and any synchronous follow-up runs on the calling thread first; subsequent
  268:      * callbacks from the lifecycle pipeline (vsync, doFrame stub) then fired in
  269:      * the binder thread context, never giving control back to main. Solution:
  270:      * post the entire transaction-build + schedule onto main Looper so the
  271:      * whole lifecycle handling runs in the proper thread context that
  272:      * ViewRootImpl / ThreadedRenderer / hwui RenderThread expects.
  273:      *
  274:      * Same pattern already proved correct in AppSchedulerBridge.notifyForegroundDeferred
  275:      * (Handler(Looper.getMainLooper()).post(...)).
  276:      */
  277:     private void dispatchByActivityToken(final android.os.IBinder activityToken,
  278:                                           final int androidState) {
  279:         Handler mainHandler = new Handler(Looper.getMainLooper());
  280:         mainHandler.post(new Runnable() {
  281:             @Override public void run() {
  282:                 dispatchByActivityTokenOnMainLooper(activityToken, androidState);
  283:             }
  284:         });
  285:         Log.i(TAG, "dispatchByActivityToken posted to main Looper: "
  286:                 + androidStateName(androidState));
  287:     }
  288:  
  289:     private void dispatchByActivityTokenOnMainLooper(android.os.IBinder activityToken,
