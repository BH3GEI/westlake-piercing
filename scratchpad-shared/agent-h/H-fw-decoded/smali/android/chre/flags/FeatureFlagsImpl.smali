.class public final Landroid/chre/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/chre/flags/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortIfNoContextHubFound()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public btSocketHalSupported()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public bugFixHalReliableMessageRecord()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public bugFixRemoveExitCallInHal()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public efwXportInContextHub()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public efwXportRewindOnError()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public fixApiCheck()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public halHandleNanoappQueryTestMode()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public offloadApi()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public offloadImplementation()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public reconnectHostEndpointsAfterHalRestart()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public reduceLockingContextHubTransactionManager()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public refactorHalXportAgnostic()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public reliableMessage()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public reliableMessageDuplicateDetectionService()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public reliableMessageRetrySupportService()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public reliableMessageTestModeBehavior()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public removeOldContextHubApis()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method
