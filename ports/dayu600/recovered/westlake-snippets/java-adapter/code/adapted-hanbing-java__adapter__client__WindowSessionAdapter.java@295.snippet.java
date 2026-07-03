            }
        }
 
        // Populate InsetsState
        if (insetsState != null) {
            insetsState.set(new InsetsState());
        }
 
        return 0;
    }
 
    /**
     * [BRIDGED] relayoutAsync -> OH ISession.UpdateSessionRect (async, oneway)
     */
    @Override
    public void relayoutAsync(IWindow window, WindowManager.LayoutParams attrs,
            int requestedWidth, int requestedHeight, int viewVisibility,
            int flags, int seq, int lastSyncSeqId) throws RemoteException {
        logBridged("relayoutAsync", "-> OH ISession.UpdateSessionRect (async)");
        // TODO: Phase 2 - call native bridge async
    }
 
    /**
     * [BRIDGED] outOfMemory -> OH memory pressure notification
     */
