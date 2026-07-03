// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ActivityManagerAdapter.java@810.html
// title: p1613 adapted-hanbing-java/adapter/client/ActivityManagerAdapter.java:810
// summary: registerReceiverWithFeature</span><br><span>AtomicInteger ??? subscriptionId??oncurrentHashMap ??? Binder->????????>filter???????? ID ?????Com

  798:  
  799:     // [BRIDGED] registerReceiver -> OH CES.SubscribeCommonEvent
  800:     @Override
  801:     public Intent registerReceiver(IApplicationThread caller, String callerPackage,
  802:             IIntentReceiver receiver, IntentFilter filter,
  803:             String requiredPermission, int userId, int flags) throws RemoteException {
  804:         return registerReceiverWithFeature(caller, callerPackage, null, null,
  805:                 receiver, filter, requiredPermission, userId, flags);
  806:     }
  807:  
  808:     // [BRIDGED] registerReceiverWithFeature -> OH CES.SubscribeCommonEvent
  809:     @Override
  810:     public Intent registerReceiverWithFeature(IApplicationThread caller, String callerPackage,
  811:             String callingFeatureId, String receiverId, IIntentReceiver receiver,
  812:             IntentFilter filter, String requiredPermission, int userId,
  813:             int flags) throws RemoteException {
  814:         logBridged("registerReceiverWithFeature", "-> OH CES.SubscribeCommonEvent");
  815:  
  816:         if (receiver == null || filter == null || filter.countActions() == 0) {
  817:             Log.w(TAG, "registerReceiver: null receiver or empty filter");
  818:             return null;
  819:         }
  820:  
  821:         // Allocate subscription ID
  822:         int subscriptionId = mNextSubscriptionId.getAndIncrement();
