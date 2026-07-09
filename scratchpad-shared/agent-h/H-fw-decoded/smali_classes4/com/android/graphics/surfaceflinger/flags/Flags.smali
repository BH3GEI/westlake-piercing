.class public final Lcom/android/graphics/surfaceflinger/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_SF_SKIPPED_FRAMES_TO_TRACE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

.field public static final blacklist FLAG_ADPF_FMQ_SF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.adpf_fmq_sf"

.field public static final blacklist FLAG_ADPF_GPU_SF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

.field public static final blacklist FLAG_ADPF_NATIVE_SESSION_MANAGER:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.adpf_native_session_manager"

.field public static final blacklist FLAG_ALLOW_N_VSYNCS_IN_TARGETER:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

.field public static final blacklist FLAG_ARR_SETFRAMERATE_API:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

.field public static final blacklist FLAG_ARR_SETFRAMERATE_GTE_ENUM:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

.field public static final blacklist FLAG_ARR_SURFACECONTROL_SETFRAMERATE_API:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

.field public static final blacklist FLAG_BEGONE_BRIGHT_HLG:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

.field public static final blacklist FLAG_CACHE_WHEN_SOURCE_CROP_LAYER_ONLY_MOVED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

.field public static final blacklist FLAG_CE_FENCE_PROMISE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

.field public static final blacklist FLAG_COMMIT_NOT_COMPOSITED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.commit_not_composited"

.field public static final blacklist FLAG_CONNECTED_DISPLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.connected_display"

.field public static final blacklist FLAG_CONNECTED_DISPLAY_HDR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.connected_display_hdr"

.field public static final blacklist FLAG_CORRECT_DPI_WITH_DISPLAY_SIZE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

.field public static final blacklist FLAG_DEPRECATE_FRAME_TRACKER:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

.field public static final blacklist FLAG_DEPRECATE_VSYNC_SF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

.field public static final blacklist FLAG_DETACHED_MIRROR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.detached_mirror"

.field public static final blacklist FLAG_DISPLAY_CONFIG_ERROR_HAL:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.display_config_error_hal"

.field public static final blacklist FLAG_DISPLAY_PROTECTED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.display_protected"

.field public static final blacklist FLAG_DONT_SKIP_ON_EARLY_RO:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

.field public static final blacklist FLAG_ENABLE_FRO_DEPENDENT_FEATURES:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

.field public static final blacklist FLAG_ENABLE_LAYER_COMMAND_BATCHING:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

.field public static final blacklist FLAG_ENABLE_SMALL_AREA_DETECTION:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

.field public static final blacklist FLAG_FILTER_FRAMES_BEFORE_TRACE_STARTS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.filter_frames_before_trace_starts"

.field public static final blacklist FLAG_FLUSH_BUFFER_SLOTS_TO_UNCACHE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

.field public static final blacklist FLAG_FORCE_COMPILE_GRAPHITE_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

.field public static final blacklist FLAG_FP16_CLIENT_TARGET:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.fp16_client_target"

.field public static final blacklist FLAG_FRAME_RATE_CATEGORY_MRR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

.field public static final blacklist FLAG_GAME_DEFAULT_FRAME_RATE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

.field public static final blacklist FLAG_GRAPHITE_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

.field public static final blacklist FLAG_GRAPHITE_RENDERENGINE_PREVIEW_ROLLOUT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

.field public static final blacklist FLAG_HDCP_LEVEL_HAL:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

.field public static final blacklist FLAG_HOTPLUG2:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.hotplug2"

.field public static final blacklist FLAG_INCREASE_MISSED_FRAME_JANK_THRESHOLD:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

.field public static final blacklist FLAG_LATCH_UNSIGNALED_WITH_AUTO_REFRESH_CHANGED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

.field public static final blacklist FLAG_LOCAL_TONEMAP_SCREENSHOTS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

.field public static final blacklist FLAG_MISC1:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.misc1"

.field public static final blacklist FLAG_MULTITHREADED_PRESENT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.multithreaded_present"

.field public static final blacklist FLAG_NO_VSYNCS_ON_SCREEN_OFF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

.field public static final blacklist FLAG_OVERRIDE_TRUSTED_OVERLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

.field public static final blacklist FLAG_PROTECTED_IF_CLIENT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.protected_if_client"

.field public static final blacklist FLAG_REFRESH_RATE_OVERLAY_ON_EXTERNAL_DISPLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

.field public static final blacklist FLAG_REJECT_DUPE_LAYERSTACKS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.reject_dupe_layerstacks"

.field public static final blacklist FLAG_RENDERABLE_BUFFER_USAGE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

.field public static final blacklist FLAG_RESTORE_BLUR_STEP:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.restore_blur_step"

.field public static final blacklist FLAG_SCREENSHOT_FENCE_PRESERVATION:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

.field public static final blacklist FLAG_SINGLE_HOP_SCREENSHOT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

.field public static final blacklist FLAG_SKIP_INVISIBLE_WINDOWS_IN_INPUT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

