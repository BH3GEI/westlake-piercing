.class public final Landroid/chre/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags; = null

.field public static final FLAG_ABORT_IF_NO_CONTEXT_HUB_FOUND:Ljava/lang/String; = "android.chre.flags.abort_if_no_context_hub_found"

.field public static final FLAG_BT_SOCKET_HAL_SUPPORTED:Ljava/lang/String; = "android.chre.flags.bt_socket_hal_supported"

.field public static final FLAG_BUG_FIX_HAL_RELIABLE_MESSAGE_RECORD:Ljava/lang/String; = "android.chre.flags.bug_fix_hal_reliable_message_record"

.field public static final FLAG_BUG_FIX_REMOVE_EXIT_CALL_IN_HAL:Ljava/lang/String; = "android.chre.flags.bug_fix_remove_exit_call_in_hal"

.field public static final FLAG_EFW_XPORT_IN_CONTEXT_HUB:Ljava/lang/String; = "android.chre.flags.efw_xport_in_context_hub"

.field public static final FLAG_EFW_XPORT_REWIND_ON_ERROR:Ljava/lang/String; = "android.chre.flags.efw_xport_rewind_on_error"

.field public static final FLAG_FIX_API_CHECK:Ljava/lang/String; = "android.chre.flags.fix_api_check"

.field public static final FLAG_HAL_HANDLE_NANOAPP_QUERY_TEST_MODE:Ljava/lang/String; = "android.chre.flags.hal_handle_nanoapp_query_test_mode"

.field public static final FLAG_OFFLOAD_API:Ljava/lang/String; = "android.chre.flags.offload_api"

.field public static final FLAG_OFFLOAD_IMPLEMENTATION:Ljava/lang/String; = "android.chre.flags.offload_implementation"

.field public static final FLAG_RECONNECT_HOST_ENDPOINTS_AFTER_HAL_RESTART:Ljava/lang/String; = "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

.field public static final FLAG_REDUCE_LOCKING_CONTEXT_HUB_TRANSACTION_MANAGER:Ljava/lang/String; = "android.chre.flags.reduce_locking_context_hub_transaction_manager"

.field public static final FLAG_REFACTOR_HAL_XPORT_AGNOSTIC:Ljava/lang/String; = "android.chre.flags.refactor_hal_xport_agnostic"

.field public static final FLAG_RELIABLE_MESSAGE:Ljava/lang/String; = "android.chre.flags.reliable_message"

.field public static final FLAG_RELIABLE_MESSAGE_DUPLICATE_DETECTION_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_duplicate_detection_service"

.field public static final FLAG_RELIABLE_MESSAGE_RETRY_SUPPORT_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_retry_support_service"

.field public static final FLAG_RELIABLE_MESSAGE_TEST_MODE_BEHAVIOR:Ljava/lang/String; = "android.chre.flags.reliable_message_test_mode_behavior"

.field public static final FLAG_REMOVE_OLD_CONTEXT_HUB_APIS:Ljava/lang/String; = "android.chre.flags.remove_old_context_hub_apis"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Landroid/chre/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/chre/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortIfNoContextHubFound()Z
    .locals 1

    .line 46
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->abortIfNoContextHubFound()Z

    move-result v0

    return v0
.end method

.method public static btSocketHalSupported()Z
    .locals 1

    .line 52
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->btSocketHalSupported()Z

    move-result v0

    return v0
.end method

.method public static bugFixHalReliableMessageRecord()Z
    .locals 1

    .line 58
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->bugFixHalReliableMessageRecord()Z

    move-result v0

    return v0
.end method

.method public static bugFixRemoveExitCallInHal()Z
    .locals 1

    .line 64
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->bugFixRemoveExitCallInHal()Z

    move-result v0

    return v0
.end method

.method public static efwXportInContextHub()Z
    .locals 1

    .line 70
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->efwXportInContextHub()Z

    move-result v0

    return v0
.end method

.method public static efwXportRewindOnError()Z
    .locals 1

    .line 76
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->efwXportRewindOnError()Z

    move-result v0

    return v0
.end method

.method public static fixApiCheck()Z
    .locals 1

    .line 82
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->fixApiCheck()Z

    move-result v0

    return v0
.end method

.method public static halHandleNanoappQueryTestMode()Z
    .locals 1

    .line 88
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->halHandleNanoappQueryTestMode()Z

    move-result v0

    return v0
.end method

.method public static offloadApi()Z
    .locals 1

    .line 94
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->offloadApi()Z

    move-result v0

    return v0
.end method

.method public static offloadImplementation()Z
    .locals 1

    .line 100
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->offloadImplementation()Z

    move-result v0

    return v0
.end method

.method public static reconnectHostEndpointsAfterHalRestart()Z
    .locals 1

    .line 106
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reconnectHostEndpointsAfterHalRestart()Z

    move-result v0

    return v0
.end method

.method public static reduceLockingContextHubTransactionManager()Z
    .locals 1

    .line 112
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reduceLockingContextHubTransactionManager()Z

    move-result v0

    return v0
.end method

.method public static refactorHalXportAgnostic()Z
    .locals 1

    .line 118
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->refactorHalXportAgnostic()Z

    move-result v0

    return v0
.end method

.method public static reliableMessage()Z
    .locals 1

    .line 124
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessage()Z

    move-result v0

    return v0
.end method

.method public static reliableMessageDuplicateDetectionService()Z
    .locals 1

    .line 130
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageDuplicateDetectionService()Z

    move-result v0

    return v0
.end method

.method public static reliableMessageRetrySupportService()Z
    .locals 1

    .line 136
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageRetrySupportService()Z

    move-result v0

    return v0
.end method

.method public static reliableMessageTestModeBehavior()Z
    .locals 1

    .line 142
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageTestModeBehavior()Z

    move-result v0

    return v0
.end method

.method public static removeOldContextHubApis()Z
    .locals 1

    .line 148
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->removeOldContextHubApis()Z

    move-result v0

    return v0
.end method
