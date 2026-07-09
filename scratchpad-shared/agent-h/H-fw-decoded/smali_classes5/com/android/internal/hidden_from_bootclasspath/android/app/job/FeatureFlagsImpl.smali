.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addTypeInfoToWakelockTag()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enforceMinimumTimeWindows()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingJobReasonsApi()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPendingJobReasonsHistoryApi()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist handleAbandonedJobs()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreImportantWhileForeground()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist jobDebugInfoApis()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method
