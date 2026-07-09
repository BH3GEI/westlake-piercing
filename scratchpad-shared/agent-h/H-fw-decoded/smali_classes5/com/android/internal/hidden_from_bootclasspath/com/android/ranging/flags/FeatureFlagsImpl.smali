.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist rangingCsEnabled:Z

.field private static blacklist rangingRttEnabled:Z

.field private static blacklist rangingStackEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

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

    .line 16
    const-string v0, "FeatureFlagsImplExport"

    :try_start_0
    const-string v1, "com.android.ranging.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 17
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string/jumbo v2, "ranging_cs_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    .line 18
    const-string/jumbo v2, "ranging_rtt_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    .line 19
    const-string/jumbo v2, "ranging_stack_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 28
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist rangingCsEnabled()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 35
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    return v0
.end method

.method public blacklist rangingRttEnabled()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 43
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    return v0
.end method

.method public blacklist rangingStackEnabled()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 51
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    return v0
.end method
