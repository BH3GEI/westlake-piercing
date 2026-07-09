.class public final Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEPRECATE_NETWORK_POLICY_CALLBACK:Ljava/lang/String; = "android.net.platform.flags.deprecate_network_policy_callback"

.field public static final blacklist FLAG_MDNS_IMPROVEMENT_FOR_25Q2:Ljava/lang/String; = "android.net.platform.flags.mdns_improvement_for_25q2"

.field public static final blacklist FLAG_POWERED_OFF_FINDING_PLATFORM:Ljava/lang/String; = "android.net.platform.flags.powered_off_finding_platform"

.field public static final blacklist FLAG_REGISTER_NSD_OFFLOAD_ENGINE:Ljava/lang/String; = "android.net.platform.flags.register_nsd_offload_engine"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deprecateNetworkPolicyCallback()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->deprecateNetworkPolicyCallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist mdnsImprovementFor25q2()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->mdnsImprovementFor25q2()Z

    move-result v0

    return v0
.end method

.method public static blacklist poweredOffFindingPlatform()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->poweredOffFindingPlatform()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerNsdOffloadEngine()Z
    .locals 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->registerNsdOffloadEngine()Z

    move-result v0

    return v0
.end method
