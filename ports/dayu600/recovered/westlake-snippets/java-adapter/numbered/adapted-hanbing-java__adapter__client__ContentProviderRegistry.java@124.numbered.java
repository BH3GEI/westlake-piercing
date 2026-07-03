// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderRegistry.java@124.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderRegistry.java:124
// summary: acquireProvider</span><br><span>??authority ???????????ProviderInfo/ContentProviderHolder?????ContentProviderBridge ??? holder.

  112:             Log.d(TAG, "acquireProvider: found local provider for " + authority);
  113:             return local;
  114:         }
  115:  
  116:         // 2. Create or retrieve OH DataShare bridge
  117:         ContentProviderBridge bridge = mOhBridges.get(authority);
  118:         if (bridge == null) {
  119:             Log.d(TAG, "acquireProvider: creating OH bridge for " + authority);
  120:             bridge = new ContentProviderBridge(authority);
  121:             mOhBridges.put(authority, bridge);
  122:         }
  123:  
  124:         // Wrap bridge in a ContentProviderHolder
  125:         ProviderInfo info = new ProviderInfo();
  126:         info.authority = authority;
  127:         info.name = "adapter.contentprovider.ContentProviderBridge";
  128:         info.exported = true;
  129:  
  130:         ContentProviderHolder holder = new ContentProviderHolder(info);
  131:         holder.provider = bridge;
  132:         holder.noReleaseNeeded = true;
  133:  
  134:         return holder;
  135:     }
  136:  
