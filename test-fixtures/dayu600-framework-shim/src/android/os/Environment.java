package android.os;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

public class Environment {
    static final long DEFAULT_SCOPED_STORAGE = 0L;
    static final long FORCE_ENABLE_SCOPED_STORAGE = 0L;

    public static final String DIRECTORY_MUSIC = "Music";
    public static final String DIRECTORY_PODCASTS = "Podcasts";
    public static final String DIRECTORY_RINGTONES = "Ringtones";
    public static final String DIRECTORY_ALARMS = "Alarms";
    public static final String DIRECTORY_NOTIFICATIONS = "Notifications";
    public static final String DIRECTORY_PICTURES = "Pictures";
    public static final String DIRECTORY_MOVIES = "Movies";
    public static final String DIRECTORY_DOWNLOADS = "Download";
    public static final String DIRECTORY_DCIM = "DCIM";
    public static final String DIRECTORY_DOCUMENTS = "Documents";
    public static final String DIRECTORY_SCREENSHOTS = "Screenshots";
    public static final String DIRECTORY_AUDIOBOOKS = "Audiobooks";
    public static final String DIRECTORY_RECORDINGS = "Recordings";
    public static final String DIRECTORY_ANDROID = "Android";

    public static final String MEDIA_UNKNOWN = "unknown";
    public static final String MEDIA_REMOVED = "removed";
    public static final String MEDIA_UNMOUNTED = "unmounted";
    public static final String MEDIA_CHECKING = "checking";
    public static final String MEDIA_NOFS = "nofs";
    public static final String MEDIA_MOUNTED = "mounted";
    public static final String MEDIA_MOUNTED_READ_ONLY = "mounted_ro";
    public static final String MEDIA_SHARED = "shared";
    public static final String MEDIA_BAD_REMOVAL = "bad_removal";
    public static final String MEDIA_UNMOUNTABLE = "unmountable";
    public static final String MEDIA_EJECTING = "ejecting";

    static final String DIR_ANDROID = "Android";
    static final String DIR_DATA = "data";
    static final String DIR_MEDIA = "media";
    static final String DIR_OBB = "obb";
    static final String DIR_FILES = "files";
    static final String DIR_CACHE = "cache";
    static final String DIR_USER_CE = "user";
    static final String DIR_USER_DE = "user_de";

    static final String ENV_ANDROID_ROOT = "ANDROID_ROOT";
    static final String ENV_ANDROID_DATA = "ANDROID_DATA";
    static final String ENV_ANDROID_STORAGE = "ANDROID_STORAGE";
    static final String ENV_ANDROID_EXPAND = "ANDROID_EXPAND";
    static final String ENV_DOWNLOAD_CACHE = "DOWNLOAD_CACHE";
    static final String ENV_EXTERNAL_STORAGE = "EXTERNAL_STORAGE";
    static final String ENV_OEM_ROOT = "OEM_ROOT";
    static final String ENV_ODM_ROOT = "ODM_ROOT";
    static final String ENV_VENDOR_ROOT = "VENDOR_ROOT";
    static final String ENV_PRODUCT_ROOT = "PRODUCT_ROOT";
    static final String ENV_SYSTEM_EXT_ROOT = "SYSTEM_EXT_ROOT";
    static final String ENV_APEX_ROOT = "APEX_ROOT";

    static final File DIR_ANDROID_ROOT = null;
    static final File DIR_ANDROID_DATA = null;
    static final String DIR_ANDROID_DATA_PATH = "/data";
    static final File DIR_ANDROID_STORAGE = null;
    static final File DIR_ANDROID_EXPAND = null;
    static final File DIR_DOWNLOAD_CACHE = null;
    static final File DIR_OEM_ROOT = null;
    static final File DIR_ODM_ROOT = null;
    static final File DIR_VENDOR_ROOT = null;
    static final File DIR_PRODUCT_ROOT = null;
    static final File DIR_SYSTEM_EXT_ROOT = null;
    static final File DIR_APEX_ROOT = null;
    static final File DIR_METADATA = null;

    public static final int HAS_MUSIC = 1 << 0;
    public static final int HAS_PODCASTS = 1 << 1;
    public static final int HAS_RINGTONES = 1 << 2;
    public static final int HAS_ALARMS = 1 << 3;
    public static final int HAS_NOTIFICATIONS = 1 << 4;
    public static final int HAS_PICTURES = 1 << 5;
    public static final int HAS_MOVIES = 1 << 6;
    public static final int HAS_DOWNLOADS = 1 << 7;
    public static final int HAS_DCIM = 1 << 8;
    public static final int HAS_DOCUMENTS = 1 << 9;
    public static final int HAS_AUDIOBOOKS = 1 << 10;
    public static final int HAS_RECORDINGS = 1 << 11;
    public static final int HAS_ANDROID = 1 << 12;
    public static final int HAS_OTHER = 1 << 31;

