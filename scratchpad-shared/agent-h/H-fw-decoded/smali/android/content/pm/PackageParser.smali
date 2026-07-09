.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;,
        Landroid/content/pm/PackageParser$SplitDependencyLoader;,
        Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;,
        Landroid/content/pm/PackageParser$SplitAssetLoader;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field public static final APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_JAR:Z = false

.field public static final DEBUG_PARSER:Z = false

.field private static final DEFAULT_MIN_SDK_VERSION:I = 0x1

.field public static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field public static final LOG_PARSE_TIMINGS:Z

.field public static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field public static final LOG_UNSAFE_BROADCASTS:Z = false

.field public static final METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final MULTI_PACKAGE_APK_ENABLED:Z

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = -0x80000000

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x40

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final PARSE_MUST_BE_APK:I = 0x1

.field private static final PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final RIGID_PARSER:Z = false

.field public static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_CODENAMES:[Ljava/lang/String;

.field public static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field public static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static sCompatibilityModeEnabled:Z

.field public static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sUseRoundIcon:Z


# instance fields
.field public mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field public mCallback:Landroid/content/pm/PackageParser$Callback;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field public mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field public mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smparsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 167
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 173
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 234
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 236
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 257
    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v1

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 312
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 316
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 317
    sput-boolean v2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 937
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser-IA;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 578
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 579
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 580
    return-void
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2562
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2563
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2564
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2565
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    goto :goto_0

    .line 2566
    :cond_0
    return-void
.end method

.method public static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .line 2920
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2924
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2926
    .local v0, "c":C
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 2927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2929
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 2930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2931
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2932
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2935
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1

    .line 2921
    .end local v0    # "c":C
    .end local v1    # "cls":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 2922
    const/4 v0, 0x0

    return-object v0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2940
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2941
    .local v0, "proc":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2942
    .local v2, "c":C
    const-string v3, ": "

    const-string v4, "Invalid "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, " in package "

    const-string v8, " name "

    if-eqz p0, :cond_2

    const/16 v9, 0x3a

    if-ne v2, v9, :cond_2

    .line 2943
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 2944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": must be at least two characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2946
    return-object v6

    .line 2948
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2949
    .local v5, "subName":Ljava/lang/String;
    invoke-static {v5, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 2950
    .local v9, "nameError":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 2951
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2953
    return-object v6

    .line 2955
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2957
    .end local v5    # "subName":Ljava/lang/String;
    .end local v9    # "nameError":Ljava/lang/String;
    :cond_2
    invoke-static {v0, v5, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 2958
    .local v5, "nameError":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string/jumbo v9, "system"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2961
    return-object v6

    .line 2963
    :cond_3
    return-object v0
.end method

.method public static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .line 2969
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2970
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 2972
    :cond_1
    if-eqz p4, :cond_4

    .line 2973
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 2974
    aget-object v1, p4, v0

    .line 2975
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 2973
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2976
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0

    .line 2980
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_3

    .line 2983
    :cond_5
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2981
    :cond_6
    :goto_3
    return-object p1
.end method

.method public static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2988
    if-nez p2, :cond_0

    .line 2989
    return-object p1

    .line 2991
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2992
    const/4 v0, 0x0

    return-object v0

    .line 2994
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "rawPropNames"    # Ljava/lang/String;
    .param p1, "rawPropValues"    # Ljava/lang/String;

    .line 2524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    const-string v2, "PackageParser"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2536
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2537
    .local v5, "propNames":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2539
    .local v0, "propValues":[Ljava/lang/String;
    array-length v6, v5

    array-length v7, v0

    if-eq v6, v7, :cond_1

    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling overlay - property :\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue lists to have the same size."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    return v4

    .line 2545
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v5

    if-ge v1, v2, :cond_3

    .line 2547
    aget-object v2, v5, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2548
    .local v2, "currValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2549
    return v4

    .line 2545
    .end local v2    # "currValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2552
    .end local v1    # "i":I
    :cond_3
    return v3

    .line 2525
    .end local v0    # "propValues":[Ljava/lang/String;
    .end local v5    # "propNames":[Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 2533
    :cond_5
    return v3

    .line 2527
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    return v4
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 654
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 655
    invoke-interface {p1}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v1, :cond_0

    .line 657
    return v2

    .line 662
    :cond_0
    int-to-long v3, p0

    invoke-static {p1, v3, v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 663
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x402000

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 662
    :goto_1
    return v2
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1416
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "apkPath":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v1

    .line 1420
    .local v1, "minSignatureScheme":I
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    const/4 v1, 0x2

    .line 1424
    :cond_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 1426
    .local v2, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    if-eqz p2, :cond_1

    .line 1428
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_0

    .line 1431
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_1
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 1433
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_0
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1441
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    .line 1442
    .local v4, "verified":Landroid/content/pm/SigningDetails;
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v5, v6, :cond_2

    .line 1443
    new-instance v5, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1444
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v7

    .line 1445
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v8

    .line 1446
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_1

    .line 1448
    :cond_2
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1449
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1448
    invoke-static {v5, v6}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1455
    :goto_1
    return-void

    .line 1450
    :cond_3
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatched certificates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x68

    invoke-direct {v5, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1434
    .end local v4    # "verified":Landroid/content/pm/SigningDetails;
    :cond_4
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v5

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    .line 1435
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1387
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1388
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1389
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1390
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1391
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1389
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1393
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1397
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1399
    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1401
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1403
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1405
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1409
    .end local v0    # "i":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1410
    nop

    .line 1411
    return-void

    .line 1409
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1410
    throw v0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "outError"    # [Ljava/lang/String;

    .line 2694
    const/4 v0, -0x1

    const-string v1, ")"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 2695
    if-gt p0, p2, :cond_0

    .line 2696
    return p0

    .line 2700
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requires newer sdk version #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current version is #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2702
    return v0

    .line 2707
    :cond_1
    invoke-static {p3, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2708
    const/16 v0, 0x2710

    return v0

    .line 2712
    :cond_2
    array-length v3, p3

    if-nez v3, :cond_3

    sget-object v3, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    .line 2713
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package requires min development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returning current version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 2721
    :cond_3
    array-length v3, p3

    const-string v4, "Requires development platform "

    if-lez v3, :cond_4

    .line 2722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current platform is any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2724
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_0

    .line 2726
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but this is a release platform."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2729
    :goto_0
    return v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2621
    if-nez p1, :cond_0

    .line 2622
    return p0

    .line 2627
    :cond_0
    invoke-static {p2, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    const/16 v0, 0x2710

    return v0

    .line 2632
    :cond_1
    array-length v0, p2

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    .line 2633
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returning current version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 2641
    :cond_2
    array-length v0, p2

    const-string v1, "Requires development platform "

    const/4 v2, 0x0

    if-lez v0, :cond_3

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2644
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    goto :goto_0

    .line 2646
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 2649
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z
    .locals 5
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 7943
    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 7946
    return v0

    .line 7948
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7949
    nop

    .line 7950
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7951
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_2

    .line 7952
    return v0

    .line 7955
    .end local v1    # "enabled":Z
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 7956
    .local v1, "suspended":Z
    :goto_1
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v3

    if-eq v3, v1, :cond_4

    .line 7957
    return v0

    .line 7959
    :cond_4
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 7962
    :cond_5
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7963
    return v0

    .line 7965
    :cond_6
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 7966
    return v0

    .line 7968
    :cond_7
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_9

    if-nez p3, :cond_8

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 7970
    :cond_8
    return v0

    .line 7972
    :cond_9
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 7974
    return v0

    .line 7976
    :cond_a
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_b

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 7978
    return v0

    .line 7980
    :cond_b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 7981
    return v0

    .line 7983
    :cond_c
    return v2

    .line 7960
    :cond_d
    :goto_2
    return v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8275
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8276
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8277
    return-object v0

    .line 8281
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8282
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8283
    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8248
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8253
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8254
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8255
    return-object v0

    .line 8257
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8258
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8259
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 8262
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8263
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 8265
    if-nez p4, :cond_3

    .line 8266
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8268
    :cond_3
    iput-object p4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8270
    return-object v0
.end method

.method private generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .locals 6
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 4281
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    .line 4283
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    iput-object p1, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4284
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 4286
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const v2, 0x1030055

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4287
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4288
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    sget-object v3, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4289
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4290
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v3, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4291
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v5, ":app_details"

    invoke-static {v3, v4, v5, p3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4293
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 4294
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4295
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4296
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4297
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3, v3}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4298
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4299
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4300
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, -0x1

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4301
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4302
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4303
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4304
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4305
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4306
    if-eqz p4, :cond_0

    .line 4307
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4309
    :cond_0
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8089
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8090
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8091
    return-object v0

    .line 8095
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8096
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8097
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8098
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 8100
    :cond_2
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8102
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8103
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 7989
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8049
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8050
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 8053
    :cond_1
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 8055
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 8064
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8065
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 8069
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8070
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8071
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 8072
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 8074
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 8075
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8076
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 8078
    :cond_5
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8079
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 8081
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8083
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8084
    return-object v0

    .line 8051
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .line 8551
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8552
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 8553
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    .line 8555
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 8556
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 8557
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I

    .line 706
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    .line 707
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 706
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .end local p0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p1    # "apexInfo":Landroid/apex/ApexInfo;
    .end local p2    # "flags":I
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v1, "apexInfo":Landroid/apex/ApexInfo;
    .local v3, "flags":I
    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 20
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "gids"    # [I
    .param p3, "flags"    # I
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/apex/ApexInfo;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 713
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v4, v6}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_14

    .line 718
    :cond_0
    and-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_1

    .line 720
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 722
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v6, 0x0

    .line 725
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 726
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 727
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 728
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 729
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 730
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 731
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 732
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 733
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 734
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 735
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 736
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 737
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 738
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 739
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_2

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    .line 741
    :cond_2
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 743
    :cond_3
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 744
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 745
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 746
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 747
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 748
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 749
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 750
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 751
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 752
    move-wide/from16 v11, p4

    iput-wide v11, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 753
    move-wide/from16 v13, p6

    iput-wide v13, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 754
    and-int/lit16 v9, v2, 0x100

    if-eqz v9, :cond_4

    .line 755
    move-object/from16 v9, p2

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_1

    .line 754
    :cond_4
    move-object/from16 v9, p2

    .line 757
    :goto_1
    and-int/lit16 v15, v2, 0x4000

    if-eqz v15, :cond_a

    .line 758
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 759
    .local v15, "N":I
    :goto_2
    if-lez v15, :cond_6

    .line 760
    const/16 v16, 0x0

    new-array v7, v15, [Landroid/content/pm/ConfigurationInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 761
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move/from16 v17, v10

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    .line 759
    :cond_6
    move/from16 v17, v10

    const/16 v16, 0x0

    .line 763
    :goto_3
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_4

    :cond_7
    move/from16 v7, v16

    .line 764
    .end local v15    # "N":I
    .local v7, "N":I
    :goto_4
    if-lez v7, :cond_8

    .line 765
    new-array v10, v7, [Landroid/content/pm/FeatureInfo;

    iput-object v10, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 766
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 768
    :cond_8
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_5

    :cond_9
    move/from16 v10, v16

    .line 769
    .end local v7    # "N":I
    .local v10, "N":I
    :goto_5
    if-lez v10, :cond_b

    .line 770
    new-array v7, v10, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 771
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_6

    .line 757
    .end local v10    # "N":I
    :cond_a
    move/from16 v17, v10

    const/16 v16, 0x0

    .line 774
    :cond_b
    :goto_6
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_10

    .line 775
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 776
    .restart local v7    # "N":I
    if-lez v7, :cond_f

    .line 777
    const/4 v10, 0x0

    .line 778
    .local v10, "num":I
    new-array v15, v7, [Landroid/content/pm/ActivityInfo;

    .line 779
    .local v15, "res":[Landroid/content/pm/ActivityInfo;
    const/16 v18, 0x0

    move/from16 v9, v18

    .local v9, "i":I
    :goto_7
    if-ge v9, v7, :cond_e

    .line 780
    move/from16 v18, v7

    .end local v7    # "N":I
    .local v18, "N":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Activity;

    .line 781
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    iget-object v9, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v11, v2

    invoke-static {v4, v9, v11, v12}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 782
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 783
    goto :goto_8

    .line 785
    :cond_c
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "num":I
    .local v9, "num":I
    invoke-static {v7, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    aput-object v11, v15, v10

    move v10, v9

    .line 779
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v9    # "num":I
    .restart local v10    # "num":I
    :cond_d
    :goto_8
    add-int/lit8 v9, v19, 0x1

    move-wide/from16 v11, p4

    move/from16 v7, v18

    .end local v19    # "i":I
    .local v9, "i":I
    goto :goto_7

    .end local v18    # "N":I
    .local v7, "N":I
    :cond_e
    move/from16 v18, v7

    move/from16 v19, v9

    .line 788
    .end local v7    # "N":I
    .end local v9    # "i":I
    .restart local v18    # "N":I
    invoke-static {v15, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ActivityInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_9

    .line 776
    .end local v10    # "num":I
    .end local v15    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v18    # "N":I
    .restart local v7    # "N":I
    :cond_f
    move/from16 v18, v7

    .line 791
    .end local v7    # "N":I
    :cond_10
    :goto_9
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_13

    .line 792
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 793
    .restart local v7    # "N":I
    if-lez v7, :cond_13

    .line 794
    const/4 v9, 0x0

    .line 795
    .local v9, "num":I
    new-array v10, v7, [Landroid/content/pm/ActivityInfo;

    .line 796
    .local v10, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a
    if-ge v11, v7, :cond_12

    .line 797
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Activity;

    .line 798
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v15, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v13, v2

    invoke-static {v4, v15, v13, v14}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 799
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .local v13, "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 796
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_11
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v13, p6

    goto :goto_a

    .line 802
    .end local v11    # "i":I
    :cond_12
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 805
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_13
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_16

    .line 806
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 807
    .restart local v7    # "N":I
    if-lez v7, :cond_16

    .line 808
    const/4 v9, 0x0

    .line 809
    .restart local v9    # "num":I
    new-array v10, v7, [Landroid/content/pm/ServiceInfo;

    .line 810
    .local v10, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_b
    if-ge v11, v7, :cond_15

    .line 811
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Service;

    .line 812
    .local v12, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v13, v12, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 813
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 810
    .end local v12    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 816
    .end local v11    # "i":I
    :cond_15
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ServiceInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 819
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_16
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_19

    .line 820
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 821
    .restart local v7    # "N":I
    if-lez v7, :cond_19

    .line 822
    const/4 v9, 0x0

    .line 823
    .restart local v9    # "num":I
    new-array v10, v7, [Landroid/content/pm/ProviderInfo;

    .line 824
    .local v10, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    if-ge v11, v7, :cond_18

    .line 825
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    .line 826
    .local v12, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v13, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 827
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 824
    .end local v12    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 831
    .end local v11    # "i":I
    :cond_18
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ProviderInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 834
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_19
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_1a

    .line 835
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 836
    .restart local v7    # "N":I
    if-lez v7, :cond_1a

    .line 837
    new-array v9, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 838
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    if-ge v9, v7, :cond_1a

    .line 839
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Instrumentation;

    .line 839
    invoke-static {v11, v2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v11

    aput-object v11, v10, v9

    .line 838
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 844
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_1a
    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_1d

    .line 845
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 846
    .restart local v7    # "N":I
    if-lez v7, :cond_1b

    .line 847
    new-array v9, v7, [Landroid/content/pm/PermissionInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 848
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_e
    if-ge v9, v7, :cond_1b

    .line 849
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v11, v2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    aput-object v11, v10, v9

    .line 848
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 852
    .end local v9    # "i":I
    :cond_1b
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 853
    if-lez v7, :cond_1d

    .line 854
    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 855
    new-array v9, v7, [I

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 856
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f
    if-ge v9, v7, :cond_1d

    .line 857
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 858
    .local v10, "perm":Ljava/lang/String;
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v10, v11, v9

    .line 860
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v9

    or-int/lit8 v12, v12, 0x1

    aput v12, v11, v9

    .line 861
    if-eqz v3, :cond_1c

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 862
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v9

    or-int/lit8 v12, v12, 0x2

    aput v12, v11, v9

    .line 856
    .end local v10    # "perm":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 868
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_1d
    if-eqz v1, :cond_20

    .line 869
    new-instance v7, Ljava/io/File;

    iget-object v9, v1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v7, "apexFile":Ljava/io/File;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 872
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 873
    iget-boolean v9, v1, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v9, :cond_1e

    .line 874
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_10

    .line 876
    :cond_1e
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 878
    :goto_10
    iget-boolean v9, v1, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v9, :cond_1f

    .line 879
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_11

    .line 881
    :cond_1f
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v11, -0x800001

    and-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 883
    :goto_11
    move/from16 v9, v17

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 887
    .end local v7    # "apexFile":Ljava/io/File;
    :cond_20
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_22

    .line 888
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 891
    const/4 v9, 0x1

    new-array v7, v9, [Landroid/content/pm/Signature;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 892
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v9, v9, v16

    aput-object v9, v7, v16

    goto :goto_12

    .line 893
    :cond_21
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 895
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v7, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    .line 896
    .local v7, "numberOfSigs":I
    new-array v9, v7, [Landroid/content/pm/Signature;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 897
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move/from16 v11, v16

    invoke-static {v9, v11, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    .end local v7    # "numberOfSigs":I
    :cond_22
    :goto_12
    const/high16 v7, 0x8000000

    and-int/2addr v7, v2

    if-eqz v7, :cond_24

    .line 903
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v7, v9, :cond_23

    .line 905
    new-instance v7, Landroid/content/pm/SigningInfo;

    new-instance v9, Landroid/content/pm/SigningDetails;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v11, v11, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v13, v13, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    invoke-direct {v7, v9}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_13

    .line 911
    :cond_23
    const/4 v7, 0x0

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 914
    :cond_24
    :goto_13
    return-object v8

    .line 713
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_25
    const/4 v7, 0x0

    .line 714
    :goto_14
    return-object v7
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 683
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 684
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 683
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    return-object v9
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 692
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .line 8121
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8122
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 8123
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    .line 8125
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 8126
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 8127
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .line 8109
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8110
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 8111
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    .line 8113
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 8114
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 8115
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8458
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8463
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8464
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8465
    return-object v0

    .line 8467
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 8470
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8471
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 8474
    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 8475
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 8476
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    .line 8477
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 8480
    :cond_4
    if-nez p4, :cond_5

    .line 8481
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8483
    :cond_5
    iput-object p4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8485
    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8350
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8355
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8356
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8357
    return-object v0

    .line 8359
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8360
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8361
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 8364
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 8365
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 8367
    if-nez p4, :cond_3

    .line 8368
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8370
    :cond_3
    iput-object p4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8372
    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 1
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 4807
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method public static getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;
    .locals 1
    .param p0, "userState"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 9349
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9350
    const-string v0, ":ephemeralapp:complete"

    return-object v0

    .line 9352
    :cond_0
    const-string v0, ":complete"

    return-object v0
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 4017
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_5

    .line 4018
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 4019
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4020
    .local v2, "countActivities":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 4021
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4022
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 4023
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_1

    goto :goto_4

    .line 4024
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4025
    .local v6, "countFilters":I
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_1
    if-ge v7, v6, :cond_6

    .line 4026
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4027
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    .line 4028
    :cond_2
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 4029
    :cond_3
    const-string/jumbo v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 4030
    const-string/jumbo v9, "https"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 4025
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4031
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 4020
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "countFilters":I
    .end local v7    # "m":I
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4035
    .end local v3    # "n":I
    :cond_7
    return v0

    .line 4017
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    .end local v2    # "countActivities":I
    :cond_8
    :goto_5
    return v0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 639
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 643
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z
    .locals 2
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 669
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z
    .locals 7
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "flags"    # J

    .line 9217
    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 9218
    .local v0, "matchAnyUser":Z
    :goto_0
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    .line 9219
    .local v2, "matchUninstalled":Z
    :goto_1
    if-nez v0, :cond_3

    .line 9220
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9221
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_3

    :cond_3
    :goto_2
    nop

    .line 9219
    :goto_3
    return v1
.end method

.method public static isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .locals 7
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9235
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v5, "flags":J
    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZLandroid/content/pm/ComponentInfo;J)Z
    .locals 6
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "parsedComponent"    # Landroid/content/pm/ComponentInfo;
    .param p3, "flags"    # J

    .line 9241
    invoke-virtual {p2}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v2

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p1    # "isPackageEnabled":Z
    .end local p3    # "flags":J
    .local v0, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v1, "isPackageEnabled":Z
    .local v4, "flags":J
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z
    .locals 7
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "isComponentEnabled"    # Z
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 9251
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9252
    return v1

    .line 9257
    :cond_0
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 9262
    :pswitch_1
    const-wide/32 v5, 0x8000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    .line 9263
    return v4

    .line 9260
    :pswitch_2
    return v4

    .line 9267
    :cond_1
    :pswitch_3
    if-nez p1, :cond_2

    .line 9268
    return v4

    .line 9277
    :cond_2
    :goto_0
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9278
    return v1

    .line 9279
    :cond_3
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9280
    return v4

    .line 9283
    :cond_4
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/pm/PackageParser$IntentInfo;

    .line 5577
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5578
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5579
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5580
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5577
    :goto_1
    return v0
.end method

.method public static isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .locals 9
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9169
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v7, "flags":J
    invoke-static/range {v1 .. v8}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLandroid/content/pm/ComponentInfo;J)Z
    .locals 8
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "component"    # Landroid/content/pm/ComponentInfo;
    .param p4, "flags"    # J

    .line 9176
    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v3

    iget-boolean v4, p3, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v5, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p1    # "isSystem":Z
    .end local p2    # "isPackageEnabled":Z
    .end local p4    # "flags":J
    .local v0, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v1, "isSystem":Z
    .local v2, "isPackageEnabled":Z
    .local v6, "flags":J
    invoke-static/range {v0 .. v7}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z
    .locals 12
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "isComponentEnabled"    # Z
    .param p4, "isComponentDirectBootAware"    # Z
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "flags"    # J

    .line 9192
    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 9193
    .local v10, "matchUninstalled":Z
    invoke-static {p0, v4, v5}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez v10, :cond_2

    .line 9194
    :cond_1
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9197
    :cond_2
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v3, p5

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result v11

    if-nez v11, :cond_3

    .line 9198
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9201
    :cond_3
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    .line 9202
    if-nez p1, :cond_4

    .line 9203
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9207
    :cond_4
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v9

    .line 9209
    .local v0, "matchesUnaware":Z
    :goto_1
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v4

    cmp-long v1, v1, v6

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v9

    .line 9211
    .local v1, "matchesAware":Z
    :goto_2
    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v8, v9

    :cond_8
    :goto_3
    invoke-static {v8, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method static synthetic lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "a1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "a2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3990
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "r1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "r2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3993
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .locals 2
    .param p0, "s1"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "s2"    # Landroid/content/pm/PackageParser$Service;

    .line 3996
    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "codeNames"    # [Ljava/lang/String;
    .param p1, "targetCode"    # Ljava/lang/String;

    .line 2578
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2579
    .local v0, "targetCodeIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2580
    move-object v1, p1

    .local v1, "targetCodeName":Ljava/lang/String;
    goto :goto_0

    .line 2582
    .end local v1    # "targetCodeName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2584
    .restart local v1    # "targetCodeName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 22

    .line 1458
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    move-object v1, v0

    .line 1459
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/16 v20, 0x0

    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v1 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 1461
    return-object v1
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 26
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4316
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4318
    .local v2, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_0

    .line 4319
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v12, 0x11

    const/4 v13, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x2c

    const/16 v8, 0x17

    const/16 v9, 0x1e

    const/4 v11, 0x7

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    move-object v15, v2

    move-object/from16 v2, p1

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    move-object v6, v3

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    goto :goto_0

    .line 4318
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v7, p1

    move-object/from16 v6, p5

    move-object v14, v1

    move-object v15, v2

    .line 4332
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string v2, "<receiver>"

    goto :goto_1

    :cond_1
    const-string v2, "<activity>"

    :goto_1
    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4333
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4334
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4336
    new-instance v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v1

    .line 4337
    .local v9, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v10, 0x0

    aget-object v1, v6, v10

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 4338
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4339
    return-object v11

    .line 4342
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 4343
    .local v12, "setExported":Z
    if-eqz v12, :cond_3

    .line 4344
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4347
    :cond_3
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4349
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v3, 0x1a

    invoke-virtual {v15, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4352
    const/16 v1, 0x1b

    const/16 v2, 0x400

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 4355
    .local v13, "parentName":Ljava/lang/String;
    const-string v1, "PackageParser"

    if-eqz v13, :cond_5

    .line 4356
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v13, v6}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4357
    .local v3, "parentClassName":Ljava/lang/String;
    aget-object v4, v6, v10

    if-nez v4, :cond_4

    .line 4358
    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_2

    .line 4360
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " specified invalid parentActivityName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    aput-object v11, v6, v10

    .line 4367
    .end local v3    # "parentClassName":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v3, 0x4

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 4368
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 4369
    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v11

    iget-object v11, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v11, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_4

    .line 4371
    :cond_6
    move-object/from16 v16, v11

    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    move-object/from16 v11, v16

    :goto_3
    iput-object v11, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4374
    :goto_4
    const/16 v5, 0x8

    invoke-virtual {v15, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4377
    .end local v4    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v17, v5

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v18, v3

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v5, v3, v11, v6}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4380
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4381
    const/16 v4, 0x30

    invoke-virtual {v15, v4, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4383
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4384
    const/16 v3, 0x9

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 4386
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4389
    :cond_8
    const/16 v3, 0xa

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v19, 0x2

    if-eqz v3, :cond_9

    .line 4390
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4393
    :cond_9
    const/16 v3, 0xb

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4394
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4397
    :cond_a
    const/16 v3, 0x15

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4398
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4401
    :cond_b
    const/16 v3, 0x12

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4402
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4405
    :cond_c
    const/16 v3, 0xc

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v5, 0x10

    if-eqz v3, :cond_d

    .line 4406
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v17, v4

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_5

    .line 4405
    :cond_d
    move/from16 v17, v4

    .line 4409
    :goto_5
    const/16 v3, 0xd

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4410
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v20, 0x20

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_6

    .line 4409
    :cond_e
    const/16 v20, 0x20

    .line 4413
    :goto_6
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_f

    move/from16 v3, v17

    goto :goto_7

    :cond_f
    move v3, v10

    :goto_7
    const/16 v4, 0x13

    invoke-virtual {v15, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x40

    if-eqz v3, :cond_10

    .line 4415
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4418
    :cond_10
    const/16 v3, 0x16

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4419
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4422
    :cond_11
    const/16 v3, 0x1d

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4423
    const/16 v3, 0x27

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4424
    :cond_12
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4427
    :cond_13
    const/16 v2, 0x18

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4428
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4431
    :cond_14
    invoke-virtual {v15, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4432
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4435
    :cond_15
    if-nez p7, :cond_22

    .line 4436
    const/16 v3, 0x19

    move/from16 v4, p8

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4438
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4441
    :cond_16
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0xe

    invoke-virtual {v15, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4443
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x21

    invoke-virtual {v15, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4446
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4448
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    .line 4446
    const/16 v2, 0x22

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4449
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4450
    const/16 v3, 0x10

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 4451
    const/16 v5, 0x2f

    invoke-virtual {v15, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 4449
    invoke-static {v3, v5}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4452
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x14

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4455
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v3, v20

    invoke-virtual {v15, v3, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4459
    const/16 v2, 0x1f

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4460
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4463
    :cond_17
    const/16 v2, 0x23

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4464
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4467
    :cond_18
    const/16 v2, 0x24

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4468
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4471
    :cond_19
    const/16 v2, 0x25

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4472
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4475
    :cond_1a
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xf

    const/4 v5, -0x1

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4479
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v2, v15, v7}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4481
    const/16 v2, 0x29

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4483
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x400000

    or-int v3, v3, v20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4486
    :cond_1b
    const/16 v2, 0x43

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4487
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x40000

    or-int v3, v3, v20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4490
    :cond_1c
    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1d

    .line 4491
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    move/from16 v10, v18

    if-ne v3, v10, :cond_1d

    .line 4493
    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v9, v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4497
    :cond_1d
    const/16 v2, 0x35

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4498
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_1e

    .line 4500
    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v9, v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4504
    :cond_1e
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4505
    const/16 v3, 0x26

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4507
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x2a

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4511
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4512
    const/16 v3, 0x2b

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4514
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4515
    const/16 v3, 0x2e

    const/4 v5, -0x1

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4517
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x31

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4520
    const/16 v2, 0x38

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4522
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x2000000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4525
    :cond_1f
    const/16 v2, 0x33

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4526
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x800000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4529
    :cond_20
    const/16 v2, 0x34

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4530
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x1000000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4533
    :cond_21
    const/16 v2, 0x36

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4534
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->privateFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ActivityInfo;->privateFlags:I

    goto :goto_8

    .line 4537
    :cond_22
    move/from16 v4, p8

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4538
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v5, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4540
    const/16 v2, 0x1c

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4541
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4544
    :cond_23
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x2a

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4549
    :cond_24
    :goto_8
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v2, :cond_25

    .line 4550
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4555
    :cond_25
    nop

    .line 4556
    const/16 v2, 0x2d

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 4557
    .local v10, "visibleToEphemeral":Z
    const/high16 v20, 0x100000

    if-eqz v10, :cond_26

    .line 4558
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v3, v3, v20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4559
    move/from16 v2, v17

    iput-boolean v2, v7, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4562
    :cond_26
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4564
    if-eqz p7, :cond_28

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_28

    .line 4568
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_27

    .line 4569
    const-string v2, "Heavy-weight applications can not have receivers in main process"

    const/16 v21, 0x0

    aput-object v2, v6, v21

    goto :goto_9

    .line 4568
    :cond_27
    const/16 v21, 0x0

    goto :goto_9

    .line 4564
    :cond_28
    const/16 v21, 0x0

    .line 4573
    :goto_9
    aget-object v2, v6, v21

    if-eqz v2, :cond_29

    .line 4574
    return-object v16

    .line 4577
    :cond_29
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 4579
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v5, v3

    const/4 v0, 0x1

    .local v5, "type":I
    if-eq v3, v0, :cond_41

    const/4 v3, 0x3

    if-ne v5, v3, :cond_2b

    .line 4581
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_2a

    goto :goto_b

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v18, v2

    move/from16 v22, v5

    move/from16 v24, v10

    const/16 v17, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_11

    .line 4582
    :cond_2b
    :goto_b
    if-eq v5, v3, :cond_40

    const/4 v0, 0x4

    if-ne v5, v0, :cond_2c

    .line 4583
    move-object/from16 v0, p0

    goto :goto_a

    .line 4586
    :cond_2c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "intent-filter"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, " "

    if-eqz v0, :cond_33

    .line 4587
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4588
    .local v0, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v22, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v18, v2

    move/from16 v24, v10

    move-object/from16 v8, v22

    const/16 v17, 0x1

    const/16 v23, 0x4

    move-object/from16 v2, p3

    move-object v10, v1

    move/from16 v22, v5

    move-object/from16 v1, p2

    move-object v5, v0

    move-object/from16 v0, p0

    .end local v0    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "outerDepth":I
    .end local v10    # "visibleToEphemeral":Z
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v18, "outerDepth":I
    .local v22, "type":I
    .local v24, "visibleToEphemeral":Z
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 4590
    return-object v16

    .line 4592
    :cond_2d
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v1

    if-nez v1, :cond_2e

    .line 4593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4595
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4593
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4597
    :cond_2e
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v1

    iget v2, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4598
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4601
    :goto_c
    if-eqz v24, :cond_2f

    .line 4602
    move/from16 v4, v17

    goto :goto_d

    .line 4603
    :cond_2f
    if-nez p7, :cond_30

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4604
    move/from16 v4, v19

    goto :goto_d

    .line 4605
    :cond_30
    move/from16 v4, v21

    :goto_d
    nop

    .line 4606
    .local v4, "visibility":I
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4607
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4608
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v20

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4610
    :cond_31
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4611
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4625
    .end local v4    # "visibility":I
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_32
    move/from16 v8, p4

    move-object/from16 v6, p5

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .end local v18    # "outerDepth":I
    .end local v22    # "type":I
    .end local v24    # "visibleToEphemeral":Z
    .restart local v2    # "outerDepth":I
    .local v5, "type":I
    .restart local v10    # "visibleToEphemeral":Z
    :cond_33
    move-object/from16 v0, p0

    move/from16 v18, v2

    move-object v8, v3

    move/from16 v22, v5

    move/from16 v24, v10

    const/16 v17, 0x1

    const/16 v23, 0x4

    move-object v10, v1

    .end local v2    # "outerDepth":I
    .end local v5    # "type":I
    .end local v10    # "visibleToEphemeral":Z
    .restart local v18    # "outerDepth":I
    .restart local v22    # "type":I
    .restart local v24    # "visibleToEphemeral":Z
    if-nez p7, :cond_3b

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preferred"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4626
    new-instance v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v5, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4627
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 4629
    return-object v16

    .line 4631
    :cond_34
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_35

    .line 4632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in preferred at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4634
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4632
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4636
    :cond_35
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v3, :cond_36

    .line 4637
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4639
    :cond_36
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4642
    :goto_e
    if-eqz v24, :cond_37

    .line 4643
    move/from16 v4, v17

    goto :goto_f

    .line 4644
    :cond_37
    if-nez p7, :cond_38

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 4645
    move/from16 v4, v19

    goto :goto_f

    .line 4646
    :cond_38
    move/from16 v4, v21

    :goto_f
    nop

    .line 4647
    .restart local v4    # "visibility":I
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4648
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4649
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v8, v8, v20

    iput v8, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4651
    :cond_39
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4652
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v25, 0x200000

    or-int v8, v8, v25

    iput v8, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4654
    .end local v4    # "visibility":I
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3a
    move/from16 v8, p4

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .line 4625
    :cond_3b
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .line 4654
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4655
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_3c

    .line 4657
    return-object v16

    .line 4655
    :cond_3c
    move/from16 v8, p4

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .line 4659
    :cond_3d
    if-nez p7, :cond_3e

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "layout"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4660
    invoke-direct {v0, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    move/from16 v8, p4

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .line 4663
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    const-string v3, " at "

    if-eqz p7, :cond_3f

    .line 4665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <receiver>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4667
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4665
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4669
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4671
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4669
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    :goto_10
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4674
    move/from16 v8, p4

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .line 4582
    .end local v18    # "outerDepth":I
    .end local v22    # "type":I
    .end local v24    # "visibleToEphemeral":Z
    .restart local v2    # "outerDepth":I
    .local v5, "type":I
    .restart local v10    # "visibleToEphemeral":Z
    :cond_40
    move-object/from16 v0, p0

    move/from16 v18, v2

    move/from16 v22, v5

    move/from16 v24, v10

    const/16 v17, 0x1

    const/16 v23, 0x4

    move-object/from16 v2, p3

    move-object v10, v1

    move-object/from16 v1, p2

    .end local v2    # "outerDepth":I
    .end local v5    # "type":I
    .end local v10    # "visibleToEphemeral":Z
    .restart local v18    # "outerDepth":I
    .restart local v22    # "type":I
    .restart local v24    # "visibleToEphemeral":Z
    move/from16 v8, p4

    move/from16 v4, p8

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v10, v24

    goto/16 :goto_a

    .line 4579
    .end local v18    # "outerDepth":I
    .end local v22    # "type":I
    .end local v24    # "visibleToEphemeral":Z
    .restart local v2    # "outerDepth":I
    .restart local v5    # "type":I
    .restart local v10    # "visibleToEphemeral":Z
    :cond_41
    move-object/from16 v1, p2

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v22, v5

    move/from16 v24, v10

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 4686
    .end local v2    # "outerDepth":I
    .end local v5    # "type":I
    .end local v10    # "visibleToEphemeral":Z
    .restart local v18    # "outerDepth":I
    .restart local v22    # "type":I
    .restart local v24    # "visibleToEphemeral":Z
    :goto_11
    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser;->resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V

    .line 4688
    if-nez v12, :cond_43

    .line 4689
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    move/from16 v10, v17

    goto :goto_12

    :cond_42
    move/from16 v10, v21

    :goto_12
    iput-boolean v10, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4692
    :cond_43
    return-object v9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4886
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p6

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v14, v15, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4889
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 4892
    .local v5, "targetActivity":Ljava/lang/String;
    const/16 v16, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 4893
    const-string v6, "<activity-alias> does not specify android:targetActivity"

    aput-object v6, v3, v7

    .line 4894
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4895
    return-object v16

    .line 4898
    :cond_0
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4900
    if-nez v5, :cond_1

    .line 4901
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4902
    return-object v16

    .line 4905
    :cond_1
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_2

    .line 4906
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object v8, v4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    move-object v9, v5

    .end local v5    # "targetActivity":Ljava/lang/String;
    .local v9, "targetActivity":Ljava/lang/String;
    const/4 v5, 0x0

    move v11, v6

    const/4 v6, 0x1

    move/from16 v17, v7

    const/16 v7, 0xb

    move-object/from16 v18, v8

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/16 v8, 0x8

    move-object/from16 v19, v9

    .end local v9    # "targetActivity":Ljava/lang/String;
    .local v19, "targetActivity":Ljava/lang/String;
    const/16 v9, 0xa

    move/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v14, p6

    move-object/from16 v15, v18

    move-object/from16 v0, v19

    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "targetActivity":Ljava/lang/String;
    .local v0, "targetActivity":Ljava/lang/String;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4917
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<activity-alias>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 4905
    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "targetActivity":Ljava/lang/String;
    :cond_2
    move-object v14, v1

    move-object v15, v4

    move-object v0, v5

    move/from16 v17, v7

    move-object v7, v2

    .line 4920
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "targetActivity":Ljava/lang/String;
    .restart local v0    # "targetActivity":Ljava/lang/String;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4921
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4923
    const/4 v1, 0x0

    .line 4925
    .local v1, "target":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4926
    .local v9, "NA":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_4

    .line 4927
    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4928
    .local v4, "t":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4929
    move-object v1, v4

    .line 4930
    move-object v10, v1

    goto :goto_2

    .line 4926
    .end local v4    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v1

    .line 4934
    .end local v1    # "target":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "i":I
    .local v10, "target":Landroid/content/pm/PackageParser$Activity;
    :goto_2
    if-nez v10, :cond_5

    .line 4935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    .line 4937
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4938
    return-object v16

    .line 4941
    :cond_5
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v11, v1

    .line 4942
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    iput-object v0, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4943
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4944
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4945
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 4946
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4947
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->logo:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4948
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->banner:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4949
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4950
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4951
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4952
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4953
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4954
    iget v1, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v1, :cond_6

    .line 4955
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4957
    :cond_6
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4958
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4959
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4960
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4961
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4962
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4963
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4964
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4965
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4966
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 4967
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 4968
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v1, v11, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4969
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4971
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v1, v11, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4973
    new-instance v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v1, v2, v11}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v12, v1

    .line 4974
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    aget-object v1, v3, v17

    if-eqz v1, :cond_7

    .line 4975
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4976
    return-object v16

    .line 4979
    :cond_7
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    .line 4981
    .local v13, "setExported":Z
    if-eqz v13, :cond_8

    .line 4982
    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v4, v17

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_3

    .line 4981
    :cond_8
    move/from16 v4, v17

    .line 4987
    :goto_3
    const/4 v1, 0x3

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4989
    .local v18, "str":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 4990
    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object/from16 v4, v16

    :goto_4
    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4993
    :cond_a
    const/16 v2, 0x9

    const/16 v4, 0x400

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 4996
    .local v2, "parentName":Ljava/lang/String;
    const-string v4, "PackageParser"

    if-eqz v2, :cond_c

    .line 4997
    iget-object v5, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v2, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4998
    .local v5, "parentClassName":Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v6, v3, v17

    if-nez v6, :cond_b

    .line 4999
    iget-object v6, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v5, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_5

    .line 5001
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity alias "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " specified invalid parentActivityName "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    const/16 v17, 0x0

    aput-object v16, v3, v17

    .line 5008
    .end local v5    # "parentClassName":Ljava/lang/String;
    :cond_c
    :goto_5
    iget-object v1, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x100000

    and-int v1, v1, v20

    const/4 v5, 0x1

    if-eqz v1, :cond_d

    move v1, v5

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    move/from16 v21, v1

    .line 5011
    .local v21, "visibleToEphemeral":Z
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5013
    const/16 v17, 0x0

    aget-object v1, v3, v17

    if-eqz v1, :cond_e

    .line 5014
    return-object v16

    .line 5017
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 5019
    .local v1, "outerDepth":I
    :goto_7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move/from16 v22, v6

    .local v22, "type":I
    if-eq v6, v5, :cond_1c

    move/from16 v6, v22

    const/4 v5, 0x3

    .end local v22    # "type":I
    .local v6, "type":I
    if-ne v6, v5, :cond_10

    .line 5021
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object/from16 v22, v2

    move/from16 v24, v6

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    goto/16 :goto_b

    .line 5022
    :cond_10
    :goto_8
    const/4 v5, 0x3

    if-eq v6, v5, :cond_1b

    const/4 v5, 0x4

    if-ne v6, v5, :cond_11

    .line 5023
    const/4 v5, 0x1

    goto :goto_7

    .line 5026
    :cond_11
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v0

    .end local v0    # "targetActivity":Ljava/lang/String;
    .local v23, "targetActivity":Ljava/lang/String;
    const-string/jumbo v0, "intent-filter"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " "

    if-eqz v0, :cond_18

    .line 5027
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 5028
    .local v0, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x1

    move-object/from16 v24, v4

    const/4 v4, 0x1

    move-object/from16 v22, v2

    move-object v7, v5

    move-object/from16 v19, v23

    move-object/from16 v8, v24

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v2, p3

    move-object v5, v0

    move/from16 v23, v1

    move/from16 v24, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p5

    .end local v0    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .local v22, "parentName":Ljava/lang/String;
    .local v23, "outerDepth":I
    .local v24, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 5030
    return-object v16

    .line 5032
    :cond_12
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_13

    .line 5033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5035
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5033
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 5037
    :cond_13
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v3

    iget v4, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 5038
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5041
    :goto_9
    if-eqz v21, :cond_14

    .line 5042
    move/from16 v7, v26

    goto :goto_a

    .line 5043
    :cond_14
    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5044
    const/4 v7, 0x2

    goto :goto_a

    .line 5045
    :cond_15
    move/from16 v7, v17

    :goto_a
    nop

    .line 5046
    .local v7, "visibility":I
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5047
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5048
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v4, v4, v20

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5050
    :cond_16
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5051
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v27, 0x200000

    or-int v4, v4, v27

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5053
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v7    # "visibility":I
    :cond_17
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_7

    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v22    # "parentName":Ljava/lang/String;
    .end local v24    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .restart local v6    # "type":I
    .local v23, "targetActivity":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v22, v2

    move-object v8, v4

    move-object v7, v5

    move/from16 v24, v6

    move-object/from16 v19, v23

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v2, p3

    move/from16 v23, v1

    move-object v6, v3

    move-object/from16 v1, p2

    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .restart local v22    # "parentName":Ljava/lang/String;
    .local v23, "outerDepth":I
    .restart local v24    # "type":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5054
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_19

    .line 5056
    return-object v16

    .line 5054
    :cond_19
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_7

    .line 5060
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5062
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5060
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5064
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_7

    .line 5022
    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v22    # "parentName":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .end local v24    # "type":I
    .local v0, "targetActivity":Ljava/lang/String;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_1b
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object/from16 v22, v2

    move-object v8, v4

    move/from16 v25, v5

    move/from16 v24, v6

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .restart local v22    # "parentName":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "type":I
    move-object/from16 v7, p1

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_7

    .line 5019
    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .end local v24    # "type":I
    .restart local v0    # "targetActivity":Ljava/lang/String;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .local v22, "type":I
    :cond_1c
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object v6, v3

    move/from16 v26, v5

    move/from16 v24, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v22, v2

    move-object/from16 v2, p3

    .line 5072
    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .local v22, "parentName":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "type":I
    :goto_b
    if-nez v13, :cond_1e

    .line 5073
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    move/from16 v7, v26

    goto :goto_c

    :cond_1d
    move/from16 v7, v17

    :goto_c
    iput-boolean v7, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 5076
    :cond_1e
    return-object v12
.end method

.method private parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2818
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2820
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2822
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 2823
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 2824
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 2825
    goto :goto_0

    .line 2828
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2829
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2830
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2832
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2834
    .local v6, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2836
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    .line 2839
    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2840
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2841
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2842
    const/4 v5, 0x0

    return-object v5

    .line 2847
    :cond_3
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2848
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 2850
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    goto :goto_1

    .line 2851
    :cond_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2853
    .end local v2    # "nodeName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2855
    :cond_5
    return-object v0
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5585
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5587
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 5589
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 5590
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5591
    goto :goto_0

    .line 5594
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5595
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 5597
    const/4 v1, 0x0

    return v1

    .line 5601
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5602
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5603
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5601
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5605
    goto :goto_0

    .line 5612
    :cond_4
    return v3
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1474
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "debugPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1488
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 39
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1625
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1627
    .local v1, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 1628
    .local v2, "installLocation":I
    const/4 v3, 0x0

    .line 1629
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 1630
    .local v4, "versionCodeMajor":I
    const/4 v5, 0x0

    .line 1631
    .local v5, "targetSdkVersion":I
    const/4 v6, 0x1

    .line 1632
    .local v6, "minSdkVersion":I
    const/4 v7, 0x0

    .line 1633
    .local v7, "revisionCode":I
    const/4 v8, 0x0

    .line 1634
    .local v8, "coreApp":Z
    const/4 v9, 0x0

    .line 1635
    .local v9, "debuggable":Z
    const/16 v26, 0x0

    .line 1636
    .local v26, "profilableByShell":Z
    const/4 v10, 0x0

    .line 1637
    .local v10, "multiArch":Z
    const/4 v11, 0x0

    .line 1638
    .local v11, "use32bitAbi":Z
    const/4 v12, 0x1

    .line 1639
    .local v12, "extractNativeLibs":Z
    const/4 v13, 0x0

    .line 1640
    .local v13, "isolatedSplits":Z
    const/4 v14, 0x0

    .line 1641
    .local v14, "isFeatureSplit":Z
    const/4 v15, 0x0

    .line 1642
    .local v15, "isSplitRequired":Z
    const/16 v16, 0x0

    .line 1643
    .local v16, "useEmbeddedDex":Z
    const/16 v17, 0x0

    .line 1644
    .local v17, "configForSplit":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1645
    .local v18, "usesSplitName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1646
    .local v19, "targetPackage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1647
    .local v20, "overlayIsStatic":Z
    const/16 v21, 0x0

    .line 1648
    .local v21, "overlayPriority":I
    const/16 v22, 0x0

    .line 1650
    .local v22, "rollbackDataPolicy":I
    const/16 v23, 0x0

    .line 1651
    .local v23, "requiredSystemPropertyName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1653
    .local v24, "requiredSystemPropertyValue":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v31, v17

    move/from16 v17, v15

    move-object/from16 v15, v31

    move/from16 v31, v13

    move/from16 v13, v25

    .local v13, "i":I
    .local v15, "configForSplit":Ljava/lang/String;
    .local v17, "isSplitRequired":Z
    .local v31, "isolatedSplits":Z
    :goto_0
    move/from16 v25, v2

    .end local v2    # "installLocation":I
    .local v25, "installLocation":I
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v27, v3

    .end local v3    # "versionCode":I
    .local v27, "versionCode":I
    if-ge v13, v2, :cond_9

    .line 1654
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1655
    .local v2, "attr":Ljava/lang/String;
    const-string/jumbo v3, "installLocation"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1656
    const/4 v3, -0x1

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v2, v3

    move/from16 v3, v27

    .end local v25    # "installLocation":I
    .local v3, "installLocation":I
    goto/16 :goto_1

    .line 1658
    .end local v3    # "installLocation":I
    .restart local v25    # "installLocation":I
    :cond_0
    const-string/jumbo v3, "versionCode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1659
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move/from16 v2, v25

    .end local v27    # "versionCode":I
    .local v3, "versionCode":I
    goto/16 :goto_1

    .line 1660
    .end local v3    # "versionCode":I
    .restart local v27    # "versionCode":I
    :cond_1
    const/4 v3, 0x0

    const-string/jumbo v3, "versionCodeMajor"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1661
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v4, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v4    # "versionCodeMajor":I
    .local v3, "versionCodeMajor":I
    goto/16 :goto_1

    .line 1662
    .end local v3    # "versionCodeMajor":I
    .restart local v4    # "versionCodeMajor":I
    :cond_2
    const/4 v3, 0x0

    const-string/jumbo v3, "revisionCode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1663
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v7, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v7    # "revisionCode":I
    .local v3, "revisionCode":I
    goto/16 :goto_1

    .line 1664
    .end local v3    # "revisionCode":I
    .restart local v7    # "revisionCode":I
    :cond_3
    const/4 v3, 0x0

    const-string v3, "coreApp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1665
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move v8, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v8    # "coreApp":Z
    .local v3, "coreApp":Z
    goto :goto_1

    .line 1666
    .end local v3    # "coreApp":Z
    .restart local v8    # "coreApp":Z
    :cond_4
    const/4 v3, 0x0

    const-string/jumbo v3, "isolatedSplits"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1667
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move/from16 v31, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v31    # "isolatedSplits":Z
    .local v3, "isolatedSplits":Z
    goto :goto_1

    .line 1668
    .end local v3    # "isolatedSplits":Z
    .restart local v31    # "isolatedSplits":Z
    :cond_5
    const-string v3, "configForSplit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1669
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v15    # "configForSplit":Ljava/lang/String;
    .local v3, "configForSplit":Ljava/lang/String;
    goto :goto_1

    .line 1670
    .end local v3    # "configForSplit":Ljava/lang/String;
    .restart local v15    # "configForSplit":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "isFeatureSplit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1671
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move v14, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v14    # "isFeatureSplit":Z
    .local v3, "isFeatureSplit":Z
    goto :goto_1

    .line 1672
    .end local v3    # "isFeatureSplit":Z
    .restart local v14    # "isFeatureSplit":Z
    :cond_7
    const/4 v3, 0x0

    const-string/jumbo v3, "isSplitRequired"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1673
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move/from16 v17, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v17    # "isSplitRequired":Z
    .local v3, "isSplitRequired":Z
    goto :goto_1

    .line 1672
    .end local v3    # "isSplitRequired":Z
    .restart local v17    # "isSplitRequired":Z
    :cond_8
    move/from16 v2, v25

    move/from16 v3, v27

    .line 1653
    .end local v25    # "installLocation":I
    .end local v27    # "versionCode":I
    .local v2, "installLocation":I
    .local v3, "versionCode":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1679
    .end local v2    # "installLocation":I
    .end local v3    # "versionCode":I
    .end local v13    # "i":I
    .restart local v25    # "installLocation":I
    .restart local v27    # "versionCode":I
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1681
    .local v2, "searchDepth":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v36, v5

    move/from16 v35, v6

    move/from16 v30, v12

    move/from16 v29, v16

    move-object/from16 v16, v18

    move-object/from16 v5, v19

    move/from16 v37, v22

    move-object/from16 v6, v23

    move-object/from16 v12, v24

    .line 1682
    .end local v18    # "usesSplitName":Ljava/lang/String;
    .end local v19    # "targetPackage":Ljava/lang/String;
    .end local v22    # "rollbackDataPolicy":I
    .end local v23    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v24    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v5, "targetPackage":Ljava/lang/String;
    .local v6, "requiredSystemPropertyName":Ljava/lang/String;
    .local v12, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v13, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v16, "usesSplitName":Ljava/lang/String;
    .local v29, "useEmbeddedDex":Z
    .local v30, "extractNativeLibs":Z
    .local v35, "minSdkVersion":I
    .local v36, "targetSdkVersion":I
    .local v37, "rollbackDataPolicy":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move/from16 v38, v3

    move/from16 v19, v4

    .end local v4    # "versionCodeMajor":I
    .local v19, "versionCodeMajor":I
    .local v38, "type":I
    const-string v4, "PackageParser"

    move/from16 v22, v7

    const/4 v7, 0x1

    .end local v7    # "revisionCode":I
    .local v22, "revisionCode":I
    if-eq v3, v7, :cond_27

    const/4 v3, 0x3

    move/from16 v7, v38

    .end local v38    # "type":I
    .local v7, "type":I
    if-ne v7, v3, :cond_b

    .line 1683
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-lt v3, v2, :cond_a

    goto :goto_3

    :cond_a
    move/from16 v38, v2

    goto/16 :goto_e

    .line 1684
    :cond_b
    :goto_3
    const/4 v3, 0x3

    if-eq v7, v3, :cond_26

    const/4 v3, 0x4

    if-ne v7, v3, :cond_c

    .line 1685
    move/from16 v38, v2

    const/4 v4, 0x1

    goto/16 :goto_d

    .line 1688
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v2, :cond_d

    .line 1689
    move/from16 v38, v2

    const/4 v4, 0x1

    goto/16 :goto_d

    .line 1692
    :cond_d
    const-string/jumbo v3, "package-verifier"

    move/from16 v38, v2

    .end local v2    # "searchDepth":I
    .local v38, "searchDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1693
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    .line 1694
    .local v2, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v2, :cond_e

    .line 1695
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    .end local v2    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_f
    const-string v2, "application"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1698
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 1699
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1700
    .local v3, "attr":Ljava/lang/String;
    const-string v4, "debuggable"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1701
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_5

    .line 1700
    :cond_10
    const/4 v4, 0x0

    .line 1703
    :goto_5
    const-string/jumbo v4, "multiArch"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1704
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    goto :goto_6

    .line 1703
    :cond_11
    const/4 v4, 0x0

    .line 1706
    :goto_6
    const-string/jumbo v4, "use32bitAbi"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1707
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v11

    .line 1709
    :cond_12
    const-string v4, "extractNativeLibs"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1710
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v30

    .line 1712
    :cond_13
    const-string/jumbo v4, "useEmbeddedDex"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1713
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v29

    goto :goto_7

    .line 1712
    :cond_14
    const/4 v4, 0x0

    .line 1715
    :goto_7
    const-string/jumbo v4, "rollbackDataPolicy"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1716
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v37

    .line 1698
    .end local v3    # "attr":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    .end local v2    # "i":I
    goto/16 :goto_2

    .line 1719
    :cond_17
    const-string/jumbo v2, "overlay"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1720
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1721
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1722
    .restart local v3    # "attr":Ljava/lang/String;
    const-string/jumbo v4, "requiredSystemPropertyName"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1723
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 1724
    :cond_18
    const-string/jumbo v4, "requiredSystemPropertyValue"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1725
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 1726
    :cond_19
    const-string/jumbo v4, "targetPackage"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1727
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 1728
    :cond_1a
    const-string/jumbo v4, "isStatic"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1729
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_9

    .line 1730
    :cond_1b
    const/4 v4, 0x0

    const-string/jumbo v4, "priority"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1731
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v21

    .line 1720
    .end local v3    # "attr":Ljava/lang/String;
    :cond_1c
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    .end local v2    # "i":I
    goto/16 :goto_2

    .line 1734
    :cond_1e
    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1735
    if-eqz v16, :cond_1f

    .line 1736
    const-string v2, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v4, 0x1

    goto :goto_d

    .line 1740
    :cond_1f
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "name"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1741
    if-eqz v16, :cond_20

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1742
    :cond_20
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x6c

    const-string v4, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1746
    :cond_21
    const-string/jumbo v2, "uses-sdk"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1747
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1748
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1749
    .restart local v3    # "attr":Ljava/lang/String;
    const-string/jumbo v4, "targetSdkVersion"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1750
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v36

    goto :goto_b

    .line 1749
    :cond_22
    const/4 v4, 0x0

    .line 1753
    :goto_b
    const-string/jumbo v4, "minSdkVersion"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1754
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v35

    goto :goto_c

    .line 1753
    :cond_23
    const/4 v4, 0x1

    .line 1747
    .end local v3    # "attr":Ljava/lang/String;
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    const/4 v4, 0x1

    move v3, v4

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    .end local v2    # "i":I
    goto/16 :goto_2

    .line 1746
    :cond_25
    const/4 v4, 0x1

    goto :goto_d

    .line 1684
    .end local v38    # "searchDepth":I
    .local v2, "searchDepth":I
    :cond_26
    move/from16 v38, v2

    const/4 v4, 0x1

    .line 1682
    .end local v2    # "searchDepth":I
    .end local v7    # "type":I
    .restart local v38    # "searchDepth":I
    :goto_d
    move v3, v4

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    goto/16 :goto_2

    .restart local v2    # "searchDepth":I
    .local v38, "type":I
    :cond_27
    move/from16 v7, v38

    move/from16 v38, v2

    .line 1761
    .end local v2    # "searchDepth":I
    .restart local v7    # "type":I
    .local v38, "searchDepth":I
    :goto_e
    invoke-static {v6, v12}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, ": overlay ignored due to required system property: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/4 v5, 0x0

    .line 1767
    const/16 v20, 0x0

    .line 1768
    const/16 v21, 0x0

    move-object/from16 v32, v5

    move/from16 v33, v20

    move/from16 v34, v21

    goto :goto_f

    .line 1761
    :cond_28
    move-object/from16 v3, p0

    move-object/from16 v32, v5

    move/from16 v33, v20

    move/from16 v34, v21

    .line 1771
    .end local v5    # "targetPackage":Ljava/lang/String;
    .end local v20    # "overlayIsStatic":Z
    .end local v21    # "overlayPriority":I
    .local v32, "targetPackage":Ljava/lang/String;
    .local v33, "overlayIsStatic":Z
    .local v34, "overlayPriority":I
    :goto_f
    move/from16 v18, v27

    move/from16 v27, v10

    .end local v10    # "multiArch":Z
    .local v18, "versionCode":I
    .local v27, "multiArch":Z
    new-instance v10, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v23, p3

    move/from16 v24, v8

    move/from16 v28, v11

    move/from16 v20, v22

    move/from16 v21, v25

    move-object v11, v3

    move/from16 v25, v9

    move-object/from16 v22, v13

    move-object v13, v2

    .end local v8    # "coreApp":Z
    .end local v9    # "debuggable":Z
    .end local v11    # "use32bitAbi":Z
    .end local v12    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v13    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v0, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v20, "revisionCode":I
    .local v21, "installLocation":I
    .local v22, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v24, "coreApp":Z
    .local v25, "debuggable":Z
    .local v28, "use32bitAbi":Z
    invoke-direct/range {v10 .. v37}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V

    return-object v10
.end method

.method private static parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 9
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1493
    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "apkPath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 1496
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 1499
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Failed to parse "

    if-eqz p1, :cond_1

    .line 1500
    :try_start_0
    invoke-static {p1, p2, v4, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_1

    .line 1501
    :cond_1
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    move-object v2, v6

    .line 1505
    nop

    .line 1507
    :try_start_1
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v2, v6}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v1, v6

    .line 1510
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_3

    .line 1512
    new-instance v6, Landroid/content/pm/PackageParser$Package;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v6, "tempPkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    .line 1514
    .local v4, "skipVerify":Z
    :cond_2
    const-string v3, "collectCertificates"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1516
    :try_start_2
    invoke-static {v6, p0, v4}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1518
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1519
    nop

    .line 1520
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1521
    .end local v4    # "skipVerify":Z
    .end local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .local v3, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_2

    .line 1518
    .end local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .restart local v4    # "skipVerify":Z
    .restart local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1519
    nop

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v3

    .line 1522
    .end local v4    # "skipVerify":Z
    .end local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :cond_3
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1525
    .restart local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_2
    move-object v4, v1

    .line 1526
    .local v4, "attrs":Landroid/util/AttributeSet;
    invoke-static {v0, v1, v4, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1533
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1534
    if-eqz v2, :cond_4

    .line 1536
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1538
    goto :goto_3

    .line 1537
    :catchall_1
    move-exception v6

    .line 1526
    :cond_4
    :goto_3
    return-object v5

    .line 1533
    .end local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    :catchall_2
    move-exception v3

    goto :goto_5

    .line 1528
    :catch_0
    move-exception v3

    goto :goto_4

    .line 1502
    :catch_1
    move-exception v3

    .line 1503
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x64

    invoke-direct {v4, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1529
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v3, "e":Ljava/lang/Exception;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_4
    :try_start_6
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1530
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x66

    invoke-direct {v4, v6, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1533
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1534
    if-eqz v2, :cond_5

    .line 1536
    :try_start_7
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1538
    goto :goto_6

    .line 1537
    :catchall_3
    move-exception v4

    .line 1541
    :cond_5
    :goto_6
    throw v3
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1215
    .local v2, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1216
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    const/16 v3, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1218
    .local v3, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 1216
    .end local v3    # "end":I
    :cond_0
    move-object v7, v0

    .line 1221
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v7, "volumeUuid":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1222
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1226
    const/4 v1, 0x0

    .line 1228
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    .line 1229
    .local v8, "cookie":I
    if-eqz v8, :cond_2

    .line 1233
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1234
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources;

    iget-object v1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v5, 0x0

    invoke-direct {v3, p2, v1, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1236
    .local v3, "res":Landroid/content/res/Resources;
    new-array v6, v0, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1237
    .local v6, "outError":[Ljava/lang/String;
    move-object v1, p0

    move v5, p3

    .end local p3    # "flags":I
    .local v5, "flags":I
    :try_start_2
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    move-object v3, v2

    move-object v2, v1

    .line 1238
    .end local v2    # "apkPath":Ljava/lang/String;
    .local v0, "res":Landroid/content/res/Resources;
    .local v3, "apkPath":Ljava/lang/String;
    .local p3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz p3, :cond_1

    .line 1243
    :try_start_3
    invoke-virtual {p3, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p3, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p3, v3}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1246
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p3, v1}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1248
    nop

    .line 1256
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1248
    return-object p3

    .line 1256
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v6    # "outError":[Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto/16 :goto_3

    .line 1252
    :catch_0
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto/16 :goto_1

    .line 1250
    :catch_1
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto/16 :goto_2

    .line 1239
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v6    # "outError":[Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v9, v2, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1240
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw v1
    :try_end_4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1256
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v6    # "outError":[Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "apkPath":Ljava/lang/String;
    goto/16 :goto_3

    .line 1252
    .end local v3    # "apkPath":Ljava/lang/String;
    .restart local v2    # "apkPath":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "apkPath":Ljava/lang/String;
    goto/16 :goto_1

    .line 1250
    .end local v3    # "apkPath":Ljava/lang/String;
    .restart local v2    # "apkPath":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "apkPath":Ljava/lang/String;
    goto/16 :goto_2

    .line 1256
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .restart local v2    # "apkPath":Ljava/lang/String;
    .local p3, "flags":I
    :catchall_2
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    goto/16 :goto_3

    .line 1252
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_4
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    goto :goto_1

    .line 1250
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_5
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    move-object v1, v4

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    goto :goto_2

    .line 1230
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "flags":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p3    # "flags":I
    :cond_2
    move v5, p3

    move-object v3, v2

    move-object v2, p0

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    :try_start_5
    new-instance p3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x65

    invoke-direct {p3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw p3
    :try_end_5
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1252
    .end local v8    # "cookie":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catch_6
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .line 1250
    :catch_7
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .line 1256
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catchall_3
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    goto :goto_3

    .line 1252
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_8
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    .line 1253
    .end local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .local p3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read manifest from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x66

    invoke-direct {v0, v6, v4, p3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw v0

    .line 1250
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .local p3, "flags":I
    :catch_9
    move-exception v0

    move v5, p3

    move-object v3, v2

    move-object v2, p0

    move-object p3, v0

    .line 1251
    .end local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .local p3, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_2
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1256
    .end local p3    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catchall_4
    move-exception v0

    move-object p3, v0

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1257
    throw p3
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1870
    const/16 v2, -0x6a

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1871
    .local v0, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v8, v4

    .line 1872
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    .line 1874
    .local v9, "splitName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 1875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected base APK, but found split "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v6

    .line 1876
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    return-object v3

    .line 1882
    .end local v0    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    nop

    .line 1884
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v8}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1889
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1891
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 1893
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1894
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1896
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1898
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1899
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1902
    :cond_1
    const-string v7, "coreApp"

    invoke-interface {p3, v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1904
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1906
    .local v10, "isolatedSplits":Z
    if-eqz v10, :cond_2

    .line 1907
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v11, 0x8000

    or-int/2addr v7, v11

    iput v7, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1910
    :cond_2
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 1912
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v7, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1913
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1915
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1916
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1918
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1920
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1922
    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    return-object v3

    .line 1879
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "splitName":Ljava/lang/String;
    .end local v10    # "isolatedSplits":Z
    :catch_0
    move-exception v0

    .line 1880
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1881
    return-object v3
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 10
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1797
    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1798
    .local v7, "childPackageName":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1799
    const/16 v1, -0x6a

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1800
    return v9

    .line 1804
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x6c

    const-string v3, "PackageParser"

    if-eqz v1, :cond_1

    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1807
    .local v1, "message":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    aput-object v1, p5, v9

    .line 1809
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1810
    return v9

    .line 1814
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate child package:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1816
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    aput-object v1, p5, v9

    .line 1818
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1819
    return v9

    .line 1823
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v2, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1827
    iget v2, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1828
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1829
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1830
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1832
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1833
    if-nez v1, :cond_3

    .line 1835
    return v9

    .line 1839
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1842
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1845
    return v8
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 35
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1947
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1950
    const/4 v5, 0x0

    .line 1952
    .local v5, "foundApp":Z
    sget-object v6, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1955
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1957
    .local v8, "maxSdkVersion":I
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 1960
    const/4 v9, 0x3

    const/4 v11, 0x1

    if-eqz v8, :cond_0

    sget v12, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v8, v12, :cond_2

    .line 1961
    :cond_0
    invoke-virtual {v6, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 1963
    .local v12, "str":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 1964
    invoke-static {v12, v11, v11}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 1965
    .local v13, "nameError":Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v14, "android"

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1966
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p6, v10

    .line 1968
    const/16 v9, -0x6b

    iput v9, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1969
    return-object v0

    .line 1971
    :cond_1
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1972
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1977
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "nameError":Ljava/lang/String;
    :cond_2
    const/4 v12, -0x1

    const/4 v13, 0x4

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    iput v12, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1980
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v14, v12, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1982
    const/4 v12, 0x7

    invoke-virtual {v6, v12, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 1985
    .local v14, "targetSandboxVersion":I
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v14, v15, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1988
    and-int/lit8 v15, p5, 0x8

    if-eqz v15, :cond_3

    .line 1989
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x40000

    or-int v0, v0, v17

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 1988
    :cond_3
    move-object/from16 v16, v0

    .line 1993
    :goto_0
    const/4 v0, 0x1

    .line 1994
    .local v0, "supportsSmallScreens":I
    const/4 v15, 0x1

    .line 1995
    .local v15, "supportsNormalScreens":I
    const/16 v17, 0x1

    .line 1996
    .local v17, "supportsLargeScreens":I
    const/16 v18, 0x1

    .line 1997
    .local v18, "supportsXLargeScreens":I
    const/16 v19, 0x1

    .line 1998
    .local v19, "resizeable":I
    const/16 v20, 0x1

    .line 2000
    .local v20, "anyDensity":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v20

    move-object/from16 v18, v6

    move/from16 v6, v17

    move/from16 v17, v5

    move v5, v15

    move v15, v0

    .line 2001
    .end local v0    # "supportsSmallScreens":I
    .end local v19    # "resizeable":I
    .end local v20    # "anyDensity":I
    .local v5, "supportsNormalScreens":I
    .local v6, "supportsLargeScreens":I
    .local v12, "outerDepth":I
    .local v15, "supportsSmallScreens":I
    .local v17, "foundApp":Z
    .local v18, "sa":Landroid/content/res/TypedArray;
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .local v23, "anyDensity":I
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v19, v0

    .local v19, "type":I
    const-string v10, "PackageParser"

    if-eq v0, v11, :cond_4a

    move/from16 v11, v19

    .end local v19    # "type":I
    .local v11, "type":I
    if-ne v11, v9, :cond_5

    .line 2002
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v26, v8

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v11, v5

    move v12, v6

    goto/16 :goto_11

    .line 2003
    :cond_5
    :goto_2
    if-eq v11, v9, :cond_49

    if-ne v11, v13, :cond_6

    .line 2004
    move v11, v5

    move/from16 v26, v8

    move/from16 v25, v9

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v12, v6

    goto/16 :goto_10

    .line 2007
    :cond_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2009
    .local v0, "tagName":Ljava/lang/String;
    const-string v13, " "

    const-string v9, " at "

    if-eqz v7, :cond_7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2012
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2010
    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2014
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v6

    goto/16 :goto_10

    .line 2017
    :cond_7
    const-string v2, "application"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2018
    if-eqz v17, :cond_8

    .line 2024
    const-string v2, "<manifest> has more than one <application>"

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2026
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v6

    goto/16 :goto_10

    .line 2030
    :cond_8
    const/4 v9, 0x1

    .line 2031
    .end local v17    # "foundApp":Z
    .local v9, "foundApp":Z
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v10, v5

    move/from16 v17, v6

    move/from16 v5, p5

    move-object/from16 v6, p6

    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .local v10, "supportsNormalScreens":I
    .local v17, "supportsLargeScreens":I
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2032
    return-object v16

    .line 2031
    :cond_9
    move/from16 v26, v8

    move v5, v10

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v6, v17

    const/16 v25, 0x3

    move/from16 v17, v9

    goto/16 :goto_f

    .line 2034
    .end local v9    # "foundApp":Z
    .end local v10    # "supportsNormalScreens":I
    .restart local v5    # "supportsNormalScreens":I
    .restart local v6    # "supportsLargeScreens":I
    .local v17, "foundApp":Z
    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v7, v5

    move v5, v6

    move-object/from16 v6, p6

    .end local v6    # "supportsLargeScreens":I
    .local v5, "supportsLargeScreens":I
    .local v7, "supportsNormalScreens":I
    move/from16 v26, v5

    .end local v5    # "supportsLargeScreens":I
    .local v26, "supportsLargeScreens":I
    const-string/jumbo v5, "overlay"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v27, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v27, "tagName":Ljava/lang/String;
    const/4 v0, 0x2

    if-eqz v5, :cond_f

    .line 2035
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2037
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2039
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 2041
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2043
    const/4 v0, 0x0

    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2046
    const/4 v9, 0x4

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2049
    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    .local v0, "propName":Ljava/lang/String;
    const/4 v9, 0x6

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2055
    .local v9, "propValue":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2057
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    move-object/from16 v18, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    const/16 v5, -0x6c

    if-nez v13, :cond_b

    .line 2058
    const-string v10, "<overlay> does not specify a target package"

    const/16 v20, 0x0

    aput-object v10, v6, v20

    .line 2059
    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2060
    return-object v16

    .line 2063
    :cond_b
    iget v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v13, :cond_e

    iget v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v13, v5, :cond_c

    goto :goto_3

    .line 2071
    :cond_c
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping target and overlay pair "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " and "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": overlay ignored due to required system property: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " with value: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const/16 v5, -0x7d

    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2076
    return-object v16

    .line 2079
    :cond_d
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v13, 0x10000000

    or-int/2addr v10, v13

    iput v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2082
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2084
    .end local v0    # "propName":Ljava/lang/String;
    .end local v9    # "propValue":Ljava/lang/String;
    move v5, v7

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v6, v26

    const/16 v25, 0x3

    move/from16 v26, v8

    goto/16 :goto_f

    .line 2064
    .restart local v0    # "propName":Ljava/lang/String;
    .restart local v9    # "propValue":Ljava/lang/String;
    :cond_e
    :goto_3
    const-string v5, "<overlay> priority must be between 0 and 9999"

    const/16 v20, 0x0

    aput-object v5, v6, v20

    .line 2065
    const/16 v5, -0x6c

    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2067
    return-object v16

    .line 2084
    .end local v0    # "propName":Ljava/lang/String;
    .end local v9    # "propValue":Ljava/lang/String;
    :cond_f
    move-object/from16 v5, v27

    .end local v27    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "key-sets"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2085
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2086
    return-object v16

    .line 2085
    :cond_10
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v12, v26

    const/16 v25, 0x3

    move v11, v7

    move/from16 v26, v8

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_e

    .line 2088
    :cond_11
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2089
    move-object v0, v5

    move-object v5, v4

    move-object v4, v3

    move/from16 v3, p5

    .end local v5    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v9

    move-object v3, v4

    move-object v4, v5

    if-nez v9, :cond_12

    .line 2090
    return-object v16

    .line 2089
    :cond_12
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v12, v26

    const/16 v25, 0x3

    move v11, v7

    move/from16 v26, v8

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_e

    .line 2092
    .end local v0    # "tagName":Ljava/lang/String;
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_13
    move-object v0, v5

    move/from16 v5, v26

    .end local v26    # "supportsLargeScreens":I
    .restart local v0    # "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    move/from16 v26, v8

    .end local v8    # "maxSdkVersion":I
    .local v26, "maxSdkVersion":I
    const-string/jumbo v8, "permission"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2093
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 2094
    return-object v16

    .line 2093
    :cond_14
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_e

    .line 2096
    :cond_15
    const-string/jumbo v8, "permission-tree"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2097
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2098
    return-object v16

    .line 2097
    :cond_16
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_e

    .line 2100
    :cond_17
    const-string/jumbo v8, "uses-permission"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2101
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 2102
    return-object v16

    .line 2101
    :cond_18
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_e

    .line 2104
    :cond_19
    const-string/jumbo v8, "uses-permission-sdk-m"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 2105
    const-string/jumbo v8, "uses-permission-sdk-23"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move-object v14, v0

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_d

    .line 2109
    :cond_1a
    const-string/jumbo v8, "uses-configuration"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2110
    new-instance v8, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v8}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2111
    .local v8, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2113
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v8, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2116
    move/from16 v19, v11

    const/4 v13, 0x1

    .end local v11    # "type":I
    .restart local v19    # "type":I
    invoke-virtual {v9, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v8, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2119
    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 2122
    iget v11, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v11, v13

    iput v11, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2124
    :cond_1b
    const/4 v11, 0x3

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v8, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2127
    const/4 v11, 0x4

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 2130
    iget v10, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    const/16 v27, 0x2

    or-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2132
    :cond_1c
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2133
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2135
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2137
    .end local v8    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move v6, v5

    move v5, v7

    move-object/from16 v18, v9

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    goto/16 :goto_f

    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "type":I
    .restart local v11    # "type":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_1d
    move/from16 v19, v11

    .end local v11    # "type":I
    .restart local v19    # "type":I
    const-string/jumbo v8, "uses-feature"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 2138
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v8

    .line 2139
    .local v8, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2141
    iget-object v9, v8, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_1e

    .line 2142
    new-instance v9, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v9}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2143
    .local v9, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v10, v8, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v10, v9, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2144
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2147
    .end local v9    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1e
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2149
    .end local v8    # "fi":Landroid/content/pm/FeatureInfo;
    move v11, v7

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v5

    goto/16 :goto_e

    :cond_1f
    const-string v11, "feature-group"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 2150
    new-instance v11, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v11}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2151
    .local v11, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v27, 0x0

    .line 2152
    .local v27, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    move-object/from16 v30, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v30, "tagName":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    move/from16 v31, v12

    move-object/from16 v12, v27

    .line 2153
    .end local v27    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v0, "innerDepth":I
    .local v12, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v31, "outerDepth":I
    :goto_4
    move/from16 v32, v14

    .end local v14    # "targetSandboxVersion":I
    .local v32, "targetSandboxVersion":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v27, v14

    move/from16 v33, v5

    const/4 v5, 0x1

    .end local v5    # "supportsLargeScreens":I
    .end local v19    # "type":I
    .local v27, "type":I
    .local v33, "supportsLargeScreens":I
    if-eq v14, v5, :cond_25

    move-object/from16 v14, v30

    .end local v30    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    move/from16 v29, v7

    move/from16 v5, v27

    const/4 v7, 0x3

    .end local v7    # "supportsNormalScreens":I
    .end local v27    # "type":I
    .local v5, "type":I
    .local v29, "supportsNormalScreens":I
    if-ne v5, v7, :cond_21

    .line 2154
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_20

    goto :goto_5

    :cond_20
    move/from16 v27, v0

    move/from16 v28, v5

    goto/16 :goto_8

    .line 2155
    :cond_21
    :goto_5
    const/4 v7, 0x3

    if-eq v5, v7, :cond_24

    const/4 v7, 0x4

    if-ne v5, v7, :cond_22

    .line 2156
    move/from16 v27, v0

    move/from16 v28, v5

    goto :goto_7

    .line 2159
    :cond_22
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2160
    .local v7, "innerTagName":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 2161
    move/from16 v27, v0

    .end local v0    # "innerDepth":I
    .local v27, "innerDepth":I
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2164
    .local v0, "featureInfo":Landroid/content/pm/FeatureInfo;
    move/from16 v28, v5

    .end local v5    # "type":I
    .local v28, "type":I
    iget v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v19, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2165
    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2166
    .end local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    move-object v12, v0

    goto :goto_6

    .line 2167
    .end local v27    # "innerDepth":I
    .end local v28    # "type":I
    .local v0, "innerDepth":I
    .restart local v5    # "type":I
    .restart local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    :cond_23
    move/from16 v27, v0

    move/from16 v28, v5

    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v27    # "innerDepth":I
    .restart local v28    # "type":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2169
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :goto_6
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2172
    .end local v7    # "innerTagName":Ljava/lang/String;
    move-object/from16 v30, v14

    move/from16 v0, v27

    move/from16 v19, v28

    move/from16 v7, v29

    move/from16 v14, v32

    move/from16 v5, v33

    goto/16 :goto_4

    .line 2155
    .end local v27    # "innerDepth":I
    .end local v28    # "type":I
    .restart local v0    # "innerDepth":I
    .restart local v5    # "type":I
    :cond_24
    move/from16 v27, v0

    move/from16 v28, v5

    .line 2153
    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v27    # "innerDepth":I
    .restart local v28    # "type":I
    :goto_7
    move-object/from16 v30, v14

    move/from16 v0, v27

    move/from16 v19, v28

    move/from16 v7, v29

    move/from16 v14, v32

    move/from16 v5, v33

    goto/16 :goto_4

    .end local v14    # "tagName":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v29    # "supportsNormalScreens":I
    .restart local v0    # "innerDepth":I
    .local v7, "supportsNormalScreens":I
    .local v27, "type":I
    .restart local v30    # "tagName":Ljava/lang/String;
    :cond_25
    move/from16 v29, v7

    move/from16 v28, v27

    move-object/from16 v14, v30

    move/from16 v27, v0

    .line 2174
    .end local v0    # "innerDepth":I
    .end local v7    # "supportsNormalScreens":I
    .end local v30    # "tagName":Ljava/lang/String;
    .restart local v14    # "tagName":Ljava/lang/String;
    .local v27, "innerDepth":I
    .restart local v28    # "type":I
    .restart local v29    # "supportsNormalScreens":I
    :goto_8
    if-eqz v12, :cond_26

    .line 2175
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2176
    iget-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2178
    :cond_26
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v0, v11}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2180
    .end local v11    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v27    # "innerDepth":I
    move/from16 v19, v28

    move/from16 v5, v29

    move/from16 v6, v33

    const/16 v25, 0x3

    goto/16 :goto_f

    .end local v28    # "type":I
    .end local v29    # "supportsNormalScreens":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .end local v33    # "supportsLargeScreens":I
    .local v0, "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    .restart local v7    # "supportsNormalScreens":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .restart local v19    # "type":I
    :cond_27
    move/from16 v33, v5

    move/from16 v29, v7

    move/from16 v31, v12

    move/from16 v32, v14

    move-object v14, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "supportsLargeScreens":I
    .end local v7    # "supportsNormalScreens":I
    .end local v12    # "outerDepth":I
    .local v14, "tagName":Ljava/lang/String;
    .restart local v29    # "supportsNormalScreens":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    .restart local v33    # "supportsLargeScreens":I
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2181
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_2f

    .line 2182
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2185
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    .line 2186
    .local v5, "minVers":I
    const/4 v7, 0x0

    .line 2187
    .local v7, "minCode":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2188
    .local v8, "targetVers":I
    const/4 v9, 0x0

    .line 2190
    .local v9, "targetCode":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2192
    .local v11, "val":Landroid/util/TypedValue;
    if-eqz v11, :cond_29

    .line 2193
    iget v10, v11, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_28

    iget-object v10, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v10, :cond_28

    .line 2194
    iget-object v10, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 2197
    :cond_28
    iget v5, v11, Landroid/util/TypedValue;->data:I

    .line 2201
    :cond_29
    :goto_9
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 2203
    .end local v11    # "val":Landroid/util/TypedValue;
    .local v10, "val":Landroid/util/TypedValue;
    if-eqz v10, :cond_2b

    .line 2204
    iget v11, v10, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2a

    iget-object v11, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v11, :cond_2a

    .line 2205
    iget-object v11, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2206
    if-nez v7, :cond_2c

    .line 2207
    move-object v7, v9

    goto :goto_a

    .line 2211
    :cond_2a
    iget v8, v10, Landroid/util/TypedValue;->data:I

    goto :goto_a

    .line 2214
    :cond_2b
    move v8, v5

    .line 2215
    move-object v9, v7

    .line 2218
    :cond_2c
    :goto_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2220
    sget v11, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v12, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5, v7, v11, v12, v6}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2222
    .local v11, "minSdkVersion":I
    const/16 v12, -0xc

    if-gez v11, :cond_2d

    .line 2223
    iput v12, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2224
    return-object v16

    .line 2227
    :cond_2d
    sget-object v13, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v8, v9, v13, v6}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2229
    .local v13, "targetSdkVersion":I
    if-gez v13, :cond_2e

    .line 2230
    iput v12, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2231
    return-object v16

    .line 2234
    :cond_2e
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v11, v12, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2235
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v18, v0

    .line 2238
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "minVers":I
    .end local v7    # "minCode":Ljava/lang/String;
    .end local v8    # "targetVers":I
    .end local v9    # "targetCode":Ljava/lang/String;
    .end local v10    # "val":Landroid/util/TypedValue;
    .end local v11    # "minSdkVersion":I
    .end local v13    # "targetSdkVersion":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_2f
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v5, v29

    move/from16 v6, v33

    const/16 v25, 0x3

    goto/16 :goto_f

    .line 2240
    :cond_30
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2241
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2244
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2247
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x7

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2250
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2256
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 2259
    .end local v15    # "supportsSmallScreens":I
    .local v5, "supportsSmallScreens":I
    move/from16 v11, v29

    const/4 v9, 0x2

    .end local v29    # "supportsNormalScreens":I
    .local v11, "supportsNormalScreens":I
    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 2262
    .end local v11    # "supportsNormalScreens":I
    .local v9, "supportsNormalScreens":I
    move/from16 v12, v33

    const/4 v10, 0x3

    .end local v33    # "supportsLargeScreens":I
    .local v12, "supportsLargeScreens":I
    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 2265
    .end local v12    # "supportsLargeScreens":I
    .local v11, "supportsLargeScreens":I
    move/from16 v12, v21

    const/4 v13, 0x5

    .end local v21    # "supportsXLargeScreens":I
    .local v12, "supportsXLargeScreens":I
    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 2268
    move/from16 v13, v22

    const/4 v15, 0x4

    .end local v22    # "resizeable":I
    .local v13, "resizeable":I
    invoke-virtual {v0, v15, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 2271
    move/from16 v15, v23

    const/4 v7, 0x0

    .end local v23    # "anyDensity":I
    .local v15, "anyDensity":I
    invoke-virtual {v0, v7, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 2275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2277
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v18, v0

    move/from16 v25, v10

    move v6, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v15

    move v15, v5

    move v5, v9

    goto/16 :goto_f

    .line 2279
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "supportsSmallScreens":I
    .end local v9    # "supportsNormalScreens":I
    .end local v11    # "supportsLargeScreens":I
    .end local v12    # "supportsXLargeScreens":I
    .end local v13    # "resizeable":I
    .local v15, "supportsSmallScreens":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "supportsXLargeScreens":I
    .restart local v22    # "resizeable":I
    .restart local v23    # "anyDensity":I
    .restart local v29    # "supportsNormalScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_31
    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v11, v29

    move/from16 v12, v33

    const/4 v8, 0x1

    const/16 v25, 0x3

    .end local v23    # "anyDensity":I
    .end local v29    # "supportsNormalScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2280
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2285
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2288
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2290
    if-eqz v5, :cond_33

    .line 2291
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v9, :cond_32

    .line 2292
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2294
    :cond_32
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 2295
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2299
    :cond_33
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2301
    .end local v5    # "name":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_f

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_34
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2302
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_48

    .line 2303
    return-object v16

    .line 2305
    :cond_35
    const-string/jumbo v0, "original-package"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2306
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2309
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2311
    .local v5, "orig":Ljava/lang/String;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 2312
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v9, :cond_36

    .line 2313
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2314
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2316
    :cond_36
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    :cond_37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2321
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2323
    .end local v5    # "orig":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_f

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_38
    const-string v0, "adopt-permissions"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2324
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2327
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2330
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2332
    if-eqz v5, :cond_3a

    .line 2333
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v9, :cond_39

    .line 2334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2336
    :cond_39
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    :cond_3a
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2341
    .end local v5    # "name":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_f

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_3b
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2343
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2344
    goto/16 :goto_10

    .line 2346
    :cond_3c
    const-string v0, "compatible-screens"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2348
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2349
    goto/16 :goto_10

    .line 2350
    :cond_3d
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2351
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2352
    goto/16 :goto_10

    .line 2354
    :cond_3e
    const-string v0, "eat-comment"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2356
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2357
    goto/16 :goto_10

    .line 2359
    :cond_3f
    const-string/jumbo v0, "package"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2360
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_40

    .line 2361
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2362
    goto/16 :goto_10

    .line 2364
    :cond_40
    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2366
    return-object v16

    .line 2369
    :cond_41
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2370
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_44

    .line 2371
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2373
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2375
    .local v5, "hash":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2377
    move-object/from16 v6, v16

    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2378
    if-eqz v5, :cond_43

    .line 2379
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2380
    .local v6, "hashLength":I
    div-int/lit8 v9, v6, 0x2

    new-array v9, v9, [B

    .line 2381
    .local v9, "hashBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    if-ge v10, v6, :cond_42

    .line 2382
    div-int/lit8 v13, v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v18, v0

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    const/16 v0, 0x10

    invoke-static {v8, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/16 v24, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v10, 0x1

    .line 2383
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object/from16 v27, v5

    const/16 v5, 0x10

    .end local v5    # "hash":Ljava/lang/String;
    .local v27, "hash":Ljava/lang/String;
    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    add-int/2addr v8, v0

    int-to-byte v0, v8

    aput-byte v0, v9, v13

    .line 2381
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, v18

    move-object/from16 v5, v27

    const/4 v8, 0x1

    goto :goto_b

    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "hash":Ljava/lang/String;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "hash":Ljava/lang/String;
    :cond_42
    move-object/from16 v18, v0

    move-object/from16 v27, v5

    .line 2385
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "hash":Ljava/lang/String;
    .end local v10    # "i":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v27    # "hash":Ljava/lang/String;
    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    goto :goto_c

    .line 2378
    .end local v6    # "hashLength":I
    .end local v9    # "hashBytes":[B
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "hash":Ljava/lang/String;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "hash":Ljava/lang/String;
    :cond_43
    move-object/from16 v18, v0

    move-object/from16 v27, v5

    .line 2389
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "hash":Ljava/lang/String;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_44
    :goto_c
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    const/16 v16, 0x0

    move/from16 v22, v21

    move/from16 v21, v7

    goto :goto_f

    .line 2398
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <manifest>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2400
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2398
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2402
    const/16 v16, 0x0

    goto :goto_10

    .line 2104
    .end local v19    # "type":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .local v0, "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    .local v7, "supportsNormalScreens":I
    .local v11, "type":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    :cond_46
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move-object v14, v0

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    .line 2106
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "supportsLargeScreens":I
    .end local v23    # "anyDensity":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v14, "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_d
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2107
    const/16 v16, 0x0

    return-object v16

    .line 2106
    :cond_47
    const/16 v16, 0x0

    .line 2404
    .end local v19    # "type":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .local v7, "supportsNormalScreens":I
    .local v8, "maxSdkVersion":I
    .local v11, "type":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    .local v26, "supportsLargeScreens":I
    :cond_48
    :goto_e
    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    .end local v7    # "supportsNormalScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .end local v14    # "targetSandboxVersion":I
    .local v5, "supportsNormalScreens":I
    .local v6, "supportsLargeScreens":I
    .restart local v19    # "type":I
    .local v26, "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_f
    move-object/from16 v7, p2

    move/from16 v9, v25

    move/from16 v8, v26

    move/from16 v12, v31

    move/from16 v14, v32

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x4

    goto/16 :goto_1

    .line 2003
    .end local v19    # "type":I
    .end local v26    # "maxSdkVersion":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .restart local v8    # "maxSdkVersion":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    .restart local v14    # "targetSandboxVersion":I
    :cond_49
    move/from16 v26, v8

    move/from16 v25, v9

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v11, v5

    move v12, v6

    .line 2001
    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v14    # "targetSandboxVersion":I
    .end local v23    # "anyDensity":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_10
    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v9, v25

    move/from16 v8, v26

    move/from16 v12, v31

    move/from16 v14, v32

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x4

    move/from16 v22, v21

    move/from16 v21, v7

    move-object/from16 v7, p2

    goto/16 :goto_1

    .end local v7    # "supportsXLargeScreens":I
    .end local v11    # "supportsNormalScreens":I
    .end local v26    # "maxSdkVersion":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .restart local v5    # "supportsNormalScreens":I
    .restart local v6    # "supportsLargeScreens":I
    .restart local v8    # "maxSdkVersion":I
    .local v12, "outerDepth":I
    .restart local v14    # "targetSandboxVersion":I
    .restart local v19    # "type":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    :cond_4a
    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v12, v6

    .line 2406
    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v14    # "targetSandboxVersion":I
    .end local v23    # "anyDensity":I
    .restart local v7    # "supportsXLargeScreens":I
    .restart local v11    # "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_11
    if-nez v17, :cond_4b

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4b

    .line 2407
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/16 v20, 0x0

    aput-object v0, p6, v20

    .line 2408
    const/16 v0, -0x6d

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2411
    :cond_4b
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v5, v0

    .line 2412
    .local v5, "NP":I
    const/4 v0, 0x0

    .line 2413
    .local v0, "newPermsMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move/from16 v34, v6

    move-object v6, v0

    move/from16 v0, v34

    .local v0, "ip":I
    .local v6, "newPermsMsg":Ljava/lang/StringBuilder;
    :goto_12
    if-ge v0, v5, :cond_4f

    .line 2414
    sget-object v8, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v8, v8, v0

    .line 2416
    .local v8, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v9, v13, :cond_4c

    .line 2417
    goto :goto_14

    .line 2419
    :cond_4c
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 2420
    if-nez v6, :cond_4d

    .line 2421
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v9

    .line 2422
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    const-string v9, ": compat added "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 2425
    :cond_4d
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2427
    :goto_13
    iget-object v9, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    .end local v8    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2432
    .end local v0    # "ip":I
    :cond_4f
    :goto_14
    if-eqz v6, :cond_50

    .line 2433
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_50
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 2441
    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    goto :goto_15

    .line 2442
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catch_0
    move-exception v0

    .line 2443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    .line 2446
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 2447
    .local v8, "splitPermissionsSize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2449
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_16
    if-ge v10, v8, :cond_51

    .line 2450
    nop

    .line 2451
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2452
    .local v13, "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    new-instance v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2453
    move-object/from16 v16, v0

    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v16, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v0

    .line 2454
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v1

    .line 2455
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v3

    invoke-direct {v14, v0, v1, v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 2452
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    .end local v13    # "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v0, v16

    goto :goto_16

    .end local v16    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .restart local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :cond_51
    move-object/from16 v16, v0

    .line 2459
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v10    # "index":I
    .restart local v16    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 2460
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_17
    if-ge v1, v0, :cond_56

    .line 2461
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2462
    .local v3, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v13

    if-ge v10, v13, :cond_55

    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2463
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 2464
    move/from16 v20, v0

    goto :goto_19

    .line 2466
    :cond_52
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v10

    .line 2467
    .local v10, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "in":I
    :goto_18
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_54

    .line 2468
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2469
    .local v14, "perm":Ljava/lang/String;
    move/from16 v20, v0

    .end local v0    # "listSize":I
    .local v20, "listSize":I
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 2470
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2467
    .end local v14    # "perm":Ljava/lang/String;
    :cond_53
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v20

    goto :goto_18

    .end local v20    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_54
    move/from16 v20, v0

    .end local v0    # "listSize":I
    .restart local v20    # "listSize":I
    goto :goto_19

    .line 2462
    .end local v10    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "in":I
    .end local v20    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_55
    move/from16 v20, v0

    .line 2460
    .end local v0    # "listSize":I
    .end local v3    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v20    # "listSize":I
    :goto_19
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_17

    .end local v20    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_56
    move/from16 v20, v0

    .line 2476
    .end local v0    # "listSize":I
    .end local v1    # "is":I
    .restart local v20    # "listSize":I
    if-ltz v15, :cond_57

    if-lez v15, :cond_58

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_58

    .line 2479
    :cond_57
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2481
    :cond_58
    if-eqz v11, :cond_59

    .line 2482
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2484
    :cond_59
    if-ltz v12, :cond_5a

    if-lez v12, :cond_5b

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5b

    .line 2487
    :cond_5a
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2489
    :cond_5b
    if-ltz v7, :cond_5c

    if-lez v7, :cond_5d

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5d

    .line 2492
    :cond_5c
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2494
    :cond_5d
    if-ltz v21, :cond_5e

    if-lez v21, :cond_5f

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5f

    .line 2497
    :cond_5e
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2499
    :cond_5f
    if-ltz v22, :cond_60

    if-lez v22, :cond_61

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_61

    .line 2502
    :cond_60
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2508
    :cond_61
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2509
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2512
    :cond_62
    return-object v2
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3424
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3426
    .local v15, "pkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3429
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 3431
    const/16 v6, 0x2a

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 3434
    const/16 v11, 0x16

    const/16 v12, 0x1e

    move v6, v4

    const-string v4, "<application>"

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x3

    move v9, v8

    const/4 v8, 0x1

    move v10, v9

    const/4 v9, 0x2

    move/from16 v16, v10

    const/16 v10, 0x2a

    move-object/from16 v3, p5

    move/from16 v13, v16

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v4

    move-object v8, v1

    move-object v9, v2

    move-object v7, v5

    move-object v5, v3

    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v10, -0x6c

    if-nez v4, :cond_0

    .line 3442
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3443
    iput v10, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3444
    return v13

    .line 3447
    :cond_0
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3448
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3451
    :cond_1
    const/4 v11, 0x4

    const/16 v1, 0x400

    invoke-virtual {v7, v11, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 3454
    .local v12, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 3455
    invoke-static {v15, v12, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 3459
    :cond_2
    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3461
    .local v16, "allowBackup":Z
    const/16 v4, 0x10

    const/high16 v18, 0x4000000

    const/16 v2, 0x20

    if-eqz v16, :cond_9

    .line 3462
    move/from16 v19, v11

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v20, 0x8000

    or-int v11, v11, v20

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3467
    invoke-virtual {v7, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3470
    .local v11, "backupAgent":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 3471
    invoke-static {v15, v11, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3477
    const/16 v4, 0x12

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3480
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v21, 0x10000

    or-int v4, v4, v21

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3482
    :cond_3
    const/16 v4, 0x15

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3485
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v21, 0x20000

    or-int v4, v4, v21

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3487
    :cond_4
    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3490
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3492
    :cond_5
    const/16 v4, 0x28

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3495
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3499
    :cond_6
    const/16 v4, 0x23

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 3501
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_8

    move/from16 v21, v2

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v2, :cond_a

    .line 3507
    iget v2, v4, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_7

    const/4 v2, -0x1

    goto :goto_0

    :cond_7
    move v2, v13

    :goto_0
    iput v2, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    goto :goto_1

    .line 3501
    :cond_8
    move/from16 v21, v2

    goto :goto_1

    .line 3461
    .end local v4    # "v":Landroid/util/TypedValue;
    .end local v11    # "backupAgent":Ljava/lang/String;
    :cond_9
    move/from16 v21, v2

    move/from16 v19, v11

    .line 3514
    :cond_a
    :goto_1
    invoke-virtual {v7, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3516
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3519
    const/16 v2, 0x8

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3523
    const/16 v4, 0x2d

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3525
    .local v4, "requiredFeature":Ljava/lang/String;
    if-eqz v4, :cond_b

    iget-object v11, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v11, v4}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 3526
    :cond_b
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v2

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3530
    .end local v4    # "requiredFeature":Ljava/lang/String;
    :cond_c
    const/16 v4, 0x1b

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3533
    iput-boolean v3, v8, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3536
    :cond_d
    const/16 v4, 0x1c

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3538
    .local v11, "restrictedAccountType":Ljava/lang/String;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_e

    .line 3539
    iput-object v11, v8, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3542
    :cond_e
    const/16 v10, 0x1d

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3544
    .local v2, "requiredAccountType":Ljava/lang/String;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_f

    .line 3545
    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3548
    :cond_f
    const/16 v6, 0xa

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3551
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v25, v2

    const/4 v2, 0x2

    .end local v2    # "requiredAccountType":Ljava/lang/String;
    .local v25, "requiredAccountType":Ljava/lang/String;
    or-int/2addr v6, v2

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2

    .line 3548
    .end local v25    # "requiredAccountType":Ljava/lang/String;
    .restart local v2    # "requiredAccountType":Ljava/lang/String;
    :cond_10
    move-object/from16 v25, v2

    const/4 v2, 0x2

    .line 3554
    .end local v2    # "requiredAccountType":Ljava/lang/String;
    .restart local v25    # "requiredAccountType":Ljava/lang/String;
    :goto_2
    const/16 v6, 0x14

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3557
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3560
    :cond_11
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v6, v2, :cond_12

    move v6, v3

    goto :goto_3

    :cond_12
    move v6, v13

    :goto_3
    const/16 v10, 0x17

    invoke-virtual {v7, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v8, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3563
    iget-boolean v6, v8, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    const/high16 v10, 0x20000000

    if-eqz v6, :cond_13

    .line 3564
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v6, v10

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3567
    :cond_13
    const/4 v6, 0x7

    invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 3570
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3573
    :cond_14
    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3576
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3579
    :cond_15
    const/4 v2, 0x5

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3582
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3586
    :cond_16
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_17

    .line 3587
    const/16 v2, 0xf

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3590
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3594
    :cond_17
    const/16 v2, 0x18

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 3597
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v27, 0x100000

    or-int v6, v6, v27

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3600
    :cond_18
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v6, v4, :cond_19

    move v4, v3

    goto :goto_4

    :cond_19
    move v4, v13

    :goto_4
    const/16 v6, 0x24

    invoke-virtual {v7, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v6, 0x8000000

    if-eqz v4, :cond_1a

    .line 3603
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v4, v6

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3606
    :cond_1a
    const/16 v4, 0x1a

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v27, 0x400000

    if-eqz v4, :cond_1b

    .line 3609
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v27

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3612
    :cond_1b
    const/16 v4, 0x21

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v28, -0x80000000

    if-eqz v4, :cond_1c

    .line 3615
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v28

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3618
    :cond_1c
    const/16 v4, 0x22

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3621
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v29, 0x10000000

    or-int v4, v4, v29

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3624
    :cond_1d
    const/16 v4, 0x35

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v29, 0x2000000

    if-eqz v4, :cond_1e

    .line 3627
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v4, v4, v29

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3630
    :cond_1e
    const/16 v4, 0x26

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3633
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3635
    :cond_1f
    const/16 v4, 0x27

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3638
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3641
    :cond_20
    const/16 v4, 0x25

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3642
    const/16 v2, 0x25

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3643
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v1

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_5

    .line 3645
    :cond_21
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_5

    .line 3647
    :cond_22
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v2, :cond_23

    .line 3648
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3651
    :cond_23
    :goto_5
    const/16 v2, 0x36

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3655
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v18

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3658
    :cond_24
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_25

    move v4, v3

    goto :goto_6

    :cond_25
    move v4, v13

    :goto_6
    const/16 v2, 0x37

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3661
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v6

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3664
    :cond_26
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_27

    move v4, v3

    goto :goto_7

    :cond_27
    move v4, v13

    :goto_7
    const/16 v2, 0x38

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3667
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v10

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3670
    :cond_28
    const/16 v2, 0x3b

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3672
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v28

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3675
    :cond_29
    const/16 v2, 0x2c

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3676
    const/16 v2, 0x33

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 3678
    const/16 v2, 0x29

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3681
    const/16 v2, 0x2b

    const/4 v4, -0x1

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3686
    const/4 v2, 0x6

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3688
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_2a
    const/4 v6, 0x0

    :goto_8
    iput-object v6, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3690
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x8

    if-lt v6, v10, :cond_2b

    .line 3691
    const/16 v6, 0xc

    invoke-virtual {v7, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_9

    .line 3698
    :cond_2b
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 3701
    .end local v2    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    :goto_9
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v6, v10, v5}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3703
    const/16 v2, 0x30

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 3705
    .local v2, "factory":Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 3706
    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v2, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3709
    :cond_2c
    const/16 v6, 0x31

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 3711
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v6, v6, v27

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3714
    :cond_2d
    const/16 v6, 0x32

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 3717
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v18, 0x1000000

    or-int v6, v6, v18

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3720
    :cond_2e
    aget-object v6, v5, v13

    if-nez v6, :cond_32

    .line 3722
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v6, v3, :cond_2f

    .line 3723
    const/16 v3, 0xb

    invoke-virtual {v7, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .local v1, "pname":Ljava/lang/CharSequence;
    goto :goto_a

    .line 3730
    .end local v1    # "pname":Ljava/lang/CharSequence;
    :cond_2f
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 3733
    .local v3, "pname":Ljava/lang/CharSequence;
    :goto_a
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v2

    .end local v2    # "factory":Ljava/lang/String;
    .local v6, "factory":Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v4, p4

    move-object/from16 v17, v6

    const/4 v13, 0x1

    const/16 v20, 0x10

    move-object/from16 v6, p5

    .end local v6    # "factory":Ljava/lang/String;
    .local v17, "factory":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3736
    const/16 v1, 0x9

    invoke-virtual {v7, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3739
    const/16 v1, 0x1f

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3741
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v1, v1, v29

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3744
    :cond_30
    const/16 v1, 0x2f

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3747
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v31, 0x2

    or-int/lit8 v1, v1, 0x2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3751
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 3752
    const-string v1, "cantSaveState applications can not use custom processes"

    const/16 v18, 0x0

    aput-object v1, p5, v18

    goto :goto_b

    .line 3744
    :cond_31
    const/16 v31, 0x2

    goto :goto_b

    .line 3720
    .end local v3    # "pname":Ljava/lang/CharSequence;
    .end local v17    # "factory":Ljava/lang/String;
    .restart local v2    # "factory":Ljava/lang/String;
    :cond_32
    move-object/from16 v17, v2

    move v13, v3

    const/16 v20, 0x10

    const/16 v31, 0x2

    .line 3757
    .end local v2    # "factory":Ljava/lang/String;
    .restart local v17    # "factory":Ljava/lang/String;
    :cond_33
    :goto_b
    const/16 v1, 0x19

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3760
    const/16 v1, 0x2e

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3762
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3763
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 3764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    aput-object v1, p5, v18

    .line 3767
    :cond_34
    const/16 v1, 0x34

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 3770
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3772
    const/16 v18, 0x0

    aget-object v1, p5, v18

    if-eqz v1, :cond_35

    .line 3773
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3774
    return v18

    .line 3777
    :cond_35
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 3780
    .local v1, "innerDepth":I
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 3782
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    const/4 v2, 0x0

    .line 3783
    .local v2, "hasActivityOrder":Z
    const/4 v3, 0x0

    .line 3784
    .local v3, "hasReceiverOrder":Z
    const/4 v4, 0x0

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v26, v7

    .line 3785
    .end local v2    # "hasActivityOrder":Z
    .end local v3    # "hasReceiverOrder":Z
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v21, "hasActivityOrder":Z
    .local v23, "hasReceiverOrder":Z
    .local v24, "hasServiceOrder":Z
    .local v26, "sa":Landroid/content/res/TypedArray;
    :goto_c
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v13, :cond_5a

    const/4 v2, 0x3

    if-ne v3, v2, :cond_37

    .line 3786
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_36

    goto :goto_d

    :cond_36
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v19, v3

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    goto/16 :goto_18

    .line 3787
    :cond_37
    :goto_d
    const/4 v2, 0x3

    if-eq v3, v2, :cond_59

    move/from16 v2, v19

    if-ne v3, v2, :cond_38

    .line 3788
    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v28, v2

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    move/from16 v10, v31

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_17

    .line 3791
    :cond_38
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3792
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 3793
    const/4 v7, 0x0

    move v5, v1

    move-object v1, v8

    .end local v1    # "innerDepth":I
    .local v5, "innerDepth":I
    iget-boolean v8, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v28, v2

    move/from16 v19, v3

    move-object v13, v4

    move-object/from16 v29, v10

    move-object v3, v14

    move/from16 v10, v31

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .end local v3    # "type":I
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "innerDepth":I
    .end local v10    # "str":Ljava/lang/String;
    .local v13, "tagName":Ljava/lang/String;
    .local v14, "innerDepth":I
    .local v19, "type":I
    .local v29, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3795
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_39

    .line 3796
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3797
    const/16 v18, 0x0

    return v18

    .line 3800
    :cond_39
    iget v2, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v2, :cond_3a

    const/4 v4, 0x1

    goto :goto_e

    :cond_3a
    const/4 v4, 0x0

    :goto_e
    or-int v2, v21, v4

    .line 3801
    .end local v21    # "hasActivityOrder":Z
    .restart local v2    # "hasActivityOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v21, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_16

    .end local v2    # "hasActivityOrder":Z
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v19    # "type":I
    .end local v29    # "str":Ljava/lang/String;
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v21    # "hasActivityOrder":Z
    :cond_3b
    move v14, v1

    move/from16 v28, v2

    move/from16 v19, v3

    move-object v13, v4

    move-object v1, v8

    move-object/from16 v29, v10

    move/from16 v10, v31

    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v19    # "type":I
    .restart local v29    # "str":Ljava/lang/String;
    const-string/jumbo v2, "receiver"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3804
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3806
    .restart local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_3c

    .line 3807
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3808
    const/16 v18, 0x0

    return v18

    .line 3811
    :cond_3c
    iget v2, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v2, :cond_3d

    const/4 v4, 0x1

    goto :goto_f

    :cond_3d
    const/4 v4, 0x0

    :goto_f
    or-int v2, v23, v4

    .line 3812
    .end local v23    # "hasReceiverOrder":Z
    .local v2, "hasReceiverOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3814
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v23, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_16

    .end local v2    # "hasReceiverOrder":Z
    .restart local v23    # "hasReceiverOrder":Z
    :cond_3e
    const-string/jumbo v2, "service"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3815
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v7

    .line 3816
    .local v7, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v7, :cond_3f

    .line 3817
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3818
    const/16 v18, 0x0

    return v18

    .line 3821
    :cond_3f
    iget v2, v7, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v2, :cond_40

    const/4 v4, 0x1

    goto :goto_10

    :cond_40
    const/4 v4, 0x0

    :goto_10
    or-int v2, v24, v4

    .line 3822
    .end local v24    # "hasServiceOrder":Z
    .local v2, "hasServiceOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3824
    .end local v7    # "s":Landroid/content/pm/PackageParser$Service;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v24, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_16

    .end local v2    # "hasServiceOrder":Z
    .restart local v24    # "hasServiceOrder":Z
    :cond_41
    const-string/jumbo v2, "provider"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3825
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v7

    .line 3826
    .local v7, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v7, :cond_42

    .line 3827
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3828
    const/16 v18, 0x0

    return v18

    .line 3831
    :cond_42
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3833
    .end local v7    # "p":Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/16 v15, -0x6c

    goto/16 :goto_15

    :cond_43
    const-string v2, "activity-alias"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3834
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3835
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_44

    .line 3836
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3837
    const/16 v18, 0x0

    return v18

    .line 3840
    :cond_44
    iget v4, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_11

    :cond_45
    const/4 v4, 0x0

    :goto_11
    or-int v4, v21, v4

    .line 3841
    .end local v21    # "hasActivityOrder":Z
    .local v4, "hasActivityOrder":Z
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3843
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v21, v4

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    goto/16 :goto_16

    .end local v4    # "hasActivityOrder":Z
    .restart local v21    # "hasActivityOrder":Z
    :cond_46
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3847
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_47

    .line 3849
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3850
    const/4 v7, 0x0

    return v7

    .line 3847
    :cond_47
    const/4 v7, 0x0

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/16 v15, -0x6c

    goto/16 :goto_15

    .line 3852
    :cond_48
    const/4 v7, 0x0

    const-string/jumbo v4, "static-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3853
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3858
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 3860
    .local v8, "lname":Ljava/lang/String;
    move-object/from16 v30, v6

    const/4 v7, -0x1

    const/4 v10, 0x1

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v30, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 3862
    .local v6, "version":I
    move-object/from16 v32, v11

    const/4 v7, 0x0

    const/4 v10, 0x2

    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .local v32, "restrictedAccountType":Ljava/lang/String;
    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 3866
    .local v11, "versionMajor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3869
    if-eqz v8, :cond_4d

    if-gez v6, :cond_49

    move/from16 v33, v14

    move-object v7, v15

    goto :goto_13

    .line 3877
    :cond_49
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_4a

    .line 3878
    const-string/jumbo v7, "sharedUserId not allowed in static shared library"

    const/16 v18, 0x0

    aput-object v7, v5, v18

    .line 3879
    const/16 v7, -0x6b

    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3880
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3881
    return v18

    .line 3884
    :cond_4a
    const/16 v18, 0x0

    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v7, :cond_4b

    .line 3885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple static-shared libs for package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v18

    .line 3886
    const/16 v7, -0x6c

    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3887
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3888
    return v18

    .line 3891
    :cond_4b
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3892
    if-ltz v6, :cond_4c

    .line 3893
    nop

    .line 3894
    move/from16 v33, v14

    move-object v7, v15

    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    .local v33, "innerDepth":I
    invoke-static {v11, v6}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_12

    .line 3896
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_4c
    move/from16 v33, v14

    move-object v7, v15

    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    int-to-long v14, v6

    iput-wide v14, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3898
    :goto_12
    iget v14, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v14, v14, 0x4000

    iput v14, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3900
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3902
    .end local v6    # "version":I
    .end local v8    # "lname":Ljava/lang/String;
    .end local v11    # "versionMajor":I
    move-object/from16 v26, v4

    const/4 v14, 0x0

    const/16 v15, -0x6c

    goto/16 :goto_16

    .line 3869
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v6    # "version":I
    .restart local v8    # "lname":Ljava/lang/String;
    .restart local v11    # "versionMajor":I
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_4d
    move/from16 v33, v14

    move-object v7, v15

    .line 3870
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad static-library declaration name: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " version: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v5, v14

    .line 3872
    const/16 v15, -0x6c

    iput v15, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3873
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3874
    return v14

    .line 3902
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_4e
    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move v14, v7

    move-object v7, v15

    const/16 v15, -0x6c

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    const-string/jumbo v4, "library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 3903
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3908
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 3911
    .local v6, "lname":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3913
    if-eqz v6, :cond_4f

    .line 3914
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 3915
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 3916
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3921
    :cond_4f
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3923
    .end local v6    # "lname":Ljava/lang/String;
    move-object/from16 v26, v4

    const/4 v14, 0x0

    goto/16 :goto_16

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_50
    const-string/jumbo v4, "uses-static-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3924
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 3925
    const/4 v6, 0x0

    return v6

    .line 3924
    :cond_51
    const/4 v6, 0x0

    goto :goto_15

    .line 3928
    :cond_52
    const/4 v6, 0x0

    const-string/jumbo v4, "uses-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3929
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3934
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 3936
    .restart local v8    # "lname":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 3940
    .local v11, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3942
    if-eqz v8, :cond_54

    .line 3943
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 3944
    if-eqz v11, :cond_53

    .line 3945
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_14

    .line 3947
    :cond_53
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3952
    :cond_54
    :goto_14
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3954
    .end local v8    # "lname":Ljava/lang/String;
    .end local v11    # "req":Z
    move-object/from16 v26, v4

    const/4 v14, 0x0

    goto :goto_16

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_55
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3957
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3979
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :goto_15
    const/4 v14, 0x0

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    goto :goto_16

    .line 3958
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_56
    const-string/jumbo v4, "profileable"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 3959
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3961
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 3963
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v8, 0x800000

    or-int/2addr v6, v8

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3965
    :cond_57
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v26, v4

    .line 3979
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :goto_16
    move-object v8, v1

    move-object v14, v3

    move-object v15, v7

    move/from16 v31, v10

    move/from16 v19, v28

    move-object/from16 v10, v29

    move-object/from16 v6, v30

    move-object/from16 v11, v32

    move/from16 v1, v33

    const/4 v13, 0x1

    goto/16 :goto_c

    .line 3968
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_58
    const/4 v14, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3970
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3968
    const-string v6, "PackageParser"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3972
    goto :goto_17

    .line 3787
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_59
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v7, v15

    move/from16 v28, v19

    move/from16 v10, v31

    const/16 v15, -0x6c

    move/from16 v19, v3

    move-object v3, v14

    const/4 v14, 0x0

    .line 3785
    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v29    # "str":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_17
    move-object v8, v1

    move-object v14, v3

    move-object v15, v7

    move/from16 v31, v10

    move/from16 v19, v28

    move-object/from16 v10, v29

    move-object/from16 v6, v30

    move-object/from16 v11, v32

    move/from16 v1, v33

    const/4 v13, 0x1

    goto/16 :goto_c

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_5a
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v19, v3

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    .line 3981
    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v29    # "str":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_18
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3984
    iget-boolean v4, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v6, p4

    invoke-direct {v0, v1, v6, v5, v4}, Landroid/content/pm/PackageParser;->generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3986
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 3981
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_5b
    move/from16 v6, p4

    .line 3989
    :goto_19
    if-eqz v21, :cond_5c

    .line 3990
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3992
    :cond_5c
    if-eqz v23, :cond_5d

    .line 3993
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3995
    :cond_5d
    if-eqz v24, :cond_5e

    .line 3996
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4000
    :cond_5e
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 4001
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 4002
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V

    .line 4004
    invoke-static {v1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 4005
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1a

    .line 4007
    :cond_5f
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, -0x11

    iput v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4010
    :goto_1a
    const/16 v27, 0x1

    return v27
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1127
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a coreApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x6c

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1133
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1135
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v2, v0, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1137
    :try_start_0
    invoke-static {v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v1, v2

    .line 1138
    new-instance v2, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;

    invoke-direct {v2, v0, v1, p2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    goto :goto_1

    .line 1139
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :catch_0
    move-exception v2

    .line 1140
    .local v2, "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1143
    .end local v2    # "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v2, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1147
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1148
    .local v3, "assets":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v4, "baseApk":Ljava/io/File;
    invoke-direct {p0, v4, v3, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1150
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_4

    .line 1155
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1156
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v6, v6

    .line 1157
    .local v6, "num":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1158
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1159
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1160
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1161
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1162
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1163
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v7, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1164
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1166
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_3

    .line 1167
    invoke-interface {v2, v7}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    .line 1168
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v5, v7, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1166
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1172
    .end local v6    # "num":I
    .end local v7    # "i":I
    :cond_3
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1173
    iget-boolean v6, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    nop

    .line 1176
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1174
    return-object v5

    .line 1151
    :cond_4
    :try_start_2
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse base APK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x64

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "packageDir":Ljava/io/File;
    .end local p2    # "flags":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1176
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "baseApk":Ljava/io/File;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "packageDir":Ljava/io/File;
    .restart local p2    # "flags":I
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1177
    throw v3
.end method

.method static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 21
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 989
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 990
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 995
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    aget-object v2, v1, v3

    invoke-static {v2, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    return-object v2

    .line 999
    :cond_0
    const/4 v2, 0x0

    .line 1000
    .local v2, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1002
    .local v4, "versionCode":I
    const-string/jumbo v5, "parseApkLite"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1003
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1004
    .local v5, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    array-length v8, v1

    :goto_0
    const/16 v9, -0x65

    if-ge v3, v8, :cond_6

    aget-object v10, v1, v3

    .line 1005
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1006
    invoke-static {v10, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 1010
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v2, :cond_1

    .line 1011
    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 1012
    iget v4, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_1

    .line 1014
    :cond_1
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "; expected "

    const-string v14, " in "

    if-eqz v12, :cond_4

    .line 1019
    iget v12, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v4, v12, :cond_3

    .line 1027
    :goto_1
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v5, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_2

    .line 1028
    :cond_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " defined more than once; most recent was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1020
    :cond_3
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1015
    :cond_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1004
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1034
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1036
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/pm/PackageParser$ApkLite;

    .line 1037
    .local v13, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-eqz v13, :cond_9

    .line 1043
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1045
    .local v3, "size":I
    const/4 v6, 0x0

    .line 1046
    .local v6, "splitNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1047
    .local v7, "isFeatureSplits":[Z
    const/4 v8, 0x0

    .line 1048
    .local v8, "usesSplitNames":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1049
    .local v9, "configForSplits":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1050
    .local v10, "splitCodePaths":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1051
    .local v11, "splitRevisionCodes":[I
    const/16 v20, 0x0

    .line 1052
    .local v20, "splitClassLoaderNames":[Ljava/lang/String;
    if-lez v3, :cond_8

    .line 1053
    new-array v6, v3, [Ljava/lang/String;

    .line 1054
    new-array v7, v3, [Z

    .line 1055
    new-array v8, v3, [Ljava/lang/String;

    .line 1056
    new-array v9, v3, [Ljava/lang/String;

    .line 1057
    new-array v10, v3, [Ljava/lang/String;

    .line 1058
    new-array v11, v3, [I

    .line 1060
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 1061
    sget-object v12, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v6, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1063
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_7

    .line 1064
    aget-object v14, v6, v12

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    .line 1065
    .local v14, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v8, v12

    .line 1066
    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v7, v12

    .line 1067
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v9, v12

    .line 1068
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v10, v12

    .line 1069
    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v11, v12

    .line 1063
    .end local v14    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto :goto_4

    .line 1052
    .end local v12    # "i":I
    :cond_8
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 1073
    .end local v6    # "splitNames":[Ljava/lang/String;
    .end local v7    # "isFeatureSplits":[Z
    .end local v8    # "usesSplitNames":[Ljava/lang/String;
    .end local v9    # "configForSplits":[Ljava/lang/String;
    .end local v10    # "splitCodePaths":[Ljava/lang/String;
    .end local v11    # "splitRevisionCodes":[I
    .local v14, "splitNames":[Ljava/lang/String;
    .local v15, "isFeatureSplits":[Z
    .local v16, "usesSplitNames":[Ljava/lang/String;
    .local v17, "configForSplits":[Ljava/lang/String;
    .local v18, "splitCodePaths":[Ljava/lang/String;
    .local v19, "splitRevisionCodes":[I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1074
    .local v11, "codePath":Ljava/lang/String;
    new-instance v10, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v12, v13, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    invoke-direct/range {v10 .. v19}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v10

    .line 1038
    .end local v3    # "size":I
    .end local v11    # "codePath":Ljava/lang/String;
    .end local v14    # "splitNames":[Ljava/lang/String;
    .end local v15    # "isFeatureSplits":[Z
    .end local v16    # "usesSplitNames":[Ljava/lang/String;
    .end local v17    # "configForSplits":[Ljava/lang/String;
    .end local v18    # "splitCodePaths":[Ljava/lang/String;
    .end local v19    # "splitRevisionCodes":[I
    .end local v20    # "splitClassLoaderNames":[Ljava/lang/String;
    :cond_9
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing base APK in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 991
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "versionCode":I
    .end local v5    # "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v13    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_a
    move-object/from16 v7, p0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x64

    const-string v4, "No packages found in split"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3350
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3353
    .local v0, "sa":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v1, :cond_0

    .line 3354
    new-instance v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-object v3, p1

    move-object v4, p4

    .end local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local p4    # "outError":[Ljava/lang/String;
    .local v3, "owner":Landroid/content/pm/PackageParser$Package;
    .local v4, "outError":[Ljava/lang/String;
    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3361
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string p4, "<instrumentation>"

    iput-object p4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 3353
    .end local v3    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "outError":[Ljava/lang/String;
    .restart local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .restart local p4    # "outError":[Ljava/lang/String;
    :cond_0
    move-object v3, p1

    move-object v4, p4

    .line 3364
    .end local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local p4    # "outError":[Ljava/lang/String;
    .restart local v3    # "owner":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "outError":[Ljava/lang/String;
    :goto_0
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3366
    new-instance v8, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance p4, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p4}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v8, p1, p4}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 3368
    .local v8, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 p1, 0x0

    aget-object p4, v4, p1

    const/16 v1, -0x6c

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 3369
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3370
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3371
    return-object v2

    .line 3377
    :cond_1
    const/4 p4, 0x3

    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3379
    .local p4, "str":Ljava/lang/String;
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    iput-object v6, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3381
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3383
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    iput-object v6, v5, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3385
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v6, 0x4

    invoke-virtual {v0, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3389
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v6, 0x5

    invoke-virtual {v0, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3393
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3395
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v5, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 3396
    const-string v5, "<instrumentation> does not specify targetPackage"

    aput-object v5, v4, p1

    .line 3397
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3398
    return-object v2

    .line 3401
    :cond_4
    const-string v7, "<instrumentation>"

    move-object v5, p2

    move-object v6, p3

    move-object v9, v4

    move-object v4, p0

    .end local v4    # "outError":[Ljava/lang/String;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "res":Landroid/content/res/Resources;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .local v9, "outError":[Ljava/lang/String;
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3403
    iput v1, v4, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3404
    return-object v2

    .line 3407
    :cond_5
    iget-object p1, v3, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    return-object v8
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5780
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5783
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5785
    .local v6, "priority":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5787
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 5789
    .local v8, "order":I
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5791
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 5793
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_0

    .line 5794
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5797
    :cond_0
    sget-boolean v10, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_0

    .line 5798
    :cond_1
    move v10, v5

    :goto_0
    nop

    .line 5799
    .local v10, "roundIconVal":I
    const/4 v11, 0x1

    if-eqz v10, :cond_2

    .line 5800
    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_1

    .line 5802
    :cond_2
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5806
    :goto_1
    const/4 v12, 0x4

    invoke-virtual {v0, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5809
    const/4 v13, 0x5

    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5812
    const/4 v14, 0x6

    if-eqz p4, :cond_3

    .line 5813
    invoke-virtual {v0, v14, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5818
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5820
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 5822
    .local v15, "outerDepth":I
    :goto_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v16, v14

    .local v16, "type":I
    if-eq v14, v11, :cond_1c

    move/from16 v14, v16

    .end local v16    # "type":I
    .local v14, "type":I
    if-ne v14, v7, :cond_5

    .line 5823
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v15, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v11, p0

    goto/16 :goto_c

    .line 5824
    :cond_5
    :goto_3
    if-eq v14, v7, :cond_1b

    if-ne v14, v12, :cond_6

    .line 5825
    move-object/from16 v11, p0

    goto/16 :goto_b

    .line 5828
    :cond_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5829
    .local v13, "nodeName":Ljava/lang/String;
    const-string v12, "action"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v7, ""

    const-string v17, "No value supplied for <android:name>"

    const-string/jumbo v4, "name"

    const-string/jumbo v11, "http://schemas.android.com/apk/res/android"

    if-eqz v12, :cond_9

    .line 5830
    invoke-interface {v2, v11, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5832
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_8

    if-ne v4, v7, :cond_7

    goto :goto_4

    .line 5836
    :cond_7
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5838
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5839
    .end local v4    # "value":Ljava/lang/String;
    const/4 v7, 0x3

    move-object/from16 v11, p0

    goto/16 :goto_a

    .line 5833
    .restart local v4    # "value":Ljava/lang/String;
    :cond_8
    :goto_4
    aput-object v17, p6, v5

    .line 5834
    return v5

    .line 5839
    .end local v4    # "value":Ljava/lang/String;
    :cond_9
    const-string v12, "category"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 5840
    invoke-interface {v2, v11, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5842
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_b

    if-ne v4, v7, :cond_a

    goto :goto_5

    .line 5846
    :cond_a
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5848
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5850
    .end local v4    # "value":Ljava/lang/String;
    const/4 v7, 0x3

    move-object/from16 v11, p0

    goto/16 :goto_a

    .line 5843
    .restart local v4    # "value":Ljava/lang/String;
    :cond_b
    :goto_5
    aput-object v17, p6, v5

    .line 5844
    return v5

    .line 5850
    .end local v4    # "value":Ljava/lang/String;
    :cond_c
    const-string v4, "data"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5851
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5854
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5856
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 5858
    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5863
    goto :goto_6

    .line 5859
    :catch_0
    move-exception v0

    .line 5860
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, p6, v5

    .line 5861
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5862
    return v5

    .line 5866
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5868
    if-eqz v7, :cond_e

    .line 5869
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5872
    :cond_e
    const/16 v0, 0x8

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5874
    .end local v7    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 5875
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5878
    :cond_f
    const/16 v7, 0x9

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5880
    if-eqz v0, :cond_10

    .line 5881
    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5884
    :cond_10
    const/16 v7, 0xa

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5886
    if-eqz v0, :cond_12

    .line 5887
    if-nez p3, :cond_11

    .line 5888
    const-string/jumbo v7, "sspPattern not allowed here; ssp must be literal"

    aput-object v7, p6, v5

    .line 5889
    return v5

    .line 5891
    :cond_11
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_7

    .line 5886
    :cond_12
    const/4 v7, 0x2

    .line 5894
    :goto_7
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5896
    .local v11, "host":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5898
    .local v12, "port":Ljava/lang/String;
    if-eqz v11, :cond_13

    .line 5899
    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    :cond_13
    const/4 v7, 0x4

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5904
    if-eqz v0, :cond_14

    .line 5905
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5908
    :cond_14
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5910
    if-eqz v0, :cond_15

    .line 5911
    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5914
    :cond_15
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5916
    if-eqz v0, :cond_17

    .line 5917
    if-nez p3, :cond_16

    .line 5918
    const-string/jumbo v7, "pathPattern not allowed here; path must be literal"

    aput-object v7, p6, v5

    .line 5919
    return v5

    .line 5921
    :cond_16
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_8

    .line 5916
    :cond_17
    const/4 v7, 0x2

    .line 5924
    :goto_8
    const/16 v7, 0xe

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5926
    if-eqz v0, :cond_19

    .line 5927
    if-nez p3, :cond_18

    .line 5928
    const-string/jumbo v7, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v7, p6, v5

    .line 5929
    return v5

    .line 5931
    :cond_18
    const/4 v7, 0x3

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_9

    .line 5926
    :cond_19
    const/4 v7, 0x3

    .line 5934
    :goto_9
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5935
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5936
    .end local v0    # "str":Ljava/lang/String;
    .end local v11    # "host":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v0, v4

    goto :goto_a

    .line 5937
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    :cond_1a
    const/4 v7, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <intent-filter>: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5938
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " at "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v11, p0

    iget-object v12, v11, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5939
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5937
    const-string v12, "PackageParser"

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5940
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5945
    .end local v13    # "nodeName":Ljava/lang/String;
    :goto_a
    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x6

    goto/16 :goto_2

    .line 5824
    :cond_1b
    move-object/from16 v11, p0

    .line 5822
    .end local v14    # "type":I
    :goto_b
    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x6

    goto/16 :goto_2

    .restart local v16    # "type":I
    :cond_1c
    move-object/from16 v11, p0

    move/from16 v14, v16

    .line 5947
    .end local v16    # "type":I
    .restart local v14    # "type":I
    :goto_c
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 5964
    const/16 v18, 0x1

    return v18
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3003
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3004
    .local v4, "outerDepth":I
    const/4 v5, -0x1

    .line 3006
    .local v5, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 3007
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 3008
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 3009
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 3010
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 3011
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    const/4 v13, 0x1

    const-string v14, "PackageParser"

    if-eq v11, v13, :cond_e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    .line 3012
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    goto/16 :goto_7

    .line 3013
    :cond_1
    :goto_1
    if-ne v12, v11, :cond_3

    .line 3014
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 3015
    const/4 v6, 0x0

    .line 3016
    const/4 v5, -0x1

    goto :goto_0

    .line 3014
    :cond_2
    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_6

    .line 3020
    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3021
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v17, 0x0

    const-string v15, "Improperly nested \'key-set\' tag at "

    if-eqz v13, :cond_5

    .line 3022
    if-eqz v6, :cond_4

    .line 3023
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3024
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, p4, v17

    .line 3025
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3026
    return v17

    .line 3028
    :cond_4
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3030
    .local v13, "sa":Landroid/content/res/TypedArray;
    move/from16 v14, v17

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3032
    .local v14, "keysetName":Ljava/lang/String;
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    move-object v6, v14

    .line 3034
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 3035
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3036
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "keysetName":Ljava/lang/String;
    move/from16 v18, v4

    move/from16 v20, v12

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v13, "public-key"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3037
    if-nez v6, :cond_6

    .line 3038
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3039
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, p4, v15

    .line 3040
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3041
    return v15

    .line 3043
    :cond_6
    const/4 v15, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3045
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .local v18, "outerDepth":I
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3047
    .local v4, "publicKeyName":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 3049
    .local v15, "encodedKey":Ljava/lang/String;
    if-nez v15, :cond_7

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    .line 3050
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "currentKeySetDepth":I
    .local v19, "currentKeySetDepth":I
    const-string v5, "\'public-key\' "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " must define a public-key value on first use at "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3051
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, p4, v17

    .line 3052
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3053
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3054
    return v17

    .line 3049
    .end local v19    # "currentKeySetDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :cond_7
    move/from16 v19, v5

    .line 3055
    .end local v5    # "currentKeySetDepth":I
    .restart local v19    # "currentKeySetDepth":I
    if-eqz v15, :cond_b

    .line 3056
    invoke-static {v15}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3057
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_8

    .line 3058
    move/from16 v20, v12

    .end local v12    # "type":I
    .local v20, "type":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .local v16, "sa":Landroid/content/res/TypedArray;
    const-string v13, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3059
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " key-set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3058
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3062
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3063
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3064
    goto/16 :goto_6

    .line 3066
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "type":I
    .restart local v12    # "type":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :cond_8
    move/from16 v20, v12

    move-object/from16 v16, v13

    .end local v12    # "type":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "type":I
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 3067
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/PublicKey;

    invoke-interface {v12, v5}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_2

    .line 3072
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value of \'public-key\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " conflicts with previously defined value at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3074
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, p4, v17

    .line 3075
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3076
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3077
    return v17

    .line 3070
    :cond_a
    :goto_2
    invoke-virtual {v7, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3055
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "type":I
    .restart local v12    # "type":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    move/from16 v20, v12

    move-object/from16 v16, v13

    .line 3080
    .end local v12    # "type":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "type":I
    :goto_3
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3081
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3082
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3083
    .end local v4    # "publicKeyName":Ljava/lang/String;
    .end local v15    # "encodedKey":Ljava/lang/String;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    goto :goto_4

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v4, "outerDepth":I
    .local v5, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_c
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    const-string/jumbo v4, "upgrade-key-set"

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3084
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3086
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 3088
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3089
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3090
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3091
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "name":Ljava/lang/String;
    nop

    .line 3104
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_4
    move/from16 v5, v19

    .end local v19    # "currentKeySetDepth":I
    .local v5, "currentKeySetDepth":I
    :goto_5
    move/from16 v4, v18

    goto/16 :goto_0

    .line 3098
    .end local v5    # "currentKeySetDepth":I
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v19    # "currentKeySetDepth":I
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <key-sets>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3100
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3098
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3102
    nop

    .line 3011
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v4, "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_6
    move/from16 v4, v18

    move/from16 v5, v19

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    goto/16 :goto_0

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_e
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    .line 3105
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3106
    .local v4, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    const-string v11, "Package"

    if-eqz v5, :cond_f

    .line 3107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, p4, v17

    .line 3109
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3110
    return v17

    .line 3112
    :cond_f
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3113
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3114
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3115
    .local v13, "keySetName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    const-string v2, " AndroidManifext.xml \'key-set\' "

    if-nez v15, :cond_10

    .line 3116
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_8

    .line 3120
    :cond_10
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_8

    .line 3126
    :cond_11
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v13, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3128
    .local v3, "s":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3129
    .end local v3    # "s":Ljava/lang/String;
    move-object/from16 v2, v22

    goto :goto_9

    .line 3130
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "keySetName":Ljava/lang/String;
    :cond_12
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_8

    .line 3131
    :cond_13
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3132
    iput-object v8, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3139
    const/16 v16, 0x1

    return v16

    .line 3134
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, p4, v17

    .line 3136
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3137
    return v17
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 22
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 4811
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4813
    .local v0, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 4814
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 4815
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 4816
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 4817
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 4819
    .local v8, "widthType":I
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x5

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x6

    if-ne v8, v13, :cond_0

    .line 4820
    invoke-virtual {v0, v7, v12, v12, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    move v15, v3

    move/from16 v16, v4

    goto :goto_0

    .line 4823
    :cond_0
    if-ne v8, v10, :cond_1

    .line 4824
    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move v15, v3

    move/from16 v16, v4

    goto :goto_0

    .line 4823
    :cond_1
    move v15, v3

    move/from16 v16, v4

    .line 4828
    .end local v3    # "width":I
    .end local v4    # "widthFraction":F
    .local v15, "width":I
    .local v16, "widthFraction":F
    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    .line 4830
    .local v4, "heightType":I
    if-ne v4, v13, :cond_2

    .line 4831
    invoke-virtual {v0, v3, v12, v12, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_1

    .line 4834
    :cond_2
    if-ne v4, v10, :cond_3

    .line 4835
    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_1

    .line 4834
    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    .line 4839
    .end local v5    # "height":I
    .end local v6    # "heightFraction":F
    .local v17, "height":I
    .local v18, "heightFraction":F
    :goto_1
    const/4 v3, 0x0

    const/16 v5, 0x11

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 4842
    .local v19, "gravity":I
    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    .line 4845
    .local v20, "minWidth":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 4848
    .local v21, "minHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4849
    move-object/from16 v3, p3

    iget-object v5, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v14, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v14, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4851
    return-void
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5619
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5622
    .local v0, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    .line 5623
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 5626
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5628
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5629
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    .line 5630
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5631
    return-object v3

    .line 5634
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 5636
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5638
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 5640
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5642
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5645
    if-eqz v4, :cond_9

    .line 5646
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 5647
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5648
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5649
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_4
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_6

    .line 5650
    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 5651
    :cond_6
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_7

    .line 5653
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5654
    :cond_7
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 5655
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 5658
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5659
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5660
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5658
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5667
    :cond_9
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    .line 5668
    const/4 p3, 0x0

    .line 5672
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5674
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5676
    return-object p3
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 13
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 979
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 980
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 981
    .local v6, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 982
    .local v4, "packagePath":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 983
    new-instance v3, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v5, v6, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v3
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 16
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .line 4216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 4217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 4218
    return v5

    .line 4221
    :cond_0
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 4222
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 4223
    if-eqz p5, :cond_3

    .line 4224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 4225
    return v5

    .line 4228
    :cond_1
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4229
    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4230
    .local v8, "outInfoName":Ljava/lang/String;
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " invalid android:name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    .line 4232
    return v5

    .line 4234
    :cond_2
    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4235
    if-nez v8, :cond_3

    .line 4236
    return v5

    .line 4240
    .end local v8    # "outInfoName":Ljava/lang/String;
    :cond_3
    sget-boolean v8, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v8, :cond_4

    move/from16 v8, p9

    invoke-virtual {v4, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    goto :goto_0

    :cond_4
    move/from16 v8, p9

    move v9, v5

    .line 4241
    .local v9, "roundIconVal":I
    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_5

    .line 4242
    iput v9, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4243
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move/from16 v11, p8

    goto :goto_1

    .line 4245
    :cond_5
    move/from16 v11, p8

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4246
    .local v12, "iconVal":I
    if-eqz v12, :cond_6

    .line 4247
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4248
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4252
    .end local v12    # "iconVal":I
    :cond_6
    :goto_1
    move/from16 v10, p10

    invoke-virtual {v4, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4253
    .local v12, "logoVal":I
    if-eqz v12, :cond_7

    .line 4254
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4257
    :cond_7
    move/from16 v13, p11

    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 4258
    .local v5, "bannerVal":I
    if-eqz v5, :cond_8

    .line 4259
    iput v5, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4262
    :cond_8
    move/from16 v14, p7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 4263
    .local v15, "v":Landroid/util/TypedValue;
    if-eqz v15, :cond_9

    iget v2, v15, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_9

    .line 4264
    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4267
    :cond_9
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4269
    const/4 v2, 0x1

    return v2
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 973
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method public static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1583
    nop

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 1587
    :cond_0
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_8

    .line 1591
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1596
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_2

    .line 1598
    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1599
    .local v3, "error":Ljava/lang/String;
    if-nez v3, :cond_1

    goto :goto_1

    .line 1600
    :cond_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1605
    .end local v3    # "error":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v3, "split"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1607
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1608
    const/4 v2, 0x0

    goto :goto_2

    .line 1610
    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1611
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_4

    goto :goto_2

    .line 1612
    :cond_4
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid manifest split: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1618
    .end local v3    # "error":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1619
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v2

    .line 1618
    :goto_3
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 1592
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_7
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1588
    :cond_8
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 17
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3203
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 3204
    .local v2, "backgroundPermission":Ljava/lang/String;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const-string v15, "android"

    if-eqz v4, :cond_1

    .line 3206
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3207
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3211
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageParser"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_1
    :goto_0
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    move-object v3, v4

    .line 3217
    .local v3, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v4, v2

    .end local v2    # "backgroundPermission":Ljava/lang/String;
    .local v4, "backgroundPermission":Ljava/lang/String;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x7

    const/16 v12, 0x9

    move-object v6, v4

    .end local v4    # "backgroundPermission":Ljava/lang/String;
    .local v6, "backgroundPermission":Ljava/lang/String;
    const-string v4, "<permission>"

    move-object v7, v6

    .end local v6    # "backgroundPermission":Ljava/lang/String;
    .local v7, "backgroundPermission":Ljava/lang/String;
    const/4 v6, 0x1

    move-object v8, v7

    .end local v7    # "backgroundPermission":Ljava/lang/String;
    .local v8, "backgroundPermission":Ljava/lang/String;
    const/4 v7, 0x2

    move-object v9, v8

    .end local v8    # "backgroundPermission":Ljava/lang/String;
    .local v9, "backgroundPermission":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v10, v9

    .end local v9    # "backgroundPermission":Ljava/lang/String;
    .local v10, "backgroundPermission":Ljava/lang/String;
    const/4 v9, 0x1

    move-object/from16 v16, v10

    .end local v10    # "backgroundPermission":Ljava/lang/String;
    .local v16, "backgroundPermission":Ljava/lang/String;
    const/16 v10, 0xa

    move-object v13, v3

    move-object/from16 v3, p4

    .end local v3    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-nez v2, :cond_2

    .line 3225
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3226
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3227
    return v9

    .line 3232
    :cond_2
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3234
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3235
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3238
    :cond_3
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3242
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0xd

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3245
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3249
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0x8

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3253
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 3258
    :cond_4
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    goto :goto_2

    .line 3260
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3254
    :cond_6
    :goto_1
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3255
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3265
    :cond_7
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3267
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 3268
    const-string v1, "<permission> does not specify protectionLevel"

    aput-object v1, p4, v9

    .line 3269
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3270
    return v9

    .line 3273
    :cond_8
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3275
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    if-eqz v1, :cond_9

    .line 3276
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_9

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_9

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    .line 3280
    const-string v1, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v1, p4, v9

    .line 3282
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3283
    return v9

    .line 3287
    :cond_9
    const-string v3, "<permission>"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v2, v14

    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    .end local v4    # "perm":Landroid/content/pm/PackageParser$Permission;
    .restart local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    if-nez v3, :cond_a

    .line 3288
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3289
    return v9

    .line 3292
    :cond_a
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3294
    const/4 v1, 0x1

    return v1
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3148
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/16 v2, 0xc

    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3150
    .local v2, "requestDetailResourceId":I
    const/16 v3, 0x9

    invoke-virtual {v5, v3, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3153
    .local v3, "backgroundRequestResourceId":I
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3157
    .local v4, "backgroundRequestDetailResourceId":I
    new-instance v6, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;III)V

    .line 3160
    .local v6, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    move v7, v2

    .end local v2    # "requestDetailResourceId":I
    .local v7, "requestDetailResourceId":I
    iget-object v2, v6, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v11, 0x5

    const/4 v12, 0x7

    move v8, v4

    .end local v4    # "backgroundRequestDetailResourceId":I
    .local v8, "backgroundRequestDetailResourceId":I
    const-string v4, "<permission-group>"

    move-object v9, v6

    .end local v6    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v9, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    const/4 v6, 0x1

    move v10, v7

    .end local v7    # "requestDetailResourceId":I
    .local v10, "requestDetailResourceId":I
    const/4 v7, 0x2

    move/from16 v16, v8

    .end local v8    # "backgroundRequestDetailResourceId":I
    .local v16, "backgroundRequestDetailResourceId":I
    const/4 v8, 0x0

    move-object/from16 v17, v9

    .end local v9    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v17, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    const/4 v9, 0x1

    move/from16 v18, v10

    .end local v10    # "requestDetailResourceId":I
    .local v18, "requestDetailResourceId":I
    const/16 v10, 0x8

    move/from16 v19, v15

    move-object/from16 v15, v17

    move/from16 v17, v16

    move/from16 v16, v3

    move-object/from16 v3, p5

    .end local v3    # "backgroundRequestResourceId":I
    .local v15, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v16, "backgroundRequestResourceId":I
    .local v17, "backgroundRequestDetailResourceId":I
    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    if-nez v2, :cond_0

    .line 3168
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3169
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3170
    return v19

    .line 3173
    :cond_0
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x4

    move/from16 v9, v19

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3176
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v2, 0xb

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3178
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x6

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3180
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x3

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3183
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3185
    const-string v3, "<permission-group>"

    move-object/from16 v5, p5

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    .end local v15    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v4, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    .end local v4    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .restart local v15    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v3, :cond_1

    .line 3187
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3188
    return v9

    .line 3191
    :cond_1
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3193
    const/4 v1, 0x1

    return v1
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    move-object v13, v4

    .line 3302
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3305
    .local v5, "sa":Landroid/content/res/TypedArray;
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x3

    const/4 v12, 0x4

    const-string v4, "<permission-tree>"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 3313
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3314
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3315
    return v9

    .line 3318
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3320
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3321
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 3322
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v10, v1

    goto :goto_0

    .line 3321
    :cond_1
    move v10, v1

    .line 3324
    .end local v1    # "index":I
    .local v10, "index":I
    :goto_0
    if-gez v10, :cond_2

    .line 3325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v9

    .line 3327
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3328
    return v9

    .line 3331
    :cond_2
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3332
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3333
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3334
    const/4 v11, 0x1

    iput-boolean v11, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3336
    const-string v3, "<permission-tree>"

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v1, v14

    move-object v2, v15

    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3338
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3339
    return v9

    .line 3342
    :cond_3
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3344
    return v11
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .locals 17
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5083
    move-object/from16 v13, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5086
    .local v0, "sa":Landroid/content/res/TypedArray;
    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v1, :cond_0

    .line 5087
    move-object v1, v0

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v2, p0

    iget-object v9, v2, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v11, 0xe

    const/4 v12, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/16 v7, 0xf

    const/16 v8, 0x11

    const/16 v10, 0x8

    move-object/from16 v2, p5

    move-object v14, v1

    move-object/from16 v1, p1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v14, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    iput-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5098
    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<provider>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 5086
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object v14, v0

    move-object/from16 v0, p1

    .line 5101
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v14, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5102
    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5104
    new-instance v5, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v5, v1, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 5105
    .local v5, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v1, 0x0

    aget-object v2, p5, v1

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 5106
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5107
    return-object v8

    .line 5110
    :cond_1
    const/4 v2, 0x0

    .line 5112
    .local v2, "providerExportedDefault":Z
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 5116
    const/4 v2, 0x1

    move v9, v2

    goto :goto_1

    .line 5112
    :cond_2
    move v9, v2

    .line 5119
    .end local v2    # "providerExportedDefault":Z
    .local v9, "providerExportedDefault":Z
    :goto_1
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x7

    invoke-virtual {v14, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 5123
    const/16 v2, 0xa

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 5126
    .local v10, "cpname":Ljava/lang/String;
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xb

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 5130
    const/4 v2, 0x3

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5132
    .local v11, "permission":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5134
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 5135
    move-object v2, v11

    .line 5137
    :cond_3
    if-nez v2, :cond_4

    .line 5138
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_3

    .line 5140
    :cond_4
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v8

    :goto_2
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 5143
    :goto_3
    const/4 v3, 0x5

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5145
    if-nez v2, :cond_6

    .line 5146
    move-object v2, v11

    move-object v12, v2

    goto :goto_4

    .line 5145
    :cond_6
    move-object v12, v2

    .line 5148
    .end local v2    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    :goto_4
    if-nez v12, :cond_7

    .line 5149
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_6

    .line 5151
    :cond_7
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5152
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v8

    :goto_5
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 5155
    :goto_6
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xd

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5159
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x16

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 5163
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x9

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5167
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xc

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5171
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5172
    const/16 v3, 0x15

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 5174
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v1, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5176
    const/16 v2, 0x10

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5179
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5182
    :cond_9
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    .line 5185
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v2, :cond_a

    .line 5186
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5190
    :cond_a
    nop

    .line 5191
    const/16 v2, 0x14

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 5192
    .local v4, "visibleToEphemeral":Z
    if-eqz v4, :cond_b

    .line 5193
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5194
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5197
    :cond_b
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5199
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 5203
    iget-object v2, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_c

    .line 5204
    const-string v2, "Heavy-weight applications can not have providers in main process"

    aput-object v2, p5, v1

    .line 5205
    return-object v8

    .line 5209
    :cond_c
    if-nez v10, :cond_d

    .line 5210
    const-string v2, "<provider> does not include authorities attribute"

    aput-object v2, p5, v1

    .line 5211
    return-object v8

    .line 5213
    :cond_d
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    .line 5214
    const-string v2, "<provider> has empty authorities attribute"

    aput-object v2, p5, v1

    .line 5215
    return-object v8

    .line 5217
    :cond_e
    iget-object v1, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5219
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    move-object v3, v15

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 5221
    return-object v8

    .line 5224
    :cond_f
    return-object v5
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 21
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5230
    move-object/from16 v7, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 5232
    .local v8, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_1b

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    .line 5234
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    goto/16 :goto_8

    .line 5235
    :cond_2
    :goto_1
    if-eq v9, v0, :cond_1a

    const/4 v1, 0x4

    if-ne v9, v1, :cond_3

    .line 5236
    goto :goto_0

    .line 5239
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    .line 5240
    new-instance v5, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v5, v7}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 5241
    .local v5, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v1

    .end local v5    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .local v0, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    if-nez v3, :cond_4

    .line 5243
    return v11

    .line 5245
    :cond_4
    if-eqz p3, :cond_5

    .line 5246
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5247
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    iput v3, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5249
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v1

    iget v3, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5250
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5252
    .end local v0    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    goto :goto_0

    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5253
    iget-object v0, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v6, p5

    invoke-direct {v2, v4, v5, v0, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 5255
    return v11

    .line 5258
    :cond_7
    move-object/from16 v6, p5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "grant-uri-permission"

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParser"

    if-eqz v3, :cond_d

    .line 5259
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5262
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 5264
    .local v1, "pa":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5266
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 5267
    new-instance v12, Landroid/os/PatternMatcher;

    invoke-direct {v12, v3, v11}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v12

    .line 5270
    :cond_8
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5272
    if-eqz v3, :cond_9

    .line 5273
    new-instance v12, Landroid/os/PatternMatcher;

    invoke-direct {v12, v3, v10}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v12

    .line 5276
    :cond_9
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5278
    if-eqz v3, :cond_a

    .line 5279
    move/from16 v16, v11

    new-instance v11, Landroid/os/PatternMatcher;

    invoke-direct {v11, v3, v12}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v11

    goto :goto_2

    .line 5278
    :cond_a
    move/from16 v16, v11

    .line 5282
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5284
    if-eqz v1, :cond_c

    .line 5285
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v11, :cond_b

    .line 5286
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v12, v10, [Landroid/os/PatternMatcher;

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5287
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v1, v11, v16

    goto :goto_3

    .line 5289
    :cond_b
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v11

    .line 5290
    .local v11, "N":I
    add-int/lit8 v12, v11, 0x1

    new-array v12, v12, [Landroid/os/PatternMatcher;

    .line 5291
    .local v12, "newp":[Landroid/os/PatternMatcher;
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    move/from16 v14, v16

    invoke-static {v13, v14, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5292
    aput-object v1, v12, v11

    .line 5293
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v12, v13, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5295
    .end local v11    # "N":I
    .end local v12    # "newp":[Landroid/os/PatternMatcher;
    :goto_3
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v10, v11, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5308
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5310
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 5298
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "pa":Landroid/os/PatternMatcher;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <path-permission>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5299
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5300
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5298
    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5302
    goto/16 :goto_0

    .line 5310
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    :cond_d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "path-permission"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5311
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 5314
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 5316
    .local v11, "pa":Landroid/content/pm/PathPermission;
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 5318
    .local v17, "permission":Ljava/lang/String;
    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5320
    .local v16, "readPermission":Ljava/lang/String;
    if-nez v16, :cond_e

    .line 5321
    move-object/from16 v16, v17

    move-object/from16 v18, v16

    goto :goto_4

    .line 5320
    :cond_e
    move-object/from16 v18, v16

    .line 5323
    .end local v16    # "readPermission":Ljava/lang/String;
    .local v18, "readPermission":Ljava/lang/String;
    :goto_4
    const/4 v10, 0x2

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 5325
    .local v20, "writePermission":Ljava/lang/String;
    if-nez v20, :cond_f

    .line 5326
    move-object/from16 v20, v17

    .line 5329
    :cond_f
    const/4 v10, 0x0

    .line 5330
    .local v10, "havePerm":Z
    if-eqz v18, :cond_10

    .line 5331
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 5332
    const/4 v10, 0x1

    move-object/from16 v12, v18

    goto :goto_5

    .line 5330
    :cond_10
    move-object/from16 v12, v18

    .line 5334
    .end local v18    # "readPermission":Ljava/lang/String;
    .local v12, "readPermission":Ljava/lang/String;
    :goto_5
    if-eqz v20, :cond_11

    .line 5335
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 5336
    const/4 v10, 0x1

    move-object/from16 v1, v20

    goto :goto_6

    .line 5334
    :cond_11
    move-object/from16 v1, v20

    .line 5339
    .end local v20    # "writePermission":Ljava/lang/String;
    .local v1, "writePermission":Ljava/lang/String;
    :goto_6
    if-nez v10, :cond_12

    .line 5341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5342
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5343
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5341
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5345
    goto/16 :goto_0

    .line 5352
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 5354
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 5355
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v5, v4, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 5359
    :cond_13
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5361
    .end local v5    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 5362
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5366
    :cond_14
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5368
    if-eqz v0, :cond_15

    .line 5369
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5373
    :cond_15
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5375
    if-eqz v0, :cond_16

    .line 5376
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5380
    :cond_16
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 5382
    if-eqz v11, :cond_18

    .line 5383
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_17

    .line 5384
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5385
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/16 v16, 0x0

    aput-object v11, v4, v16

    goto :goto_7

    .line 5387
    :cond_17
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v4, v4

    .line 5388
    .local v4, "N":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    .line 5389
    .local v5, "newp":[Landroid/content/pm/PathPermission;
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    invoke-static {v13, v14, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5390
    aput-object v11, v5, v4

    .line 5391
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v5, v13, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5392
    .end local v4    # "N":I
    .end local v5    # "newp":[Landroid/content/pm/PathPermission;
    nop

    .line 5404
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5406
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "havePerm":Z
    .end local v11    # "pa":Landroid/content/pm/PathPermission;
    .end local v12    # "readPermission":Ljava/lang/String;
    .end local v17    # "permission":Ljava/lang/String;
    goto/16 :goto_0

    .line 5395
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "writePermission":Ljava/lang/String;
    .restart local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "havePerm":Z
    .restart local v11    # "pa":Landroid/content/pm/PathPermission;
    .restart local v12    # "readPermission":Ljava/lang/String;
    .restart local v17    # "permission":Ljava/lang/String;
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5396
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5397
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5395
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5399
    goto/16 :goto_0

    .line 5408
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "havePerm":Z
    .end local v11    # "pa":Landroid/content/pm/PathPermission;
    .end local v12    # "readPermission":Ljava/lang/String;
    .end local v17    # "permission":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <provider>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5409
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5410
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5408
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5412
    goto/16 :goto_0

    .line 5235
    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    goto/16 :goto_0

    .line 5232
    :cond_1b
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 5419
    :goto_8
    const/16 v19, 0x1

    return v19
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 5712
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_0

    .line 5713
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5714
    return-object v0

    .line 5718
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/PackageParser;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5719
    :catch_0
    move-exception v2

    .line 5720
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    return-object v0
.end method

.method public static final parsePublicKey([B)Ljava/security/PublicKey;
    .locals 5
    .param p0, "publicKey"    # [B

    .line 5726
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_0

    .line 5727
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    return-object v0

    .line 5733
    :cond_0
    :try_start_0
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 5737
    .local v2, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 5741
    :try_start_1
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5742
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 5745
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 5743
    :catch_1
    move-exception v3

    .line 5744
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5751
    :goto_0
    :try_start_2
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5752
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 5755
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v3

    goto :goto_1

    .line 5753
    :catch_3
    move-exception v3

    .line 5754
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5761
    :goto_1
    :try_start_3
    const-string v3, "DSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5762
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v0

    .line 5765
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_4
    move-exception v1

    goto :goto_2

    .line 5763
    :catch_5
    move-exception v3

    .line 5764
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5770
    :goto_2
    return-object v0

    .line 5734
    .end local v2    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_6
    move-exception v2

    .line 5735
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    return-object v0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .locals 22
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5426
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 5429
    .local v2, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_0

    .line 5430
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v13, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/16 v8, 0x8

    const/16 v9, 0xc

    const/4 v11, 0x6

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    move-object v15, v2

    move-object/from16 v2, p1

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5441
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<service>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 5429
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v7, p1

    move-object v14, v1

    move-object v15, v2

    .line 5444
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5445
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5447
    new-instance v1, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v1

    .line 5448
    .local v9, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v10, 0x0

    aget-object v1, p5, v10

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 5449
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5450
    return-object v11

    .line 5453
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 5455
    .local v12, "setExported":Z
    if-eqz v12, :cond_2

    .line 5456
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5460
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v15, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5462
    .local v16, "str":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 5463
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_2

    .line 5465
    :cond_3
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v11

    :goto_1
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5468
    :goto_2
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 5469
    const/16 v2, 0x11

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5471
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v2, 0x13

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 5475
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v10, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5476
    const/16 v1, 0x9

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 5479
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v1, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v3, v2

    iput v3, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5481
    :cond_5
    const/16 v1, 0xa

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5484
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v1, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5486
    :cond_6
    const/16 v1, 0xe

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    .line 5489
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5491
    :cond_7
    const/16 v1, 0x12

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5494
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5496
    :cond_8
    const/16 v1, 0xb

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5499
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    iput v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5502
    :cond_9
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v4, 0xd

    invoke-virtual {v15, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 5505
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v1, :cond_a

    .line 5506
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5510
    :cond_a
    nop

    .line 5511
    const/16 v1, 0x10

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 5512
    .local v17, "visibleToEphemeral":Z
    const/high16 v18, 0x100000

    if-eqz v17, :cond_b

    .line 5513
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5514
    iput-boolean v2, v7, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5517
    :cond_b
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5519
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 5523
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v4, :cond_c

    .line 5524
    const-string v1, "Heavy-weight applications can not have services in main process"

    aput-object v1, p5, v10

    .line 5525
    return-object v11

    .line 5529
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 5531
    .local v1, "outerDepth":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v2, :cond_16

    if-ne v5, v13, :cond_e

    .line 5533
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v6, p5

    move/from16 v19, v1

    move v10, v2

    move/from16 v20, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    goto/16 :goto_5

    .line 5534
    :cond_e
    :goto_4
    if-eq v5, v13, :cond_15

    if-ne v5, v3, :cond_f

    .line 5535
    goto :goto_3

    .line 5538
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "intent-filter"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5539
    new-instance v4, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v4, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 5540
    .local v4, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move v6, v3

    const/4 v3, 0x1

    move/from16 v19, v5

    move-object v5, v4

    .end local v4    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .local v5, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .local v19, "type":I
    const/4 v4, 0x0

    move v10, v2

    move/from16 v21, v6

    move/from16 v20, v19

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    move/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "outerDepth":I
    .local v19, "outerDepth":I
    .local v20, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 5542
    return-object v11

    .line 5544
    :cond_10
    if-eqz v17, :cond_11

    .line 5545
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5546
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v3, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v3, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5548
    :cond_11
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v3

    iget v4, v9, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5549
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5550
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move v2, v10

    move/from16 v1, v19

    move/from16 v3, v21

    const/4 v10, 0x0

    goto :goto_3

    .end local v19    # "outerDepth":I
    .end local v20    # "type":I
    .restart local v1    # "outerDepth":I
    .local v5, "type":I
    :cond_12
    move-object/from16 v6, p5

    move/from16 v19, v1

    move v10, v2

    move/from16 v21, v3

    move/from16 v20, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .end local v1    # "outerDepth":I
    .end local v5    # "type":I
    .restart local v19    # "outerDepth":I
    .restart local v20    # "type":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5551
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_13

    .line 5553
    return-object v11

    .line 5551
    :cond_13
    move v2, v10

    move/from16 v1, v19

    move/from16 v3, v21

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 5557
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5558
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5559
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5557
    const-string v4, "PackageParser"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5561
    move v2, v10

    move/from16 v1, v19

    move/from16 v3, v21

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 5534
    .end local v19    # "outerDepth":I
    .end local v20    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v5    # "type":I
    :cond_15
    move-object/from16 v6, p5

    move/from16 v19, v1

    move v10, v2

    move/from16 v21, v3

    move/from16 v20, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .end local v1    # "outerDepth":I
    .end local v5    # "type":I
    .restart local v19    # "outerDepth":I
    .restart local v20    # "type":I
    move v2, v10

    move/from16 v1, v19

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 5531
    .end local v19    # "outerDepth":I
    .end local v20    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v5    # "type":I
    :cond_16
    move-object/from16 v6, p5

    move/from16 v19, v1

    move v10, v2

    move/from16 v20, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 5569
    .end local v1    # "outerDepth":I
    .end local v5    # "type":I
    .restart local v19    # "outerDepth":I
    .restart local v20    # "type":I
    :goto_5
    if-nez v12, :cond_18

    .line 5570
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17

    goto :goto_6

    :cond_17
    const/4 v10, 0x0

    :goto_6
    iput-boolean v10, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5573
    :cond_18
    return-object v9
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1309
    move-object v0, p3

    .line 1312
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1314
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1318
    const/4 v2, 0x0

    .line 1320
    .local v2, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1321
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 1322
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 1323
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 1324
    goto :goto_0

    .line 1327
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1328
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageParser"

    if-eqz v6, :cond_5

    .line 1329
    if-eqz v2, :cond_3

    .line 1335
    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1337
    goto :goto_0

    .line 1341
    :cond_3
    const/4 v2, 0x1

    .line 1342
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1343
    return-object v1

    .line 1359
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1353
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <manifest>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1355
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1353
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1357
    goto :goto_0

    .line 1361
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 1362
    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    .line 1363
    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1366
    :cond_7
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1262
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v8, v0, p2

    .line 1264
    .local v8, "apkPath":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1265
    iput-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1270
    const/4 v3, 0x0

    .line 1273
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p3, v8}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 1274
    .local v9, "cookie":I
    if-eqz v9, :cond_1

    .line 1279
    const-string v4, "AndroidManifest.xml"

    invoke-virtual {p3, v9, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1280
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    invoke-direct {v3, p3, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1282
    .local v3, "res":Landroid/content/res/Resources;
    new-array v7, v0, [Ljava/lang/String;

    .line 1283
    .local v7, "outError":[Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    .line 1284
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 1295
    .end local v7    # "outError":[Ljava/lang/String;
    .end local v9    # "cookie":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1296
    nop

    .line 1297
    return-void

    .line 1285
    .restart local v7    # "outError":[Ljava/lang/String;
    .restart local v9    # "cookie":I
    :cond_0
    :try_start_2
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (at "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1286
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "): "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1295
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v7    # "outError":[Ljava/lang/String;
    .end local v9    # "cookie":I
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    .line 1291
    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    .line 1289
    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1

    .line 1295
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_2

    .line 1291
    :catch_2
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_0

    .line 1289
    :catch_3
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_1

    .line 1275
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "cookie":I
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x65

    invoke-direct {v0, v4, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1295
    .end local v9    # "cookie":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_2
    move-exception v0

    move-object v2, p1

    goto :goto_2

    .line 1291
    :catch_4
    move-exception v0

    move-object v2, p1

    .line 1292
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    :try_start_4
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read manifest from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x66

    invoke-direct {v4, v6, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v4

    .line 1289
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catch_5
    move-exception v0

    move-object v2, p1

    .line 1290
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_1
    nop

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1295
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_3
    move-exception v0

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1296
    throw v0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 18
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4049
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4052
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v10, 0x4

    if-eqz v5, :cond_0

    .line 4054
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v6, v5, p5

    or-int/2addr v6, v10

    aput v6, v5, p5

    .line 4057
    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4059
    .local v11, "classLoaderName":Ljava/lang/String;
    const/16 v12, -0x6c

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    invoke-static {v11}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 4062
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid class loader name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p6, v13

    .line 4063
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4064
    return v13

    .line 4060
    :cond_2
    :goto_0
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v11, v5, p5

    .line 4067
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    move-object v15, v4

    .line 4069
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v14, "innerDepth":I
    .local v15, "sa":Landroid/content/res/TypedArray;
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v9, :cond_19

    const/4 v4, 0x3

    if-ne v5, v4, :cond_4

    .line 4070
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v14, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v5

    move-object/from16 v5, p6

    goto/16 :goto_6

    .line 4071
    :cond_4
    :goto_2
    if-eq v5, v4, :cond_18

    if-ne v5, v10, :cond_5

    .line 4072
    move-object/from16 v5, p6

    goto/16 :goto_5

    .line 4075
    :cond_5
    const/16 v16, 0x0

    .line 4079
    .local v16, "parsedComponent":Landroid/content/pm/ComponentInfo;
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 4080
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4081
    .local v4, "tagName":Ljava/lang/String;
    const-string v7, "activity"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4082
    const/4 v7, 0x0

    iget-boolean v8, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v10, v4

    move/from16 v17, v5

    move/from16 v4, p4

    move-object/from16 v5, p6

    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .local v10, "tagName":Ljava/lang/String;
    .local v17, "type":I
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4084
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_6

    .line 4085
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4086
    return v13

    .line 4089
    :cond_6
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4090
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4092
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v2, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_7
    move-object v10, v4

    move/from16 v17, v5

    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v17    # "type":I
    const-string/jumbo v2, "receiver"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4093
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4095
    .restart local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_8

    .line 4096
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4097
    return v13

    .line 4100
    :cond_8
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4101
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4103
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_9
    const-string/jumbo v2, "service"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4104
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v7

    .line 4105
    .local v7, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v7, :cond_a

    .line 4106
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4107
    return v13

    .line 4110
    :cond_a
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4111
    iget-object v2, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4113
    .end local v7    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_b
    const-string/jumbo v2, "provider"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4114
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v7

    .line 4115
    .local v7, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v7, :cond_c

    .line 4116
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4117
    return v13

    .line 4120
    :cond_c
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4121
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4123
    .end local v7    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_d
    const-string v2, "activity-alias"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4124
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4125
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_e

    .line 4126
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4127
    return v13

    .line 4130
    :cond_e
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4131
    iget-object v4, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4133
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v4, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto/16 :goto_4

    .end local v4    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_f
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4137
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_15

    .line 4139
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4140
    return v13

    .line 4143
    :cond_10
    const-string/jumbo v4, "uses-static-library"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4144
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 4145
    return v13

    .line 4148
    :cond_11
    const-string/jumbo v4, "uses-library"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4149
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4154
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 4156
    .local v7, "lname":Ljava/lang/String;
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 4160
    .local v8, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4162
    if-eqz v7, :cond_13

    .line 4163
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 4164
    if-eqz v8, :cond_12

    .line 4166
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4167
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_3

    .line 4171
    :cond_12
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 4172
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4178
    :cond_13
    :goto_3
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4180
    .end local v7    # "lname":Ljava/lang/String;
    .end local v8    # "req":Z
    move-object v15, v4

    move-object/from16 v4, v16

    goto :goto_4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :cond_14
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4183
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4199
    :cond_15
    move-object/from16 v4, v16

    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v4, "parsedComponent":Landroid/content/pm/ComponentInfo;
    :goto_4
    if-eqz v4, :cond_16

    iget-object v7, v4, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v7, :cond_16

    .line 4204
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, p5

    iput-object v7, v4, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4206
    .end local v4    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_16
    const/4 v10, 0x4

    goto/16 :goto_1

    .line 4187
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <application>: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4189
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4187
    const-string v7, "PackageParser"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4191
    goto :goto_5

    .line 4071
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v17    # "type":I
    .restart local v5    # "type":I
    :cond_18
    move/from16 v17, v5

    move-object/from16 v5, p6

    .line 4069
    .end local v5    # "type":I
    :goto_5
    const/4 v10, 0x4

    goto/16 :goto_1

    .restart local v5    # "type":I
    :cond_19
    move/from16 v17, v5

    move-object/from16 v5, p6

    .line 4208
    .end local v5    # "type":I
    .restart local v17    # "type":I
    :goto_6
    return v9
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2733
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2734
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2738
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2740
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2742
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2743
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2747
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2749
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2751
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2752
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2860
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2865
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2868
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2869
    .local v3, "maxSdkVersion":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2871
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    .line 2872
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 2873
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 2877
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2880
    .local v5, "requiredFeature":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2883
    .local v1, "requiredNotfeature":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2885
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2887
    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 2888
    return v6

    .line 2891
    :cond_1
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_2

    .line 2892
    return v6

    .line 2896
    :cond_2
    if-eqz v5, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v5}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2897
    return v6

    .line 2901
    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 2902
    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2903
    return v6

    .line 2906
    :cond_4
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2907
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 2908
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2910
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2912
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2910
    const-string v9, "PackageParser"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :goto_0
    return v6
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2757
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2761
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2763
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2765
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2767
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2770
    const/16 v6, -0x6c

    if-eqz v2, :cond_4

    if-ltz v3, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    .line 2779
    :cond_0
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v1

    .line 2781
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2782
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2783
    return v1

    .line 2786
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2789
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2792
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2793
    .local v6, "additionalCertSha256Digests":[Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_2

    .line 2794
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2795
    if-nez v6, :cond_3

    .line 2796
    return v1

    .line 2799
    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2802
    :cond_3
    array-length v7, v6

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/String;

    .line 2803
    .local v7, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v7, v1

    .line 2804
    array-length v8, v6

    invoke-static {v6, v1, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2807
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2808
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v3

    invoke-static {v1, v8, v9, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2810
    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2813
    return v4

    .line 2771
    .end local v6    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v7    # "certSha256Digests":[Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-static-library declaration name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " version: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " certDigest"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v1

    .line 2773
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2774
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2775
    return v1
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 5680
    const/4 v0, 0x0

    .line 5681
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5683
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 5684
    .local v2, "attrCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5685
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 5686
    .local v4, "attrResId":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 5692
    :sswitch_0
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5688
    :sswitch_1
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5689
    nop

    .line 5684
    .end local v4    # "attrResId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5697
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    const-string v4, "PackageParser"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 5702
    :cond_1
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 5703
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-nez v5, :cond_2

    .line 5704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    return-object v3

    .line 5708
    :cond_2
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v5}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    .line 5698
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :cond_3
    :goto_2
    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1010003 -> :sswitch_1
        0x10103a6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .locals 15
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 8684
    const v0, 0x111028c

    if-eqz p0, :cond_0

    .line 8685
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8686
    return-void

    .line 8691
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    .line 8693
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 8691
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8696
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 8697
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 8700
    .local v2, "systemResources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8708
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 8709
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 8700
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 8712
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8713
    return-void

    .line 8694
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 8695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 11
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 9321
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9322
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 9323
    return-object v1

    .line 9326
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 9327
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 9328
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9329
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9330
    .local v6, "M":I
    if-ne v6, v2, :cond_1

    .line 9331
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9332
    goto :goto_2

    .line 9335
    :cond_1
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 9336
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 9337
    const-class v9, Ljava/security/PublicKey;

    .line 9338
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 9339
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9336
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9342
    .end local v8    # "j":I
    :cond_2
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9327
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9345
    .end local v4    # "i":I
    :cond_3
    return-object v3
.end method

.method public static reportIfDebug(ZJ)Z
    .locals 0
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 9230
    return p0
.end method

.method private resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V
    .locals 11
    .param p1, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .line 4861
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4862
    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4866
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4868
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4869
    return-void

    .line 4872
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4874
    .local v1, "windowLayoutAffinity":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v2, :cond_2

    .line 4875
    new-instance v3, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4879
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 4880
    return-void

    .line 4863
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .param p3, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4696
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0xc00

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4700
    .local v0, "appExplicitDefault":Z
    :goto_0
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4714
    :cond_1
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_2

    .line 4718
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4719
    return-void

    .line 4724
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4725
    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4726
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4727
    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4728
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4729
    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4731
    :cond_5
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4733
    :goto_1
    return-void

    .line 4703
    :cond_6
    :goto_2
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    .line 4705
    .local v1, "appResizeable":Z
    :goto_3
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4707
    const/4 v2, 0x2

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_4

    .line 4709
    :cond_8
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4711
    :goto_4
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .line 8677
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8678
    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4742
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 4743
    const v0, 0x3fee147b    # 1.86f

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4745
    .local v0, "maxAspectRatio":F
    :goto_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v1, v2

    const-string v2, "android.max_aspect"

    if-eqz v1, :cond_1

    .line 4747
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    goto :goto_1

    .line 4748
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4749
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4750
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4753
    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 4755
    .local v3, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v3}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4756
    goto :goto_2

    .line 4764
    :cond_3
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    .line 4765
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    goto :goto_3

    .line 4766
    :cond_4
    move v4, v0

    :goto_3
    nop

    .line 4768
    .local v4, "activityAspectRatio":F
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4769
    .end local v3    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v4    # "activityAspectRatio":F
    goto :goto_2

    .line 4770
    :cond_5
    return-void
.end method

.method private setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 4
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4778
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 4780
    .local v0, "minAspectRatio":F
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 4781
    .local v2, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMinAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4782
    goto :goto_0

    .line 4784
    :cond_0
    invoke-static {v2, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4785
    .end local v2    # "activity":Landroid/content/pm/PackageParser$Activity;
    goto :goto_0

    .line 4786
    :cond_1
    return-void
.end method

.method private setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4789
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.supports_size_changes"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4790
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 4792
    .local v0, "supportsSizeChanges":Z
    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 4793
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4794
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4795
    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v6, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4797
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    goto :goto_1

    .line 4798
    :cond_3
    return-void
.end method

.method public static toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1372
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1373
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1374
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 7995
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 7996
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 7998
    :cond_0
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7999
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 8001
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8003
    :goto_0
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8004
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 8006
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8008
    :goto_1
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8009
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 8011
    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8013
    :goto_2
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isVirtualPreload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8014
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_3

    .line 8016
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8018
    :goto_3
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 8019
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 8021
    :cond_5
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8023
    :goto_4
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 8024
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 8025
    :cond_6
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 8027
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 8028
    :cond_8
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 8029
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 8031
    :cond_9
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 8033
    :cond_a
    :goto_6
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 8034
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 8035
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 8037
    :cond_b
    invoke-static {p2}, Landroid/content/pm/PackageParser;->getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 8038
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    .line 8039
    .local v0, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    if-eqz v0, :cond_c

    .line 8040
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 8041
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 8043
    :cond_c
    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_7

    :cond_d
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_7
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 8044
    return-void
.end method

.method public static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 1546
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1547
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1548
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 1549
    .local v2, "front":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 1550
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1551
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 1552
    :cond_1
    const/4 v2, 0x0

    .line 1553
    goto :goto_1

    .line 1555
    :cond_2
    if-nez v2, :cond_4

    .line 1556
    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_3
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_4

    .line 1557
    goto :goto_1

    .line 1560
    :cond_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    .line 1561
    const/4 v1, 0x1

    .line 1562
    const/4 v2, 0x1

    .line 1563
    nop

    .line 1549
    .end local v4    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1565
    .restart local v4    # "c":C
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1567
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1568
    const-string v3, "Invalid filename"

    return-object v3

    .line 1570
    :cond_8
    if-nez v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_2

    .line 1571
    :cond_9
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    .line 1570
    :goto_3
    return-object v3
.end method

.method public static writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 8
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 9291
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 9292
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9293
    return-void

    .line 9296
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 9297
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9299
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9300
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9301
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 9302
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_1

    .line 9303
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9304
    goto :goto_0

    .line 9307
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 9308
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9309
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 9310
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9309
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9312
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_2
    goto :goto_0

    .line 9313
    :cond_3
    return-void
.end method


# virtual methods
.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1189
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1190
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_1

    .line 1191
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1192
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a coreApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x6c

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1197
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1199
    .local v1, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1200
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1201
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    nop

    .line 1207
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1202
    return-object v2

    .line 1207
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1203
    :catch_0
    move-exception v2

    .line 1204
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x66

    invoke-direct {v3, v5, v4, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "flags":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "flags":I
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1208
    throw v2
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 1103
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 604
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 605
    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/content/pm/PackageParser$Callback;

    .line 635
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 636
    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 597
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 598
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .line 593
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 594
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .line 584
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 585
    return-void
.end method
