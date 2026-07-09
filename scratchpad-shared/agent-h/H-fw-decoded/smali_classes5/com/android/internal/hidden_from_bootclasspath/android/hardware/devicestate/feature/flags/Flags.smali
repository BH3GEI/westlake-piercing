.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEVICE_STATE_CONFIGURATION_FLAG:Ljava/lang/String; = "android.hardware.devicestate.feature.flags.device_state_configuration_flag"

.field public static final blacklist FLAG_DEVICE_STATE_PROPERTY_API:Ljava/lang/String; = "android.hardware.devicestate.feature.flags.device_state_property_api"

.field public static final blacklist FLAG_DEVICE_STATE_PROPERTY_MIGRATION:Ljava/lang/String; = "android.hardware.devicestate.feature.flags.device_state_property_migration"

.field public static final blacklist FLAG_DEVICE_STATE_RDM_V2:Ljava/lang/String; = "android.hardware.devicestate.feature.flags.device_state_rdm_v2"

.field public static final blacklist FLAG_DEVICE_STATE_REQUESTER_CANCEL_STATE:Ljava/lang/String; = "android.hardware.devicestate.feature.flags.device_state_requester_cancel_state"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deviceStateConfigurationFlag()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStateConfigurationFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceStatePropertyApi()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStatePropertyApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceStatePropertyMigration()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStatePropertyMigration()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceStateRdmV2()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStateRdmV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceStateRequesterCancelState()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStateRequesterCancelState()Z

    move-result v0

    return v0
.end method
