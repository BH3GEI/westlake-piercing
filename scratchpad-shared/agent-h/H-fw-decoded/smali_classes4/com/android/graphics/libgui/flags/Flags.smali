.class public final Lcom/android/graphics/libgui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_APPLY_PICTURE_PROFILES:Ljava/lang/String; = "com.android.graphics.libgui.flags.apply_picture_profiles"

.field public static final blacklist FLAG_BQ_CONSUMER_ATTACH_CALLBACK:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

.field public static final blacklist FLAG_BQ_EXTENDEDALLOCATE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_extendedallocate"

.field public static final blacklist FLAG_BQ_GL_FENCE_CLEANUP:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

.field public static final blacklist FLAG_BQ_PRODUCER_THROTTLES_ONLY_ASYNC_MODE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

.field public static final blacklist FLAG_BQ_SETFRAMERATE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_setframerate"

.field public static final blacklist FLAG_BUFFER_RELEASE_CHANNEL:Ljava/lang/String; = "com.android.graphics.libgui.flags.buffer_release_channel"

.field public static final blacklist FLAG_EDGE_EXTENSION_SHADER:Ljava/lang/String; = "com.android.graphics.libgui.flags.edge_extension_shader"

.field public static final blacklist FLAG_FRAMETIMESTAMPS_PREVIOUSRELEASE:Ljava/lang/String; = "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

.field public static final blacklist FLAG_TRACE_FRAME_RATE_OVERRIDE:Ljava/lang/String; = "com.android.graphics.libgui.flags.trace_frame_rate_override"

.field public static final blacklist FLAG_WB_CAMERA3_AND_PROCESSORS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_camera3_and_processors"

.field public static final blacklist FLAG_WB_CONSUMER_BASE_OWNS_BQ:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

.field public static final blacklist FLAG_WB_LIBCAMERASERVICE:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_libcameraservice"

.field public static final blacklist FLAG_WB_MEDIA_MIGRATION:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_media_migration"

.field public static final blacklist FLAG_WB_PLATFORM_API_IMPROVEMENTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_platform_api_improvements"

.field public static final blacklist FLAG_WB_RING_BUFFER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_ring_buffer"

.field public static final blacklist FLAG_WB_STREAM_SPLITTER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_stream_splitter"

.field public static final blacklist FLAG_WB_UNLIMITED_SLOTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_unlimited_slots"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/graphics/libgui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist applyPictureProfiles()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->applyPictureProfiles()Z

    move-result v0

    return v0
.end method

.method public static greylist bqConsumerAttachCallback()Z
    .locals 1

    .line 52
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqConsumerAttachCallback()Z

    move-result v0

    return v0
.end method

.method public static greylist bqExtendedallocate()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqExtendedallocate()Z

    move-result v0

    return v0
.end method

.method public static greylist bqGlFenceCleanup()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqGlFenceCleanup()Z

    move-result v0

    return v0
.end method

.method public static greylist bqProducerThrottlesOnlyAsyncMode()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqProducerThrottlesOnlyAsyncMode()Z

    move-result v0

    return v0
.end method

.method public static greylist bqSetframerate()Z
    .locals 1

    .line 76
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqSetframerate()Z

    move-result v0

    return v0
.end method

.method public static greylist bufferReleaseChannel()Z
    .locals 1

    .line 82
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bufferReleaseChannel()Z

    move-result v0

    return v0
.end method

.method public static greylist edgeExtensionShader()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->edgeExtensionShader()Z

    move-result v0

    return v0
.end method

.method public static greylist frametimestampsPreviousrelease()Z
    .locals 1

    .line 94
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->frametimestampsPreviousrelease()Z

    move-result v0

    return v0
.end method

.method public static greylist traceFrameRateOverride()Z
    .locals 1

    .line 100
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->traceFrameRateOverride()Z

    move-result v0

    return v0
.end method

.method public static greylist wbCamera3AndProcessors()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbCamera3AndProcessors()Z

    move-result v0

    return v0
.end method

.method public static greylist wbConsumerBaseOwnsBq()Z
    .locals 1

    .line 112
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbConsumerBaseOwnsBq()Z

    move-result v0

    return v0
.end method

.method public static greylist wbLibcameraservice()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbLibcameraservice()Z

    move-result v0

    return v0
.end method

.method public static greylist wbMediaMigration()Z
    .locals 1

    .line 124
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbMediaMigration()Z

    move-result v0

    return v0
.end method

.method public static greylist wbPlatformApiImprovements()Z
    .locals 1

    .line 130
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbPlatformApiImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist wbRingBuffer()Z
    .locals 1

    .line 136
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbRingBuffer()Z

    move-result v0

    return v0
.end method

.method public static greylist wbStreamSplitter()Z
    .locals 1

    .line 142
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbStreamSplitter()Z

    move-result v0

    return v0
.end method

.method public static greylist wbUnlimitedSlots()Z
    .locals 1

    .line 148
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbUnlimitedSlots()Z

    move-result v0

    return v0
.end method
