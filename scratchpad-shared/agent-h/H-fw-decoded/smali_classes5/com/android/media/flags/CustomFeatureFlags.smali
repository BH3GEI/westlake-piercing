.class public Lcom/android/media/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/media/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/media/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v1, Ljava/util/HashSet;

    const-string v29, "com.android.media.flags.fallback_to_default_handling_when_media_session_has_fixed_volume_handling"

    const-string v30, ""

    const-string v2, "com.android.media.flags.adjust_volume_for_foreground_app_playing_audio_without_media_session"

    const-string v3, "com.android.media.flags.disable_set_bluetooth_ad2p_on_calls"

    const-string v4, "com.android.media.flags.disable_transfer_when_apps_do_not_support"

    const-string v5, "com.android.media.flags.enable_audio_input_device_routing_and_volume_control"

    const-string v6, "com.android.media.flags.enable_audio_policies_device_and_bluetooth_controller"

    const-string v7, "com.android.media.flags.enable_built_in_speaker_route_suitability_statuses"

    const-string v8, "com.android.media.flags.enable_cross_user_routing_in_media_router2"

    const-string v9, "com.android.media.flags.enable_full_scan_with_media_content_control"

    const-string v10, "com.android.media.flags.enable_get_transferable_routes"

    const-string v11, "com.android.media.flags.enable_media_route_2_info_provider_package_name"

    const-string v12, "com.android.media.flags.enable_mirroring_in_media_router_2"

    const-string v13, "com.android.media.flags.enable_mr2_service_non_main_bg_thread"

    const-string v14, "com.android.media.flags.enable_new_media_route_2_info_types"

    const-string v15, "com.android.media.flags.enable_new_wired_media_route_2_info_types"

    const-string v16, "com.android.media.flags.enable_notifying_activity_manager_with_media_session_status_change"

    const-string v17, "com.android.media.flags.enable_null_session_in_media_browser_service"

    const-string v18, "com.android.media.flags.enable_output_switcher_device_grouping"

    const-string v19, "com.android.media.flags.enable_output_switcher_session_grouping"

    const-string v20, "com.android.media.flags.enable_prevention_of_keep_alive_route_providers"

    const-string v21, "com.android.media.flags.enable_prevention_of_manager_scans_when_no_apps_scan"

    const-string v22, "com.android.media.flags.enable_privileged_routing_for_media_routing_control"

    const-string v23, "com.android.media.flags.enable_rlp_callbacks_in_media_router2"

    const-string v24, "com.android.media.flags.enable_route_visibility_control_api"

    const-string v25, "com.android.media.flags.enable_screen_off_scanning"

    const-string v26, "com.android.media.flags.enable_use_of_bluetooth_device_get_alias_for_mr2info_get_name"

    const-string v27, "com.android.media.flags.enable_use_of_singleton_audio_manager_route_controller"

    const-string v28, "com.android.media.flags.enable_waiting_state_for_system_session_creation_request"

    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/media/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/media/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.media.flags.adjust_volume_for_foreground_app_playing_audio_without_media_session"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableSetBluetoothAd2pOnCalls()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.media.flags.disable_set_bluetooth_ad2p_on_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableTransferWhenAppsDoNotSupport()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.media.flags.disable_transfer_when_apps_do_not_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAudioInputDeviceRoutingAndVolumeControl()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.media.flags.enable_audio_input_device_routing_and_volume_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAudioPoliciesDeviceAndBluetoothController()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.media.flags.enable_audio_policies_device_and_bluetooth_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableBuiltInSpeakerRouteSuitabilityStatuses()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.media.flags.enable_built_in_speaker_route_suitability_statuses"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCrossUserRoutingInMediaRouter2()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.media.flags.enable_cross_user_routing_in_media_router2"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFullScanWithMediaContentControl()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.media.flags.enable_full_scan_with_media_content_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableGetTransferableRoutes()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.media.flags.enable_get_transferable_routes"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMediaRoute2InfoProviderPackageName()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.media.flags.enable_media_route_2_info_provider_package_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMirroringInMediaRouter2()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.media.flags.enable_mirroring_in_media_router_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMr2ServiceNonMainBgThread()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.media.flags.enable_mr2_service_non_main_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNewMediaRoute2InfoTypes()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.media.flags.enable_new_media_route_2_info_types"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNewWiredMediaRoute2InfoTypes()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.media.flags.enable_new_wired_media_route_2_info_types"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNotifyingActivityManagerWithMediaSessionStatusChange()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.media.flags.enable_notifying_activity_manager_with_media_session_status_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNullSessionInMediaBrowserService()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.flags.enable_null_session_in_media_browser_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOutputSwitcherDeviceGrouping()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.media.flags.enable_output_switcher_device_grouping"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOutputSwitcherSessionGrouping()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.media.flags.enable_output_switcher_session_grouping"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePreventionOfKeepAliveRouteProviders()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.media.flags.enable_prevention_of_keep_alive_route_providers"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePreventionOfManagerScansWhenNoAppsScan()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.media.flags.enable_prevention_of_manager_scans_when_no_apps_scan"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePrivilegedRoutingForMediaRoutingControl()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.flags.enable_privileged_routing_for_media_routing_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableRlpCallbacksInMediaRouter2()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.media.flags.enable_rlp_callbacks_in_media_router2"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableRouteVisibilityControlApi()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.media.flags.enable_route_visibility_control_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableScreenOffScanning()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.media.flags.enable_screen_off_scanning"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.media.flags.enable_use_of_bluetooth_device_get_alias_for_mr2info_get_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUseOfSingletonAudioManagerRouteController()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.media.flags.enable_use_of_singleton_audio_manager_route_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWaitingStateForSystemSessionCreationRequest()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.media.flags.enable_waiting_state_for_system_session_creation_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/media/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.media.flags.fallback_to_default_handling_when_media_session_has_fixed_volume_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    const-string v27, "com.android.media.flags.enable_waiting_state_for_system_session_creation_request"

    const-string v28, "com.android.media.flags.fallback_to_default_handling_when_media_session_has_fixed_volume_handling"

    const-string v1, "com.android.media.flags.adjust_volume_for_foreground_app_playing_audio_without_media_session"

    const-string v2, "com.android.media.flags.disable_set_bluetooth_ad2p_on_calls"

    const-string v3, "com.android.media.flags.disable_transfer_when_apps_do_not_support"

    const-string v4, "com.android.media.flags.enable_audio_input_device_routing_and_volume_control"

    const-string v5, "com.android.media.flags.enable_audio_policies_device_and_bluetooth_controller"

    const-string v6, "com.android.media.flags.enable_built_in_speaker_route_suitability_statuses"

    const-string v7, "com.android.media.flags.enable_cross_user_routing_in_media_router2"

    const-string v8, "com.android.media.flags.enable_full_scan_with_media_content_control"

    const-string v9, "com.android.media.flags.enable_get_transferable_routes"

    const-string v10, "com.android.media.flags.enable_media_route_2_info_provider_package_name"

    const-string v11, "com.android.media.flags.enable_mirroring_in_media_router_2"

    const-string v12, "com.android.media.flags.enable_mr2_service_non_main_bg_thread"

    const-string v13, "com.android.media.flags.enable_new_media_route_2_info_types"

    const-string v14, "com.android.media.flags.enable_new_wired_media_route_2_info_types"

    const-string v15, "com.android.media.flags.enable_notifying_activity_manager_with_media_session_status_change"

    const-string v16, "com.android.media.flags.enable_null_session_in_media_browser_service"

    const-string v17, "com.android.media.flags.enable_output_switcher_device_grouping"

    const-string v18, "com.android.media.flags.enable_output_switcher_session_grouping"

    const-string v19, "com.android.media.flags.enable_prevention_of_keep_alive_route_providers"

    const-string v20, "com.android.media.flags.enable_prevention_of_manager_scans_when_no_apps_scan"

    const-string v21, "com.android.media.flags.enable_privileged_routing_for_media_routing_control"

    const-string v22, "com.android.media.flags.enable_rlp_callbacks_in_media_router2"

    const-string v23, "com.android.media.flags.enable_route_visibility_control_api"

    const-string v24, "com.android.media.flags.enable_screen_off_scanning"

    const-string v25, "com.android.media.flags.enable_use_of_bluetooth_device_get_alias_for_mr2info_get_name"

    const-string v26, "com.android.media.flags.enable_use_of_singleton_audio_manager_route_controller"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/media/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/media/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/media/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/media/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
