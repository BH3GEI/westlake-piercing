 *
 * One instance per authority (content provider).
 */
public class ContentProviderBridge extends ContentProviderNative {
 
    private static final String TAG = "OH_CPBridge";
 
    private final String mAuthority;
    private final String mOhBundleName;
 
    // Native OH DataShareHelper connection handle, obtained via JNI.
    // 0 means not connected.
    private long mNativeHandle;
 
    public ContentProviderBridge(String authority) {
        mAuthority = authority;
        mOhBundleName = ContentProviderUriConverter.authorityToBundleName(authority);
        mNativeHandle = nativeConnect(mOhBundleName);
        Log.d(TAG, "Created bridge: authority=" + authority
                + " -> ohBundle=" + mOhBundleName
                + ", handle=" + mNativeHandle);
    }
 
    /**
     * Release native resources. Called when this bridge is no longer needed.
