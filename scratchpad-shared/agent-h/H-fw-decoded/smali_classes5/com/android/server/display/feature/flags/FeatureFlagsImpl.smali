.class public final Lcom/android/server/display/feature/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/display/feature/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist alwaysRotateDisplayDevice()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autoBrightnessModeBedtimeWear()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autoBrightnessModes()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist baseDensityForExternalDisplays()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist blockAutobrightnessChangesOnStylusUsage()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist brightnessIntRangeUserPerception()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist brightnessWearBedtimeModeClamper()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist committedStateSeparateEvent()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist delayImplicitRrRegistrationUntilRrAccessed()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist displayCategoryBuiltIn()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist displayListenerPerformanceImprovements()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayTopology()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist dozeBrightnessFloat()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements1()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements2()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableApplyDisplayChangedDuringDisplayAdded()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBatteryStatsForAllDisplays()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableConnectedDisplayErrorHandling()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayContentModeManagement()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplayOffload()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayResolutionRangeVoting()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplaysRefreshRatesSynchronization()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableGetSuggestedFrameRate()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableGetSupportedRefreshRates()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHasArrSupport()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHdrOverridePluginType()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableModeLimitForExternalDisplay()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePeakRefreshRatePhysicalLimit()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePixelAnisotropyCorrection()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePluginManager()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePortInDisplayLayout()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePowerThrottlingClamper()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRestrictDisplayModes()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSynthetic60hzModes()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableUserPreferredModeVote()Z
    .locals 1

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableUserRefreshRateForExternalDisplay()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableVsyncLowLightVote()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableVsyncLowPowerVote()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableWaitingConfirmationBeforeMirroring()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist evenDimmer()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fastHdrTransitions()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist framerateOverrideTriggersRrCallbacks()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist highestHdrSdrRatioApi()Z
    .locals 1

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist idleScreenConfigInSubscribingLightSensor()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist idleScreenRefreshRateTimeout()Z
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAppPreferredRefreshRateRequest()Z
    .locals 1

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isAlwaysOnAvailableApi()Z
    .locals 1

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public greylist newHdrBrightnessModifier()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist normalBrightnessForDozeParameter()Z
    .locals 1

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist offloadDozeOverrideHoldsWakelock()Z
    .locals 1

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist offloadSessionCancelBlockScreenOn()Z
    .locals 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refactorDisplayPowerController()Z
    .locals 1

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refreshRateEventForForegroundApps()Z
    .locals 1

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolutionBackupRestore()Z
    .locals 1

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sensorBasedBrightnessThrottling()Z
    .locals 1

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist subscribeGranularDisplayEvents()Z
    .locals 1

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useFusionProxSensor()Z
    .locals 1

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public greylist virtualDisplayLimit()Z
    .locals 1

    .line 416
    const/4 v0, 0x1

    return v0
.end method
