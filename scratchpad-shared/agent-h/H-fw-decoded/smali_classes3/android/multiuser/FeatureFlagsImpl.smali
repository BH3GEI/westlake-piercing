.class public final Landroid/multiuser/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/multiuser/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLauncherUserConfig()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist addUiForSoundsFromBackgroundUsers()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowMainUserToAccessBlockedNumberProvider()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowResolverSheetForPrivateSpace()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist avatarSync()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist blockPrivateSpaceCreation()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileIdsReadOnly()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileParentReadOnly()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileTypeReadOnly()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheProfilesReadOnly()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheQuietModeState()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserInfoReadOnly()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserPropertiesCorrectlyReadOnly()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserRestrictionsReadOnly()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserSerialNumber()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserSerialNumberReadOnly()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserStartRealtimeReadOnly()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserUnlockRealtimeReadOnly()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cachesNotInvalidatedAtStartReadOnly()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cachingDevelopmentImprovements()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist deletePrivateSpaceFromReset()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disablePrivateSpaceItemsOnHome()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBiometricsToUnlockPrivateSpace()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHidingProfiles()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableLauncherAppsHiddenProfileChecks()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMovingContentIntoPrivateSpace()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePermissionToAccessHiddenProfiles()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceAutolockOnRestarts()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceFeatures()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceIntentRedirection()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePsSensitiveNotificationsToggle()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSystemUserOnlyForServicesAndProviders()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarConcurrentFileWrite()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarContentProviderNullAuthority()Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fixAvatarCrossUserLeak()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerNotRespondingForNewUser()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerReadBackOrder()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerSelectedReadBack()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixDisablingOfMuToggleWhenRestrictionApplied()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixGetUserPropertyCache()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixLargeDisplayPrivateSpaceSettings()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getUserSwitchabilityPermission()Z
    .locals 1

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public greylist handleInterleavedSettingsForPrivateSpace()Z
    .locals 1

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreRestrictionsWhenDeletingPrivateProfile()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist invalidateCacheOnUsersChangedReadOnly()Z
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist logoutUserApi()Z
    .locals 1

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public greylist modifyPrivateSpaceSecondaryUnlockSetupFlow()Z
    .locals 1

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public greylist moveQuietModeOperationsToSeparateThread()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multipleAlarmNotificationsSupport()Z
    .locals 1

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multiuserWidget()Z
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public greylist newMultiuserSettingsUx()Z
    .locals 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist placeAddUserDialogWithinActivity()Z
    .locals 1

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public greylist privateSpaceSearchIllustrationConfig()Z
    .locals 1

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist propertyInvalidatedCacheBypassMismatchedUids()Z
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public greylist reorderWallpaperDuringUserSwitch()Z
    .locals 1

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .locals 1

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .locals 1

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .locals 1

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist scheduleStopOfBackgroundUser()Z
    .locals 1

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setPowerModeDuringUserSwitch()Z
    .locals 1

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showCustomUnlockTitleInsidePrivateProfile()Z
    .locals 1

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showDifferentCreationErrorForUnsupportedDevices()Z
    .locals 1

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showSetScreenLockDialog()Z
    .locals 1

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public greylist stopPreviousUserApps()Z
    .locals 1

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportAutolockForPrivateSpace()Z
    .locals 1

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportCommunalProfile()Z
    .locals 1

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public greylist supportCommunalProfileNextgen()Z
    .locals 1

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public greylist unicornModeRefactoringForHsumReadOnly()Z
    .locals 1

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useAllCpusDuringUserSwitch()Z
    .locals 1

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public greylist usePrivateSpaceIconInBiometricPrompt()Z
    .locals 1

    .line 500
    const/4 v0, 0x1

    return v0
.end method
