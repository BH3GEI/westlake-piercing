// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ActivityManagerAdapter.java@828.html
// title: p1613 adapted-hanbing-java/adapter/client/ActivityManagerAdapter.java:828
// summary: registerReceiverWithFeature</span><br><span>??????????????requiredPermission ?????? nativeSubscribeCommonEvent??? Android ????????????????????OH CE

  816:         if (receiver == null || filter == null || filter.countActions() == 0) {
  817:             Log.w(TAG, "registerReceiver: null receiver or empty filter");
  818:             return null;
  819:         }
  820:  
  821:         // Allocate subscription ID
  822:         int subscriptionId = mNextSubscriptionId.getAndIncrement();
  823:  
  824:         // Convert IntentFilter actions to OH event names
  825:         String[] ohEvents = BroadcastEventConverter.filterActionsToOH(filter);
  826:  
  827:         // Subscribe via JNI -> C++ -> CES
  828:         int result = nativeSubscribeCommonEvent(
  829:                 subscriptionId, ohEvents,
  830:                 filter.getPriority(),
  831:                 requiredPermission);
  832:  
  833:         if (result != 0) {
  834:             Log.e(TAG, "registerReceiver: CES subscription failed, result=" + result);
  835:             return null;
  836:         }
  837:  
  838:         // Store mappings for reverse callback routing and unregistration
  839:         IBinder receiverBinder = receiver.asBinder();
  840:         mReceiverToSubscription.put(receiverBinder, subscriptionId);
