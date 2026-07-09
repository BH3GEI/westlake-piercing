.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowSdkSandboxQueryIntentActivities()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist alwaysLoadPastCertsV4()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appCompatOption16kb()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist archiving()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist audioPlaybackCaptureAllowance()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheSdkSystemFeatures()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist changeLauncherBadging()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cloudCompilationPm()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist componentStateChangedMetrics()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deletePackagesSilentlyBackport()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist encodeAppIntent()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixSystemAppsFirstInstallTime()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist forceMultiArchNativeLibsMatch()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfo()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveHomeAppBehavior()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveInstallDontKill()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveInstallFreeze()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist includeFeatureFlagsInPackageCacher()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist lightweightInvisibleLabelDetection()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nullableDataDir()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist optimizeParsingInRegisteredServicesCache()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist packageRestartQueryDisabledByDefault()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reduceBroadcastsForComponentStateChanges()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeCrossUserPermissionHack()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeHiddenModuleUsage()Z
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkDependencyInstaller()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .locals 1

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .locals 1

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stayStopped()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist uidBasedProviderLookup()Z
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .locals 1

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePiaV2()Z
    .locals 1

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist waitApplicationKilled()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method
