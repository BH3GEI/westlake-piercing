// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__contentprovider__java__ContentProviderRegistry.java@109.html
// title: p1612 framework/contentprovider/java/ContentProviderRegistry.java:109
// summary: acquireProvider</span><br><span>??? authority ???????????Android provider???????????? OH DataShare bridge???????????ContentProviderHo

   97:     // ========================================================================
   98:  
   99:     /**
  100:      * Get a ContentProviderHolder for the given authority.
  101:      *
  102:      * Resolution order:
  103:      *   1. Check locally published Android providers (app-to-app)
  104:      *   2. Create/return OH DataShare bridge (app-to-OH-system)
  105:      *
  106:      * @param authority The content provider authority
  107:      * @return ContentProviderHolder with valid IContentProvider, or null
  108:      */
  109:     public ContentProviderHolder acquireProvider(String authority) {
  110:         if (authority == null) return null;
  111:  
  112:         // 1. Check locally published Android providers first
  113:         ContentProviderHolder local = mLocalProviders.get(authority);
  114:         if (local != null && local.provider != null) {
  115:             Log.d(TAG, "acquireProvider: found local provider for " + authority);
  116:             return local;
  117:         }
  118:  
  119:         // 2. Create or retrieve OH DataShare bridge
  120:         ContentProviderBridge bridge = mOhBridges.get(authority);
  121:         if (bridge == null) {
