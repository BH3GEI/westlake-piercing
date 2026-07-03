// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__CommonEventReceiverBridge.java@69.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/CommonEventReceiverBridge.java:69
// summary: onCommonEventReceived</span><br><span>OH IPC ??????????????IIntentReceiver.performReceive oneway ????????????????Android ??????/Receiver ???

   57:             }
   58:         }
   59:         return -1;
   60:     }
   61:  
   62:     /**
   63:      * Called from C++ (JNI) when an OH CommonEvent is received.
   64:      * Routes the event to the matching Android IIntentReceiver.
   65:      *
   66:      * This method is invoked on an OH IPC thread; the IIntentReceiver.performReceive()
   67:      * is a oneway call that posts to the app's main thread internally.
   68:      */
   69:     public static void onCommonEventReceived(
   70:             int subscriptionId,
   71:             String ohAction,
   72:             String extrasJson,
   73:             String uri,
   74:             int code,
   75:             String data,
   76:             boolean ordered,
   77:             boolean sticky) {
   78:  
   79:         IIntentReceiver receiver = sReceiverMap.get(subscriptionId);
   80:         if (receiver == null) {
   81:             Log.w(TAG, "onCommonEventReceived: no receiver for subscriptionId=" + subscriptionId);
