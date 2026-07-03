// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__InputEventBridge.java@59.html
// title: p1613 adapted-hanbing-java/adapter/client/InputEventBridge.java:59
// summary: createInputChannelPair</span><br><span>???????????Android InputChannel pair??ava ??? server ????????native InputPublisher??H ???????????? f

   47:     }
   48:  
   49:     /**
   50:      * Create an InputChannel pair for a window.
   51:      * Returns the client-side InputChannel (for ViewRootImpl).
   52:      * The server-side channel is retained and registered with the native layer.
   53:      *
   54:      * @param windowToken Android IWindow binder token
   55:      * @param sessionId   OH window session ID
   56:      * @param windowName  Window name for debugging
   57:      * @return Client-side InputChannel to be given to ViewRootImpl
   58:      */
   59:     public InputChannel createInputChannelPair(IBinder windowToken, int sessionId,
   60:                                                 String windowName) {
   61:         String channelName = windowName + " (OH session " + sessionId + ")";
   62:         InputChannel[] channels = InputChannel.openInputChannelPair(channelName);
   63:  
   64:         // channels[0] = server (we write to this)
   65:         // channels[1] = client (ViewRootImpl reads from this)
   66:         InputChannel serverChannel = channels[0];
   67:         InputChannel clientChannel = channels[1];
   68:  
   69:         mServerChannels.put(sessionId, serverChannel);
   70:         mWindowSessionMap.put(windowToken, sessionId);
   71:  
