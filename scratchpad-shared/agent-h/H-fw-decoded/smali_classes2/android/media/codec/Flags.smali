.class public final Landroid/media/codec/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/media/codec/FeatureFlags; = null

.field public static final blacklist FLAG_AIDL_HAL_INPUT_SURFACE:Ljava/lang/String; = "android.media.codec.aidl_hal_input_surface"

.field public static final blacklist FLAG_APV_SUPPORT:Ljava/lang/String; = "android.media.codec.apv_support"

.field public static final blacklist FLAG_CODEC_AVAILABILITY:Ljava/lang/String; = "android.media.codec.codec_availability"

.field public static final blacklist FLAG_CODEC_AVAILABILITY_SUPPORT:Ljava/lang/String; = "android.media.codec.codec_availability_support"

.field public static final blacklist FLAG_CODEC_BUFFER_STATE_CLEANUP:Ljava/lang/String; = "android.media.codec.codec_buffer_state_cleanup"

.field public static final blacklist FLAG_DATASPACE_V0_PARTIAL:Ljava/lang/String; = "android.media.codec.dataspace_v0_partial"

.field public static final blacklist FLAG_DYNAMIC_COLOR_ASPECTS:Ljava/lang/String; = "android.media.codec.dynamic_color_aspects"

.field public static final blacklist FLAG_HLG_EDITING:Ljava/lang/String; = "android.media.codec.hlg_editing"

.field public static final blacklist FLAG_INPUT_SURFACE_THROTTLE:Ljava/lang/String; = "android.media.codec.input_surface_throttle"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC_SUPPORT:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec_support"

.field public static final blacklist FLAG_LARGE_AUDIO_FRAME_FINISH:Ljava/lang/String; = "android.media.codec.large_audio_frame_finish"

.field public static final blacklist FLAG_NATIVE_CAPABILITES:Ljava/lang/String; = "android.media.codec.native_capabilites"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE:Ljava/lang/String; = "android.media.codec.null_output_surface"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE_SUPPORT:Ljava/lang/String; = "android.media.codec.null_output_surface_support"

.field public static final blacklist FLAG_NUM_INPUT_SLOTS:Ljava/lang/String; = "android.media.codec.num_input_slots"

.field public static final blacklist FLAG_P210_FORMAT_SUPPORT:Ljava/lang/String; = "android.media.codec.p210_format_support"

.field public static final blacklist FLAG_REGION_OF_INTEREST:Ljava/lang/String; = "android.media.codec.region_of_interest"

.field public static final blacklist FLAG_REGION_OF_INTEREST_SUPPORT:Ljava/lang/String; = "android.media.codec.region_of_interest_support"

.field public static final blacklist FLAG_RENDERING_DEPTH_REMOVAL:Ljava/lang/String; = "android.media.codec.rendering_depth_removal"

.field public static final blacklist FLAG_SECURE_CODECS_REQUIRE_CRYPTO:Ljava/lang/String; = "android.media.codec.secure_codecs_require_crypto"

.field public static final blacklist FLAG_SET_CALLBACK_STALL:Ljava/lang/String; = "android.media.codec.set_callback_stall"

.field public static final blacklist FLAG_SET_STATE_EARLY:Ljava/lang/String; = "android.media.codec.set_state_early"

.field public static final blacklist FLAG_STOP_HAL_BEFORE_SURFACE:Ljava/lang/String; = "android.media.codec.stop_hal_before_surface"

.field public static final blacklist FLAG_SUBSESSION_METRICS:Ljava/lang/String; = "android.media.codec.subsession_metrics"

.field public static final blacklist FLAG_TEAMFOOD:Ljava/lang/String; = "android.media.codec.teamfood"

.field public static final blacklist FLAG_THUMBNAIL_BLOCK_MODEL:Ljava/lang/String; = "android.media.codec.thumbnail_block_model"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Landroid/media/codec/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/media/codec/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist aidlHalInputSurface()Z
    .locals 1

    .line 64
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->aidlHalInputSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist apvSupport()Z
    .locals 1

    .line 70
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->apvSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist codecAvailability()Z
    .locals 1

    .line 76
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->codecAvailability()Z

    move-result v0

    return v0
.end method

.method public static greylist codecAvailabilitySupport()Z
    .locals 1

    .line 82
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->codecAvailabilitySupport()Z

    move-result v0

    return v0
.end method

.method public static greylist codecBufferStateCleanup()Z
    .locals 1

    .line 88
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->codecBufferStateCleanup()Z

    move-result v0

    return v0
.end method

.method public static greylist dataspaceV0Partial()Z
    .locals 1

    .line 94
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->dataspaceV0Partial()Z

    move-result v0

    return v0
.end method

.method public static greylist dynamicColorAspects()Z
    .locals 1

    .line 100
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->dynamicColorAspects()Z

    move-result v0

    return v0
.end method

.method public static greylist hlgEditing()Z
    .locals 1

    .line 106
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->hlgEditing()Z

    move-result v0

    return v0
.end method

.method public static greylist inProcessSwAudioCodec()Z
    .locals 1

    .line 112
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inProcessSwAudioCodec()Z

    move-result v0

    return v0
.end method

.method public static greylist inProcessSwAudioCodecSupport()Z
    .locals 1

    .line 118
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inProcessSwAudioCodecSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist inputSurfaceThrottle()Z
    .locals 1

    .line 124
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inputSurfaceThrottle()Z

    move-result v0

    return v0
.end method

.method public static greylist largeAudioFrameFinish()Z
    .locals 1

    .line 130
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->largeAudioFrameFinish()Z

    move-result v0

    return v0
.end method

.method public static greylist nativeCapabilites()Z
    .locals 1

    .line 136
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nativeCapabilites()Z

    move-result v0

    return v0
.end method

.method public static greylist nullOutputSurface()Z
    .locals 1

    .line 142
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nullOutputSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist nullOutputSurfaceSupport()Z
    .locals 1

    .line 148
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nullOutputSurfaceSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist numInputSlots()Z
    .locals 1

    .line 154
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->numInputSlots()Z

    move-result v0

    return v0
.end method

.method public static greylist p210FormatSupport()Z
    .locals 1

    .line 160
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->p210FormatSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist regionOfInterest()Z
    .locals 1

    .line 166
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->regionOfInterest()Z

    move-result v0

    return v0
.end method

.method public static greylist regionOfInterestSupport()Z
    .locals 1

    .line 172
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->regionOfInterestSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist renderingDepthRemoval()Z
    .locals 1

    .line 178
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->renderingDepthRemoval()Z

    move-result v0

    return v0
.end method

.method public static greylist secureCodecsRequireCrypto()Z
    .locals 1

    .line 184
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->secureCodecsRequireCrypto()Z

    move-result v0

    return v0
.end method

.method public static greylist setCallbackStall()Z
    .locals 1

    .line 190
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->setCallbackStall()Z

    move-result v0

    return v0
.end method

.method public static greylist setStateEarly()Z
    .locals 1

    .line 196
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->setStateEarly()Z

    move-result v0

    return v0
.end method

.method public static greylist stopHalBeforeSurface()Z
    .locals 1

    .line 202
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->stopHalBeforeSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist subsessionMetrics()Z
    .locals 1

    .line 208
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->subsessionMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist teamfood()Z
    .locals 1

    .line 214
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->teamfood()Z

    move-result v0

    return v0
.end method

.method public static greylist thumbnailBlockModel()Z
    .locals 1

    .line 220
    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->thumbnailBlockModel()Z

    move-result v0

    return v0
.end method
