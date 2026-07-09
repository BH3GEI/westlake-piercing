.class public final Landroid/app/usage/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/app/usage/FeatureFlags; = null

.field public static final FLAG_DISABLE_IDLE_CHECK:Ljava/lang/String; = "android.app.usage.disable_idle_check"

.field public static final FLAG_FILTER_BASED_EVENT_QUERY_API:Ljava/lang/String; = "android.app.usage.filter_based_event_query_api"

.field public static final FLAG_GET_APP_BYTES_BY_DATA_TYPE_API:Ljava/lang/String; = "android.app.usage.get_app_bytes_by_data_type_api"

.field public static final FLAG_REPORT_USAGE_STATS_PERMISSION:Ljava/lang/String; = "android.app.usage.report_usage_stats_permission"

.field public static final FLAG_USER_INTERACTION_TYPE_API:Ljava/lang/String; = "android.app.usage.user_interaction_type_api"

.field public static final FLAG_USE_DEDICATED_HANDLER_THREAD:Ljava/lang/String; = "android.app.usage.use_dedicated_handler_thread"

.field public static final FLAG_USE_PARCELED_LIST:Ljava/lang/String; = "android.app.usage.use_parceled_list"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/app/usage/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/usage/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableIdleCheck()Z
    .locals 1

    .line 24
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->disableIdleCheck()Z

    move-result v0

    return v0
.end method

.method public static filterBasedEventQueryApi()Z
    .locals 1

    .line 30
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->filterBasedEventQueryApi()Z

    move-result v0

    return v0
.end method

.method public static getAppBytesByDataTypeApi()Z
    .locals 1

    .line 36
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->getAppBytesByDataTypeApi()Z

    move-result v0

    return v0
.end method

.method public static reportUsageStatsPermission()Z
    .locals 1

    .line 42
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->reportUsageStatsPermission()Z

    move-result v0

    return v0
.end method

.method public static useDedicatedHandlerThread()Z
    .locals 1

    .line 48
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->useDedicatedHandlerThread()Z

    move-result v0

    return v0
.end method

.method public static useParceledList()Z
    .locals 1

    .line 54
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->useParceledList()Z

    move-result v0

    return v0
.end method

.method public static userInteractionTypeApi()Z
    .locals 1

    .line 60
    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->userInteractionTypeApi()Z

    move-result v0

    return v0
.end method
