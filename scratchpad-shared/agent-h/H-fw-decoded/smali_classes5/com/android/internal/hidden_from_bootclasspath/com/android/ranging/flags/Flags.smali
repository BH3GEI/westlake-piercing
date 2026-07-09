.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags; = null

.field public static final blacklist FLAG_RANGING_CS_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_cs_enabled"

.field public static final blacklist FLAG_RANGING_RTT_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_rtt_enabled"

.field public static final blacklist FLAG_RANGING_STACK_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_stack_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist rangingCsEnabled()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;->rangingCsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist rangingRttEnabled()Z
    .locals 1

    .line 15
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;->rangingRttEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist rangingStackEnabled()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;->rangingStackEnabled()Z

    move-result v0

    return v0
.end method
