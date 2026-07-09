.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist appinfo:Z

.field private static blacklist hpkePublicApi:Z

.field private static blacklist hpkeVApis:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist madviseApi:Z

.field private static blacklist nativeMetrics:Z

.field private static blacklist openjdk21Stringconcat:Z

.field private static blacklist openjdk21V1Apis:Z

.field private static blacklist openjdk21V2Apis:Z

.field private static blacklist postCleanupApis:Z

.field private static blacklist readOnlyDynamicCodeLoad:Z

.field private static blacklist vApis:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .locals 4

    .line 24
    const-string v0, "FeatureFlagsImplExport"

    :try_start_0
    const-string v1, "com.android.libcore"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 25
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v2, "hpke_public_api"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 26
    const-string v2, "hpke_v_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 27
    const-string v2, "madvise_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 28
    const-string v2, "native_metrics"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 29
    const-string v2, "openjdk21_stringconcat"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 30
    const-string v2, "openjdk_21_v1_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 31
    const-string v2, "openjdk_21_v2_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 32
    const-string v2, "post_cleanup_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 33
    const-string/jumbo v2, "read_only_dynamic_code_load"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 34
    const-string/jumbo v2, "v_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    .line 35
    const-string v2, "appinfo"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 36
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 44
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist appinfo()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 51
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    return v0
.end method

.method public blacklist hpkePublicApi()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 59
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    return v0
.end method

.method public blacklist hpkeVApis()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 67
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    return v0
.end method

.method public blacklist madviseApi()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 75
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    return v0
.end method

.method public blacklist nativeMetrics()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 83
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    return v0
.end method

.method public blacklist openjdk21Stringconcat()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 91
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    return v0
.end method

.method public blacklist openjdk21V1Apis()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 99
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    return v0
.end method

.method public blacklist openjdk21V2Apis()Z
    .locals 1

    .line 104
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 107
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    return v0
.end method

.method public blacklist postCleanupApis()Z
    .locals 1

    .line 112
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 115
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    return v0
.end method

.method public blacklist readOnlyDynamicCodeLoad()Z
    .locals 1

    .line 120
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 123
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    return v0
.end method

.method public blacklist vApis()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    return v0
.end method
