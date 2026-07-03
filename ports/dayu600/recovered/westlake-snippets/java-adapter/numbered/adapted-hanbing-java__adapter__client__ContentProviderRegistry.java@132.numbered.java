// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderRegistry.java@132.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderRegistry.java:132

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
  137:     /**
  138:      * Check if a provider exists (either local or OH-backed).
  139:      */
  140:     public boolean hasProvider(String authority) {
  141:         return mLocalProviders.containsKey(authority) || mOhBridges.containsKey(authority);
  142:     }
  143:  
  144:     /**
