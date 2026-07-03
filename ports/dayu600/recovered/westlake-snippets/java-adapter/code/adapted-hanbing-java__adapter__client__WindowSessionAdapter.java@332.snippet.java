     */
    @Override
    public void setInsets(IWindow window, int touchableInsets, Rect contentInsets,
            Rect visibleInsets, Region touchableRegion) throws RemoteException {
        logBridged("setInsets", "-> OH ISession.SetAvoidArea");
        // TODO: Phase 2 - call native bridge to set avoid area
    }
 
    /**
     * [BRIDGED] finishDrawing -> OH ISessionStage.NotifyDrawingCompleted
     */
    @Override
    public void finishDrawing(IWindow window, SurfaceControl.Transaction postDrawTransaction,
            int seqId) throws RemoteException {
        logBridged("finishDrawing", "-> OH ISessionStage.NotifyDrawingCompleted");
 
        int[] sessionInfo = mSessionMap.get(window.asBinder());
        if (sessionInfo != null) {
            int sessionId = sessionInfo[0];
            // Flush RSUIDirector::SendMessages() to commit render instructions to RenderService
            nativeNotifySurfaceDrawingCompleted(sessionId);
            // Notify OH ISession that drawing is completed
            nativeNotifyDrawingCompleted(sessionId);
        } else {
            Log.w(TAG, "finishDrawing: no session found for window");
