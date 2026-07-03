// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__WindowSessionAdapter.java@185.html
// title: p1613 adapted-hanbing-java/adapter/client/WindowSessionAdapter.java:185

  173:     public int addToDisplayWithoutInputChannel(IWindow window, WindowManager.LayoutParams attrs,
  174:             int viewVisibility, int layerStackId, InsetsState insetsState,
  175:             Rect attachedFrame, float[] sizeCompatScale) throws RemoteException {
  176:         logBridged("addToDisplayWithoutInputChannel", "-> OH ISession (no input channel variant)");
  177:         // TODO: Phase 2 - call native bridge without input channel
  178:         return 0;
  179:     }
  180:  
  181:     /**
  182:      * [BRIDGED] remove -> OH ISession.Disconnect + ISceneSessionManager.DestroySession
  183:      */
  184:     @Override
  185:     public void remove(IWindow window) throws RemoteException {
  186:         logBridged("remove", "-> OH ISession.Disconnect");
  187:  
  188:         // Clean up InputChannel
  189:         InputEventBridge.getInstance().destroyInputChannel(window.asBinder());
  190:  
  191:         int[] sessionInfo = mSessionMap.remove(window.asBinder());
  192:         if (sessionInfo != null) {
  193:             int sessionId = sessionInfo[0];
  194:             // Destroy OH surface resources (RSSurfaceNode, RSUIDirector, OHGraphicBufferProducer)
  195:             nativeDestroyOHSurface(sessionId);
  196:             // Destroy OH window session (ISession.Disconnect + SSM.DestroyAndDisconnect)
  197:             nativeDestroySession(sessionId);
