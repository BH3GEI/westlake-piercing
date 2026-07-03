// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ServiceConnectionRegistry.java@85.html
// title: p1613 adapted-hanbing-java/adapter/client/ServiceConnectionRegistry.java:85

   73:     // Connection registration (called by ActivityManagerAdapter.bindService)
   74:     // ========================================================================
   75:  
   76:     /**
   77:      * Register an Android IServiceConnection and assign a local connectionId.
   78:      * If the same connection (by Binder identity) is already registered,
   79:      * returns the existing local connectionId without creating a duplicate.
   80:      *
   81:      * @param connection The Android IServiceConnection from the app
   82:      * @param target     The target service ComponentName
   83:      * @return local connectionId to pass to the native side
   84:      */
   85:     public synchronized int registerConnection(IServiceConnection connection,
   86:                                                 ComponentName target) {
   87:         IBinder key = connection.asBinder();
   88:         ConnectionRecord existing = mConnections.get(key);
   89:         if (existing != null) {
   90:             Log.d(TAG, "Connection already registered, connId=" + existing.connectionId
   91:                     + " target=" + target);
   92:             return existing.connectionId;
   93:         }
   94:  
   95:         ConnectionRecord record = new ConnectionRecord(connection, target);
   96:         int connId = mNextConnectionId++;
   97:         record.connectionId = connId;
