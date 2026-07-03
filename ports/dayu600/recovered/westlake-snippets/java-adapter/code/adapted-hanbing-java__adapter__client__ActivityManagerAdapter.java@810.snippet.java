 
    // [BRIDGED] registerReceiver -> OH CES.SubscribeCommonEvent
    @Override
    public Intent registerReceiver(IApplicationThread caller, String callerPackage,
            IIntentReceiver receiver, IntentFilter filter,
            String requiredPermission, int userId, int flags) throws RemoteException {
        return registerReceiverWithFeature(caller, callerPackage, null, null,
                receiver, filter, requiredPermission, userId, flags);
    }
 
    // [BRIDGED] registerReceiverWithFeature -> OH CES.SubscribeCommonEvent
    @Override
    public Intent registerReceiverWithFeature(IApplicationThread caller, String callerPackage,
            String callingFeatureId, String receiverId, IIntentReceiver receiver,
            IntentFilter filter, String requiredPermission, int userId,
            int flags) throws RemoteException {
        logBridged("registerReceiverWithFeature", "-> OH CES.SubscribeCommonEvent");
 
        if (receiver == null || filter == null || filter.countActions() == 0) {
            Log.w(TAG, "registerReceiver: null receiver or empty filter");
            return null;
        }
 
        // Allocate subscription ID
        int subscriptionId = mNextSubscriptionId.getAndIncrement();