    public static final String[] STANDARD_DIRECTORIES = {
            DIRECTORY_MUSIC, DIRECTORY_PODCASTS, DIRECTORY_RINGTONES, DIRECTORY_ALARMS,
            DIRECTORY_NOTIFICATIONS, DIRECTORY_PICTURES, DIRECTORY_MOVIES,
            DIRECTORY_DOWNLOADS, DIRECTORY_DCIM, DIRECTORY_DOCUMENTS, DIRECTORY_AUDIOBOOKS,
            DIRECTORY_RECORDINGS
    };

    private static UserEnvironment sCurrentUser = new UserEnvironment(0);
    private static boolean sUserRequired = false;
    private static Boolean sLegacyStorageAppOp;
    private static Boolean sNoIsolatedStorageAppOp;

    public static class UserEnvironment {
        private final int mUserId;

        public UserEnvironment(int userId) {
            mUserId = userId;
        }

        public File[] getExternalDirs() {
            return new File[] { getExternalStorageDirectory() };
        }

        public File getExternalStorageDirectory() {
            return new File("/sdcard");
        }

        public File getExternalStoragePublicDirectory(String type) {
            return type == null ? getExternalStorageDirectory()
                    : new File(getExternalStorageDirectory(), type);
        }

        public File[] buildExternalStorageAndroidDataDirs() {
            return new File[] { new File(getExternalStorageDirectory(), "Android/data") };
        }

        public File[] buildExternalStorageAndroidObbDirs() {
            return new File[] { new File(getExternalStorageDirectory(), "Android/obb") };
        }

        public File[] buildExternalStorageAppDataDirs(String packageName) {
            return new File[] { new File(getExternalStorageDirectory(), "Android/data/" + packageName) };
        }

        public File[] buildExternalStorageAppMediaDirs(String packageName) {
            return new File[] { new File(getExternalStorageDirectory(), "Android/media/" + packageName) };
        }

        public File[] buildExternalStorageAppObbDirs(String packageName) {
            return new File[] { new File(getExternalStorageDirectory(), "Android/obb/" + packageName) };
        }

        public File[] buildExternalStorageAppFilesDirs(String packageName) {
            return new File[] { new File(getExternalStorageDirectory(), "Android/data/" + packageName + "/files") };
        }

        public File[] buildExternalStorageAppCacheDirs(String packageName) {
            return new File[] { new File(getExternalStorageDirectory(), "Android/data/" + packageName + "/cache") };
        }
    }

    public static void initForCurrentUser() {
        sCurrentUser = new UserEnvironment(0);
    }

    public static void setUserRequired(boolean userRequired) {
        sUserRequired = userRequired;
    }

    static void throwIfUserRequired() {
    }

    static File getDirectory(String variableName, String defaultPath) {
        return new File(getDirectoryPath(variableName, defaultPath));
    }

    static String getDirectoryPath(String variableName, String defaultPath) {
        String value = valueFor(variableName);
        return value == null || value.length() == 0 ? defaultPath : value;
    }

    private static String valueFor(String variableName) {
        if (ENV_ANDROID_ROOT.equals(variableName)) return "/system";
        if (ENV_ANDROID_DATA.equals(variableName)) return "/data";
        if (ENV_ANDROID_STORAGE.equals(variableName)) return "/storage";
        if (ENV_ANDROID_EXPAND.equals(variableName)) return "/mnt/expand";
        if (ENV_DOWNLOAD_CACHE.equals(variableName)) return "/cache";
        if (ENV_EXTERNAL_STORAGE.equals(variableName)) return "/sdcard";
        if (ENV_OEM_ROOT.equals(variableName)) return "/oem";
        if (ENV_ODM_ROOT.equals(variableName)) return "/odm";
        if (ENV_VENDOR_ROOT.equals(variableName)) return "/vendor";
        if (ENV_PRODUCT_ROOT.equals(variableName)) return "/product";
        if (ENV_SYSTEM_EXT_ROOT.equals(variableName)) return "/system_ext";
        if (ENV_APEX_ROOT.equals(variableName)) return "/apex";
        return null;
    }

    private static File file(String path) {
        return new File(path);
    }

