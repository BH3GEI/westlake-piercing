.class public final Landroid/tracing/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/tracing/FeatureFlags; = null

.field public static final blacklist FLAG_CLIENT_SIDE_PROTO_LOGGING:Ljava/lang/String; = "android.tracing.client_side_proto_logging"

.field public static final blacklist FLAG_PERFETTO_IME:Ljava/lang/String; = "android.tracing.perfetto_ime"

.field public static final blacklist FLAG_PERFETTO_IME_TRACING:Ljava/lang/String; = "android.tracing.perfetto_ime_tracing"

.field public static final blacklist FLAG_PERFETTO_PROTOLOG_TRACING:Ljava/lang/String; = "android.tracing.perfetto_protolog_tracing"

.field public static final blacklist FLAG_PERFETTO_TRANSITION_TRACING:Ljava/lang/String; = "android.tracing.perfetto_transition_tracing"

.field public static final blacklist FLAG_PERFETTO_VIEW_CAPTURE_TRACING:Ljava/lang/String; = "android.tracing.perfetto_view_capture_tracing"

.field public static final blacklist FLAG_PERFETTO_WM_DUMP:Ljava/lang/String; = "android.tracing.perfetto_wm_dump"

.field public static final blacklist FLAG_PERFETTO_WM_DUMP_CTS:Ljava/lang/String; = "android.tracing.perfetto_wm_dump_cts"

.field public static final blacklist FLAG_PERFETTO_WM_TRACING:Ljava/lang/String; = "android.tracing.perfetto_wm_tracing"

.field public static final blacklist FLAG_SYSTEM_SERVER_LARGE_PERFETTO_SHMEM_BUFFER:Ljava/lang/String; = "android.tracing.system_server_large_perfetto_shmem_buffer"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/tracing/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/tracing/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist clientSideProtoLogging()Z
    .locals 1

    .line 30
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->clientSideProtoLogging()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoIme()Z
    .locals 1

    .line 36
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoIme()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoImeTracing()Z
    .locals 1

    .line 42
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoImeTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoProtologTracing()Z
    .locals 1

    .line 48
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoProtologTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoTransitionTracing()Z
    .locals 1

    .line 54
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoTransitionTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoViewCaptureTracing()Z
    .locals 1

    .line 60
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoViewCaptureTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoWmDump()Z
    .locals 1

    .line 66
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoWmDump()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoWmDumpCts()Z
    .locals 1

    .line 72
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoWmDumpCts()Z

    move-result v0

    return v0
.end method

.method public static greylist perfettoWmTracing()Z
    .locals 1

    .line 78
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->perfettoWmTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist systemServerLargePerfettoShmemBuffer()Z
    .locals 1

    .line 84
    sget-object v0, Landroid/tracing/Flags;->FEATURE_FLAGS:Landroid/tracing/FeatureFlags;

    invoke-interface {v0}, Landroid/tracing/FeatureFlags;->systemServerLargePerfettoShmemBuffer()Z

    move-result v0

    return v0
.end method
