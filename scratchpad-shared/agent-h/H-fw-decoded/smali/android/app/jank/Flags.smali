.class public final Landroid/app/jank/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/app/jank/FeatureFlags; = null

.field public static final FLAG_DETAILED_APP_JANK_METRICS_API:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_api"

.field public static final FLAG_DETAILED_APP_JANK_METRICS_LOGGING_ENABLED:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_logging_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/app/jank/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/jank/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detailedAppJankMetricsApi()Z
    .locals 1

    .line 14
    sget-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    invoke-interface {v0}, Landroid/app/jank/FeatureFlags;->detailedAppJankMetricsApi()Z

    move-result v0

    return v0
.end method

.method public static detailedAppJankMetricsLoggingEnabled()Z
    .locals 1

    .line 20
    sget-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    invoke-interface {v0}, Landroid/app/jank/FeatureFlags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    return v0
.end method
