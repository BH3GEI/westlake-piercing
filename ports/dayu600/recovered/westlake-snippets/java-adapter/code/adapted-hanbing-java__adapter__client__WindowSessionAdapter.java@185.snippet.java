    public int addToDisplayWithoutInputChannel(IWindow window, WindowManager.LayoutParams attrs,
            int viewVisibility, int layerStackId, InsetsState insetsState,
            Rect attachedFrame, float[] sizeCompatScale) throws RemoteException {
        logBridged("addToDisplayWithoutInputChannel", "-> OH ISession (no input channel variant)");
        // TODO: Phase 2 - call native bridge without input channel
        return 0;
    }
 
    /**
     * [BRIDGED] remove -> OH ISession.Disconnect + ISceneSessionManager.DestroySession
     */
    @Override
    public void remove(IWindow window) throws RemoteException {
        logBridged("remove", "-> OH ISession.Disconnect");
 
        // Clean up InputChannel
        InputEventBridge.getInstance().destroyInputChannel(window.asBinder());
 
        int[] sessionInfo = mSessionMap.remove(window.asBinder());
        if (sessionInfo != null) {
            int sessionId = sessionInfo[0];
            // Destroy OH surface resources (RSSurfaceNode, RSUIDirector, OHGraphicBufferProducer)
            nativeDestroyOHSurface(sessionId);
            // Destroy OH window session (ISession.Disconnect + SSM.DestroyAndDisconnect)
            nativeDestroySession(sessionId);
