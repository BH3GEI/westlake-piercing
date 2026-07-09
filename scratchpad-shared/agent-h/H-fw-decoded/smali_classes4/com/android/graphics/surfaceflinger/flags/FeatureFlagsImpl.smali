.class public final Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addSfSkippedFramesToTrace()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfFmqSf()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfGpuSf()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfNativeSessionManager()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowNVsyncsInTargeter()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist arrSetframerateApi()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist arrSetframerateGteEnum()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist arrSurfacecontrolSetframerateApi()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist begoneBrightHlg()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ceFencePromise()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist commitNotComposited()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist connectedDisplay()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist connectedDisplayHdr()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist correctDpiWithDisplaySize()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist deprecateFrameTracker()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateVsyncSf()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist detachedMirror()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayConfigErrorHal()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayProtected()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dontSkipOnEarlyRo()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFroDependentFeatures()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableLayerCommandBatching()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSmallAreaDetection()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist filterFramesBeforeTraceStarts()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist flushBufferSlotsToUncache()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist forceCompileGraphiteRenderengine()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fp16ClientTarget()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist frameRateCategoryMrr()Z
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public greylist gameDefaultFrameRate()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist graphiteRenderengine()Z
    .locals 1

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public greylist graphiteRenderenginePreviewRollout()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hdcpLevelHal()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hotplug2()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist increaseMissedFrameJankThreshold()Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist localTonemapScreenshots()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist misc1()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multithreadedPresent()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist noVsyncsOnScreenOff()Z
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public greylist overrideTrustedOverlay()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist protectedIfClient()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 1

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public greylist rejectDupeLayerstacks()Z
    .locals 1

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist renderableBufferUsage()Z
    .locals 1

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public greylist restoreBlurStep()Z
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist screenshotFencePreservation()Z
    .locals 1

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist singleHopScreenshot()Z
    .locals 1

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipInvisibleWindowsInInput()Z
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public greylist stableEdidIds()Z
    .locals 1

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public greylist syncedResolutionSwitch()Z
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public greylist trueHdrScreenshots()Z
    .locals 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 1

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public greylist viewSetRequestedFrameRateMrr()Z
    .locals 1

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vrrBugfix24q4()Z
    .locals 1

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrBugfixDroppedFrame()Z
    .locals 1

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrConfig()Z
    .locals 1

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vulkanRenderengine()Z
    .locals 1

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist windowBlurKawase2()Z
    .locals 1

    .line 416
    const/4 v0, 0x0

    return v0
.end method
