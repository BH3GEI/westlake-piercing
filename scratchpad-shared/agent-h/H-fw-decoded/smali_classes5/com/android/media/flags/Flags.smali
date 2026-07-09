.class public final Lcom/android/media/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADJUST_VOLUME_FOR_FOREGROUND_APP_PLAYING_AUDIO_WITHOUT_MEDIA_SESSION:Ljava/lang/String; = "com.android.media.flags.adjust_volume_for_foreground_app_playing_audio_without_media_session"

.field public static final blacklist FLAG_DISABLE_SET_BLUETOOTH_AD2P_ON_CALLS:Ljava/lang/String; = "com.android.media.flags.disable_set_bluetooth_ad2p_on_calls"

.field public static final blacklist FLAG_DISABLE_TRANSFER_WHEN_APPS_DO_NOT_SUPPORT:Ljava/lang/String; = "com.android.media.flags.disable_transfer_when_apps_do_not_support"

.field public static final blacklist FLAG_ENABLE_AUDIO_INPUT_DEVICE_ROUTING_AND_VOLUME_CONTROL:Ljava/lang/String; = "com.android.media.flags.enable_audio_input_device_routing_and_volume_control"

.field public static final blacklist FLAG_ENABLE_AUDIO_POLICIES_DEVICE_AND_BLUETOOTH_CONTROLLER:Ljava/lang/String; = "com.android.media.flags.enable_audio_policies_device_and_bluetooth_controller"

.field public static final blacklist FLAG_ENABLE_BUILT_IN_SPEAKER_ROUTE_SUITABILITY_STATUSES:Ljava/lang/String; = "com.android.media.flags.enable_built_in_speaker_route_suitability_statuses"

.field public static final blacklist FLAG_ENABLE_CROSS_USER_ROUTING_IN_MEDIA_ROUTER2:Ljava/lang/String; = "com.android.media.flags.enable_cross_user_routing_in_media_router2"

.field public static final blacklist FLAG_ENABLE_FULL_SCAN_WITH_MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "com.android.media.flags.enable_full_scan_with_media_content_control"

.field public static final blacklist FLAG_ENABLE_GET_TRANSFERABLE_ROUTES:Ljava/lang/String; = "com.android.media.flags.enable_get_transferable_routes"

.field public static final blacklist FLAG_ENABLE_MEDIA_ROUTE_2_INFO_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.media.flags.enable_media_route_2_info_provider_package_name"

.field public static final blacklist FLAG_ENABLE_MIRRORING_IN_MEDIA_ROUTER_2:Ljava/lang/String; = "com.android.media.flags.enable_mirroring_in_media_router_2"

.field public static final blacklist FLAG_ENABLE_MR2_SERVICE_NON_MAIN_BG_THREAD:Ljava/lang/String; = "com.android.media.flags.enable_mr2_service_non_main_bg_thread"

.field public static final blacklist FLAG_ENABLE_NEW_MEDIA_ROUTE_2_INFO_TYPES:Ljava/lang/String; = "com.android.media.flags.enable_new_media_route_2_info_types"

.field public static final blacklist FLAG_ENABLE_NEW_WIRED_MEDIA_ROUTE_2_INFO_TYPES:Ljava/lang/String; = "com.android.media.flags.enable_new_wired_media_route_2_info_types"

.field public static final blacklist FLAG_ENABLE_NOTIFYING_ACTIVITY_MANAGER_WITH_MEDIA_SESSION_STATUS_CHANGE:Ljava/lang/String; = "com.android.media.flags.enable_notifying_activity_manager_with_media_session_status_change"

.field public static final blacklist FLAG_ENABLE_NULL_SESSION_IN_MEDIA_BROWSER_SERVICE:Ljava/lang/String; = "com.android.media.flags.enable_null_session_in_media_browser_service"

.field public static final blacklist FLAG_ENABLE_OUTPUT_SWITCHER_DEVICE_GROUPING:Ljava/lang/String; = "com.android.media.flags.enable_output_switcher_device_grouping"

.field public static final blacklist FLAG_ENABLE_OUTPUT_SWITCHER_SESSION_GROUPING:Ljava/lang/String; = "com.android.media.flags.enable_output_switcher_session_grouping"

.field public static final blacklist FLAG_ENABLE_PREVENTION_OF_KEEP_ALIVE_ROUTE_PROVIDERS:Ljava/lang/String; = "com.android.media.flags.enable_prevention_of_keep_alive_route_providers"

.field public static final blacklist FLAG_ENABLE_PREVENTION_OF_MANAGER_SCANS_WHEN_NO_APPS_SCAN:Ljava/lang/String; = "com.android.media.flags.enable_prevention_of_manager_scans_when_no_apps_scan"

.field public static final blacklist FLAG_ENABLE_PRIVILEGED_ROUTING_FOR_MEDIA_ROUTING_CONTROL:Ljava/lang/String; = "com.android.media.flags.enable_privileged_routing_for_media_routing_control"

.field public static final blacklist FLAG_ENABLE_RLP_CALLBACKS_IN_MEDIA_ROUTER2:Ljava/lang/String; = "com.android.media.flags.enable_rlp_callbacks_in_media_router2"

.field public static final blacklist FLAG_ENABLE_ROUTE_VISIBILITY_CONTROL_API:Ljava/lang/String; = "com.android.media.flags.enable_route_visibility_control_api"

