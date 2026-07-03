    }
 
    /**
     * Create an InputChannel pair for a window.
     * Returns the client-side InputChannel (for ViewRootImpl).
     * The server-side channel is retained and registered with the native layer.
     *
     * @param windowToken Android IWindow binder token
     * @param sessionId   OH window session ID
     * @param windowName  Window name for debugging
     * @return Client-side InputChannel to be given to ViewRootImpl
     */
    public InputChannel createInputChannelPair(IBinder windowToken, int sessionId,
                                                String windowName) {
        String channelName = windowName + " (OH session " + sessionId + ")";
        InputChannel[] channels = InputChannel.openInputChannelPair(channelName);
 
        // channels[0] = server (we write to this)
        // channels[1] = client (ViewRootImpl reads from this)
        InputChannel serverChannel = channels[0];
        InputChannel clientChannel = channels[1];
 
        mServerChannels.put(sessionId, serverChannel);
        mWindowSessionMap.put(windowToken, sessionId);
 
