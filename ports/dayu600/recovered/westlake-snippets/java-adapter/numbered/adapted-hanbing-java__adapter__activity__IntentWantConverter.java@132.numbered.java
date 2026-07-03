// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__activity__IntentWantConverter.java@132.html
// title: p1613 adapted-hanbing-java/adapter/activity/IntentWantConverter.java:132

  120:     private static String mapPackageToBundleName(String packageName) {
  121:         return packageName;
  122:     }
  123:  
  124:     private static String mapBundleToPackageName(String bundleName) {
  125:         return bundleName;
  126:     }
  127:  
  128:     /**
  129:      * Android Activity className -> OH abilityName mapping.
  130:      * Uses the simple class name with "Ability" suffix.
  131:      */
  132:     private static String mapClassToAbilityName(String className) {
  133:         int lastDot = className.lastIndexOf('.');
  134:         if (lastDot >= 0) {
  135:             return className.substring(lastDot + 1) + "Ability";
  136:         }
  137:         return className + "Ability";
  138:     }
  139:  
  140:     private static String mapAbilityToClassName(String abilityName) {
  141:         if (abilityName.endsWith("Ability")) {
  142:             return abilityName.substring(0, abilityName.length() - "Ability".length());
  143:         }
  144:         return abilityName;
