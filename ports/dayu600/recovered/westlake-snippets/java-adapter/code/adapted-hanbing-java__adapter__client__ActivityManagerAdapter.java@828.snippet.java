        if (receiver == null || filter == null || filter.countActions() == 0) {
            Log.w(TAG, "registerReceiver: null receiver or empty filter");
            return null;
        }
 
        // Allocate subscription ID
        int subscriptionId = mNextSubscriptionId.getAndIncrement();
 
        // Convert IntentFilter actions to OH event names
        String[] ohEvents = BroadcastEventConverter.filterActionsToOH(filter);
 
        // Subscribe via JNI -> C++ -> CES
        int result = nativeSubscribeCommonEvent(
                subscriptionId, ohEvents,
                filter.getPriority(),
                requiredPermission);
 
        if (result != 0) {
            Log.e(TAG, "registerReceiver: CES subscription failed, result=" + result);
            return null;
        }
 
        // Store mappings for reverse callback routing and unregistration
        IBinder receiverBinder = receiver.asBinder();
        mReceiverToSubscription.put(receiverBinder, subscriptionId);
