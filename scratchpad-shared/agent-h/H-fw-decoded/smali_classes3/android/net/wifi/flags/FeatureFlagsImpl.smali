.class public final Landroid/net/wifi/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/net/wifi/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getDeviceCrossAkmRoamingSupport()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hotspotNetworkConnectingStateForDetailsPage()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hotspotNetworkUnknownStatusResetsConnectingState()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist legacyKeystoreToWifiBlobstoreMigrationReadOnly()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist networkProviderBatteryChargingStatus()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist usd()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method
