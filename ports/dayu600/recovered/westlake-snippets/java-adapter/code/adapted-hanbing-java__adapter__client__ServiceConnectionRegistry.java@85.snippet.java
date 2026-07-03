    // Connection registration (called by ActivityManagerAdapter.bindService)
    // ========================================================================
 
    /**
     * Register an Android IServiceConnection and assign a local connectionId.
     * If the same connection (by Binder identity) is already registered,
     * returns the existing local connectionId without creating a duplicate.
     *
     * @param connection The Android IServiceConnection from the app
     * @param target     The target service ComponentName
     * @return local connectionId to pass to the native side
     */
    public synchronized int registerConnection(IServiceConnection connection,
                                                ComponentName target) {
        IBinder key = connection.asBinder();
        ConnectionRecord existing = mConnections.get(key);
        if (existing != null) {
            Log.d(TAG, "Connection already registered, connId=" + existing.connectionId
                    + " target=" + target);
            return existing.connectionId;
        }
 
        ConnectionRecord record = new ConnectionRecord(connection, target);
        int connId = mNextConnectionId++;
        record.connectionId = connId;
