.class public Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
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
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v1, Ljava/util/HashSet;

    const-string v60, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    const-string v61, ""

    const-string v2, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    const-string v3, "com.android.graphics.surfaceflinger.flags.adpf_fmq_sf"

    const-string v4, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v5, "com.android.graphics.surfaceflinger.flags.adpf_native_session_manager"

    const-string v6, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    const-string v7, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    const-string v8, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    const-string v9, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    const-string v10, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    const-string v11, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v12, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    const-string v13, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    const-string v14, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v15, "com.android.graphics.surfaceflinger.flags.connected_display_hdr"

    const-string v16, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    const-string v17, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    const-string v18, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v19, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    const-string v20, "com.android.graphics.surfaceflinger.flags.display_config_error_hal"

    const-string v21, "com.android.graphics.surfaceflinger.flags.display_protected"

    const-string v22, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    const-string v23, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    const-string v24, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v25, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v26, "com.android.graphics.surfaceflinger.flags.filter_frames_before_trace_starts"

    const-string v27, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v28, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v29, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v30, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v31, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v32, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v33, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    const-string v34, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v35, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v36, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    const-string v37, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    const-string v38, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v39, "com.android.graphics.surfaceflinger.flags.misc1"

    const-string v40, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v41, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    const-string v42, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    const-string v43, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v44, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v45, "com.android.graphics.surfaceflinger.flags.reject_dupe_layerstacks"

    const-string v46, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v47, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v48, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v49, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    const-string v50, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    const-string v51, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    const-string v52, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    const-string v53, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    const-string v54, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v55, "com.android.graphics.surfaceflinger.flags.view_set_requested_frame_rate_mrr"

    const-string v56, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    const-string v57, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    const-string v58, "com.android.graphics.surfaceflinger.flags.vrr_config"

    const-string v59, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    filled-new-array/range {v2 .. v61}, [Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public greylist addSfSkippedFramesToTrace()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adpfFmqSf()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_fmq_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adpfGpuSf()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adpfNativeSessionManager()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_native_session_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowNVsyncsInTargeter()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist arrSetframerateApi()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist arrSetframerateGteEnum()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist arrSurfacecontrolSetframerateApi()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist begoneBrightHlg()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ceFencePromise()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist commitNotComposited()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectedDisplay()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.connected_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectedDisplayHdr()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.connected_display_hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist correctDpiWithDisplaySize()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateFrameTracker()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateVsyncSf()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist detachedMirror()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayConfigErrorHal()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.display_config_error_hal"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayProtected()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.display_protected"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dontSkipOnEarlyRo()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFroDependentFeatures()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableLayerCommandBatching()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSmallAreaDetection()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist filterFramesBeforeTraceStarts()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.filter_frames_before_trace_starts"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist flushBufferSlotsToUncache()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist forceCompileGraphiteRenderengine()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fp16ClientTarget()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist frameRateCategoryMrr()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gameDefaultFrameRate()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v58, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    const-string v59, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    const-string v1, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    const-string v2, "com.android.graphics.surfaceflinger.flags.adpf_fmq_sf"

    const-string v3, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v4, "com.android.graphics.surfaceflinger.flags.adpf_native_session_manager"

    const-string v5, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    const-string v6, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    const-string v7, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    const-string v8, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    const-string v9, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    const-string v10, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v11, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    const-string v12, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    const-string v13, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v14, "com.android.graphics.surfaceflinger.flags.connected_display_hdr"

    const-string v15, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    const-string v16, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    const-string v17, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v18, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    const-string v19, "com.android.graphics.surfaceflinger.flags.display_config_error_hal"

    const-string v20, "com.android.graphics.surfaceflinger.flags.display_protected"

    const-string v21, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    const-string v22, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    const-string v23, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v24, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v25, "com.android.graphics.surfaceflinger.flags.filter_frames_before_trace_starts"

    const-string v26, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v27, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v28, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v29, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v30, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v31, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v32, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    const-string v33, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v34, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v35, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    const-string v36, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    const-string v37, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v38, "com.android.graphics.surfaceflinger.flags.misc1"

    const-string v39, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v40, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    const-string v41, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    const-string v42, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v43, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v44, "com.android.graphics.surfaceflinger.flags.reject_dupe_layerstacks"

    const-string v45, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v46, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v47, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v48, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    const-string v49, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    const-string v50, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    const-string v51, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    const-string v52, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    const-string v53, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v54, "com.android.graphics.surfaceflinger.flags.view_set_requested_frame_rate_mrr"

    const-string v55, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    const-string v56, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    const-string v57, "com.android.graphics.surfaceflinger.flags.vrr_config"

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
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 446
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist graphiteRenderengine()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist graphiteRenderenginePreviewRollout()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hdcpLevelHal()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hotplug2()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hotplug2"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist increaseMissedFrameJankThreshold()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist localTonemapScreenshots()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist misc1()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.misc1"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multithreadedPresent()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noVsyncsOnScreenOff()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist overrideTrustedOverlay()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist protectedIfClient()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rejectDupeLayerstacks()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.reject_dupe_layerstacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist renderableBufferUsage()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restoreBlurStep()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist screenshotFencePreservation()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist singleHopScreenshot()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipInvisibleWindowsInInput()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stableEdidIds()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist syncedResolutionSwitch()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist trueHdrScreenshots()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist viewSetRequestedFrameRateMrr()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.view_set_requested_frame_rate_mrr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrBugfix24q4()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrBugfixDroppedFrame()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrConfig()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vulkanRenderengine()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist windowBlurKawase2()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
