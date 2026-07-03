// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderBridge.java@225.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderBridge.java:225

  213:  
  214:     // [BRIDGED] getType -> OH DataShareHelper.GetType()
  215:     @Override
  216:     public String getType(AttributionSource attributionSource, Uri uri) {
  217:         if (mNativeHandle == 0) return null;
  218:         String ohUri = ContentProviderUriConverter.toOhUri(uri);
  219:         Log.d(TAG, "[BRIDGED] getType: " + uri);
  220:         return nativeGetType(mNativeHandle, ohUri);
  221:     }
  222:  
  223:     // [BRIDGED] openFile -> OH DataShareHelper.OpenFile()
  224:     @Override
  225:     public ParcelFileDescriptor openFile(AttributionSource attributionSource,
  226:             Uri uri, String mode, ICancellationSignal signal) throws FileNotFoundException {
  227:         if (mNativeHandle == 0) {
  228:             throw new FileNotFoundException("Not connected: " + uri);
  229:         }
  230:         String ohUri = ContentProviderUriConverter.toOhUri(uri);
  231:         Log.d(TAG, "[BRIDGED] openFile: " + uri + ", mode=" + mode);
  232:  
  233:         int fd = nativeOpenFile(mNativeHandle, ohUri, mode);
  234:         if (fd < 0) {
  235:             throw new FileNotFoundException("OH DataShare openFile failed: " + uri);
  236:         }
  237:         return ParcelFileDescriptor.adoptFd(fd);
