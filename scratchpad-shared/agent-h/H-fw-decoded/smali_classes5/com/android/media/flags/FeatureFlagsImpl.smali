.class public final Lcom/android/media/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/media/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableSetBluetoothAd2pOnCalls()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disableTransferWhenAppsDoNotSupport()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableAudioInputDeviceRoutingAndVolumeControl()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableAudioPoliciesDeviceAndBluetoothController()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBuiltInSpeakerRouteSuitabilityStatuses()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCrossUserRoutingInMediaRouter2()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFullScanWithMediaContentControl()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableGetTransferableRoutes()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMediaRoute2InfoProviderPackageName()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMirroringInMediaRouter2()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMr2ServiceNonMainBgThread()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNewMediaRoute2InfoTypes()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNewWiredMediaRoute2InfoTypes()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNotifyingActivityManagerWithMediaSessionStatusChange()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableNullSessionInMediaBrowserService()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOutputSwitcherDeviceGrouping()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableOutputSwitcherSessionGrouping()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePreventionOfKeepAliveRouteProviders()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePreventionOfManagerScansWhenNoAppsScan()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivilegedRoutingForMediaRoutingControl()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRlpCallbacksInMediaRouter2()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRouteVisibilityControlApi()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableScreenOffScanning()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableUseOfSingletonAudioManagerRouteController()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableWaitingStateForSystemSessionCreationRequest()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method
