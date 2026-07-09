.class public final Landroid/server/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/server/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist allowNetworkTimeUpdateService()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowRemovingVpnService()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlySystemConfigInit()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist migrateWristOrientation()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeAppIntegrityManagerService()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist removeGameManagerServiceFromWear()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeTextService()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeWearableSensingServiceFromWear()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telemetryApisService()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method
