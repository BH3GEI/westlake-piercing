// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__WindowSessionAdapter.java@238.html
// title: p1613 adapted-hanbing-java/adapter/client/WindowSessionAdapter.java:238
// summary: nativeGetSurfaceHandle</span><br><span>relayout ?????sessionId/???/??? get-or-create OHGraphicBufferProducer handle??? Surface ?????????

  226:         int sessionId = sessionInfo[0];
  227:         int width = requestedWidth > 0 ? requestedWidth : sessionInfo[3];
  228:         int height = requestedHeight > 0 ? requestedHeight : sessionInfo[4];
  229:  
  230:         // Update OH session rect
  231:         nativeUpdateSessionRect(sessionId, 0, 0, width, height);
  232:  
  233:         // Ensure OH surface bridge is created for this session
  234:         String windowName = "OH_Surface_" + sessionId;
  235:         int pixelFormat = (attrs != null) ? attrs.format : 1; // default RGBA_8888
  236:         nativeCreateOHSurface(sessionId, windowName, width, height, pixelFormat);
  237:  
  238:         // Get (or create) the OHGraphicBufferProducer handle
  239:         long surfaceHandle = nativeGetSurfaceHandle(sessionId, width, height, pixelFormat);
  240:         if (surfaceHandle != 0) {
  241:             Log.i(TAG, "relayout: OH surface handle=0x" + Long.toHexString(surfaceHandle)
  242:                     + " for session " + sessionId);
  243:         } else {
  244:             Log.e(TAG, "relayout: Failed to get OH surface handle for session " + sessionId);
  245:         }
  246:  
  247:         // Update surface size if dimensions changed
  248:         nativeUpdateSurfaceSize(sessionId, width, height);
  249:  
  250:         // Populate output frames