.field public static final blacklist FLAG_STABLE_EDID_IDS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

.field public static final blacklist FLAG_SYNCED_RESOLUTION_SWITCH:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

.field public static final blacklist FLAG_TRUE_HDR_SCREENSHOTS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

.field public static final blacklist FLAG_USE_KNOWN_REFRESH_RATE_FOR_FPS_CONSISTENCY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

.field public static final blacklist FLAG_VIEW_SET_REQUESTED_FRAME_RATE_MRR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.view_set_requested_frame_rate_mrr"

.field public static final blacklist FLAG_VRR_BUGFIX_24Q4:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

.field public static final blacklist FLAG_VRR_BUGFIX_DROPPED_FRAME:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

.field public static final blacklist FLAG_VRR_CONFIG:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_config"

.field public static final blacklist FLAG_VULKAN_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

.field public static final blacklist FLAG_WINDOW_BLUR_KAWASE2:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 479
    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addSfSkippedFramesToTrace()Z
    .locals 1

    .line 128
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->addSfSkippedFramesToTrace()Z

    move-result v0

    return v0
.end method

.method public static greylist adpfFmqSf()Z
    .locals 1

    .line 134
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->adpfFmqSf()Z

    move-result v0

    return v0
.end method

.method public static greylist adpfGpuSf()Z
    .locals 1

    .line 140
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->adpfGpuSf()Z

    move-result v0

    return v0
.end method

.method public static greylist adpfNativeSessionManager()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->adpfNativeSessionManager()Z

    move-result v0

    return v0
.end method

.method public static greylist allowNVsyncsInTargeter()Z
    .locals 1

    .line 152
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->allowNVsyncsInTargeter()Z

    move-result v0

    return v0
.end method

.method public static greylist arrSetframerateApi()Z
    .locals 1

    .line 158
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->arrSetframerateApi()Z

    move-result v0

    return v0
.end method

.method public static greylist arrSetframerateGteEnum()Z
    .locals 1

    .line 164
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->arrSetframerateGteEnum()Z

    move-result v0

    return v0
.end method

.method public static greylist arrSurfacecontrolSetframerateApi()Z
    .locals 1

    .line 170
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->arrSurfacecontrolSetframerateApi()Z

    move-result v0

    return v0
.end method

.method public static greylist begoneBrightHlg()Z
    .locals 1

    .line 176
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->begoneBrightHlg()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 1

    .line 182
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->cacheWhenSourceCropLayerOnlyMoved()Z

    move-result v0

    return v0
.end method

.method public static greylist ceFencePromise()Z
    .locals 1

    .line 188
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->ceFencePromise()Z

    move-result v0

    return v0
.end method

.method public static greylist commitNotComposited()Z
    .locals 1

    .line 194
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->commitNotComposited()Z

    move-result v0

    return v0
.end method

.method public static greylist connectedDisplay()Z
    .locals 1

    .line 200
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->connectedDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist connectedDisplayHdr()Z
    .locals 1

    .line 206
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->connectedDisplayHdr()Z

    move-result v0

    return v0
.end method

.method public static greylist correctDpiWithDisplaySize()Z
    .locals 1

    .line 212
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->correctDpiWithDisplaySize()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateFrameTracker()Z
    .locals 1

    .line 218
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->deprecateFrameTracker()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateVsyncSf()Z
    .locals 1

    .line 224
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->deprecateVsyncSf()Z

    move-result v0

    return v0
.end method

.method public static greylist detachedMirror()Z
    .locals 1

    .line 230
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->detachedMirror()Z

    move-result v0

    return v0
.end method

.method public static greylist displayConfigErrorHal()Z
    .locals 1

    .line 236
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->displayConfigErrorHal()Z

    move-result v0

    return v0
.end method

.method public static greylist displayProtected()Z
    .locals 1

    .line 242
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->displayProtected()Z

    move-result v0

    return v0
.end method

.method public static greylist dontSkipOnEarlyRo()Z
    .locals 1

    .line 248
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->dontSkipOnEarlyRo()Z

    move-result v0

    return v0
.end method

.method public static greylist enableFroDependentFeatures()Z
    .locals 1

    .line 254
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableFroDependentFeatures()Z

    move-result v0

    return v0
.end method

.method public static greylist enableLayerCommandBatching()Z
    .locals 1

    .line 260
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableLayerCommandBatching()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSmallAreaDetection()Z
    .locals 1

    .line 266
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableSmallAreaDetection()Z

    move-result v0

    return v0
.end method

.method public static greylist filterFramesBeforeTraceStarts()Z
    .locals 1

    .line 272
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->filterFramesBeforeTraceStarts()Z

    move-result v0

    return v0
.end method

.method public static greylist flushBufferSlotsToUncache()Z
    .locals 1

    .line 278
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->flushBufferSlotsToUncache()Z

    move-result v0

    return v0
.end method

