            }
        }
        return -1;
    }
 
    /**
     * Called from C++ (JNI) when an OH CommonEvent is received.
     * Routes the event to the matching Android IIntentReceiver.
     *
     * This method is invoked on an OH IPC thread; the IIntentReceiver.performReceive()
     * is a oneway call that posts to the app's main thread internally.
     */
    public static void onCommonEventReceived(
            int subscriptionId,
            String ohAction,
            String extrasJson,
            String uri,
            int code,
            String data,
            boolean ordered,
            boolean sticky) {
 
        IIntentReceiver receiver = sReceiverMap.get(subscriptionId);
        if (receiver == null) {
            Log.w(TAG, "onCommonEventReceived: no receiver for subscriptionId=" + subscriptionId);
