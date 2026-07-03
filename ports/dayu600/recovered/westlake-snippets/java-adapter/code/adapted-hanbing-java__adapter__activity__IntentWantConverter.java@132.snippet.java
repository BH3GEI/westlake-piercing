    private static String mapPackageToBundleName(String packageName) {
        return packageName;
    }
 
    private static String mapBundleToPackageName(String bundleName) {
        return bundleName;
    }
 
    /**
     * Android Activity className -> OH abilityName mapping.
     * Uses the simple class name with "Ability" suffix.
     */
    private static String mapClassToAbilityName(String className) {
        int lastDot = className.lastIndexOf('.');
        if (lastDot >= 0) {
            return className.substring(lastDot + 1) + "Ability";
        }
        return className + "Ability";
    }
 
    private static String mapAbilityToClassName(String abilityName) {
        if (abilityName.endsWith("Ability")) {
            return abilityName.substring(0, abilityName.length() - "Ability".length());
        }
        return abilityName;
