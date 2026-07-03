// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__package-manager__java__PackageInfoBuilder.java@239.html
// title: p1612 framework/package-manager/java/PackageInfoBuilder.java:239
// summary: buildExtensionInfos</span><br><span>OH extensionAbilityInfos ??? type ???????????SERVICE/DATASHARE ?????Android ServiceInfo/Provide

  227:                 break;
  228:             case "PORTRAIT":
  229:                 ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
  230:                 break;
  231:             default:
  232:                 ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
  233:                 break;
  234:         }
  235:  
  236:         return ai;
  237:     }
  238:  
  239:     private static void buildExtensionInfos(JSONArray extensions,
  240:                                               PackageInfo pi) throws JSONException {
  241:         int serviceCount = 0;
  242:         int providerCount = 0;
  243:  
  244:         // Count types first
  245:         for (int i = 0; i < extensions.length(); i++) {
  246:             JSONObject ext = extensions.getJSONObject(i);
  247:             String type = ext.optString("type", "");
  248:             if ("SERVICE".equals(type)) {
  249:                 serviceCount++;
  250:             } else if ("DATASHARE".equals(type)) {
  251:                 providerCount++;
