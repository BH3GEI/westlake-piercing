.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
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
    .locals 117
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 953
    new-instance v1, Ljava/util/HashSet;

    const-string v115, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v116, ""

    const-string v2, "com.android.internal.telephony.flags.action_sim_preference_settings"

    const-string v3, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    const-string v4, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v5, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    const-string v6, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    const-string v7, "com.android.internal.telephony.flags.async_init_carrier_privileges_tracker"

    const-string v8, "com.android.internal.telephony.flags.auto_data_switch_enhanced"

    const-string v9, "com.android.internal.telephony.flags.avoid_deleting_ims_object_from_cache"

    const-string v10, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    const-string v11, "com.android.internal.telephony.flags.carrier_config_changed_callback_fix"

    const-string v12, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v13, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    const-string v14, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    const-string v15, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v16, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v17, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    const-string v18, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    const-string v19, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    const-string v20, "com.android.internal.telephony.flags.cleanup_cdma"

    const-string v21, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v22, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v23, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v24, "com.android.internal.telephony.flags.data_service_check"

    const-string v25, "com.android.internal.telephony.flags.dds_callback"

    const-string v26, "com.android.internal.telephony.flags.delay_phone_account_registration"

    const-string v27, "com.android.internal.telephony.flags.deprecate_cdma"

    const-string v28, "com.android.internal.telephony.flags.do_not_override_precise_label"

    const-string v29, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v30, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    const-string v31, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    const-string v32, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v33, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v34, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v35, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    const-string v36, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v37, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v38, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    const-string v39, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    const-string v40, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    const-string v41, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v42, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v43, "com.android.internal.telephony.flags.force_imsi_certificate_delete"

    const-string v44, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v45, "com.android.internal.telephony.flags.get_group_id_level2"

    const-string v46, "com.android.internal.telephony.flags.hangup_emergency_call_for_cross_sim_redialing"

    const-string v47, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v48, "com.android.internal.telephony.flags.hsum_broadcast"

    const-string v49, "com.android.internal.telephony.flags.hsum_package_manager"

    const-string v50, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    const-string v51, "com.android.internal.telephony.flags.ignore_carrierid_reset_for_sim_removal"

    const-string v52, "com.android.internal.telephony.flags.ignore_mcc_mnc_from_operator_for_locale"

    const-string v53, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    const-string v54, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    const-string v55, "com.android.internal.telephony.flags.incall_handover_policy"

    const-string v56, "com.android.internal.telephony.flags.keep_ping_request"

    const-string v57, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v58, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    const-string v59, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    const-string v60, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v61, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    const-string v62, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    const-string v63, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v64, "com.android.internal.telephony.flags.network_validation"

    const-string v65, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    const-string v66, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v67, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    const-string v68, "com.android.internal.telephony.flags.oem_paid_private"

    const-string v69, "com.android.internal.telephony.flags.optimization_apdu_sender"

    const-string v70, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    const-string v71, "com.android.internal.telephony.flags.power_down_race_fix"

    const-string v72, "com.android.internal.telephony.flags.prevent_hangup_during_call_merge"

    const-string v73, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    const-string v74, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v75, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    const-string v76, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v77, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v78, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    const-string v79, "com.android.internal.telephony.flags.satellite_25q4_apis"

    const-string v80, "com.android.internal.telephony.flags.satellite_persistent_logging"

    const-string v81, "com.android.internal.telephony.flags.satellite_state_change_listener"

    const-string v82, "com.android.internal.telephony.flags.satellite_system_apis"

    const-string v83, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    const-string v84, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v85, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    const-string v86, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    const-string v87, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    const-string v88, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v89, "com.android.internal.telephony.flags.skip_mmi_code_check_for_emergency_call"

    const-string v90, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v91, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    const-string v92, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    const-string v93, "com.android.internal.telephony.flags.starlink_data_bugfix"

    const-string v94, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v95, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    const-string v96, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v97, "com.android.internal.telephony.flags.support_carrier_services_for_hsum"

    const-string v98, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    const-string v99, "com.android.internal.telephony.flags.support_isim_record"

    const-string v100, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v101, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    const-string v102, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    const-string v103, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    const-string v104, "com.android.internal.telephony.flags.thread_shred"

    const-string v105, "com.android.internal.telephony.flags.uicc_app_count_check_to_create_channel"

    const-string v106, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v107, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    const-string v108, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    const-string v109, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v110, "com.android.internal.telephony.flags.use_carrier_config_for_cfnry_time_via_mmi"

    const-string v111, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    const-string v112, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v113, "com.android.internal.telephony.flags.use_relaxed_id_match"

    const-string v114, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    filled-new-array/range {v2 .. v116}, [Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 827
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist actionSimPreferenceSettings()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.action_sim_preference_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addImsRedialCodesForEmergencyCalls()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addRatRelatedSuggestedActionToImsRegistration()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist answerAudioOnlyWhenAnsweringViaMmiCode()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apDomainSelectionEnabled()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asyncInitCarrierPrivilegesTracker()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.async_init_carrier_privileges_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoDataSwitchEnhanced()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.auto_data_switch_enhanced"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidDeletingImsObjectFromCache()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.avoid_deleting_ims_object_from_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callExtraForNonHoldSupportedCarriers()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierConfigChangedCallbackFix()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_config_changed_callback_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierEnabledSatelliteFlag()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierIdFromCarrierIdentifier()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierRestrictionRulesEnhancement()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierRestrictionStatus()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierRoamingNbIotNtn()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cellularIdentifierDisclosureIndications()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist changeMethodOfObtainingImsRegistrationRadioTech()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cleanupCarrierAppUpdateEnabledStateLogic()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cleanupCdma()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cleanup_cdma"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearCachedImsPhoneNumberWhenDeviceLostImsRegistration()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist conferenceHoldUnholdChangedToSendMessage()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataOnlyCellularService()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_only_cellular_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataServiceCheck()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_service_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ddsCallback()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dds_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayPhoneAccountRegistration()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.delay_phone_account_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateCdma()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.deprecate_cdma"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotOverridePreciseLabel()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.do_not_override_precise_label"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist domainSelectionMetricsEnabled()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dynamicDoNotAskAgainText()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyCallbackModeNotification()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyRegistrationState()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.emergency_registration_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAeadAlgorithms()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_aead_algorithms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleSaProposals()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSipSubscribeRetry()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWpsCheckApiFlag()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceSubscriptionUserFilter()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceTelephonyFeatureMapping()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceTelephonyFeatureMappingForPublicApis()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureAccessToCallSettingsIsRestricted()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimAvailableMemory()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_available_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimBootstrapProvisioningFlag()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceImsiCertificateDelete()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.force_imsi_certificate_delete"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist geofenceEnhancementForBetterUx()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 115
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 835
    const-string v113, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    const-string v114, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v1, "com.android.internal.telephony.flags.action_sim_preference_settings"

    const-string v2, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    const-string v3, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v4, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    const-string v5, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    const-string v6, "com.android.internal.telephony.flags.async_init_carrier_privileges_tracker"

    const-string v7, "com.android.internal.telephony.flags.auto_data_switch_enhanced"

    const-string v8, "com.android.internal.telephony.flags.avoid_deleting_ims_object_from_cache"

    const-string v9, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    const-string v10, "com.android.internal.telephony.flags.carrier_config_changed_callback_fix"

    const-string v11, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v12, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    const-string v13, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    const-string v14, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v15, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v16, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    const-string v17, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    const-string v18, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    const-string v19, "com.android.internal.telephony.flags.cleanup_cdma"

    const-string v20, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v21, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v22, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v23, "com.android.internal.telephony.flags.data_service_check"

    const-string v24, "com.android.internal.telephony.flags.dds_callback"

    const-string v25, "com.android.internal.telephony.flags.delay_phone_account_registration"

    const-string v26, "com.android.internal.telephony.flags.deprecate_cdma"

    const-string v27, "com.android.internal.telephony.flags.do_not_override_precise_label"

    const-string v28, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v29, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    const-string v30, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    const-string v31, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v32, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v33, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v34, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    const-string v35, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v36, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v37, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    const-string v38, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    const-string v39, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    const-string v40, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v41, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v42, "com.android.internal.telephony.flags.force_imsi_certificate_delete"

    const-string v43, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v44, "com.android.internal.telephony.flags.get_group_id_level2"

    const-string v45, "com.android.internal.telephony.flags.hangup_emergency_call_for_cross_sim_redialing"

    const-string v46, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v47, "com.android.internal.telephony.flags.hsum_broadcast"

    const-string v48, "com.android.internal.telephony.flags.hsum_package_manager"

    const-string v49, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    const-string v50, "com.android.internal.telephony.flags.ignore_carrierid_reset_for_sim_removal"

    const-string v51, "com.android.internal.telephony.flags.ignore_mcc_mnc_from_operator_for_locale"

    const-string v52, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    const-string v53, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    const-string v54, "com.android.internal.telephony.flags.incall_handover_policy"

    const-string v55, "com.android.internal.telephony.flags.keep_ping_request"

    const-string v56, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v57, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    const-string v58, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    const-string v59, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v60, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    const-string v61, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    const-string v62, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v63, "com.android.internal.telephony.flags.network_validation"

    const-string v64, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    const-string v65, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v66, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    const-string v67, "com.android.internal.telephony.flags.oem_paid_private"

    const-string v68, "com.android.internal.telephony.flags.optimization_apdu_sender"

    const-string v69, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    const-string v70, "com.android.internal.telephony.flags.power_down_race_fix"

    const-string v71, "com.android.internal.telephony.flags.prevent_hangup_during_call_merge"

    const-string v72, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    const-string v73, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v74, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    const-string v75, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v76, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v77, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    const-string v78, "com.android.internal.telephony.flags.satellite_25q4_apis"

    const-string v79, "com.android.internal.telephony.flags.satellite_persistent_logging"

    const-string v80, "com.android.internal.telephony.flags.satellite_state_change_listener"

    const-string v81, "com.android.internal.telephony.flags.satellite_system_apis"

    const-string v82, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    const-string v83, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v84, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    const-string v85, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    const-string v86, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    const-string v87, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v88, "com.android.internal.telephony.flags.skip_mmi_code_check_for_emergency_call"

    const-string v89, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v90, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    const-string v91, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    const-string v92, "com.android.internal.telephony.flags.starlink_data_bugfix"

    const-string v93, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v94, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    const-string v95, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v96, "com.android.internal.telephony.flags.support_carrier_services_for_hsum"

    const-string v97, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    const-string v98, "com.android.internal.telephony.flags.support_isim_record"

    const-string v99, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v100, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    const-string v101, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    const-string v102, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    const-string v103, "com.android.internal.telephony.flags.thread_shred"

    const-string v104, "com.android.internal.telephony.flags.uicc_app_count_check_to_create_channel"

    const-string v105, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v106, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    const-string v107, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    const-string v108, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v109, "com.android.internal.telephony.flags.use_carrier_config_for_cfnry_time_via_mmi"

    const-string v110, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    const-string v111, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v112, "com.android.internal.telephony.flags.use_relaxed_id_match"

    filled-new-array/range {v1 .. v114}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGroupIdLevel2()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.get_group_id_level2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 831
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hangupEmergencyCallForCrossSimRedialing()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hangup_emergency_call_for_cross_sim_redialing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hidePrefer3gItem()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hsumBroadcast()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hsum_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hsumPackageManager()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hsum_package_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreAlreadyTerminatedIncomingCallBeforeRegisteringListener()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreCarrieridResetForSimRemoval()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_carrierid_reset_for_sim_removal"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreMccMncFromOperatorForLocale()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_mcc_mnc_from_operator_for_locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist imsResolverUserAware()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist imsiKeyRetryDownloadOnPhoneUnlock()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist incallHandoverPolicy()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.incall_handover_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    return v0

    .line 822
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keepPingRequest()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.keep_ping_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist logMmsSmsDatabaseAccessInfo()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minimalTelephonyCdmCheck()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minimalTelephonyManagersConditionalOnFeatures()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mmsDisabledError()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.mms_disabled_error"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mmsGetApnFromPdsc()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nationalCountryCodeFormattingForLocalCalls()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkRegistrationInfoRejectCause()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkValidation()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyInitialImsProvisioningStatus()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oemEnabledSatelliteFlag()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oemEnabledSatellitePhase2()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oemPaidPrivate()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_paid_private"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist optimizationApduSender()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.optimization_apdu_sender"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist passCopiedCallStateList()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist powerDownRaceFix()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.power_down_race_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventHangupDuringCallMerge()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_hangup_during_call_merge"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventInvocationRepeatOfRilCallWhenDeviceDoesNotSupportVoice()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventSystemServerAndPhoneDeadlock()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist remapDisconnectCauseSipRequestCancelled()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeCountryCodeFromLocalSingaporeCalls()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetMobileNetworkSettings()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetPrimarySimDefaultValues()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satellite25q4Apis()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_25q4_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satellitePersistentLogging()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_persistent_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteStateChangeListener()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_state_change_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteSystemApis()Z
    .locals 2

    .line 582
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_system_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityAlgorithmsUpdateIndications()Z
    .locals 2

    .line 589
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCarrierRestrictionStatus()Z
    .locals 2

    .line 596
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNoReplyTimerForCfnry()Z
    .locals 2

    .line 603
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNumberOfSimForImsEnable()Z
    .locals 2

    .line 610
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showCallFailNotificationFor2gToggle()Z
    .locals 2

    .line 617
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist simultaneousCallingIndications()Z
    .locals 2

    .line 624
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipMmiCodeCheckForEmergencyCall()Z
    .locals 2

    .line 631
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.skip_mmi_code_check_for_emergency_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist slicingAdditionalErrorCodes()Z
    .locals 2

    .line 638
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist smsDomainSelectionEnabled()Z
    .locals 2

    .line 645
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist smsMmsDeliverBroadcastsRedirectToMainUser()Z
    .locals 2

    .line 652
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist starlinkDataBugfix()Z
    .locals 2

    .line 659
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.starlink_data_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopSpammingEmergencyNotification()Z
    .locals 2

    .line 666
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscriptionPlanAllowStatusAndEndDate()Z
    .locals 2

    .line 673
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscriptionUserAssociationQuery()Z
    .locals 2

    .line 680
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.subscription_user_association_query"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportCarrierServicesForHsum()Z
    .locals 2

    .line 687
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_carrier_services_for_hsum"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportImsMmtelInterface()Z
    .locals 2

    .line 694
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportIsimRecord()Z
    .locals 2

    .line 701
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_isim_record"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportPsimToEsimConversion()Z
    .locals 2

    .line 708
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportSmsOverImsApis()Z
    .locals 2

    .line 715
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist temporaryFailuresInCarrierMessagingService()Z
    .locals 2

    .line 722
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist terminateActiveVideoCallWhenAcceptingSecondVideoCallAsAudioOnly()Z
    .locals 2

    .line 729
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist threadShred()Z
    .locals 2

    .line 736
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.thread_shred"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uiccAppCountCheckToCreateChannel()Z
    .locals 2

    .line 743
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.uicc_app_count_check_to_create_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterSmsBroadcastReceiverFromCatService()Z
    .locals 2

    .line 750
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateImsServiceByGatheringProvisioningChanges()Z
    .locals 2

    .line 757
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateRoamingStateToSetWfcMode()Z
    .locals 2

    .line 764
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useAospDomainSelectionService()Z
    .locals 2

    .line 771
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useCarrierConfigForCfnryTimeViaMmi()Z
    .locals 2

    .line 778
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_carrier_config_for_cfnry_time_via_mmi"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useI18nForMccMapping()Z
    .locals 2

    .line 785
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useOemDomainSelectionService()Z
    .locals 2

    .line 792
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useRelaxedIdMatch()Z
    .locals 2

    .line 799
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_relaxed_id_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vendorSpecificCellularIdentifierDisclosureIndications()Z
    .locals 2

    .line 806
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist workProfileApiSplit()Z
    .locals 2

    .line 813
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.work_profile_api_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