.field public static final blacklist FLAG_ENABLE_SCREEN_OFF_SCANNING:Ljava/lang/String; = "com.android.media.flags.enable_screen_off_scanning"

.field public static final blacklist FLAG_ENABLE_USE_OF_BLUETOOTH_DEVICE_GET_ALIAS_FOR_MR2INFO_GET_NAME:Ljava/lang/String; = "com.android.media.flags.enable_use_of_bluetooth_device_get_alias_for_mr2info_get_name"

.field public static final blacklist FLAG_ENABLE_USE_OF_SINGLETON_AUDIO_MANAGER_ROUTE_CONTROLLER:Ljava/lang/String; = "com.android.media.flags.enable_use_of_singleton_audio_manager_route_controller"

.field public static final blacklist FLAG_ENABLE_WAITING_STATE_FOR_SYSTEM_SESSION_CREATION_REQUEST:Ljava/lang/String; = "com.android.media.flags.enable_waiting_state_for_system_session_creation_request"

.field public static final blacklist FLAG_FALLBACK_TO_DEFAULT_HANDLING_WHEN_MEDIA_SESSION_HAS_FIXED_VOLUME_HANDLING:Ljava/lang/String; = "com.android.media.flags.fallback_to_default_handling_when_media_session_has_fixed_volume_handling"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Lcom/android/media/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/media/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z
    .locals 1

    .line 66
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z

    move-result v0

    return v0
.end method

.method public static greylist disableSetBluetoothAd2pOnCalls()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->disableSetBluetoothAd2pOnCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist disableTransferWhenAppsDoNotSupport()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->disableTransferWhenAppsDoNotSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAudioInputDeviceRoutingAndVolumeControl()Z
    .locals 1

    .line 84
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableAudioInputDeviceRoutingAndVolumeControl()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAudioPoliciesDeviceAndBluetoothController()Z
    .locals 1

    .line 90
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    move-result v0

    return v0
.end method

.method public static greylist enableBuiltInSpeakerRouteSuitabilityStatuses()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCrossUserRoutingInMediaRouter2()Z
    .locals 1

    .line 102
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableCrossUserRoutingInMediaRouter2()Z

    move-result v0

    return v0
.end method

.method public static greylist enableFullScanWithMediaContentControl()Z
    .locals 1

    .line 108
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableFullScanWithMediaContentControl()Z

    move-result v0

    return v0
.end method

.method public static greylist enableGetTransferableRoutes()Z
    .locals 1

    .line 114
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableGetTransferableRoutes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMediaRoute2InfoProviderPackageName()Z
    .locals 1

    .line 120
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableMediaRoute2InfoProviderPackageName()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMirroringInMediaRouter2()Z
    .locals 1

    .line 126
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableMirroringInMediaRouter2()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMr2ServiceNonMainBgThread()Z
    .locals 1

    .line 132
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableMr2ServiceNonMainBgThread()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNewMediaRoute2InfoTypes()Z
    .locals 1

    .line 138
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableNewMediaRoute2InfoTypes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNewWiredMediaRoute2InfoTypes()Z
    .locals 1

    .line 144
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableNewWiredMediaRoute2InfoTypes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNotifyingActivityManagerWithMediaSessionStatusChange()Z
    .locals 1

    .line 150
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNullSessionInMediaBrowserService()Z
    .locals 1

    .line 156
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableNullSessionInMediaBrowserService()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOutputSwitcherDeviceGrouping()Z
    .locals 1

    .line 162
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableOutputSwitcherDeviceGrouping()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOutputSwitcherSessionGrouping()Z
    .locals 1

    .line 168
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableOutputSwitcherSessionGrouping()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePreventionOfKeepAliveRouteProviders()Z
    .locals 1

    .line 174
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enablePreventionOfKeepAliveRouteProviders()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePreventionOfManagerScansWhenNoAppsScan()Z
    .locals 1

    .line 180
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enablePreventionOfManagerScansWhenNoAppsScan()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePrivilegedRoutingForMediaRoutingControl()Z
    .locals 1

    .line 186
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enablePrivilegedRoutingForMediaRoutingControl()Z

    move-result v0

    return v0
.end method

.method public static greylist enableRlpCallbacksInMediaRouter2()Z
    .locals 1

    .line 192
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableRlpCallbacksInMediaRouter2()Z

    move-result v0

    return v0
.end method

.method public static greylist enableRouteVisibilityControlApi()Z
    .locals 1

    .line 198
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableRouteVisibilityControlApi()Z

    move-result v0

    return v0
.end method

.method public static greylist enableScreenOffScanning()Z
    .locals 1

    .line 204
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableScreenOffScanning()Z

    move-result v0

    return v0
.end method

.method public static greylist enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z
    .locals 1

    .line 210
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z

    move-result v0

    return v0
.end method

.method public static greylist enableUseOfSingletonAudioManagerRouteController()Z
    .locals 1

    .line 216
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableUseOfSingletonAudioManagerRouteController()Z

    move-result v0

    return v0
.end method

.method public static greylist enableWaitingStateForSystemSessionCreationRequest()Z
    .locals 1

    .line 222
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->enableWaitingStateForSystemSessionCreationRequest()Z

    move-result v0

    return v0
.end method

.method public static greylist fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z
    .locals 1

    .line 228
    sget-object v0, Lcom/android/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/flags/FeatureFlags;->fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z

    move-result v0

    return v0
.end method
