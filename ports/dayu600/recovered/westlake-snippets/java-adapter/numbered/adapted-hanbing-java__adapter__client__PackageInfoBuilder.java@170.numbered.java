// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__PackageInfoBuilder.java@170.html
// title: p1613 adapted-hanbing-java/adapter/client/PackageInfoBuilder.java:170
// summary: buildExtensionInfos</span><br><span>??OH extensionAbilityInfos ??SERVICE/DATASHARE ??????????????Android ServiceInfo ??ProviderInf

  158:                 break;
  159:             case "PORTRAIT":
  160:                 ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
  161:                 break;
  162:             default:
  163:                 ai.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
  164:                 break;
  165:         }
  166:  
  167:         return ai;
  168:     }
  169:  
  170:     private static void buildExtensionInfos(JSONArray extensions,
  171:                                               PackageInfo pi) throws JSONException {
  172:         int serviceCount = 0;
  173:         int providerCount = 0;
  174:  
  175:         // Count types first
  176:         for (int i = 0; i < extensions.length(); i++) {
  177:             JSONObject ext = extensions.getJSONObject(i);
  178:             String type = ext.optString("type", "");
  179:             if ("SERVICE".equals(type)) {
  180:                 serviceCount++;
  181:             } else if ("DATASHARE".equals(type)) {
  182:                 providerCount++;
