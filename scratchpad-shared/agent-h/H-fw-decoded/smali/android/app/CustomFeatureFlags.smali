.class public Landroid/app/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 85
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/app/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 697
    new-instance v1, Ljava/util/HashSet;

    const-string v83, "android.app.use_sticky_bcast_cache"

    const-string v84, ""

    const-string v2, "android.app.accurate_wallpaper_downsampling"

    const-string v3, "android.app.api_rich_ongoing"

    const-string v4, "android.app.api_tvextender"

    const-string v5, "android.app.app_restrictions_api"

    const-string v6, "android.app.app_start_info"

    const-string v7, "android.app.app_start_info_component"

    const-string v8, "android.app.app_start_info_timestamps"

    const-string v9, "android.app.background_install_control_callback_api"

    const-string v10, "android.app.backup_restore_logging"

    const-string v11, "android.app.bic_client"

    const-string v12, "android.app.cache_get_current_user_id"

    const-string v13, "android.app.category_voicemail"

    const-string v14, "android.app.check_autogroup_before_post"

    const-string v15, "android.app.clean_up_spans_and_new_lines"

    const-string v16, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v17, "android.app.compact_heads_up_notification"

    const-string v18, "android.app.compact_heads_up_notification_reply"

    const-string v19, "android.app.device_unlock_listener"

    const-string v20, "android.app.enable_connected_displays_wallpaper"

    const-string v21, "android.app.enable_current_mode_type_binder_cache"

    const-string v22, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v23, "android.app.enable_night_mode_binder_cache"

    const-string v24, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v25, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v26, "android.app.enforce_pic_testmode_protocol"

    const-string v27, "android.app.evenly_divided_call_style_action_layout"

    const-string v28, "android.app.fix_wallpaper_changed"

    const-string v29, "android.app.get_binding_uid_importance"

    const-string v30, "android.app.introduce_new_service_ontimeout_callback"

    const-string v31, "android.app.jank_perceptible_narrow"

    const-string v32, "android.app.keyguard_private_notifications"

    const-string v33, "android.app.lifetime_extension_refactor"

    const-string v34, "android.app.live_wallpaper_content_handling"

    const-string v35, "android.app.modes_api"

    const-string v36, "android.app.modes_cleanup_implicit"

    const-string v37, "android.app.modes_hsum"

    const-string v38, "android.app.modes_multiuser"

    const-string v39, "android.app.modes_ui"

    const-string v40, "android.app.modes_ui_empty_shade"

    const-string v41, "android.app.modes_ui_icons"

    const-string v42, "android.app.nm_binder_perf_cache_channels"

    const-string v43, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v44, "android.app.nm_binder_perf_log_nm_throttling"

    const-string v45, "android.app.nm_binder_perf_permission_check"

    const-string v46, "android.app.nm_binder_perf_throttle_notify"

    const-string v47, "android.app.nm_summarization"

    const-string v48, "android.app.nm_summarization_ui"

    const-string v49, "android.app.no_sbnholder"

    const-string v50, "android.app.notif_channel_crop_vibration_effects"

    const-string v51, "android.app.notif_channel_estimate_effect_size"

    const-string v52, "android.app.notification_channel_vibration_effect_api"

    const-string v53, "android.app.notification_classification_ui"

    const-string v54, "android.app.notification_expansion_optional"

    const-string v55, "android.app.notification_no_custom_view_conversations"

    const-string v56, "android.app.notifications_redesign_app_icons"

    const-string v57, "android.app.notifications_redesign_templates"

    const-string v58, "android.app.notifications_redesign_themed_app_icons"

    const-string v59, "android.app.pic_cache_nulls"

    const-string v60, "android.app.pic_isolate_cache_by_uid"

    const-string v61, "android.app.pic_isolated_cache_statistics"

    const-string v62, "android.app.pic_separate_permission_notifications"

    const-string v63, "android.app.pic_uses_shared_memory"

    const-string v64, "android.app.pinner_service_client_api"

    const-string v65, "android.app.rate_limit_get_memory_info"

    const-string v66, "android.app.rate_limit_get_my_memory_state"

    const-string v67, "android.app.rate_limit_get_processes_in_error_state"

    const-string v68, "android.app.rate_limit_get_running_app_processes"

    const-string v69, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v70, "android.app.remove_next_wallpaper_component"

    const-string v71, "android.app.remove_remote_views"

    const-string v72, "android.app.report_postgc_memory_metrics"

    const-string v73, "android.app.restrict_audio_attributes_alarm"

    const-string v74, "android.app.restrict_audio_attributes_call"

    const-string v75, "android.app.restrict_audio_attributes_media"

    const-string v76, "android.app.secure_allowlist_token"

    const-string v77, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v78, "android.app.sort_section_by_time"

    const-string v79, "android.app.system_terms_of_address_enabled"

    const-string v80, "android.app.ui_rich_ongoing"

    const-string v81, "android.app.uid_importance_listener_for_uids"

    const-string v82, "android.app.use_app_info_not_launched"

    filled-new-array/range {v2 .. v84}, [Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 603
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public accurateWallpaperDownsampling()Z
    .locals 2

    .line 22
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.accurate_wallpaper_downsampling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public apiRichOngoing()Z
    .locals 2

    .line 29
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.api_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public apiTvextender()Z
    .locals 2

    .line 36
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.api_tvextender"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appRestrictionsApi()Z
    .locals 2

    .line 43
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "android.app.app_restrictions_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appStartInfo()Z
    .locals 2

    .line 50
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "android.app.app_start_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appStartInfoComponent()Z
    .locals 2

    .line 57
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.app_start_info_component"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appStartInfoTimestamps()Z
    .locals 2

    .line 64
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.app_start_info_timestamps"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public backgroundInstallControlCallbackApi()Z
    .locals 2

    .line 71
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.app.background_install_control_callback_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public backupRestoreLogging()Z
    .locals 2

    .line 78
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.backup_restore_logging"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bicClient()Z
    .locals 2

    .line 85
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "android.app.bic_client"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public cacheGetCurrentUserId()Z
    .locals 2

    .line 92
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.cache_get_current_user_id"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public categoryVoicemail()Z
    .locals 2

    .line 99
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.category_voicemail"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public checkAutogroupBeforePost()Z
    .locals 2

    .line 106
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.check_autogroup_before_post"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public cleanUpSpansAndNewLines()Z
    .locals 2

    .line 113
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.app.clean_up_spans_and_new_lines"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clearDnsCacheOnNetworkRulesUpdate()Z
    .locals 2

    .line 120
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.clear_dns_cache_on_network_rules_update"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public compactHeadsUpNotification()Z
    .locals 2

    .line 127
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public compactHeadsUpNotificationReply()Z
    .locals 2

    .line 134
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification_reply"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deviceUnlockListener()Z
    .locals 2

    .line 141
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.device_unlock_listener"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableConnectedDisplaysWallpaper()Z
    .locals 2

    .line 148
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "android.app.enable_connected_displays_wallpaper"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableCurrentModeTypeBinderCache()Z
    .locals 2

    .line 155
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.enable_current_mode_type_binder_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableFgsTimeoutCrashBehavior()Z
    .locals 2

    .line 162
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.app.enable_fgs_timeout_crash_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableNightModeBinderCache()Z
    .locals 2

    .line 169
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.enable_night_mode_binder_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enablePipUiStateCallbackOnEntering()Z
    .locals 2

    .line 176
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.enable_pip_ui_state_callback_on_entering"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTvImplicitEnterPipRestriction()Z
    .locals 2

    .line 183
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.enable_tv_implicit_enter_pip_restriction"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enforcePicTestmodeProtocol()Z
    .locals 2

    .line 190
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.enforce_pic_testmode_protocol"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public evenlyDividedCallStyleActionLayout()Z
    .locals 2

    .line 197
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.evenly_divided_call_style_action_layout"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixWallpaperChanged()Z
    .locals 2

    .line 204
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "android.app.fix_wallpaper_changed"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getBindingUidImportance()Z
    .locals 2

    .line 211
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.get_binding_uid_importance"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 83
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 611
    const-string v81, "android.app.use_app_info_not_launched"

    const-string v82, "android.app.use_sticky_bcast_cache"

    const-string v1, "android.app.accurate_wallpaper_downsampling"

    const-string v2, "android.app.api_rich_ongoing"

    const-string v3, "android.app.api_tvextender"

    const-string v4, "android.app.app_restrictions_api"

    const-string v5, "android.app.app_start_info"

    const-string v6, "android.app.app_start_info_component"

    const-string v7, "android.app.app_start_info_timestamps"

    const-string v8, "android.app.background_install_control_callback_api"

    const-string v9, "android.app.backup_restore_logging"

    const-string v10, "android.app.bic_client"

    const-string v11, "android.app.cache_get_current_user_id"

    const-string v12, "android.app.category_voicemail"

    const-string v13, "android.app.check_autogroup_before_post"

    const-string v14, "android.app.clean_up_spans_and_new_lines"

    const-string v15, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v16, "android.app.compact_heads_up_notification"

    const-string v17, "android.app.compact_heads_up_notification_reply"

    const-string v18, "android.app.device_unlock_listener"

    const-string v19, "android.app.enable_connected_displays_wallpaper"

    const-string v20, "android.app.enable_current_mode_type_binder_cache"

    const-string v21, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v22, "android.app.enable_night_mode_binder_cache"

    const-string v23, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v24, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v25, "android.app.enforce_pic_testmode_protocol"

    const-string v26, "android.app.evenly_divided_call_style_action_layout"

    const-string v27, "android.app.fix_wallpaper_changed"

    const-string v28, "android.app.get_binding_uid_importance"

    const-string v29, "android.app.introduce_new_service_ontimeout_callback"

    const-string v30, "android.app.jank_perceptible_narrow"

    const-string v31, "android.app.keyguard_private_notifications"

    const-string v32, "android.app.lifetime_extension_refactor"

    const-string v33, "android.app.live_wallpaper_content_handling"

    const-string v34, "android.app.modes_api"

    const-string v35, "android.app.modes_cleanup_implicit"

    const-string v36, "android.app.modes_hsum"

    const-string v37, "android.app.modes_multiuser"

    const-string v38, "android.app.modes_ui"

    const-string v39, "android.app.modes_ui_empty_shade"

    const-string v40, "android.app.modes_ui_icons"

    const-string v41, "android.app.nm_binder_perf_cache_channels"

    const-string v42, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v43, "android.app.nm_binder_perf_log_nm_throttling"

    const-string v44, "android.app.nm_binder_perf_permission_check"

    const-string v45, "android.app.nm_binder_perf_throttle_notify"

    const-string v46, "android.app.nm_summarization"

    const-string v47, "android.app.nm_summarization_ui"

    const-string v48, "android.app.no_sbnholder"

    const-string v49, "android.app.notif_channel_crop_vibration_effects"

    const-string v50, "android.app.notif_channel_estimate_effect_size"

    const-string v51, "android.app.notification_channel_vibration_effect_api"

    const-string v52, "android.app.notification_classification_ui"

    const-string v53, "android.app.notification_expansion_optional"

    const-string v54, "android.app.notification_no_custom_view_conversations"

    const-string v55, "android.app.notifications_redesign_app_icons"

    const-string v56, "android.app.notifications_redesign_templates"

    const-string v57, "android.app.notifications_redesign_themed_app_icons"

    const-string v58, "android.app.pic_cache_nulls"

    const-string v59, "android.app.pic_isolate_cache_by_uid"

    const-string v60, "android.app.pic_isolated_cache_statistics"

    const-string v61, "android.app.pic_separate_permission_notifications"

    const-string v62, "android.app.pic_uses_shared_memory"

    const-string v63, "android.app.pinner_service_client_api"

    const-string v64, "android.app.rate_limit_get_memory_info"

    const-string v65, "android.app.rate_limit_get_my_memory_state"

    const-string v66, "android.app.rate_limit_get_processes_in_error_state"

    const-string v67, "android.app.rate_limit_get_running_app_processes"

    const-string v68, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v69, "android.app.remove_next_wallpaper_component"

    const-string v70, "android.app.remove_remote_views"

    const-string v71, "android.app.report_postgc_memory_metrics"

    const-string v72, "android.app.restrict_audio_attributes_alarm"

    const-string v73, "android.app.restrict_audio_attributes_call"

    const-string v74, "android.app.restrict_audio_attributes_media"

    const-string v75, "android.app.secure_allowlist_token"

    const-string v76, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v77, "android.app.sort_section_by_time"

    const-string v78, "android.app.system_terms_of_address_enabled"

    const-string v79, "android.app.ui_rich_ongoing"

    const-string v80, "android.app.uid_importance_listener_for_uids"

    filled-new-array/range {v1 .. v82}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 607
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/app/FeatureFlags;>;"
    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public introduceNewServiceOntimeoutCallback()Z
    .locals 2

    .line 218
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.introduce_new_service_ontimeout_callback"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Landroid/app/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x1

    return v0

    .line 598
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jankPerceptibleNarrow()Z
    .locals 2

    .line 225
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.jank_perceptible_narrow"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyguardPrivateNotifications()Z
    .locals 2

    .line 232
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.keyguard_private_notifications"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public lifetimeExtensionRefactor()Z
    .locals 2

    .line 239
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "android.app.lifetime_extension_refactor"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public liveWallpaperContentHandling()Z
    .locals 2

    .line 246
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "android.app.live_wallpaper_content_handling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesApi()Z
    .locals 2

    .line 253
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.modes_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesCleanupImplicit()Z
    .locals 2

    .line 260
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "android.app.modes_cleanup_implicit"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesHsum()Z
    .locals 2

    .line 267
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.modes_hsum"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesMultiuser()Z
    .locals 2

    .line 274
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.modes_multiuser"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesUi()Z
    .locals 2

    .line 281
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "android.app.modes_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesUiEmptyShade()Z
    .locals 2

    .line 288
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.app.modes_ui_empty_shade"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesUiIcons()Z
    .locals 2

    .line 295
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.app.modes_ui_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfCacheChannels()Z
    .locals 2

    .line 302
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.nm_binder_perf_cache_channels"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfGetAppsWithChannels()Z
    .locals 2

    .line 309
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "android.app.nm_binder_perf_get_apps_with_channels"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfLogNmThrottling()Z
    .locals 2

    .line 316
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "android.app.nm_binder_perf_log_nm_throttling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfPermissionCheck()Z
    .locals 2

    .line 323
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "android.app.nm_binder_perf_permission_check"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfThrottleNotify()Z
    .locals 2

    .line 330
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "android.app.nm_binder_perf_throttle_notify"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmSummarization()Z
    .locals 2

    .line 337
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.app.nm_summarization"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmSummarizationUi()Z
    .locals 2

    .line 344
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.app.nm_summarization_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public noSbnholder()Z
    .locals 2

    .line 351
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.app.no_sbnholder"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notifChannelCropVibrationEffects()Z
    .locals 2

    .line 358
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.app.notif_channel_crop_vibration_effects"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notifChannelEstimateEffectSize()Z
    .locals 2

    .line 365
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.notif_channel_estimate_effect_size"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationChannelVibrationEffectApi()Z
    .locals 2

    .line 372
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.app.notification_channel_vibration_effect_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationClassificationUi()Z
    .locals 2

    .line 379
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.notification_classification_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationExpansionOptional()Z
    .locals 2

    .line 386
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.notification_expansion_optional"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationNoCustomViewConversations()Z
    .locals 2

    .line 393
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.app.notification_no_custom_view_conversations"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsRedesignAppIcons()Z
    .locals 2

    .line 400
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "android.app.notifications_redesign_app_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsRedesignTemplates()Z
    .locals 2

    .line 407
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.app.notifications_redesign_templates"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsRedesignThemedAppIcons()Z
    .locals 2

    .line 414
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.notifications_redesign_themed_app_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public picCacheNulls()Z
    .locals 2

    .line 421
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.app.pic_cache_nulls"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public picIsolateCacheByUid()Z
    .locals 2

    .line 428
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.app.pic_isolate_cache_by_uid"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public picIsolatedCacheStatistics()Z
    .locals 2

    .line 435
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.pic_isolated_cache_statistics"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public picSeparatePermissionNotifications()Z
    .locals 2

    .line 442
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.pic_separate_permission_notifications"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public picUsesSharedMemory()Z
    .locals 2

    .line 449
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.pic_uses_shared_memory"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pinnerServiceClientApi()Z
    .locals 2

    .line 456
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.pinner_service_client_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rateLimitGetMemoryInfo()Z
    .locals 2

    .line 463
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.rate_limit_get_memory_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rateLimitGetMyMemoryState()Z
    .locals 2

    .line 470
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.rate_limit_get_my_memory_state"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rateLimitGetProcessesInErrorState()Z
    .locals 2

    .line 477
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.app.rate_limit_get_processes_in_error_state"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rateLimitGetRunningAppProcesses()Z
    .locals 2

    .line 484
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "android.app.rate_limit_get_running_app_processes"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public redactSensitiveContentNotificationsOnLockscreen()Z
    .locals 2

    .line 491
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeNextWallpaperComponent()Z
    .locals 2

    .line 498
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.remove_next_wallpaper_component"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeRemoteViews()Z
    .locals 2

    .line 505
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.remove_remote_views"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public reportPostgcMemoryMetrics()Z
    .locals 2

    .line 512
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.app.report_postgc_memory_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restrictAudioAttributesAlarm()Z
    .locals 2

    .line 519
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_alarm"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restrictAudioAttributesCall()Z
    .locals 2

    .line 526
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_call"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restrictAudioAttributesMedia()Z
    .locals 2

    .line 533
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_media"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public secureAllowlistToken()Z
    .locals 2

    .line 540
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.secure_allowlist_token"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public skipBgMemTrimOnFgApp()Z
    .locals 2

    .line 547
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.skip_bg_mem_trim_on_fg_app"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sortSectionByTime()Z
    .locals 2

    .line 554
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.sort_section_by_time"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public systemTermsOfAddressEnabled()Z
    .locals 2

    .line 561
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.app.system_terms_of_address_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public uiRichOngoing()Z
    .locals 2

    .line 568
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.ui_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public uidImportanceListenerForUids()Z
    .locals 2

    .line 575
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.uid_importance_listener_for_uids"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useAppInfoNotLaunched()Z
    .locals 2

    .line 582
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "android.app.use_app_info_not_launched"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useStickyBcastCache()Z
    .locals 2

    .line 589
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.app.use_sticky_bcast_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
