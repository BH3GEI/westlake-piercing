.class public Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
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
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v1, Ljava/util/HashSet;

    const-string v60, "android.permission.flags.wallet_role_icon_property_enabled"

    const-string v61, ""

    const-string v2, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v3, "android.permission.flags.app_ops_service_handler_fix"

    const-string v4, "android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v5, "android.permission.flags.appop_mode_caching_enabled"

    const-string v6, "android.permission.flags.check_op_overload_api_enabled"

    const-string v7, "android.permission.flags.check_op_validate_package"

    const-string v8, "android.permission.flags.delay_uid_state_changes_from_capability_updates"

    const-string v9, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v10, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v11, "android.permission.flags.device_aware_permissions_enabled"

    const-string v12, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v13, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v14, "android.permission.flags.dont_remove_existing_uid_states"

    const-string v15, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v16, "android.permission.flags.enable_otp_in_text_classifiers"

    const-string v17, "android.permission.flags.enable_sqlite_appops_accesses"

    const-string v18, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v19, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v20, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v21, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v22, "android.permission.flags.fine_power_monitor_permission"

    const-string v23, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v24, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v25, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v26, "android.permission.flags.ignore_process_text"

    const-string v27, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v28, "android.permission.flags.note_op_batching_enabled"

    const-string v29, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v30, "android.permission.flags.permission_request_short_circuit_enabled"

    const-string v31, "android.permission.flags.permission_tree_apis_deprecated"

    const-string v32, "android.permission.flags.ranging_permission_enabled"

    const-string v33, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v34, "android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v35, "android.permission.flags.retail_demo_role_enabled"

    const-string v36, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v37, "android.permission.flags.sensitive_content_improvements"

    const-string v38, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v39, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v40, "android.permission.flags.sensitive_notification_app_protection"

    const-string v41, "android.permission.flags.server_side_attribution_registration"

    const-string v42, "android.permission.flags.set_next_attribution_source"

    const-string v43, "android.permission.flags.should_register_attribution_source"

    const-string v44, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v45, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v46, "android.permission.flags.supervision_role_permission_update_enabled"

    const-string v47, "android.permission.flags.sync_on_op_noted_api"

    const-string v48, "android.permission.flags.system_selection_toolbar_enabled"

    const-string v49, "android.permission.flags.system_server_role_controller_enabled"

    const-string v50, "android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v51, "android.permission.flags.text_classifier_choice_api_enabled"

    const-string v52, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v53, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v54, "android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v55, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v56, "android.permission.flags.use_system_selection_toolbar_in_sysui"

    const-string v57, "android.permission.flags.voice_activation_permission_apis"

    const-string v58, "android.permission.flags.wallet_role_cross_user_enabled"

    const-string v59, "android.permission.flags.wallet_role_enabled"

    filled-new-array/range {v2 .. v61}, [Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 442
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appOpsServiceHandlerFix()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.permission.flags.app_ops_service_handler_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopAccessTrackingLoggingEnabled()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.permission.flags.appop_access_tracking_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopModeCachingEnabled()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.permission.flags.appop_mode_caching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.permission.flags.check_op_overload_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpValidatePackage()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.permission.flags.check_op_validate_package"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayUidStateChangesFromCapabilityUpdates()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.permission.flags.delay_uid_state_changes_from_capability_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permission_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permissions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontRemoveExistingUidStates()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.permission.flags.dont_remove_existing_uid_states"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.permission.flags.enable_otp_in_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.permission.flags.enable_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceDefaultDeviceIdInMyAttributionSource()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.permission.flags.factory_reset_prep_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.permission.flags.fine_power_monitor_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.permission.flags.finish_running_ops_for_killed_packages"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    const-string v58, "android.permission.flags.wallet_role_enabled"

    const-string v59, "android.permission.flags.wallet_role_icon_property_enabled"

    const-string v1, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v2, "android.permission.flags.app_ops_service_handler_fix"

    const-string v3, "android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v4, "android.permission.flags.appop_mode_caching_enabled"

    const-string v5, "android.permission.flags.check_op_overload_api_enabled"

    const-string v6, "android.permission.flags.check_op_validate_package"

    const-string v7, "android.permission.flags.delay_uid_state_changes_from_capability_updates"

    const-string v8, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v9, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v10, "android.permission.flags.device_aware_permissions_enabled"

    const-string v11, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v12, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v13, "android.permission.flags.dont_remove_existing_uid_states"

    const-string v14, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v15, "android.permission.flags.enable_otp_in_text_classifiers"

    const-string v16, "android.permission.flags.enable_sqlite_appops_accesses"

    const-string v17, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v18, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v19, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v20, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v21, "android.permission.flags.fine_power_monitor_permission"

    const-string v22, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v23, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v24, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v25, "android.permission.flags.ignore_process_text"

    const-string v26, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v27, "android.permission.flags.note_op_batching_enabled"

    const-string v28, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v29, "android.permission.flags.permission_request_short_circuit_enabled"

    const-string v30, "android.permission.flags.permission_tree_apis_deprecated"

    const-string v31, "android.permission.flags.ranging_permission_enabled"

    const-string v32, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v33, "android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v34, "android.permission.flags.retail_demo_role_enabled"

    const-string v35, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v36, "android.permission.flags.sensitive_content_improvements"

    const-string v37, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v38, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v39, "android.permission.flags.sensitive_notification_app_protection"

    const-string v40, "android.permission.flags.server_side_attribution_registration"

    const-string v41, "android.permission.flags.set_next_attribution_source"

    const-string v42, "android.permission.flags.should_register_attribution_source"

    const-string v43, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v44, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v45, "android.permission.flags.supervision_role_permission_update_enabled"

    const-string v46, "android.permission.flags.sync_on_op_noted_api"

    const-string v47, "android.permission.flags.system_selection_toolbar_enabled"

    const-string v48, "android.permission.flags.system_server_role_controller_enabled"

    const-string v49, "android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v50, "android.permission.flags.text_classifier_choice_api_enabled"

    const-string v51, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v52, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v53, "android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v54, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v55, "android.permission.flags.use_system_selection_toolbar_in_sysui"

    const-string v56, "android.permission.flags.voice_activation_permission_apis"

    const-string v57, "android.permission.flags.wallet_role_cross_user_enabled"

    filled-new-array/range {v1 .. v59}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 446
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.permission.flags.ignore_process_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.permission.flags.note_op_batching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.permission.flags.op_enable_mobile_data_by_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.permission.flags.permission_request_short_circuit_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.permission.flags.permission_tree_apis_deprecated"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.permission.flags.ranging_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.permission.flags.replace_body_sensor_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.permission.flags.retail_demo_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist runtimePermissionAppopsMappingEnabled()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_metrics_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.permission.flags.sensitive_notification_app_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist serverSideAttributionRegistration()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.permission.flags.server_side_attribution_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.permission.flags.set_next_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.permission.flags.should_register_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.permission.flags.signature_permission_allowlist_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sqliteDiscreteOpEventLoggingEnabled()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.permission.flags.supervision_role_permission_update_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.permission.flags.sync_on_op_noted_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemSelectionToolbarEnabled()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.permission.flags.system_selection_toolbar_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.permission.flags.system_server_role_controller_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.permission.flags.system_vendor_intelligence_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.permission.flags.text_classifier_choice_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useFrozenAwareRemoteCallbackList()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.permission.flags.use_frozen_aware_remote_callback_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useSystemSelectionToolbarInSysui()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.permission.flags.use_system_selection_toolbar_in_sysui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.permission.flags.voice_activation_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_cross_user_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_icon_property_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
