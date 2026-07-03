     * appThread.scheduleTransaction() local-call goes through ActivityThread.H
     * Handler which is bound to main Looper, but ClientTransaction.preExecute()
     * and any synchronous follow-up runs on the calling thread first; subsequent
     * callbacks from the lifecycle pipeline (vsync, doFrame stub) then fired in
     * the binder thread context, never giving control back to main. Solution:
     * post the entire transaction-build + schedule onto main Looper so the
     * whole lifecycle handling runs in the proper thread context that
     * ViewRootImpl / ThreadedRenderer / hwui RenderThread expects.
     *
     * Same pattern already proved correct in AppSchedulerBridge.notifyForegroundDeferred
     * (Handler(Looper.getMainLooper()).post(...)).
     */
    private void dispatchByActivityToken(final android.os.IBinder activityToken,
                                          final int androidState) {
        Handler mainHandler = new Handler(Looper.getMainLooper());
        mainHandler.post(new Runnable() {
            @Override public void run() {
                dispatchByActivityTokenOnMainLooper(activityToken, androidState);
            }
        });
        Log.i(TAG, "dispatchByActivityToken posted to main Looper: "
                + androidStateName(androidState));
    }
 
    private void dispatchByActivityTokenOnMainLooper(android.os.IBinder activityToken,