.method public static greylist forceCompileGraphiteRenderengine()Z
    .locals 1

    .line 284
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->forceCompileGraphiteRenderengine()Z

    move-result v0

    return v0
.end method

.method public static greylist fp16ClientTarget()Z
    .locals 1

    .line 290
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->fp16ClientTarget()Z

    move-result v0

    return v0
.end method

.method public static greylist frameRateCategoryMrr()Z
    .locals 1

    .line 296
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->frameRateCategoryMrr()Z

    move-result v0

    return v0
.end method

.method public static greylist gameDefaultFrameRate()Z
    .locals 1

    .line 302
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->gameDefaultFrameRate()Z

    move-result v0

    return v0
.end method

.method public static greylist graphiteRenderengine()Z
    .locals 1

    .line 308
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->graphiteRenderengine()Z

    move-result v0

    return v0
.end method

.method public static greylist graphiteRenderenginePreviewRollout()Z
    .locals 1

    .line 314
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->graphiteRenderenginePreviewRollout()Z

    move-result v0

    return v0
.end method

.method public static greylist hdcpLevelHal()Z
    .locals 1

    .line 320
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->hdcpLevelHal()Z

    move-result v0

    return v0
.end method

.method public static greylist hotplug2()Z
    .locals 1

    .line 326
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->hotplug2()Z

    move-result v0

    return v0
.end method

.method public static greylist increaseMissedFrameJankThreshold()Z
    .locals 1

    .line 332
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->increaseMissedFrameJankThreshold()Z

    move-result v0

    return v0
.end method

.method public static greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 1

    .line 338
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->latchUnsignaledWithAutoRefreshChanged()Z

    move-result v0

    return v0
.end method

.method public static greylist localTonemapScreenshots()Z
    .locals 1

    .line 344
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->localTonemapScreenshots()Z

    move-result v0

    return v0
.end method

.method public static greylist misc1()Z
    .locals 1

    .line 350
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->misc1()Z

    move-result v0

    return v0
.end method

.method public static greylist multithreadedPresent()Z
    .locals 1

    .line 356
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->multithreadedPresent()Z

    move-result v0

    return v0
.end method

.method public static greylist noVsyncsOnScreenOff()Z
    .locals 1

    .line 362
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->noVsyncsOnScreenOff()Z

    move-result v0

    return v0
.end method

.method public static greylist overrideTrustedOverlay()Z
    .locals 1

    .line 368
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->overrideTrustedOverlay()Z

    move-result v0

    return v0
.end method

.method public static greylist protectedIfClient()Z
    .locals 1

    .line 374
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->protectedIfClient()Z

    move-result v0

    return v0
.end method

.method public static greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 1

    .line 380
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->refreshRateOverlayOnExternalDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist rejectDupeLayerstacks()Z
    .locals 1

    .line 386
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->rejectDupeLayerstacks()Z

    move-result v0

    return v0
.end method

.method public static greylist renderableBufferUsage()Z
    .locals 1

    .line 392
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->renderableBufferUsage()Z

    move-result v0

    return v0
.end method

.method public static greylist restoreBlurStep()Z
    .locals 1

    .line 398
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->restoreBlurStep()Z

    move-result v0

    return v0
.end method

.method public static greylist screenshotFencePreservation()Z
    .locals 1

    .line 404
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->screenshotFencePreservation()Z

    move-result v0

    return v0
.end method

.method public static greylist singleHopScreenshot()Z
    .locals 1

    .line 410
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->singleHopScreenshot()Z

    move-result v0

    return v0
.end method

.method public static greylist skipInvisibleWindowsInInput()Z
    .locals 1

    .line 416
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->skipInvisibleWindowsInInput()Z

    move-result v0

    return v0
.end method

.method public static greylist stableEdidIds()Z
    .locals 1

    .line 422
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->stableEdidIds()Z

    move-result v0

    return v0
.end method

.method public static greylist syncedResolutionSwitch()Z
    .locals 1

    .line 428
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->syncedResolutionSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist trueHdrScreenshots()Z
    .locals 1

    .line 434
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->trueHdrScreenshots()Z

    move-result v0

    return v0
.end method

.method public static greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 1

    .line 440
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->useKnownRefreshRateForFpsConsistency()Z

    move-result v0

    return v0
.end method

.method public static greylist viewSetRequestedFrameRateMrr()Z
    .locals 1

    .line 446
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->viewSetRequestedFrameRateMrr()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrBugfix24q4()Z
    .locals 1

    .line 452
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrBugfix24q4()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrBugfixDroppedFrame()Z
    .locals 1

    .line 458
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrBugfixDroppedFrame()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrConfig()Z
    .locals 1

    .line 464
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist vulkanRenderengine()Z
    .locals 1

    .line 470
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vulkanRenderengine()Z

    move-result v0

    return v0
.end method

.method public static greylist windowBlurKawase2()Z
    .locals 1

    .line 476
    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->windowBlurKawase2()Z

    move-result v0

    return v0
.end method
