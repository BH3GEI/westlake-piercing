        java.lang.reflect.Method method;
        if (paramTypes != null) {
            method = mApplicationThread.getClass().getMethod(methodName, paramTypes);
        } else {
            method = mApplicationThread.getClass().getMethod(methodName);
        }
        method.invoke(mApplicationThread, args);
    }
 
    /**
     * Notify that a service has been destroyed, clean up its token.
     */
    public void onServiceDestroyed(String componentKey) {
        IBinder token = mServiceTokens.remove(componentKey);
        if (token != null) {
            mCreatedServices.remove(token);
        }
    }
 
    // ==================== Utility ====================
 
    private String mapLifecycleStateToItem(int ohState) {
        switch (ohState) {
            case 0: return "LaunchActivityItem";      // INITIAL
            case 2: return "PauseActivityItem";        // INACTIVE
