// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__WindowSessionAdapter.java@295.html
// title: p1613 adapted-hanbing-java/adapter/client/WindowSessionAdapter.java:295

  283:             }
  284:         }
  285:  
  286:         // Populate InsetsState
  287:         if (insetsState != null) {
  288:             insetsState.set(new InsetsState());
  289:         }
  290:  
  291:         return 0;
  292:     }
  293:  
  294:     /**
  295:      * [BRIDGED] relayoutAsync -> OH ISession.UpdateSessionRect (async, oneway)
  296:      */
  297:     @Override
  298:     public void relayoutAsync(IWindow window, WindowManager.LayoutParams attrs,
  299:             int requestedWidth, int requestedHeight, int viewVisibility,
  300:             int flags, int seq, int lastSyncSeqId) throws RemoteException {
  301:         logBridged("relayoutAsync", "-> OH ISession.UpdateSessionRect (async)");
  302:         // TODO: Phase 2 - call native bridge async
  303:     }
  304:  
  305:     /**
  306:      * [BRIDGED] outOfMemory -> OH memory pressure notification
  307:      */
