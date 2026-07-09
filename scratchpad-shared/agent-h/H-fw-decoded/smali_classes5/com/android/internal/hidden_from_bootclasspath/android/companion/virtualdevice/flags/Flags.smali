.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ACTIVITY_CONTROL_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.activity_control_api"

.field public static final blacklist FLAG_CAMERA_MULTIPLE_INPUT_STREAMS:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_multiple_input_streams"

.field public static final blacklist FLAG_CAMERA_TIMESTAMP_FROM_SURFACE:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

.field public static final blacklist FLAG_CORRECT_VIRTUAL_DISPLAY_POWER_STATE:Ljava/lang/String; = "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

.field public static final blacklist FLAG_DEFAULT_DEVICE_CAMERA_ACCESS_POLICY:Ljava/lang/String; = "android.companion.virtualdevice.flags.default_device_camera_access_policy"

.field public static final blacklist FLAG_DEVICE_AWARE_DISPLAY_POWER:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_display_power"

.field public static final blacklist FLAG_DISPLAY_POWER_MANAGER_APIS:Ljava/lang/String; = "android.companion.virtualdevice.flags.display_power_manager_apis"

.field public static final blacklist FLAG_ENABLE_LIMITED_VDM_ROLE:Ljava/lang/String; = "android.companion.virtualdevice.flags.enable_limited_vdm_role"

.field public static final blacklist FLAG_ENFORCE_REMOTE_DEVICE_OPT_OUT_ON_ALL_VIRTUAL_DISPLAYS:Ljava/lang/String; = "android.companion.virtualdevice.flags.enforce_remote_device_opt_out_on_all_virtual_displays"

.field public static final blacklist FLAG_HIGH_RESOLUTION_SCROLL:Ljava/lang/String; = "android.companion.virtualdevice.flags.high_resolution_scroll"

.field public static final blacklist FLAG_MIGRATE_VIEWCONFIGURATION_CONSTANTS_TO_RESOURCES:Ljava/lang/String; = "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

.field public static final blacklist FLAG_NOTIFICATIONS_FOR_DEVICE_STREAMING:Ljava/lang/String; = "android.companion.virtualdevice.flags.notifications_for_device_streaming"

.field public static final blacklist FLAG_STATUS_BAR_AND_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.status_bar_and_insets"

.field public static final blacklist FLAG_VDM_SETTINGS:Ljava/lang/String; = "android.companion.virtualdevice.flags.vdm_settings"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_insets"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_ROTATION_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_rotation_api"

.field public static final blacklist FLAG_VIRTUAL_ROTARY:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_rotary"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activityControlApi()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->activityControlApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraMultipleInputStreams()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraMultipleInputStreams()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraTimestampFromSurface()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraTimestampFromSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist correctVirtualDisplayPowerState()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->correctVirtualDisplayPowerState()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultDeviceCameraAccessPolicy()Z
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->defaultDeviceCameraAccessPolicy()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareDisplayPower()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareDisplayPower()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayPowerManagerApis()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->displayPowerManagerApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLimitedVdmRole()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enableLimitedVdmRole()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceRemoteDeviceOptOutOnAllVirtualDisplays()Z
    .locals 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enforceRemoteDeviceOptOutOnAllVirtualDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist highResolutionScroll()Z
    .locals 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->highResolutionScroll()Z

    move-result v0

    return v0
.end method

.method public static blacklist migrateViewconfigurationConstantsToResources()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationsForDeviceStreaming()Z
    .locals 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->notificationsForDeviceStreaming()Z

    move-result v0

    return v0
.end method

.method public static blacklist statusBarAndInsets()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->statusBarAndInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmSettings()Z
    .locals 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->vdmSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayInsets()Z
    .locals 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayRotationApi()Z
    .locals 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayRotationApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualRotary()Z
    .locals 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualRotary()Z

    move-result v0

    return v0
.end method
