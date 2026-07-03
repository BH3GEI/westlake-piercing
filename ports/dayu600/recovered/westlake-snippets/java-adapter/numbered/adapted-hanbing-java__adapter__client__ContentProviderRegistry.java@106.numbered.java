// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderRegistry.java@106.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderRegistry.java:106

   94:     // ========================================================================
   95:  
   96:     /**
   97:      * Get a ContentProviderHolder for the given authority.
   98:      *
   99:      * Resolution order:
  100:      *   1. Check locally published Android providers (app-to-app)
  101:      *   2. Create/return OH DataShare bridge (app-to-OH-system)
  102:      *
  103:      * @param authority The content provider authority
  104:      * @return ContentProviderHolder with valid IContentProvider, or null
  105:      */
  106:     public ContentProviderHolder acquireProvider(String authority) {
  107:         if (authority == null) return null;
  108:  
  109:         // 1. Check locally published Android providers first
  110:         ContentProviderHolder local = mLocalProviders.get(authority);
  111:         if (local != null && local.provider != null) {
  112:             Log.d(TAG, "acquireProvider: found local provider for " + authority);
  113:             return local;
  114:         }
  115:  
  116:         // 2. Create or retrieve OH DataShare bridge
  117:         ContentProviderBridge bridge = mOhBridges.get(authority);
  118:         if (bridge == null) {
