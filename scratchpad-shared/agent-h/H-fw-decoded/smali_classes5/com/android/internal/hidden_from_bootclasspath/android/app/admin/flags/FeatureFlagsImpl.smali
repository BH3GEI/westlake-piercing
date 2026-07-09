.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist activeAdminCleanup()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowQueryingProfileType()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist assistContentUserRestrictionEnabled()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupConnectedAppsSettings()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupServiceSecurityLogEventEnabled()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist coexistenceMigrationForSupervisionEnabled()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist crossUserSuspensionEnabledRo()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dedicatedDeviceControlApiEnabled()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist devicePolicySizeTrackingEnabled()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftApiEnabled()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftImplEnabled()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowUserControlStoppedStateFix()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSupervisionServiceSync()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist esimManagementEnabled()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist esimManagementUxEnabled()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist headlessDeviceOwnerSingleUserEnabled()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist headlessSingleMinTargetSdk()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMtePolicyEnforced()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRecursiveRequiredAppMergingEnabled()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockNowCoexistence()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist managementModePolicyMetrics()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingBugreportStorageBugFix()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingBugreportV2Enabled()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingConsentlessBugreports()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionMigrationForZeroTrustApiEnabled()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist policyEngineMigrationV2Enabled()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist provisioningContextParameter()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quietModeCredentialBugFix()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeManagedProfileEnabled()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetPasswordWithTokenCoexistence()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist secondaryLockscreenApiEnabled()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist securityLogV2Enabled()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setApplicationRestrictionsCoexistence()Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoTimeEnabledCoexistence()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAutoTimeZoneEnabledCoexistence()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBackupServiceEnabledCoexistence()Z
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeaturesCoexistence()Z
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMtePolicyCoexistence()Z
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermissionGrantStateCoexistence()Z
    .locals 1

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitCreateManagedProfileEnabled()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist suspendPackagesCoexistence()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unmanagedModeMigration()Z
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unsuspendNotSuspended()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist userProvisioningSameState()Z
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method
