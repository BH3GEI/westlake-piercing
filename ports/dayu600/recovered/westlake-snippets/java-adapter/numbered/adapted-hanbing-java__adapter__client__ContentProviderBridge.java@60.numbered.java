// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderBridge.java@60.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderBridge.java:60

   48:  *
   49:  * One instance per authority (content provider).
   50:  */
   51: public class ContentProviderBridge extends ContentProviderNative {
   52:  
   53:     private static final String TAG = "OH_CPBridge";
   54:  
   55:     private final String mAuthority;
   56:     private final String mOhBundleName;
   57:  
   58:     // Native OH DataShareHelper connection handle, obtained via JNI.
   59:     // 0 means not connected.
   60:     private long mNativeHandle;
   61:  
   62:     public ContentProviderBridge(String authority) {
   63:         mAuthority = authority;
   64:         mOhBundleName = ContentProviderUriConverter.authorityToBundleName(authority);
   65:         mNativeHandle = nativeConnect(mOhBundleName);
   66:         Log.d(TAG, "Created bridge: authority=" + authority
   67:                 + " -> ohBundle=" + mOhBundleName
   68:                 + ", handle=" + mNativeHandle);
   69:     }
   70:  
   71:     /**
   72:      * Release native resources. Called when this bridge is no longer needed.
