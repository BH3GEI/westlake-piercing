.class public final Lcom/android/server/power/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_EARLY_SCREEN_TIMEOUT_DETECTOR:Ljava/lang/String; = "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

.field public static final blacklist FLAG_ENABLE_SCREEN_TIMEOUT_POLICY_LISTENER_API:Ljava/lang/String; = "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

.field public static final blacklist FLAG_FRAMEWORK_WAKELOCK_INFO:Ljava/lang/String; = "com.android.server.power.feature.flags.framework_wakelock_info"

.field public static final blacklist FLAG_IMPROVE_WAKELOCK_LATENCY:Ljava/lang/String; = "com.android.server.power.feature.flags.improve_wakelock_latency"

.field public static final blacklist FLAG_MOVE_WSC_LOGGING_TO_NOTIFIER:Ljava/lang/String; = "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

.field public static final blacklist FLAG_PER_DISPLAY_WAKE_BY_TOUCH:Ljava/lang/String; = "com.android.server.power.feature.flags.per_display_wake_by_touch"

.field public static final blacklist FLAG_POLICY_REASON_IN_DISPLAY_POWER_REQUEST:Ljava/lang/String; = "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

.field public static final blacklist FLAG_WAKELOCK_ATTRIBUTION_VIA_WORKCHAIN:Ljava/lang/String; = "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/server/power/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableEarlyScreenTimeoutDetector()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->enableEarlyScreenTimeoutDetector()Z

    move-result v0

    return v0
.end method

.method public static greylist enableScreenTimeoutPolicyListenerApi()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->enableScreenTimeoutPolicyListenerApi()Z

    move-result v0

    return v0
.end method

.method public static greylist frameworkWakelockInfo()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->frameworkWakelockInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist improveWakelockLatency()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->improveWakelockLatency()Z

    move-result v0

    return v0
.end method

.method public static greylist moveWscLoggingToNotifier()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->moveWscLoggingToNotifier()Z

    move-result v0

    return v0
.end method

.method public static greylist perDisplayWakeByTouch()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->perDisplayWakeByTouch()Z

    move-result v0

    return v0
.end method

.method public static greylist policyReasonInDisplayPowerRequest()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->policyReasonInDisplayPowerRequest()Z

    move-result v0

    return v0
.end method

.method public static greylist wakelockAttributionViaWorkchain()Z
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/power/feature/flags/FeatureFlags;->wakelockAttributionViaWorkchain()Z

    move-result v0

    return v0
.end method
