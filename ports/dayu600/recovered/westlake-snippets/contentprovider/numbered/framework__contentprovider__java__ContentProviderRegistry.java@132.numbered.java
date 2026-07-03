// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__contentprovider__java__ContentProviderRegistry.java@132.html
// title: p1612 framework/contentprovider/java/ContentProviderRegistry.java:132
// summary: ContentProviderRegistry.acquireProvider</span><br><span>??????????OH DataShare bridge ??? ProviderInfo + ApplicationInfo?????uid??rocessName??ackageNam

  120:         ContentProviderBridge bridge = mOhBridges.get(authority);
  121:         if (bridge == null) {
  122:             Log.d(TAG, "acquireProvider: creating OH bridge for " + authority);
  123:             bridge = new ContentProviderBridge(authority);
  124:             mOhBridges.put(authority, bridge);
  125:         }
  126:  
  127:         // Wrap bridge in a ContentProviderHolder.
  128:         // G2.7 (2026-04-30): MUST populate info.applicationInfo + processName +
  129:         // packageName, else AOSP ActivityThread.installProviderAuthoritiesLocked
  130:         // NPEs on `holder.info.applicationInfo.uid` when DeviceConfig.getProperty
  131:         // / Settings ContentResolver.call traverses the holder.
  132:         ProviderInfo info = new ProviderInfo();
  133:         info.authority = authority;
  134:         info.name = "adapter.contentprovider.ContentProviderBridge";
  135:         info.exported = true;
  136:         info.processName = "com.adapter.cp_synth";
  137:         info.packageName = "com.adapter.cp_synth";
  138:  
  139:         // Synthesize ApplicationInfo for the in-process bridge provider.
  140:         // Field set kept minimal ??installProviderAuthoritiesLocked reads
  141:         // .uid; future paths may also read .packageName / .processName /
  142:         // .targetSdkVersion / .flags.  Use current process identity so the
  143:         // bridge looks like an in-process provider to AOSP framework code.
  144:         ApplicationInfo appInfo = buildSynthAppInfo();
