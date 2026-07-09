.class public Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
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
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v1, Ljava/util/HashSet;

    const-string v46, "android.os.update_engine_api"

    const-string v47, ""

    const-string v2, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v3, "android.os.adpf_graphics_pipeline"

    const-string v4, "android.os.adpf_hwui_gpu"

    const-string v5, "android.os.adpf_measure_during_input_event_boost"

    const-string v6, "android.os.adpf_obtainview_boost"

    const-string v7, "android.os.adpf_platform_power_efficiency"

    const-string v8, "android.os.adpf_prefer_power_efficiency"

    const-string v9, "android.os.adpf_use_fmq_channel"

    const-string v10, "android.os.adpf_use_fmq_channel_fixed"

    const-string v11, "android.os.adpf_use_load_hints"

    const-string v12, "android.os.allow_consentless_bugreport_delegated_consent"

    const-string v13, "android.os.allow_private_profile"

    const-string v14, "android.os.allow_thermal_hal_skin_forecast"

    const-string v15, "android.os.allow_thermal_headroom_thresholds"

    const-string v16, "android.os.allow_thermal_thresholds_callback"

    const-string v17, "android.os.android_os_build_vanilla_ice_cream"

    const-string v18, "android.os.api_for_backported_fixes"

    const-string v19, "android.os.app_zygote_retry_start"

    const-string v20, "android.os.battery_part_status_api"

    const-string v21, "android.os.battery_saver_supported_check_api"

    const-string v22, "android.os.battery_service_support_current_adb_command"

    const-string v23, "android.os.binder_frozen_state_change_callback"

    const-string v24, "android.os.cpu_gpu_headrooms"

    const-string v25, "android.os.disable_madvise_artfile_default"

    const-string v26, "android.os.disallow_cellular_null_ciphers_restriction"

    const-string v27, "android.os.enable_angle_allow_list"

    const-string v28, "android.os.enable_has_binders"

    const-string v29, "android.os.get_private_space_settings"

    const-string v30, "android.os.mainline_vcn_platform_api"

    const-string v31, "android.os.material_colors_10_2024"

    const-string v32, "android.os.material_motion_tokens"

    const-string v33, "android.os.material_shape_tokens"

    const-string v34, "android.os.message_queue_tail_tracking"

    const-string v35, "android.os.message_queue_testability"

    const-string v36, "android.os.network_time_uses_shared_memory"

    const-string v37, "android.os.ordered_broadcast_multiple_permissions"

    const-string v38, "android.os.perfetto_sdk_tracing"

    const-string v39, "android.os.perfetto_sdk_tracing_v2"

    const-string v40, "android.os.remove_app_profiler_pss_collection"

    const-string v41, "android.os.security_state_service"

    const-string v42, "android.os.state_of_health_public"

    const-string v43, "android.os.storage_lifetime_api"

    const-string v44, "android.os.strict_mode_restricted_network"

    const-string v45, "android.os.telemetry_apis_framework_initialization"

    filled-new-array/range {v2 .. v47}, [Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 344
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist adpfGpuReportActualWorkDuration()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.adpf_gpu_report_actual_work_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfGraphicsPipeline()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.os.adpf_graphics_pipeline"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfHwuiGpu()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.os.adpf_hwui_gpu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfMeasureDuringInputEventBoost()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.os.adpf_measure_during_input_event_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfObtainviewBoost()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.os.adpf_obtainview_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPlatformPowerEfficiency()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.os.adpf_platform_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPreferPowerEfficiency()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.os.adpf_prefer_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannel()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannelFixed()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel_fixed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseLoadHints()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.os.adpf_use_load_hints"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowConsentlessBugreportDelegatedConsent()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.os.allow_consentless_bugreport_delegated_consent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowPrivateProfile()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.os.allow_private_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalHalSkinForecast()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.allow_thermal_hal_skin_forecast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalHeadroomThresholds()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.os.allow_thermal_headroom_thresholds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalThresholdsCallback()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.os.allow_thermal_thresholds_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist androidOsBuildVanillaIceCream()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.os.android_os_build_vanilla_ice_cream"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiForBackportedFixes()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.os.api_for_backported_fixes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appZygoteRetryStart()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.os.app_zygote_retry_start"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryPartStatusApi()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.os.battery_part_status_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batterySaverSupportedCheckApi()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.battery_saver_supported_check_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryServiceSupportCurrentAdbCommand()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.os.battery_service_support_current_adb_command"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist binderFrozenStateChangeCallback()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.os.binder_frozen_state_change_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cpuGpuHeadrooms()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.os.cpu_gpu_headrooms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableMadviseArtfileDefault()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.os.disable_madvise_artfile_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowCellularNullCiphersRestriction()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.os.disallow_cellular_null_ciphers_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAngleAllowList()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.os.enable_angle_allow_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHasBinders()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.os.enable_has_binders"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    const-string v44, "android.os.telemetry_apis_framework_initialization"

    const-string v45, "android.os.update_engine_api"

    const-string v1, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v2, "android.os.adpf_graphics_pipeline"

    const-string v3, "android.os.adpf_hwui_gpu"

    const-string v4, "android.os.adpf_measure_during_input_event_boost"

    const-string v5, "android.os.adpf_obtainview_boost"

    const-string v6, "android.os.adpf_platform_power_efficiency"

    const-string v7, "android.os.adpf_prefer_power_efficiency"

    const-string v8, "android.os.adpf_use_fmq_channel"

    const-string v9, "android.os.adpf_use_fmq_channel_fixed"

    const-string v10, "android.os.adpf_use_load_hints"

    const-string v11, "android.os.allow_consentless_bugreport_delegated_consent"

    const-string v12, "android.os.allow_private_profile"

    const-string v13, "android.os.allow_thermal_hal_skin_forecast"

    const-string v14, "android.os.allow_thermal_headroom_thresholds"

    const-string v15, "android.os.allow_thermal_thresholds_callback"

    const-string v16, "android.os.android_os_build_vanilla_ice_cream"

    const-string v17, "android.os.api_for_backported_fixes"

    const-string v18, "android.os.app_zygote_retry_start"

    const-string v19, "android.os.battery_part_status_api"

    const-string v20, "android.os.battery_saver_supported_check_api"

    const-string v21, "android.os.battery_service_support_current_adb_command"

    const-string v22, "android.os.binder_frozen_state_change_callback"

    const-string v23, "android.os.cpu_gpu_headrooms"

    const-string v24, "android.os.disable_madvise_artfile_default"

    const-string v25, "android.os.disallow_cellular_null_ciphers_restriction"

    const-string v26, "android.os.enable_angle_allow_list"

    const-string v27, "android.os.enable_has_binders"

    const-string v28, "android.os.get_private_space_settings"

    const-string v29, "android.os.mainline_vcn_platform_api"

    const-string v30, "android.os.material_colors_10_2024"

    const-string v31, "android.os.material_motion_tokens"

    const-string v32, "android.os.material_shape_tokens"

    const-string v33, "android.os.message_queue_tail_tracking"

    const-string v34, "android.os.message_queue_testability"

    const-string v35, "android.os.network_time_uses_shared_memory"

    const-string v36, "android.os.ordered_broadcast_multiple_permissions"

    const-string v37, "android.os.perfetto_sdk_tracing"

    const-string v38, "android.os.perfetto_sdk_tracing_v2"

    const-string v39, "android.os.remove_app_profiler_pss_collection"

    const-string v40, "android.os.security_state_service"

    const-string v41, "android.os.state_of_health_public"

    const-string v42, "android.os.storage_lifetime_api"

    const-string v43, "android.os.strict_mode_restricted_network"

    filled-new-array/range {v1 .. v45}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrivateSpaceSettings()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.get_private_space_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 348
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mainlineVcnPlatformApi()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.os.mainline_vcn_platform_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialColors102024()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.os.material_colors_10_2024"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialMotionTokens()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.os.material_motion_tokens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialShapeTokens()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.os.material_shape_tokens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist messageQueueTailTracking()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.os.message_queue_tail_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist messageQueueTestability()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.os.message_queue_testability"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkTimeUsesSharedMemory()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.os.network_time_uses_shared_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist orderedBroadcastMultiplePermissions()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.os.ordered_broadcast_multiple_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracing()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracingV2()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeAppProfilerPssCollection()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.os.remove_app_profiler_pss_collection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityStateService()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.os.security_state_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stateOfHealthPublic()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.os.state_of_health_public"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist storageLifetimeApi()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.os.storage_lifetime_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist strictModeRestrictedNetwork()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.os.strict_mode_restricted_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telemetryApisFrameworkInitialization()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.os.telemetry_apis_framework_initialization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateEngineApi()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.os.update_engine_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
