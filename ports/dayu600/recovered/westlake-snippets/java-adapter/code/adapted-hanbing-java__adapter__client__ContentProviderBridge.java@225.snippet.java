 
    // [BRIDGED] getType -> OH DataShareHelper.GetType()
    @Override
    public String getType(AttributionSource attributionSource, Uri uri) {
        if (mNativeHandle == 0) return null;
        String ohUri = ContentProviderUriConverter.toOhUri(uri);
        Log.d(TAG, "[BRIDGED] getType: " + uri);
        return nativeGetType(mNativeHandle, ohUri);
    }
 
    // [BRIDGED] openFile -> OH DataShareHelper.OpenFile()
    @Override
    public ParcelFileDescriptor openFile(AttributionSource attributionSource,
            Uri uri, String mode, ICancellationSignal signal) throws FileNotFoundException {
        if (mNativeHandle == 0) {
            throw new FileNotFoundException("Not connected: " + uri);
        }
        String ohUri = ContentProviderUriConverter.toOhUri(uri);
        Log.d(TAG, "[BRIDGED] openFile: " + uri + ", mode=" + mode);
 
        int fd = nativeOpenFile(mNativeHandle, ohUri, mode);
        if (fd < 0) {
            throw new FileNotFoundException("OH DataShare openFile failed: " + uri);
        }
        return ParcelFileDescriptor.adoptFd(fd);