    public static File getRootDirectory() { return file("/system"); }
    public static File getDataDirectory() { return file("/data"); }
    public static String getDataDirectoryPath() { return "/data"; }
    public static File getStorageDirectory() { return file("/storage"); }
    public static File getDownloadCacheDirectory() { return file("/cache"); }
    public static File getOemDirectory() { return file("/oem"); }
    public static File getOdmDirectory() { return file("/odm"); }
    public static File getVendorDirectory() { return file("/vendor"); }
    public static File getProductDirectory() { return file("/product"); }
    public static File getProductServicesDirectory() { return file("/product"); }
    public static File getSystemExtDirectory() { return file("/system_ext"); }
    public static File getApexDirectory() { return file("/apex"); }
    public static File getMetadataDirectory() { return file("/metadata"); }
    public static File getExpandDirectory() { return file("/mnt/expand"); }
    public static File getPackageCacheDirectory() { return file("/data/system/package_cache"); }

    public static File getExternalStorageDirectory() { return sCurrentUser.getExternalStorageDirectory(); }
    public static File getLegacyExternalStorageDirectory() { return getExternalStorageDirectory(); }
    public static File getLegacyExternalStorageObbDirectory() { return new File(getExternalStorageDirectory(), "Android/obb"); }
    public static File getExternalStoragePublicDirectory(String type) { return sCurrentUser.getExternalStoragePublicDirectory(type); }
    public static String getExternalStorageState() { return MEDIA_MOUNTED; }
    public static String getExternalStorageState(File path) { return MEDIA_MOUNTED; }
    public static String getStorageState(File path) { return MEDIA_MOUNTED; }
    public static boolean isExternalStorageRemovable() { return false; }
    public static boolean isExternalStorageRemovable(File path) { return false; }
    public static boolean isExternalStorageEmulated() { return true; }
    public static boolean isExternalStorageEmulated(File path) { return true; }
    public static boolean isExternalStorageLegacy() { return true; }
    public static boolean isExternalStorageLegacy(File path) { return true; }
    public static boolean isExternalStorageManager() { return true; }
    public static boolean isExternalStorageManager(File path) { return true; }
    public static File maybeTranslateEmulatedPathToInternal(File path) { return path; }

    public static File[] buildExternalStorageAndroidDataDirs() { return sCurrentUser.buildExternalStorageAndroidDataDirs(); }
    public static File[] buildExternalStorageAndroidObbDirs() { return sCurrentUser.buildExternalStorageAndroidObbDirs(); }
    public static File[] buildExternalStorageAppDataDirs(String packageName) { return sCurrentUser.buildExternalStorageAppDataDirs(packageName); }
    public static File[] buildExternalStorageAppMediaDirs(String packageName) { return sCurrentUser.buildExternalStorageAppMediaDirs(packageName); }
    public static File[] buildExternalStorageAppObbDirs(String packageName) { return sCurrentUser.buildExternalStorageAppObbDirs(packageName); }
    public static File[] buildExternalStorageAppFilesDirs(String packageName) { return sCurrentUser.buildExternalStorageAppFilesDirs(packageName); }
    public static File[] buildExternalStorageAppCacheDirs(String packageName) { return sCurrentUser.buildExternalStorageAppCacheDirs(packageName); }
    public static File[] buildExternalStoragePublicDirs(String type) { return new File[] { getExternalStoragePublicDirectory(type) }; }

    public static File getDataDirectory(String volumeUuid) { return new File("/data"); }
    public static String getDataDirectoryPath(String volumeUuid) { return "/data"; }
    public static File getDataAppDirectory(String volumeUuid) { return new File("/data/app"); }
    public static File getDataStagingDirectory(String volumeUuid) { return new File("/data/app-staging"); }
    public static File getDataUserCeDirectory(String volumeUuid) { return new File("/data/user"); }
    public static File getDataUserCeDirectory(String volumeUuid, int userId) { return new File("/data/user/" + userId); }
    public static File getDataUserDeDirectory(String volumeUuid) { return new File("/data/user_de"); }
    public static File getDataUserDeDirectory(String volumeUuid, int userId) { return new File("/data/user_de/" + userId); }
    public static File getDataUserCePackageDirectory(String volumeUuid, int userId, String packageName) { return new File(getDataUserCeDirectory(volumeUuid, userId), packageName); }
    public static File getDataUserDePackageDirectory(String volumeUuid, int userId, String packageName) { return new File(getDataUserDeDirectory(volumeUuid, userId), packageName); }
    public static File getDataCePackageDirectoryForUser(UUID volumeUuid, UserHandle user, String packageName) { return getDataUserCePackageDirectory(null, userId(user), packageName); }
    public static File getDataDePackageDirectoryForUser(UUID volumeUuid, UserHandle user, String packageName) { return getDataUserDePackageDirectory(null, userId(user), packageName); }

