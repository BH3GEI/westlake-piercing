// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__WindowSessionAdapter.java@332.html
// title: p1613 adapted-hanbing-java/adapter/client/WindowSessionAdapter.java:332
// summary: finishDrawing</span><br><span>Android finishDrawing ????????? native ??? RSUIDirector ????????? OH session drawing-completed??? 

  320:      */
  321:     @Override
  322:     public void setInsets(IWindow window, int touchableInsets, Rect contentInsets,
  323:             Rect visibleInsets, Region touchableRegion) throws RemoteException {
  324:         logBridged("setInsets", "-> OH ISession.SetAvoidArea");
  325:         // TODO: Phase 2 - call native bridge to set avoid area
  326:     }
  327:  
  328:     /**
  329:      * [BRIDGED] finishDrawing -> OH ISessionStage.NotifyDrawingCompleted
  330:      */
  331:     @Override
  332:     public void finishDrawing(IWindow window, SurfaceControl.Transaction postDrawTransaction,
  333:             int seqId) throws RemoteException {
  334:         logBridged("finishDrawing", "-> OH ISessionStage.NotifyDrawingCompleted");
  335:  
  336:         int[] sessionInfo = mSessionMap.get(window.asBinder());
  337:         if (sessionInfo != null) {
  338:             int sessionId = sessionInfo[0];
  339:             // Flush RSUIDirector::SendMessages() to commit render instructions to RenderService
  340:             nativeNotifySurfaceDrawingCompleted(sessionId);
  341:             // Notify OH ISession that drawing is completed
  342:             nativeNotifyDrawingCompleted(sessionId);
  343:         } else {
  344:             Log.w(TAG, "finishDrawing: no session found for window");
