.class public final Lcom/android/server/telecom/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowSystemAppsResolveVoipCalls()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist busDeviceIsASpeaker()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist businessCallComposer()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheCallEvents()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callDetailsIdChanges()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist checkCompletedFiltersOnTimeout()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist checkDeviceTypeOnRouteChange()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cswServiceInterfaceIsNull()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist defaultSpeakerOnWiredHeadsetDisconnect()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disconnectSelfManagedStuckStartupCalls()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist doNotSendCallToNullIcs()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dontTimeoutDestroyedCalls()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist dontUseCommunicationDeviceTracker()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist earlyBindingToIncallService()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist eccKeyguard()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCallAudioWatchdog()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableCallExceptionAnomReports()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableCallSequencing()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist endSessionImprovements()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enforceTransactionalExclusivity()Z
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ensureInCarRinging()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixUserRequestBaselineRouteVideoCall()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getRingerModeAnomReport()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .locals 1

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist keepBluetoothDevicesCacheUpdated()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onCallEndpointChangedIcsOnConnected()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onlyClearCommunicationDeviceOnInactive()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 1

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .locals 1

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist preventRedundantLocationPermissionGrantAndRevoke()Z
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public greylist profileUserSupport()Z
    .locals 1

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remapTransactionalCapabilities()Z
    .locals 1

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolveActiveBtRoutingAndBtTimingIssue()Z
    .locals 1

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .locals 1

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .locals 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .locals 1

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setMuteState()Z
    .locals 1

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
    .locals 1

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 1

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomAppLabelProxyHsumAware()Z
    .locals 1

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .locals 1

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainUserInBlockCheck()Z
    .locals 1

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainUserInGetRespondMessageApp()Z
    .locals 1

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .locals 1

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomMetricsSupport()Z
    .locals 1

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .locals 1

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .locals 1

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 1

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalCsVerifier()Z
    .locals 1

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 1

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transactionalVideoState()Z
    .locals 1

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 1

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .locals 1

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .locals 1

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .locals 1

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .locals 1

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 1

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useImprovedListenerOrder()Z
    .locals 1

    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .locals 1

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useStreamVoiceCallTones()Z
    .locals 1

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public greylist voipAppActionsSupport()Z
    .locals 1

    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public greylist voipCallMonitorRefactor()Z
    .locals 1

    .line 563
    const/4 v0, 0x0

    return v0
.end method
