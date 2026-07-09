.class public final Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appOpsServiceHandlerFix()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appopAccessTrackingLoggingEnabled()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appopModeCachingEnabled()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkOpValidatePackage()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist delayUidStateChangesFromCapabilityUpdates()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dontRemoveExistingUidStates()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceDefaultDeviceIdInMyAttributionSource()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist runtimePermissionAppopsMappingEnabled()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist serverSideAttributionRegistration()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .locals 1

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sqliteDiscreteOpEventLoggingEnabled()Z
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemSelectionToolbarEnabled()Z
    .locals 1

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .locals 1

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .locals 1

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .locals 1

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .locals 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useFrozenAwareRemoteCallbackList()Z
    .locals 1

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .locals 1

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useSystemSelectionToolbarInSysui()Z
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .locals 1

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .locals 1

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .locals 1

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .locals 1

    .line 416
    const/4 v0, 0x1

    return v0
.end method