    public static File getDataSystemDirectory() { return new File("/data/system"); }
    public static File getDataSystemCeDirectory() { return new File("/data/system_ce"); }
    public static File getDataSystemCeDirectory(int userId) { return new File("/data/system_ce/" + userId); }
    public static File getDataSystemDeDirectory() { return new File("/data/system_de"); }
    public static File getDataSystemDeDirectory(int userId) { return new File("/data/system_de/" + userId); }
    public static File getDataSystemDeviceProtectedDirectory() { return new File("/data/system_de/0"); }
    public static File getDataMiscDirectory() { return new File("/data/misc"); }
    public static File getDataMiscCeDirectory() { return new File("/data/misc_ce"); }
    public static File getDataMiscCeDirectory(int userId) { return new File("/data/misc_ce/" + userId); }
    private static File getDataMiscCeDirectory(String volumeUuid, int userId) { return getDataMiscCeDirectory(userId); }
    public static File getDataMiscDeDirectory(int userId) { return new File("/data/misc_de/" + userId); }
    private static File getDataMiscDeDirectory(String volumeUuid, int userId) { return getDataMiscDeDirectory(userId); }
    public static File getDataMiscCeSharedSdkSandboxDirectory(String volumeUuid, int userId, String packageName) { return new File(getDataMiscCeDirectory(userId), packageName); }
    public static File getDataMiscDeSharedSdkSandboxDirectory(String volumeUuid, int userId, String packageName) { return new File(getDataMiscDeDirectory(userId), packageName); }
    public static File getDataVendorCeDirectory(int userId) { return new File("/data/vendor_ce/" + userId); }
    public static File getDataVendorDeDirectory(int userId) { return new File("/data/vendor_de/" + userId); }
    public static File getDataProfilesDeDirectory(int userId) { return new File("/data/misc/profiles/cur/" + userId); }
    public static File getDataProfilesDePackageDirectory(int userId, String packageName) { return new File(getDataProfilesDeDirectory(userId), packageName); }
    public static File getDataRefProfilesDePackageDirectory(String packageName) { return new File("/data/misc/profiles/ref/" + packageName); }
    public static File getDataPreloadsDirectory() { return new File("/data/preloads"); }
    public static File getDataPreloadsAppsDirectory() { return new File("/data/preloads/apps"); }
    public static File getDataPreloadsDemoDirectory() { return new File("/data/preloads/demo"); }
    public static File getDataPreloadsMediaDirectory() { return new File("/data/preloads/media"); }
    public static File getDataPreloadsFileCacheDirectory() { return new File("/data/preloads/file_cache"); }
    public static File getDataPreloadsFileCacheDirectory(String packageName) { return new File(getDataPreloadsFileCacheDirectory(), packageName); }
    public static File getUserSystemDirectory(int userId) { return new File("/data/system/users/0"); }
    public static File getUserConfigDirectory(int userId) { return null; }
    public static Collection<File> getInternalMediaDirectories() { List<File> list = new ArrayList<File>(); list.add(new File("/data/media")); return list; }

    public static File buildPath(File base, String... segments) {
        File cur = base;
        for (String segment : segments) {
            if (segment != null) {
                cur = cur == null ? new File(segment) : new File(cur, segment);
            }
        }
        return cur;
    }

    public static File[] buildPaths(File[] base, String... segments) {
        File[] out = new File[base == null ? 0 : base.length];
        for (int i = 0; i < out.length; i++) {
            out[i] = buildPath(base[i], segments);
        }
        return out;
    }

    public static int classifyExternalStorageDirectory(File dir) { return HAS_OTHER; }
    public static boolean isStandardDirectory(String dir) {
        for (String standard : STANDARD_DIRECTORIES) {
            if (standard.equals(dir)) return true;
        }
        return false;
    }

    private static boolean hasInterestingFiles(File dir) { return false; }
    private static boolean isInterestingFile(File file) { return false; }
    private static boolean isScopedStorageDisabled(boolean defaultValue, boolean forceEnable) { return false; }
    private static boolean isScopedStorageEnforced(boolean defaultValue, boolean forceEnable) { return false; }

    private static int userId(UserHandle user) {
        return 0;
    }
}
