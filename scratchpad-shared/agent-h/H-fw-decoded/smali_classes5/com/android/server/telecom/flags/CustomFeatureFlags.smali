.class public Lcom/android/server/telecom/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/telecom/flags/FeatureFlags;",
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
    .locals 83
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/telecom/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/telecom/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 681
    new-instance v1, Ljava/util/HashSet;

    const-string v81, "com.android.server.telecom.flags.voip_call_monitor_refactor"

    const-string v82, ""

    const-string v2, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v3, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    const-string v4, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    const-string v5, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    const-string v6, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    const-string v7, "com.android.server.telecom.flags.business_call_composer"

    const-string v8, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    const-string v9, "com.android.server.telecom.flags.cache_call_events"

    const-string v10, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    const-string v11, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v12, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v13, "com.android.server.telecom.flags.check_completed_filters_on_timeout"

    const-string v14, "com.android.server.telecom.flags.check_device_type_on_route_change"

    const-string v15, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    const-string v16, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    const-string v17, "com.android.server.telecom.flags.csw_service_interface_is_null"

    const-string v18, "com.android.server.telecom.flags.default_speaker_on_wired_headset_disconnect"

    const-string v19, "com.android.server.telecom.flags.disconnect_self_managed_stuck_startup_calls"

    const-string v20, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    const-string v21, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    const-string v22, "com.android.server.telecom.flags.dont_use_communication_device_tracker"

    const-string v23, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v24, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    const-string v25, "com.android.server.telecom.flags.ecc_keyguard"

    const-string v26, "com.android.server.telecom.flags.enable_call_audio_watchdog"

    const-string v27, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    const-string v28, "com.android.server.telecom.flags.enable_call_sequencing"

    const-string v29, "com.android.server.telecom.flags.end_session_improvements"

    const-string v30, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    const-string v31, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v32, "com.android.server.telecom.flags.ensure_in_car_ringing"

    const-string v33, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    const-string v34, "com.android.server.telecom.flags.fix_user_request_baseline_route_video_call"

    const-string v35, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    const-string v36, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v37, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v38, "com.android.server.telecom.flags.get_ringer_mode_anom_report"

    const-string v39, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    const-string v40, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    const-string v41, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    const-string v42, "com.android.server.telecom.flags.new_audio_path_speaker_broadcast_and_unfocused_routing"

    const-string v43, "com.android.server.telecom.flags.on_call_endpoint_changed_ics_on_connected"

    const-string v44, "com.android.server.telecom.flags.only_clear_communication_device_on_inactive"

    const-string v45, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    const-string v46, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v47, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    const-string v48, "com.android.server.telecom.flags.profile_user_support"

    const-string v49, "com.android.server.telecom.flags.remap_transactional_capabilities"

    const-string v50, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    const-string v51, "com.android.server.telecom.flags.resolve_active_bt_routing_and_bt_timing_issue"

    const-string v52, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    const-string v53, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    const-string v54, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    const-string v55, "com.android.server.telecom.flags.set_mute_state"

    const-string v56, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v57, "com.android.server.telecom.flags.skip_baseline_switch_when_route_not_bluetooth"

    const-string v58, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v59, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    const-string v60, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    const-string v61, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    const-string v62, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    const-string v63, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v64, "com.android.server.telecom.flags.telecom_metrics_support"

    const-string v65, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v66, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    const-string v67, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v68, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v69, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    const-string v70, "com.android.server.telecom.flags.transactional_video_state"

    const-string v71, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    const-string v72, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v73, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    const-string v74, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    const-string v75, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    const-string v76, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v77, "com.android.server.telecom.flags.use_improved_listener_order"

    const-string v78, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    const-string v79, "com.android.server.telecom.flags.use_stream_voice_call_tones"

    const-string v80, "com.android.server.telecom.flags.voip_app_actions_support"

    filled-new-array/range {v2 .. v82}, [Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 589
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowSystemAppsResolveVoipCalls()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist busDeviceIsASpeaker()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist businessCallComposer()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.telecom.flags.business_call_composer"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheCallEvents()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cache_call_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callDetailsIdChanges()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_details_id_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist checkCompletedFiltersOnTimeout()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.server.telecom.flags.check_completed_filters_on_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist checkDeviceTypeOnRouteChange()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.server.telecom.flags.check_device_type_on_route_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cswServiceInterfaceIsNull()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.server.telecom.flags.csw_service_interface_is_null"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist defaultSpeakerOnWiredHeadsetDisconnect()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.server.telecom.flags.default_speaker_on_wired_headset_disconnect"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disconnectSelfManagedStuckStartupCalls()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.telecom.flags.disconnect_self_managed_stuck_startup_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist doNotSendCallToNullIcs()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dontTimeoutDestroyedCalls()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dontUseCommunicationDeviceTracker()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.server.telecom.flags.dont_use_communication_device_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyBindingToIncallService()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.server.telecom.flags.early_binding_to_incall_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist eccKeyguard()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ecc_keyguard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCallAudioWatchdog()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_call_audio_watchdog"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCallExceptionAnomReports()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCallSequencing()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_call_sequencing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist endSessionImprovements()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.server.telecom.flags.end_session_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceTransactionalExclusivity()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ensureInCarRinging()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ensure_in_car_ringing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixUserRequestBaselineRouteVideoCall()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.telecom.flags.fix_user_request_baseline_route_video_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 81
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 597
    const-string v79, "com.android.server.telecom.flags.voip_app_actions_support"

    const-string v80, "com.android.server.telecom.flags.voip_call_monitor_refactor"

    const-string v1, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v2, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    const-string v3, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    const-string v4, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    const-string v5, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    const-string v6, "com.android.server.telecom.flags.business_call_composer"

    const-string v7, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    const-string v8, "com.android.server.telecom.flags.cache_call_events"

    const-string v9, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    const-string v10, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v11, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v12, "com.android.server.telecom.flags.check_completed_filters_on_timeout"

    const-string v13, "com.android.server.telecom.flags.check_device_type_on_route_change"

    const-string v14, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    const-string v15, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    const-string v16, "com.android.server.telecom.flags.csw_service_interface_is_null"

    const-string v17, "com.android.server.telecom.flags.default_speaker_on_wired_headset_disconnect"

    const-string v18, "com.android.server.telecom.flags.disconnect_self_managed_stuck_startup_calls"

    const-string v19, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    const-string v20, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    const-string v21, "com.android.server.telecom.flags.dont_use_communication_device_tracker"

    const-string v22, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v23, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    const-string v24, "com.android.server.telecom.flags.ecc_keyguard"

    const-string v25, "com.android.server.telecom.flags.enable_call_audio_watchdog"

    const-string v26, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    const-string v27, "com.android.server.telecom.flags.enable_call_sequencing"

    const-string v28, "com.android.server.telecom.flags.end_session_improvements"

    const-string v29, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    const-string v30, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v31, "com.android.server.telecom.flags.ensure_in_car_ringing"

    const-string v32, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    const-string v33, "com.android.server.telecom.flags.fix_user_request_baseline_route_video_call"

    const-string v34, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    const-string v35, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v36, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v37, "com.android.server.telecom.flags.get_ringer_mode_anom_report"

    const-string v38, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    const-string v39, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    const-string v40, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    const-string v41, "com.android.server.telecom.flags.new_audio_path_speaker_broadcast_and_unfocused_routing"

    const-string v42, "com.android.server.telecom.flags.on_call_endpoint_changed_ics_on_connected"

    const-string v43, "com.android.server.telecom.flags.only_clear_communication_device_on_inactive"

    const-string v44, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    const-string v45, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v46, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    const-string v47, "com.android.server.telecom.flags.profile_user_support"

    const-string v48, "com.android.server.telecom.flags.remap_transactional_capabilities"

    const-string v49, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    const-string v50, "com.android.server.telecom.flags.resolve_active_bt_routing_and_bt_timing_issue"

    const-string v51, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    const-string v52, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    const-string v53, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    const-string v54, "com.android.server.telecom.flags.set_mute_state"

    const-string v55, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v56, "com.android.server.telecom.flags.skip_baseline_switch_when_route_not_bluetooth"

    const-string v57, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v58, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    const-string v59, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    const-string v60, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    const-string v61, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    const-string v62, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v63, "com.android.server.telecom.flags.telecom_metrics_support"

    const-string v64, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v65, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    const-string v66, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v67, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v68, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    const-string v69, "com.android.server.telecom.flags.transactional_video_state"

    const-string v70, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    const-string v71, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v72, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    const-string v73, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    const-string v74, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    const-string v75, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v76, "com.android.server.telecom.flags.use_improved_listener_order"

    const-string v77, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    const-string v78, "com.android.server.telecom.flags.use_stream_voice_call_tones"

    filled-new-array/range {v1 .. v80}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_last_known_cell_identity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_registered_phone_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getRingerModeAnomReport()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_ringer_mode_anom_report"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/telecom/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 593
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/telecom/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist keepBluetoothDevicesCacheUpdated()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.server.telecom.flags.new_audio_path_speaker_broadcast_and_unfocused_routing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onCallEndpointChangedIcsOnConnected()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.server.telecom.flags.on_call_endpoint_changed_ics_on_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onlyClearCommunicationDeviceOnInactive()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.server.telecom.flags.only_clear_communication_device_on_inactive"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventRedundantLocationPermissionGrantAndRevoke()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist profileUserSupport()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.server.telecom.flags.profile_user_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remapTransactionalCapabilities()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.telecom.flags.remap_transactional_capabilities"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resolveActiveBtRoutingAndBtTimingIssue()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.server.telecom.flags.resolve_active_bt_routing_and_bt_timing_issue"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setMuteState()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_mute_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_remote_connection_call_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.server.telecom.flags.skip_baseline_switch_when_route_not_bluetooth"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomAppLabelProxyHsumAware()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomMainUserInBlockCheck()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomMainUserInGetRespondMessageApp()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomMetricsSupport()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_metrics_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalCsVerifier()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_cs_verifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalVideoState()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_video_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useImprovedListenerOrder()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_improved_listener_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useStreamVoiceCallTones()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_stream_voice_call_tones"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist voipAppActionsSupport()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.server.telecom.flags.voip_app_actions_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist voipCallMonitorRefactor()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.server.telecom.flags.voip_call_monitor_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
