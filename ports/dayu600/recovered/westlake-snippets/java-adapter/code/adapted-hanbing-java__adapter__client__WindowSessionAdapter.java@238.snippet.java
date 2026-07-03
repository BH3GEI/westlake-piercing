        int sessionId = sessionInfo[0];
        int width = requestedWidth > 0 ? requestedWidth : sessionInfo[3];
        int height = requestedHeight > 0 ? requestedHeight : sessionInfo[4];
 
        // Update OH session rect
        nativeUpdateSessionRect(sessionId, 0, 0, width, height);
 
        // Ensure OH surface bridge is created for this session
        String windowName = "OH_Surface_" + sessionId;
        int pixelFormat = (attrs != null) ? attrs.format : 1; // default RGBA_8888
        nativeCreateOHSurface(sessionId, windowName, width, height, pixelFormat);
 
        // Get (or create) the OHGraphicBufferProducer handle
        long surfaceHandle = nativeGetSurfaceHandle(sessionId, width, height, pixelFormat);
        if (surfaceHandle != 0) {
            Log.i(TAG, "relayout: OH surface handle=0x" + Long.toHexString(surfaceHandle)
                    + " for session " + sessionId);
        } else {
            Log.e(TAG, "relayout: Failed to get OH surface handle for session " + sessionId);
        }
 
        // Update surface size if dimensions changed
        nativeUpdateSurfaceSize(sessionId, width, height);
 
        // Populate output frames
