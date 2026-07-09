.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_addApplicationStartInfoCompleteListener:I = 0xe1

.field static final TRANSACTION_addInstrumentationResults:I = 0x2e

.field static final TRANSACTION_addOverridePermissionState:I = 0x106

.field static final TRANSACTION_addPackageDependency:I = 0x62

.field static final TRANSACTION_addStartInfoTimestamp:I = 0xe3

.field static final TRANSACTION_addUidToObserver:I = 0x5

.field static final TRANSACTION_appNotResponding:I = 0xdf

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xac

.field static final TRANSACTION_attachApplication:I = 0x1a

.field static final TRANSACTION_backgroundAllowlistUid:I = 0xd8

.field static final TRANSACTION_backupAgentCreated:I = 0x5f

.field static final TRANSACTION_bindBackupAgent:I = 0x5e

.field static final TRANSACTION_bindService:I = 0x25

.field static final TRANSACTION_bindServiceInstance:I = 0x26

.field static final TRANSACTION_bootAnimationComplete:I = 0xb5

.field static final TRANSACTION_broadcastIntent:I = 0x16

.field static final TRANSACTION_broadcastIntentWithFeature:I = 0x17

.field static final TRANSACTION_cancelIntentSender:I = 0x42

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0xd4

.field static final TRANSACTION_checkContentUriPermissionFull:I = 0x37

.field static final TRANSACTION_checkPermission:I = 0x9

.field static final TRANSACTION_checkPermissionForDevice:I = 0x102

.field static final TRANSACTION_checkUriPermission:I = 0x36

.field static final TRANSACTION_checkUriPermissions:I = 0x38

.field static final TRANSACTION_clearAllOverridePermissionStates:I = 0x109

.field static final TRANSACTION_clearApplicationUserData:I = 0x51

.field static final TRANSACTION_clearOverridePermissionStates:I = 0x108

.field static final TRANSACTION_closeSystemDialogs:I = 0x64

.field static final TRANSACTION_crashApplicationWithType:I = 0x6f

.field static final TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x70

.field static final TRANSACTION_dumpHeap:I = 0x72

.field static final TRANSACTION_dumpHeapFinished:I = 0xbe

.field static final TRANSACTION_enableAppFreezer:I = 0xed

.field static final TRANSACTION_enableFgsNotificationRateLimit:I = 0xee

.field static final TRANSACTION_enterSafeMode:I = 0x46

.field static final TRANSACTION_finishActivity:I = 0x11

.field static final TRANSACTION_finishAttachApplication:I = 0x1b

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x6b

.field static final TRANSACTION_finishInstrumentation:I = 0x2f

.field static final TRANSACTION_finishReceiver:I = 0x19

.field static final TRANSACTION_forceDelayBroadcastDelivery:I = 0xf6

.field static final TRANSACTION_forceStopPackage:I = 0x54

.field static final TRANSACTION_forceStopPackageEvenWhenStopping:I = 0x55

.field static final TRANSACTION_frozenBinderTransactionDetected:I = 0x103

.field static final TRANSACTION_getAllRootTaskInfos:I = 0xa6

.field static final TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0xf8

.field static final TRANSACTION_getBindingUidProcessState:I = 0x104

.field static final TRANSACTION_getBugreportWhitelistedPackages:I = 0xa0

.field static final TRANSACTION_getConfiguration:I = 0x30

.field static final TRANSACTION_getContentProvider:I = 0x1f

.field static final TRANSACTION_getContentProviderExternal:I = 0x82

.field static final TRANSACTION_getCurrentUser:I = 0x87

.field static final TRANSACTION_getCurrentUserId:I = 0x88

.field static final TRANSACTION_getDelegatedShellPermissions:I = 0xdc

.field static final TRANSACTION_getDisplayIdsForStartingVisibleBackgroundUsers:I = 0xfc

.field static final TRANSACTION_getFocusedRootTaskInfo:I = 0xa9

.field static final TRANSACTION_getForegroundServiceType:I = 0x4d

.field static final TRANSACTION_getHistoricalProcessExitReasons:I = 0xe5

.field static final TRANSACTION_getHistoricalProcessStartReasons:I = 0xe0

.field static final TRANSACTION_getInfoForIntentSender:I = 0x43

.field static final TRANSACTION_getIntentForIntentSender:I = 0xa1

.field static final TRANSACTION_getIntentSender:I = 0x40

.field static final TRANSACTION_getIntentSenderWithFeature:I = 0x41

.field static final TRANSACTION_getLaunchedFromPackage:I = 0xa2

.field static final TRANSACTION_getLaunchedFromUid:I = 0x89

.field static final TRANSACTION_getLifeMonitor:I = 0xdd

.field static final TRANSACTION_getLockTaskModeState:I = 0xbc

.field static final TRANSACTION_getMemoryInfo:I = 0x4f

.field static final TRANSACTION_getMemoryTrimLevel:I = 0xcb

.field static final TRANSACTION_getMimeTypeFilterAsync:I = 0x71

.field static final TRANSACTION_getMyMemoryState:I = 0x85

.field static final TRANSACTION_getPackageProcessState:I = 0xc2

.field static final TRANSACTION_getProcessLimit:I = 0x35

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x65

.field static final TRANSACTION_getProcessPss:I = 0x7f

.field static final TRANSACTION_getProcessesInErrorState:I = 0x50

.field static final TRANSACTION_getRecentTasks:I = 0x3e

.field static final TRANSACTION_getRegisteredIntentFilters:I = 0x15

.field static final TRANSACTION_getRunningAppProcesses:I = 0x58

.field static final TRANSACTION_getRunningExternalApplications:I = 0x6a

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x22

.field static final TRANSACTION_getRunningUserIds:I = 0x94

.field static final TRANSACTION_getServices:I = 0x57

.field static final TRANSACTION_getSwitchingFromUserMessage:I = 0x76

.field static final TRANSACTION_getSwitchingToUserMessage:I = 0x77

.field static final TRANSACTION_getTagForIntentSender:I = 0xaf

.field static final TRANSACTION_getTaskBounds:I = 0xad

.field static final TRANSACTION_getTaskForActivity:I = 0x1e

.field static final TRANSACTION_getTasks:I = 0x1c

.field static final TRANSACTION_getUidFrozenState:I = 0x101

.field static final TRANSACTION_getUidLastIdleElapsedTime:I = 0x105

.field static final TRANSACTION_getUidProcessCapabilities:I = 0xf3

.field static final TRANSACTION_getUidProcessState:I = 0x8

.field static final TRANSACTION_grantUriPermission:I = 0x39

.field static final TRANSACTION_handleApplicationCrash:I = 0xd

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x6c

.field static final TRANSACTION_handleApplicationWtf:I = 0x67

.field static final TRANSACTION_handleIncomingUser:I = 0x61

.field static final TRANSACTION_hang:I = 0xa5

.field static final TRANSACTION_hasServiceTimeLimitExceeded:I = 0xfe

.field static final TRANSACTION_holdLock:I = 0xef

.field static final TRANSACTION_isAppFreezerEnabled:I = 0xea

.field static final TRANSACTION_isAppFreezerSupported:I = 0xe9

.field static final TRANSACTION_isBackgroundRestricted:I = 0xd1

.field static final TRANSACTION_isInLockTaskMode:I = 0xb1

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x8b

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x7c

.field static final TRANSACTION_isProcessFrozen:I = 0xf7

.field static final TRANSACTION_isTopActivityImmersive:I = 0x6e

.field static final TRANSACTION_isTopOfTask:I = 0xb4

.field static final TRANSACTION_isUidActive:I = 0x7

.field static final TRANSACTION_isUserAMonkey:I = 0x69

.field static final TRANSACTION_isUserRunning:I = 0x73

.field static final TRANSACTION_isVrModePackageEnabled:I = 0xcc

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x81

.field static final TRANSACTION_killApplication:I = 0x63

.field static final TRANSACTION_killApplicationProcess:I = 0x66

.field static final TRANSACTION_killBackgroundProcesses:I = 0x68

.field static final TRANSACTION_killPackageDependents:I = 0xc8

.field static final TRANSACTION_killPids:I = 0x56

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x86

.field static final TRANSACTION_killProcessesWhenImperceptible:I = 0xe6

.field static final TRANSACTION_killUid:I = 0xa3

.field static final TRANSACTION_killUidForPermissionChange:I = 0xeb

.field static final TRANSACTION_launchBugReportHandlerApp:I = 0x9f

.field static final TRANSACTION_logFgsApiBegin:I = 0xa

.field static final TRANSACTION_logFgsApiEnd:I = 0xb

.field static final TRANSACTION_logFgsApiStateChanged:I = 0xc

.field static final TRANSACTION_makePackageIdle:I = 0xc9

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x4e

.field static final TRANSACTION_moveTaskToFront:I = 0x1d

.field static final TRANSACTION_moveTaskToRootTask:I = 0xa7

.field static final TRANSACTION_noteAlarmFinish:I = 0xc1

.field static final TRANSACTION_noteAlarmStart:I = 0xc0

.field static final TRANSACTION_noteAppRestrictionEnabled:I = 0x10a

.field static final TRANSACTION_noteWakeupAlarm:I = 0x47

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xb9

.field static final TRANSACTION_notifyLockedProfile:I = 0xcd

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_peekService:I = 0x59

.field static final TRANSACTION_performIdleMaintenance:I = 0xab

.field static final TRANSACTION_profileControl:I = 0x5a

.field static final TRANSACTION_publishContentProviders:I = 0x20

.field static final TRANSACTION_publishService:I = 0x29

.field static final TRANSACTION_queryIntentComponentsForIntentSender:I = 0xf2

.field static final TRANSACTION_refContentProvider:I = 0x21

.field static final TRANSACTION_refreshIntentCreatorToken:I = 0x10b

.field static final TRANSACTION_registerForegroundServiceObserver:I = 0x53

.field static final TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x44

.field static final TRANSACTION_registerProcessObserver:I = 0x7a

.field static final TRANSACTION_registerReceiver:I = 0x12

.field static final TRANSACTION_registerReceiverWithFeature:I = 0x13

.field static final TRANSACTION_registerStrictModeCallback:I = 0x6d

.field static final TRANSACTION_registerTaskStackListener:I = 0xb7

.field static final TRANSACTION_registerUidFrozenStateChangedCallback:I = 0xff

.field static final TRANSACTION_registerUidObserver:I = 0x2

.field static final TRANSACTION_registerUidObserverForUids:I = 0x4

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x92

.field static final TRANSACTION_removeApplicationStartInfoCompleteListener:I = 0xe2

.field static final TRANSACTION_removeContentProvider:I = 0x48

.field static final TRANSACTION_removeContentProviderExternal:I = 0x83

.field static final TRANSACTION_removeContentProviderExternalAsUser:I = 0x84

.field static final TRANSACTION_removeOverridePermissionState:I = 0x107

.field static final TRANSACTION_removeTask:I = 0x79

.field static final TRANSACTION_removeUidFromObserver:I = 0x6

.field static final TRANSACTION_reportStartInfoViewTimestamps:I = 0xe4

.field static final TRANSACTION_requestBugReport:I = 0x96

.field static final TRANSACTION_requestBugReportWithDescription:I = 0x97

.field static final TRANSACTION_requestBugReportWithExtraAttachments:I = 0x9c

.field static final TRANSACTION_requestFullBugReport:I = 0x9d

.field static final TRANSACTION_requestInteractiveBugReport:I = 0x9b

.field static final TRANSACTION_requestInteractiveBugReportWithDescription:I = 0x9a

.field static final TRANSACTION_requestRemoteBugReport:I = 0x9e

.field static final TRANSACTION_requestSystemServerHeapDump:I = 0x95

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x98

.field static final TRANSACTION_requestWifiBugReport:I = 0x99

.field static final TRANSACTION_resetAppErrors:I = 0xec

.field static final TRANSACTION_resizeTask:I = 0xbb

.field static final TRANSACTION_restart:I = 0xaa

.field static final TRANSACTION_restartUserInBackground:I = 0xfb

.field static final TRANSACTION_resumeAppSwitches:I = 0x5d

.field static final TRANSACTION_revokeUriPermission:I = 0x3a

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0xd5

.field static final TRANSACTION_sendIdleJobTrigger:I = 0xcf

.field static final TRANSACTION_sendIntentSender:I = 0xd0

.field static final TRANSACTION_serviceDoneExecuting:I = 0x3f

.field static final TRANSACTION_setActivityController:I = 0x3b

.field static final TRANSACTION_setActivityLocusContext:I = 0xe7

.field static final TRANSACTION_setAgentApp:I = 0x2b

.field static final TRANSACTION_setAlwaysFinish:I = 0x2c

.field static final TRANSACTION_setDebugApp:I = 0x2a

.field static final TRANSACTION_setDeterministicUidIdle:I = 0xca

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xbd

.field static final TRANSACTION_setFocusedRootTask:I = 0xa8

.field static final TRANSACTION_setHasTopUi:I = 0xd3

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x74

.field static final TRANSACTION_setPersistentVrThread:I = 0xd6

.field static final TRANSACTION_setProcessImportant:I = 0x4b

.field static final TRANSACTION_setProcessLimit:I = 0x34

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xae

.field static final TRANSACTION_setProcessStateSummary:I = 0xe8

.field static final TRANSACTION_setRenderThread:I = 0xd2

.field static final TRANSACTION_setRequestedOrientation:I = 0x49

.field static final TRANSACTION_setServiceForeground:I = 0x4c

.field static final TRANSACTION_setStopUserOnSwitch:I = 0x78

.field static final TRANSACTION_setTaskResizeable:I = 0xba

.field static final TRANSACTION_setThemeOverlayReady:I = 0xb6

.field static final TRANSACTION_setUserIsMonkey:I = 0xa4

.field static final TRANSACTION_shouldServiceTimeOut:I = 0xfd

.field static final TRANSACTION_showBootMessage:I = 0x80

.field static final TRANSACTION_showWaitingForDebugger:I = 0x3c

.field static final TRANSACTION_shutdown:I = 0x5b

.field static final TRANSACTION_signalPersistentProcesses:I = 0x3d

.field static final TRANSACTION_startActivity:I = 0xe

.field static final TRANSACTION_startActivityAsUser:I = 0x8c

.field static final TRANSACTION_startActivityAsUserWithFeature:I = 0x8d

.field static final TRANSACTION_startActivityFromRecents:I = 0xb2

.field static final TRANSACTION_startActivityWithFeature:I = 0xf

.field static final TRANSACTION_startBinderTracking:I = 0xc3

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xce

.field static final TRANSACTION_startDelegateShellPermissionIdentity:I = 0xda

.field static final TRANSACTION_startInstrumentation:I = 0x2d

.field static final TRANSACTION_startProfile:I = 0xf0

.field static final TRANSACTION_startProfileWithListener:I = 0xfa

.field static final TRANSACTION_startService:I = 0x23

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xb3

.field static final TRANSACTION_startUserInBackground:I = 0xb0

.field static final TRANSACTION_startUserInBackgroundVisibleOnDisplay:I = 0xf9

.field static final TRANSACTION_startUserInBackgroundWithListener:I = 0xd9

.field static final TRANSACTION_startUserInForegroundWithListener:I = 0xde

.field static final TRANSACTION_stopAppForUser:I = 0x52

.field static final TRANSACTION_stopAppSwitches:I = 0x5c

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xc4

.field static final TRANSACTION_stopDelegateShellPermissionIdentity:I = 0xdb

.field static final TRANSACTION_stopProfile:I = 0xf1

.field static final TRANSACTION_stopService:I = 0x24

.field static final TRANSACTION_stopServiceToken:I = 0x33

.field static final TRANSACTION_stopUser:I = 0x8e

.field static final TRANSACTION_stopUserExceptCertainProfiles:I = 0x90

.field static final TRANSACTION_stopUserWithCallback:I = 0x8f

.field static final TRANSACTION_stopUserWithDelayedLocking:I = 0x91

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xc5

.field static final TRANSACTION_switchUser:I = 0x75

.field static final TRANSACTION_unbindBackupAgent:I = 0x60

.field static final TRANSACTION_unbindFinished:I = 0x4a

.field static final TRANSACTION_unbindService:I = 0x28

.field static final TRANSACTION_unbroadcastIntent:I = 0x18

.field static final TRANSACTION_unhandledBack:I = 0x10

.field static final TRANSACTION_unlockUser:I = 0xc6

.field static final TRANSACTION_unlockUser2:I = 0xc7

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x45

.field static final TRANSACTION_unregisterProcessObserver:I = 0x7b

.field static final TRANSACTION_unregisterReceiver:I = 0x14

.field static final TRANSACTION_unregisterTaskStackListener:I = 0xb8

.field static final TRANSACTION_unregisterUidFrozenStateChangedCallback:I = 0x100

.field static final TRANSACTION_unregisterUidObserver:I = 0x3

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x93

.field static final TRANSACTION_unstableProviderDied:I = 0x8a

.field static final TRANSACTION_updateConfiguration:I = 0x31

.field static final TRANSACTION_updateLockTaskPackages:I = 0xbf

.field static final TRANSACTION_updateMccMncConfiguration:I = 0x32

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x7d

.field static final TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x7e

.field static final TRANSACTION_updateServiceGroup:I = 0x27

.field static final TRANSACTION_waitForBroadcastBarrier:I = 0xf5

.field static final TRANSACTION_waitForBroadcastIdle:I = 0xf4

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0xd7


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    nop

    .line 1390
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IActivityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1391
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1379
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1380
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1381
    if-eqz p1, :cond_0

    .line 1384
    iput-object p1, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1385
    return-void

    .line 1382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1398
    if-nez p0, :cond_0

    .line 1399
    const/4 v0, 0x0

    return-object v0

    .line 1401
    :cond_0
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1402
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 1403
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 1405
    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1414
    packed-switch p0, :pswitch_data_0

    .line 2486
    const/4 v0, 0x0

    return-object v0

    .line 2482
    :pswitch_0
    const-string/jumbo v0, "refreshIntentCreatorToken"

    return-object v0

    .line 2478
    :pswitch_1
    const-string/jumbo v0, "noteAppRestrictionEnabled"

    return-object v0

    .line 2474
    :pswitch_2
    const-string v0, "clearAllOverridePermissionStates"

    return-object v0

    .line 2470
    :pswitch_3
    const-string v0, "clearOverridePermissionStates"

    return-object v0

    .line 2466
    :pswitch_4
    const-string/jumbo v0, "removeOverridePermissionState"

    return-object v0

    .line 2462
    :pswitch_5
    const-string v0, "addOverridePermissionState"

    return-object v0

    .line 2458
    :pswitch_6
    const-string/jumbo v0, "getUidLastIdleElapsedTime"

    return-object v0

    .line 2454
    :pswitch_7
    const-string v0, "getBindingUidProcessState"

    return-object v0

    .line 2450
    :pswitch_8
    const-string v0, "frozenBinderTransactionDetected"

    return-object v0

    .line 2446
    :pswitch_9
    const-string v0, "checkPermissionForDevice"

    return-object v0

    .line 2442
    :pswitch_a
    const-string/jumbo v0, "getUidFrozenState"

    return-object v0

    .line 2438
    :pswitch_b
    const-string/jumbo v0, "unregisterUidFrozenStateChangedCallback"

    return-object v0

    .line 2434
    :pswitch_c
    const-string/jumbo v0, "registerUidFrozenStateChangedCallback"

    return-object v0

    .line 2430
    :pswitch_d
    const-string/jumbo v0, "hasServiceTimeLimitExceeded"

    return-object v0

    .line 2426
    :pswitch_e
    const-string/jumbo v0, "shouldServiceTimeOut"

    return-object v0

    .line 2422
    :pswitch_f
    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers"

    return-object v0

    .line 2418
    :pswitch_10
    const-string/jumbo v0, "restartUserInBackground"

    return-object v0

    .line 2414
    :pswitch_11
    const-string/jumbo v0, "startProfileWithListener"

    return-object v0

    .line 2410
    :pswitch_12
    const-string/jumbo v0, "startUserInBackgroundVisibleOnDisplay"

    return-object v0

    .line 2406
    :pswitch_13
    const-string v0, "getBackgroundRestrictionExemptionReason"

    return-object v0

    .line 2402
    :pswitch_14
    const-string/jumbo v0, "isProcessFrozen"

    return-object v0

    .line 2398
    :pswitch_15
    const-string v0, "forceDelayBroadcastDelivery"

    return-object v0

    .line 2394
    :pswitch_16
    const-string/jumbo v0, "waitForBroadcastBarrier"

    return-object v0

    .line 2390
    :pswitch_17
    const-string/jumbo v0, "waitForBroadcastIdle"

    return-object v0

    .line 2386
    :pswitch_18
    const-string/jumbo v0, "getUidProcessCapabilities"

    return-object v0

    .line 2382
    :pswitch_19
    const-string/jumbo v0, "queryIntentComponentsForIntentSender"

    return-object v0

    .line 2378
    :pswitch_1a
    const-string/jumbo v0, "stopProfile"

    return-object v0

    .line 2374
    :pswitch_1b
    const-string/jumbo v0, "startProfile"

    return-object v0

    .line 2370
    :pswitch_1c
    const-string/jumbo v0, "holdLock"

    return-object v0

    .line 2366
    :pswitch_1d
    const-string v0, "enableFgsNotificationRateLimit"

    return-object v0

    .line 2362
    :pswitch_1e
    const-string v0, "enableAppFreezer"

    return-object v0

    .line 2358
    :pswitch_1f
    const-string/jumbo v0, "resetAppErrors"

    return-object v0

    .line 2354
    :pswitch_20
    const-string/jumbo v0, "killUidForPermissionChange"

    return-object v0

    .line 2350
    :pswitch_21
    const-string/jumbo v0, "isAppFreezerEnabled"

    return-object v0

    .line 2346
    :pswitch_22
    const-string/jumbo v0, "isAppFreezerSupported"

    return-object v0

    .line 2342
    :pswitch_23
    const-string/jumbo v0, "setProcessStateSummary"

    return-object v0

    .line 2338
    :pswitch_24
    const-string/jumbo v0, "setActivityLocusContext"

    return-object v0

    .line 2334
    :pswitch_25
    const-string/jumbo v0, "killProcessesWhenImperceptible"

    return-object v0

    .line 2330
    :pswitch_26
    const-string v0, "getHistoricalProcessExitReasons"

    return-object v0

    .line 2326
    :pswitch_27
    const-string/jumbo v0, "reportStartInfoViewTimestamps"

    return-object v0

    .line 2322
    :pswitch_28
    const-string v0, "addStartInfoTimestamp"

    return-object v0

    .line 2318
    :pswitch_29
    const-string/jumbo v0, "removeApplicationStartInfoCompleteListener"

    return-object v0

    .line 2314
    :pswitch_2a
    const-string v0, "addApplicationStartInfoCompleteListener"

    return-object v0

    .line 2310
    :pswitch_2b
    const-string v0, "getHistoricalProcessStartReasons"

    return-object v0

    .line 2306
    :pswitch_2c
    const-string v0, "appNotResponding"

    return-object v0

    .line 2302
    :pswitch_2d
    const-string/jumbo v0, "startUserInForegroundWithListener"

    return-object v0

    .line 2298
    :pswitch_2e
    const-string v0, "getLifeMonitor"

    return-object v0

    .line 2294
    :pswitch_2f
    const-string v0, "getDelegatedShellPermissions"

    return-object v0

    .line 2290
    :pswitch_30
    const-string/jumbo v0, "stopDelegateShellPermissionIdentity"

    return-object v0

    .line 2286
    :pswitch_31
    const-string/jumbo v0, "startDelegateShellPermissionIdentity"

    return-object v0

    .line 2282
    :pswitch_32
    const-string/jumbo v0, "startUserInBackgroundWithListener"

    return-object v0

    .line 2278
    :pswitch_33
    const-string v0, "backgroundAllowlistUid"

    return-object v0

    .line 2274
    :pswitch_34
    const-string/jumbo v0, "waitForNetworkStateUpdate"

    return-object v0

    .line 2270
    :pswitch_35
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 2266
    :pswitch_36
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 2262
    :pswitch_37
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 2258
    :pswitch_38
    const-string/jumbo v0, "setHasTopUi"

    return-object v0

    .line 2254
    :pswitch_39
    const-string/jumbo v0, "setRenderThread"

    return-object v0

    .line 2250
    :pswitch_3a
    const-string/jumbo v0, "isBackgroundRestricted"

    return-object v0

    .line 2246
    :pswitch_3b
    const-string/jumbo v0, "sendIntentSender"

    return-object v0

    .line 2242
    :pswitch_3c
    const-string/jumbo v0, "sendIdleJobTrigger"

    return-object v0

    .line 2238
    :pswitch_3d
    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    return-object v0

    .line 2234
    :pswitch_3e
    const-string/jumbo v0, "notifyLockedProfile"

    return-object v0

    .line 2230
    :pswitch_3f
    const-string/jumbo v0, "isVrModePackageEnabled"

    return-object v0

    .line 2226
    :pswitch_40
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    .line 2222
    :pswitch_41
    const-string/jumbo v0, "setDeterministicUidIdle"

    return-object v0

    .line 2218
    :pswitch_42
    const-string/jumbo v0, "makePackageIdle"

    return-object v0

    .line 2214
    :pswitch_43
    const-string/jumbo v0, "killPackageDependents"

    return-object v0

    .line 2210
    :pswitch_44
    const-string/jumbo v0, "unlockUser2"

    return-object v0

    .line 2206
    :pswitch_45
    const-string/jumbo v0, "unlockUser"

    return-object v0

    .line 2202
    :pswitch_46
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 2198
    :pswitch_47
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 2194
    :pswitch_48
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 2190
    :pswitch_49
    const-string v0, "getPackageProcessState"

    return-object v0

    .line 2186
    :pswitch_4a
    const-string/jumbo v0, "noteAlarmFinish"

    return-object v0

    .line 2182
    :pswitch_4b
    const-string/jumbo v0, "noteAlarmStart"

    return-object v0

    .line 2178
    :pswitch_4c
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 2174
    :pswitch_4d
    const-string v0, "dumpHeapFinished"

    return-object v0

    .line 2170
    :pswitch_4e
    const-string/jumbo v0, "setDumpHeapDebugLimit"

    return-object v0

    .line 2166
    :pswitch_4f
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 2162
    :pswitch_50
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 2158
    :pswitch_51
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 2154
    :pswitch_52
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 2150
    :pswitch_53
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 2146
    :pswitch_54
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 2142
    :pswitch_55
    const-string/jumbo v0, "setThemeOverlayReady"

    return-object v0

    .line 2138
    :pswitch_56
    const-string v0, "bootAnimationComplete"

    return-object v0

    .line 2134
    :pswitch_57
    const-string/jumbo v0, "isTopOfTask"

    return-object v0

    .line 2130
    :pswitch_58
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 2126
    :pswitch_59
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 2122
    :pswitch_5a
    const-string/jumbo v0, "isInLockTaskMode"

    return-object v0

    .line 2118
    :pswitch_5b
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2114
    :pswitch_5c
    const-string/jumbo v0, "getTagForIntentSender"

    return-object v0

    .line 2110
    :pswitch_5d
    const-string/jumbo v0, "setProcessMemoryTrimLevel"

    return-object v0

    .line 2106
    :pswitch_5e
    const-string/jumbo v0, "getTaskBounds"

    return-object v0

    .line 2102
    :pswitch_5f
    const-string v0, "appNotRespondingViaProvider"

    return-object v0

    .line 2098
    :pswitch_60
    const-string/jumbo v0, "performIdleMaintenance"

    return-object v0

    .line 2094
    :pswitch_61
    const-string/jumbo v0, "restart"

    return-object v0

    .line 2090
    :pswitch_62
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 2086
    :pswitch_63
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 2082
    :pswitch_64
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 2078
    :pswitch_65
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 2074
    :pswitch_66
    const-string/jumbo v0, "hang"

    return-object v0

    .line 2070
    :pswitch_67
    const-string/jumbo v0, "setUserIsMonkey"

    return-object v0

    .line 2066
    :pswitch_68
    const-string/jumbo v0, "killUid"

    return-object v0

    .line 2062
    :pswitch_69
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 2058
    :pswitch_6a
    const-string v0, "getIntentForIntentSender"

    return-object v0

    .line 2054
    :pswitch_6b
    const-string v0, "getBugreportWhitelistedPackages"

    return-object v0

    .line 2050
    :pswitch_6c
    const-string/jumbo v0, "launchBugReportHandlerApp"

    return-object v0

    .line 2046
    :pswitch_6d
    const-string/jumbo v0, "requestRemoteBugReport"

    return-object v0

    .line 2042
    :pswitch_6e
    const-string/jumbo v0, "requestFullBugReport"

    return-object v0

    .line 2038
    :pswitch_6f
    const-string/jumbo v0, "requestBugReportWithExtraAttachments"

    return-object v0

    .line 2034
    :pswitch_70
    const-string/jumbo v0, "requestInteractiveBugReport"

    return-object v0

    .line 2030
    :pswitch_71
    const-string/jumbo v0, "requestInteractiveBugReportWithDescription"

    return-object v0

    .line 2026
    :pswitch_72
    const-string/jumbo v0, "requestWifiBugReport"

    return-object v0

    .line 2022
    :pswitch_73
    const-string/jumbo v0, "requestTelephonyBugReport"

    return-object v0

    .line 2018
    :pswitch_74
    const-string/jumbo v0, "requestBugReportWithDescription"

    return-object v0

    .line 2014
    :pswitch_75
    const-string/jumbo v0, "requestBugReport"

    return-object v0

    .line 2010
    :pswitch_76
    const-string/jumbo v0, "requestSystemServerHeapDump"

    return-object v0

    .line 2006
    :pswitch_77
    const-string v0, "getRunningUserIds"

    return-object v0

    .line 2002
    :pswitch_78
    const-string/jumbo v0, "unregisterUserSwitchObserver"

    return-object v0

    .line 1998
    :pswitch_79
    const-string/jumbo v0, "registerUserSwitchObserver"

    return-object v0

    .line 1994
    :pswitch_7a
    const-string/jumbo v0, "stopUserWithDelayedLocking"

    return-object v0

    .line 1990
    :pswitch_7b
    const-string/jumbo v0, "stopUserExceptCertainProfiles"

    return-object v0

    .line 1986
    :pswitch_7c
    const-string/jumbo v0, "stopUserWithCallback"

    return-object v0

    .line 1982
    :pswitch_7d
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 1978
    :pswitch_7e
    const-string/jumbo v0, "startActivityAsUserWithFeature"

    return-object v0

    .line 1974
    :pswitch_7f
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 1970
    :pswitch_80
    const-string/jumbo v0, "isIntentSenderAnActivity"

    return-object v0

    .line 1966
    :pswitch_81
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 1962
    :pswitch_82
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 1958
    :pswitch_83
    const-string v0, "getCurrentUserId"

    return-object v0

    .line 1954
    :pswitch_84
    const-string v0, "getCurrentUser"

    return-object v0

    .line 1950
    :pswitch_85
    const-string/jumbo v0, "killProcessesBelowForeground"

    return-object v0

    .line 1946
    :pswitch_86
    const-string v0, "getMyMemoryState"

    return-object v0

    .line 1942
    :pswitch_87
    const-string/jumbo v0, "removeContentProviderExternalAsUser"

    return-object v0

    .line 1938
    :pswitch_88
    const-string/jumbo v0, "removeContentProviderExternal"

    return-object v0

    .line 1934
    :pswitch_89
    const-string v0, "getContentProviderExternal"

    return-object v0

    .line 1930
    :pswitch_8a
    const-string/jumbo v0, "killAllBackgroundProcesses"

    return-object v0

    .line 1926
    :pswitch_8b
    const-string/jumbo v0, "showBootMessage"

    return-object v0

    .line 1922
    :pswitch_8c
    const-string v0, "getProcessPss"

    return-object v0

    .line 1918
    :pswitch_8d
    const-string/jumbo v0, "updatePersistentConfigurationWithAttribution"

    return-object v0

    .line 1914
    :pswitch_8e
    const-string/jumbo v0, "updatePersistentConfiguration"

    return-object v0

    .line 1910
    :pswitch_8f
    const-string/jumbo v0, "isIntentSenderTargetedToPackage"

    return-object v0

    .line 1906
    :pswitch_90
    const-string/jumbo v0, "unregisterProcessObserver"

    return-object v0

    .line 1902
    :pswitch_91
    const-string/jumbo v0, "registerProcessObserver"

    return-object v0

    .line 1898
    :pswitch_92
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 1894
    :pswitch_93
    const-string/jumbo v0, "setStopUserOnSwitch"

    return-object v0

    .line 1890
    :pswitch_94
    const-string/jumbo v0, "getSwitchingToUserMessage"

    return-object v0

    .line 1886
    :pswitch_95
    const-string/jumbo v0, "getSwitchingFromUserMessage"

    return-object v0

    .line 1882
    :pswitch_96
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 1878
    :pswitch_97
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 1874
    :pswitch_98
    const-string/jumbo v0, "isUserRunning"

    return-object v0

    .line 1870
    :pswitch_99
    const-string v0, "dumpHeap"

    return-object v0

    .line 1866
    :pswitch_9a
    const-string v0, "getMimeTypeFilterAsync"

    return-object v0

    .line 1862
    :pswitch_9b
    const-string v0, "crashApplicationWithTypeWithExtras"

    return-object v0

    .line 1858
    :pswitch_9c
    const-string v0, "crashApplicationWithType"

    return-object v0

    .line 1854
    :pswitch_9d
    const-string/jumbo v0, "isTopActivityImmersive"

    return-object v0

    .line 1850
    :pswitch_9e
    const-string/jumbo v0, "registerStrictModeCallback"

    return-object v0

    .line 1846
    :pswitch_9f
    const-string/jumbo v0, "handleApplicationStrictModeViolation"

    return-object v0

    .line 1842
    :pswitch_a0
    const-string v0, "finishHeavyWeightApp"

    return-object v0

    .line 1838
    :pswitch_a1
    const-string v0, "getRunningExternalApplications"

    return-object v0

    .line 1834
    :pswitch_a2
    const-string/jumbo v0, "isUserAMonkey"

    return-object v0

    .line 1830
    :pswitch_a3
    const-string/jumbo v0, "killBackgroundProcesses"

    return-object v0

    .line 1826
    :pswitch_a4
    const-string/jumbo v0, "handleApplicationWtf"

    return-object v0

    .line 1822
    :pswitch_a5
    const-string/jumbo v0, "killApplicationProcess"

    return-object v0

    .line 1818
    :pswitch_a6
    const-string v0, "getProcessMemoryInfo"

    return-object v0

    .line 1814
    :pswitch_a7
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1810
    :pswitch_a8
    const-string/jumbo v0, "killApplication"

    return-object v0

    .line 1806
    :pswitch_a9
    const-string v0, "addPackageDependency"

    return-object v0

    .line 1802
    :pswitch_aa
    const-string/jumbo v0, "handleIncomingUser"

    return-object v0

    .line 1798
    :pswitch_ab
    const-string/jumbo v0, "unbindBackupAgent"

    return-object v0

    .line 1794
    :pswitch_ac
    const-string v0, "backupAgentCreated"

    return-object v0

    .line 1790
    :pswitch_ad
    const-string v0, "bindBackupAgent"

    return-object v0

    .line 1786
    :pswitch_ae
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 1782
    :pswitch_af
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 1778
    :pswitch_b0
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 1774
    :pswitch_b1
    const-string/jumbo v0, "profileControl"

    return-object v0

    .line 1770
    :pswitch_b2
    const-string/jumbo v0, "peekService"

    return-object v0

    .line 1766
    :pswitch_b3
    const-string v0, "getRunningAppProcesses"

    return-object v0

    .line 1762
    :pswitch_b4
    const-string v0, "getServices"

    return-object v0

    .line 1758
    :pswitch_b5
    const-string/jumbo v0, "killPids"

    return-object v0

    .line 1754
    :pswitch_b6
    const-string v0, "forceStopPackageEvenWhenStopping"

    return-object v0

    .line 1750
    :pswitch_b7
    const-string v0, "forceStopPackage"

    return-object v0

    .line 1746
    :pswitch_b8
    const-string/jumbo v0, "registerForegroundServiceObserver"

    return-object v0

    .line 1742
    :pswitch_b9
    const-string/jumbo v0, "stopAppForUser"

    return-object v0

    .line 1738
    :pswitch_ba
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1734
    :pswitch_bb
    const-string v0, "getProcessesInErrorState"

    return-object v0

    .line 1730
    :pswitch_bc
    const-string v0, "getMemoryInfo"

    return-object v0

    .line 1726
    :pswitch_bd
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 1722
    :pswitch_be
    const-string v0, "getForegroundServiceType"

    return-object v0

    .line 1718
    :pswitch_bf
    const-string/jumbo v0, "setServiceForeground"

    return-object v0

    .line 1714
    :pswitch_c0
    const-string/jumbo v0, "setProcessImportant"

    return-object v0

    .line 1710
    :pswitch_c1
    const-string/jumbo v0, "unbindFinished"

    return-object v0

    .line 1706
    :pswitch_c2
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 1702
    :pswitch_c3
    const-string/jumbo v0, "removeContentProvider"

    return-object v0

    .line 1698
    :pswitch_c4
    const-string/jumbo v0, "noteWakeupAlarm"

    return-object v0

    .line 1694
    :pswitch_c5
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1690
    :pswitch_c6
    const-string/jumbo v0, "unregisterIntentSenderCancelListener"

    return-object v0

    .line 1686
    :pswitch_c7
    const-string/jumbo v0, "registerIntentSenderCancelListenerEx"

    return-object v0

    .line 1682
    :pswitch_c8
    const-string v0, "getInfoForIntentSender"

    return-object v0

    .line 1678
    :pswitch_c9
    const-string v0, "cancelIntentSender"

    return-object v0

    .line 1674
    :pswitch_ca
    const-string v0, "getIntentSenderWithFeature"

    return-object v0

    .line 1670
    :pswitch_cb
    const-string v0, "getIntentSender"

    return-object v0

    .line 1666
    :pswitch_cc
    const-string/jumbo v0, "serviceDoneExecuting"

    return-object v0

    .line 1662
    :pswitch_cd
    const-string v0, "getRecentTasks"

    return-object v0

    .line 1658
    :pswitch_ce
    const-string/jumbo v0, "signalPersistentProcesses"

    return-object v0

    .line 1654
    :pswitch_cf
    const-string/jumbo v0, "showWaitingForDebugger"

    return-object v0

    .line 1650
    :pswitch_d0
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 1646
    :pswitch_d1
    const-string/jumbo v0, "revokeUriPermission"

    return-object v0

    .line 1642
    :pswitch_d2
    const-string/jumbo v0, "grantUriPermission"

    return-object v0

    .line 1638
    :pswitch_d3
    const-string v0, "checkUriPermissions"

    return-object v0

    .line 1634
    :pswitch_d4
    const-string v0, "checkContentUriPermissionFull"

    return-object v0

    .line 1630
    :pswitch_d5
    const-string v0, "checkUriPermission"

    return-object v0

    .line 1626
    :pswitch_d6
    const-string v0, "getProcessLimit"

    return-object v0

    .line 1622
    :pswitch_d7
    const-string/jumbo v0, "setProcessLimit"

    return-object v0

    .line 1618
    :pswitch_d8
    const-string/jumbo v0, "stopServiceToken"

    return-object v0

    .line 1614
    :pswitch_d9
    const-string/jumbo v0, "updateMccMncConfiguration"

    return-object v0

    .line 1610
    :pswitch_da
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 1606
    :pswitch_db
    const-string v0, "getConfiguration"

    return-object v0

    .line 1602
    :pswitch_dc
    const-string v0, "finishInstrumentation"

    return-object v0

    .line 1598
    :pswitch_dd
    const-string v0, "addInstrumentationResults"

    return-object v0

    .line 1594
    :pswitch_de
    const-string/jumbo v0, "startInstrumentation"

    return-object v0

    .line 1590
    :pswitch_df
    const-string/jumbo v0, "setAlwaysFinish"

    return-object v0

    .line 1586
    :pswitch_e0
    const-string/jumbo v0, "setAgentApp"

    return-object v0

    .line 1582
    :pswitch_e1
    const-string/jumbo v0, "setDebugApp"

    return-object v0

    .line 1578
    :pswitch_e2
    const-string/jumbo v0, "publishService"

    return-object v0

    .line 1574
    :pswitch_e3
    const-string/jumbo v0, "unbindService"

    return-object v0

    .line 1570
    :pswitch_e4
    const-string/jumbo v0, "updateServiceGroup"

    return-object v0

    .line 1566
    :pswitch_e5
    const-string v0, "bindServiceInstance"

    return-object v0

    .line 1562
    :pswitch_e6
    const-string v0, "bindService"

    return-object v0

    .line 1558
    :pswitch_e7
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 1554
    :pswitch_e8
    const-string/jumbo v0, "startService"

    return-object v0

    .line 1550
    :pswitch_e9
    const-string v0, "getRunningServiceControlPanel"

    return-object v0

    .line 1546
    :pswitch_ea
    const-string/jumbo v0, "refContentProvider"

    return-object v0

    .line 1542
    :pswitch_eb
    const-string/jumbo v0, "publishContentProviders"

    return-object v0

    .line 1538
    :pswitch_ec
    const-string v0, "getContentProvider"

    return-object v0

    .line 1534
    :pswitch_ed
    const-string/jumbo v0, "getTaskForActivity"

    return-object v0

    .line 1530
    :pswitch_ee
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 1526
    :pswitch_ef
    const-string/jumbo v0, "getTasks"

    return-object v0

    .line 1522
    :pswitch_f0
    const-string v0, "finishAttachApplication"

    return-object v0

    .line 1518
    :pswitch_f1
    const-string v0, "attachApplication"

    return-object v0

    .line 1514
    :pswitch_f2
    const-string v0, "finishReceiver"

    return-object v0

    .line 1510
    :pswitch_f3
    const-string/jumbo v0, "unbroadcastIntent"

    return-object v0

    .line 1506
    :pswitch_f4
    const-string v0, "broadcastIntentWithFeature"

    return-object v0

    .line 1502
    :pswitch_f5
    const-string v0, "broadcastIntent"

    return-object v0

    .line 1498
    :pswitch_f6
    const-string v0, "getRegisteredIntentFilters"

    return-object v0

    .line 1494
    :pswitch_f7
    const-string/jumbo v0, "unregisterReceiver"

    return-object v0

    .line 1490
    :pswitch_f8
    const-string/jumbo v0, "registerReceiverWithFeature"

    return-object v0

    .line 1486
    :pswitch_f9
    const-string/jumbo v0, "registerReceiver"

    return-object v0

    .line 1482
    :pswitch_fa
    const-string v0, "finishActivity"

    return-object v0

    .line 1478
    :pswitch_fb
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 1474
    :pswitch_fc
    const-string/jumbo v0, "startActivityWithFeature"

    return-object v0

    .line 1470
    :pswitch_fd
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 1466
    :pswitch_fe
    const-string/jumbo v0, "handleApplicationCrash"

    return-object v0

    .line 1462
    :pswitch_ff
    const-string/jumbo v0, "logFgsApiStateChanged"

    return-object v0

    .line 1458
    :pswitch_100
    const-string/jumbo v0, "logFgsApiEnd"

    return-object v0

    .line 1454
    :pswitch_101
    const-string/jumbo v0, "logFgsApiBegin"

    return-object v0

    .line 1450
    :pswitch_102
    const-string v0, "checkPermission"

    return-object v0

    .line 1446
    :pswitch_103
    const-string/jumbo v0, "getUidProcessState"

    return-object v0

    .line 1442
    :pswitch_104
    const-string/jumbo v0, "isUidActive"

    return-object v0

    .line 1438
    :pswitch_105
    const-string/jumbo v0, "removeUidFromObserver"

    return-object v0

    .line 1434
    :pswitch_106
    const-string v0, "addUidToObserver"

    return-object v0

    .line 1430
    :pswitch_107
    const-string/jumbo v0, "registerUidObserverForUids"

    return-object v0

    .line 1426
    :pswitch_108
    const-string/jumbo v0, "unregisterUidObserver"

    return-object v0

    .line 1422
    :pswitch_109
    const-string/jumbo v0, "registerUidObserver"

    return-object v0

    .line 1418
    :pswitch_10a
    const-string/jumbo v0, "openContentUri"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1409
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 11188
    const/16 v0, 0x10a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2493
    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v10, "android.app.IActivityManager"

    .line 2498
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v1, 0xffffff

    if-gt v13, v1, :cond_0

    .line 2499
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    :cond_0
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1

    .line 2502
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2503
    return v11

    .line 2505
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 5733
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 5724
    :pswitch_0
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5725
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5726
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    .line 5727
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5728
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5729
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5701
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_1
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5703
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5705
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5707
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 5709
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5711
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5713
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5715
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 5716
    .local v8, "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5717
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 5718
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5719
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5692
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":J
    :pswitch_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5693
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5694
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->clearAllOverridePermissionStates(I)V

    .line 5695
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5696
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5681
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5683
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5684
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5685
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->clearOverridePermissionStates(II)V

    .line 5686
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5687
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5668
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5670
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5672
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5673
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5674
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeOverridePermissionState(IILjava/lang/String;)V

    .line 5675
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5676
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5653
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5655
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5657
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5659
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5660
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5661
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addOverridePermissionState(IILjava/lang/String;I)V

    .line 5662
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5663
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5641
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5643
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5644
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5645
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidLastIdleElapsedTime(ILjava/lang/String;)J

    move-result-wide v3

    .line 5646
    .local v3, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5647
    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5648
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5629
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_7
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5631
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5632
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5633
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getBindingUidProcessState(ILjava/lang/String;)I

    move-result v3

    .line 5634
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5635
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5636
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5615
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5617
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5619
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5621
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5622
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5623
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->frozenBinderTransactionDetected(IIII)V

    .line 5624
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5599
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_9
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5601
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5603
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5605
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5606
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5607
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result v5

    .line 5608
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5609
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5610
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5589
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_a
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5590
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5591
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUidFrozenState([I)[I

    move-result-object v2

    .line 5592
    .local v2, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5593
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5594
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5580
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[I
    :pswitch_b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5581
    .local v1, "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5582
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5583
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5584
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5571
    .end local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    :pswitch_c
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5572
    .restart local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5573
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5574
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5575
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5559
    .end local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    :pswitch_d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5561
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5562
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5563
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v3

    .line 5564
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5565
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5566
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5547
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5549
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5550
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5551
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v3

    .line 5552
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5553
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5554
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5539
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object v1

    .line 5540
    .local v1, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5541
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5542
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5528
    .end local v1    # "_result":[I
    :pswitch_10
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5530
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5531
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5532
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(II)I

    move-result v3

    .line 5533
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5534
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5535
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5516
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5518
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5519
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5520
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5521
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5522
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5523
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5502
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5504
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5506
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 5507
    .local v3, "_arg2":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5508
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v4

    .line 5509
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5510
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5511
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5492
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_13
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5493
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5494
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v2

    .line 5495
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5496
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5497
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5482
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5483
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5484
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isProcessFrozen(I)Z

    move-result v2

    .line 5485
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5486
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5487
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5471
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5473
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5474
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5475
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->forceDelayBroadcastDelivery(Ljava/lang/String;J)V

    .line 5476
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5477
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5464
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :pswitch_16
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastBarrier()V

    .line 5465
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5466
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5458
    :pswitch_17
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    .line 5459
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5460
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5447
    :pswitch_18
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5449
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5450
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5451
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v3

    .line 5452
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5453
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5454
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5435
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_19
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 5437
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5438
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5439
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 5440
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5441
    invoke-virtual {v15, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5442
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5425
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1a
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5426
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5427
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v2

    .line 5428
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5429
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5430
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5415
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5416
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5417
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v2

    .line 5418
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5419
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5420
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5404
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5406
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5407
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5408
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 5409
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5410
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5394
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_1d
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5395
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5396
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v2

    .line 5397
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5398
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5399
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5384
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5385
    .restart local v1    # "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5386
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v2

    .line 5387
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5388
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5389
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5377
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_1f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    .line 5378
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5379
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5365
    :pswitch_20
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5367
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5369
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5370
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5371
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    .line 5372
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5373
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5357
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v1

    .line 5358
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5359
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5360
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5350
    .end local v1    # "_result":Z
    :pswitch_22
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v1

    .line 5351
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5352
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5353
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5342
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 5343
    .local v1, "_arg0":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5344
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    .line 5345
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5346
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5329
    .end local v1    # "_arg0":[B
    :pswitch_24
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5331
    .local v1, "_arg0":Landroid/content/ComponentName;
    sget-object v2, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 5333
    .local v2, "_arg1":Landroid/content/LocusId;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5334
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5335
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    .line 5336
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5337
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5318
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/content/LocusId;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_25
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5320
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5321
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5322
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    .line 5323
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5324
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5302
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5304
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5306
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5308
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5309
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5310
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 5311
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5312
    invoke-virtual {v15, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5313
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5292
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :pswitch_27
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5294
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 5295
    .local v3, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5296
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reportStartInfoViewTimestamps(JJ)V

    .line 5297
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5279
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    :pswitch_28
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5281
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5283
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5284
    .local v4, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5285
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addStartInfoTimestamp(IJI)V

    .line 5286
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5287
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5268
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_29
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5270
    .local v1, "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5271
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5272
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5273
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5274
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5257
    .end local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    .end local v2    # "_arg1":I
    :pswitch_2a
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5259
    .restart local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5260
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5261
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5262
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5263
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5243
    .end local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    .end local v2    # "_arg1":I
    :pswitch_2b
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5245
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5247
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5248
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5249
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5250
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5251
    invoke-virtual {v15, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5252
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5234
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    :pswitch_2c
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5235
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5236
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    .line 5237
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5238
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5222
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5224
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5225
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5226
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5227
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5228
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5229
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5214
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 5215
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5216
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5217
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5207
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v1

    .line 5208
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5209
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5210
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5201
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_30
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    .line 5202
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5203
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5191
    :pswitch_31
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5193
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 5194
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5195
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 5196
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5197
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5179
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5181
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5182
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5183
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5184
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5185
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5186
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5170
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5171
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5172
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    .line 5173
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5174
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5161
    .end local v1    # "_arg0":I
    :pswitch_34
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5162
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5163
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 5164
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5165
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5152
    .end local v1    # "_arg0":J
    :pswitch_35
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5153
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5154
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 5155
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5156
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5141
    .end local v1    # "_arg0":I
    :pswitch_36
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5143
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5144
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5145
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 5146
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5147
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5132
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :pswitch_37
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5133
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5134
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 5135
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5136
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5123
    .end local v1    # "_arg0":I
    :pswitch_38
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5124
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5125
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 5126
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5127
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5114
    .end local v1    # "_arg0":Z
    :pswitch_39
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5115
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5116
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 5117
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5118
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5104
    .end local v1    # "_arg0":I
    :pswitch_3a
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5105
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5106
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v2

    .line 5107
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5108
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5109
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5078
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 5080
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 5082
    .local v2, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5084
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5086
    .local v4, "_arg3":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 5088
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5090
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 5092
    .local v7, "_arg6":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5094
    .local v8, "_arg7":Ljava/lang/String;
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 5095
    .local v9, "_arg8":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5096
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v12

    .line 5097
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5098
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5099
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5071
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/IIntentSender;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/content/IIntentReceiver;
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :pswitch_3c
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 5072
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5073
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5061
    :pswitch_3d
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5063
    .local v1, "_arg0":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5064
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5065
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5066
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5067
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5052
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_3e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5053
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5054
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 5055
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5042
    .end local v1    # "_arg0":I
    :pswitch_3f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5043
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5044
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    .line 5045
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5046
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5047
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5034
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v1

    .line 5035
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5036
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5037
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5026
    .end local v1    # "_result":I
    :pswitch_41
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5027
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5028
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setDeterministicUidIdle(Z)V

    .line 5029
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5030
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5015
    .end local v1    # "_arg0":Z
    :pswitch_42
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5017
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5018
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5019
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 5020
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5021
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 5004
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_43
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5006
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5007
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5008
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 5009
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5010
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4992
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_44
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4994
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 4995
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4996
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unlockUser2(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 4997
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4998
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4999
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4976
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_45
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4978
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4980
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 4982
    .local v3, "_arg2":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v4

    .line 4983
    .local v4, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4984
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v5

    .line 4985
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4986
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4987
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4967
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/os/IProgressListener;
    .end local v5    # "_result":Z
    :pswitch_46
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4968
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4969
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 4970
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4971
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4957
    .end local v1    # "_arg0":Z
    :pswitch_47
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 4958
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4959
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    .line 4960
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4961
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4962
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4949
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v1

    .line 4950
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4951
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4952
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4938
    .end local v1    # "_result":Z
    :pswitch_49
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4940
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4941
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4942
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4943
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4944
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4945
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4923
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_4a
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4925
    .local v1, "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 4927
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4929
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4930
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4931
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4932
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4933
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4908
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4910
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 4912
    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4914
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4915
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4916
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4917
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4918
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4897
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4899
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 4900
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4901
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 4902
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4903
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4888
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4889
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4890
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 4891
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4892
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4873
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4875
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4877
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4879
    .local v3, "_arg2":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4880
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4881
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 4882
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4883
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4865
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v1

    .line 4866
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4867
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4868
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4853
    .end local v1    # "_result":I
    :pswitch_50
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4855
    .local v1, "_arg0":I
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4857
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4858
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4859
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4860
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4861
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4842
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_51
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4844
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4845
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4846
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 4847
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4848
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4831
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_52
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4833
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4834
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4835
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 4836
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4837
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4822
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_53
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4823
    .local v1, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4824
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4825
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4826
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4813
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_54
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4814
    .restart local v1    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4815
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4816
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4817
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4804
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_55
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4805
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4806
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setThemeOverlayReady(I)V

    .line 4807
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4808
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4797
    .end local v1    # "_arg0":I
    :pswitch_56
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 4798
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4799
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4788
    :pswitch_57
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4789
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4790
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v2

    .line 4791
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4792
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4793
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4779
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4780
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4781
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 4782
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4783
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4767
    .end local v1    # "_arg0":I
    :pswitch_59
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4769
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4770
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4771
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v3

    .line 4772
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4773
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4774
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4759
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_5a
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v1

    .line 4760
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4761
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4762
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4750
    .end local v1    # "_result":Z
    :pswitch_5b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4751
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4752
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v2

    .line 4753
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4754
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4755
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4738
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_5c
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4740
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4741
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4742
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4743
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4744
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4745
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4724
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4726
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4728
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4729
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4730
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v4

    .line 4731
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4732
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4733
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4714
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_5e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4715
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4716
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 4717
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4718
    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4719
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4705
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_5f
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4706
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4707
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4708
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4709
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4698
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_60
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 4699
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4700
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4692
    :pswitch_61
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 4693
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4694
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4685
    :pswitch_62
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    .line 4686
    .local v1, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4687
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4688
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4677
    .end local v1    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_63
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4678
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4679
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    .line 4680
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4681
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4664
    .end local v1    # "_arg0":I
    :pswitch_64
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4666
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4668
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4669
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4670
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 4671
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4672
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4656
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_65
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    .line 4657
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4658
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4659
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4646
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_66
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4648
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4649
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4650
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 4651
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4652
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4637
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_67
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4638
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4639
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 4640
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4641
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4624
    .end local v1    # "_arg0":Z
    :pswitch_68
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4626
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4628
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4629
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4630
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 4631
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4632
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4614
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_69
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4615
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 4617
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4619
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4604
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4605
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4606
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v2

    .line 4607
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4608
    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4609
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4596
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_6b
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v1

    .line 4597
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4598
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4599
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4589
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6c
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v1

    .line 4590
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4591
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4592
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4581
    .end local v1    # "_result":Z
    :pswitch_6d
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4582
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4583
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    .line 4584
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4585
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4574
    .end local v1    # "_arg0":J
    :pswitch_6e
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    .line 4575
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4576
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4566
    :pswitch_6f
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4567
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4568
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReportWithExtraAttachments(Ljava/util/List;)V

    .line 4569
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4570
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4559
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_70
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    .line 4560
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4561
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4549
    :pswitch_71
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4551
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4552
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4553
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 4554
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4555
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4538
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_72
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4540
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4541
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4542
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4544
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4527
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_73
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4529
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4530
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4531
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4532
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4533
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4514
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_74
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4516
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4518
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4519
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4520
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4521
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4522
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4505
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_75
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4506
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4507
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 4508
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4509
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4498
    .end local v1    # "_arg0":I
    :pswitch_76
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    .line 4499
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4500
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4491
    :pswitch_77
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v1

    .line 4492
    .local v1, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4494
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4483
    .end local v1    # "_result":[I
    :pswitch_78
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4484
    .local v1, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4485
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 4486
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4487
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4472
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_79
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4474
    .restart local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4475
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4476
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 4477
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4460
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4462
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4463
    .local v2, "_arg1":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4464
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4465
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4466
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4467
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4446
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_7b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4448
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4450
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4451
    .local v3, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4452
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    .line 4453
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4454
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4434
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v4    # "_result":I
    :pswitch_7c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4436
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4437
    .local v2, "_arg1":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4438
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4439
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4440
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4441
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4420
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_7d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4422
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4424
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4425
    .local v3, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4426
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    .line 4427
    .restart local v4    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4428
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4429
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_0

    .line 4388
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v4    # "_result":I
    :pswitch_7e
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4390
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4392
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4394
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 4396
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4398
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 4400
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4402
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4404
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4406
    .local v9, "_arg8":I
    sget-object v12, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ProfilerInfo;

    .line 4408
    .local v12, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 4410
    .local v11, "_arg10":Landroid/os/Bundle;
    move-object/from16 v17, v10

    move-object v10, v12

    .end local v12    # "_arg9":Landroid/app/ProfilerInfo;
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4411
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4412
    move-object/from16 v18, v17

    .end local v17    # "descriptor":Ljava/lang/String;
    .local v18, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 4413
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4414
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4358
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_7f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4360
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4362
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 4364
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4366
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 4368
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4370
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4372
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4374
    .restart local v8    # "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 4376
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 4378
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4379
    .local v11, "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4380
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v12

    .line 4381
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4382
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 4383
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4348
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":I
    .end local v12    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_80
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4349
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4350
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 4351
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4352
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4353
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4339
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_81
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4340
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4341
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 4342
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4329
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_82
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4330
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4331
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    .line 4332
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4333
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4334
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4321
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_83
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v1

    .line 4322
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4323
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4324
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4314
    .end local v1    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_84
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4315
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4316
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4317
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4305
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_85
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4306
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4307
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v2

    .line 4308
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4309
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4310
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_86
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4296
    .local v1, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4297
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4298
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4299
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4300
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4282
    .end local v1    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_87
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4284
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4286
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4287
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4288
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 4289
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4271
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_88
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4273
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4274
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4275
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4276
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4277
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4255
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_89
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4257
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4259
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4261
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4262
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4263
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v5

    .line 4264
    .local v5, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4265
    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4266
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4248
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/ContentProviderHolder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 4249
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4250
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4238
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4240
    .local v1, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4241
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4242
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4243
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4228
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8c
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4229
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4230
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v2

    .line 4231
    .local v2, "_result":[J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4232
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4233
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4215
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4217
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4219
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4220
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4221
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4223
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4206
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4207
    .restart local v1    # "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4208
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 4209
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4210
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4196
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4197
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4198
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 4199
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4200
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4201
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4187
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_90
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 4188
    .local v1, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4189
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4190
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4191
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4178
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_91
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 4179
    .restart local v1    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4180
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4181
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4182
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4168
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_92
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4169
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4170
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v2

    .line 4171
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4172
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4173
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4159
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_93
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4160
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4161
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    .line 4162
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4163
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4151
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_94
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage()Ljava/lang/String;

    move-result-object v1

    .line 4152
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4153
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4154
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4144
    .end local v1    # "_result":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_95
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage()Ljava/lang/String;

    move-result-object v1

    .line 4145
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4146
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4147
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4135
    .end local v1    # "_result":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_96
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4136
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4137
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v2

    .line 4138
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4139
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4140
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4124
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_97
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4126
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4127
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4128
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 4129
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4130
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4112
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_98
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4114
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4115
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4116
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v3

    .line 4117
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4119
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4086
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_99
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4088
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4090
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4092
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 4094
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 4096
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4098
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4100
    .local v7, "_arg6":Ljava/lang/String;
    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 4102
    .local v8, "_arg7":Landroid/os/ParcelFileDescriptor;
    sget-object v9, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/RemoteCallback;

    .line 4103
    .local v9, "_arg8":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4104
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v10

    .line 4105
    .local v10, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4106
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4107
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4074
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg8":Landroid/os/RemoteCallback;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_9a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4076
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4078
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 4079
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4080
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 4081
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4051
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4053
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4055
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4057
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4059
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4061
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4063
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4065
    .local v7, "_arg6":I
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 4066
    .local v8, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 4068
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4069
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4030
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9c
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4032
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4034
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4036
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4038
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4040
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4042
    .restart local v6    # "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4043
    .restart local v7    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4044
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 4045
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4022
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v1

    .line 4023
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4025
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4014
    .end local v1    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4015
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4016
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerStrictModeCallback(Landroid/os/IBinder;)V

    .line 4017
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4018
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4001
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4003
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4005
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 4006
    .local v3, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4007
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 4008
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4009
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3994
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 3995
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3996
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3987
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 3988
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3990
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3980
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v1

    .line 3981
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3983
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3970
    .end local v1    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3972
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3973
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3974
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 3975
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3976
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3952
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a4
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3954
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3956
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3958
    .local v3, "_arg2":Z
    sget-object v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 3960
    .local v4, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3961
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3962
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v6

    .line 3963
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3964
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3965
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3941
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3943
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3944
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3945
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 3946
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3947
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3931
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3932
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3933
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 3934
    .local v2, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3935
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3936
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3922
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[Landroid/os/Debug$MemoryInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3923
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3924
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3926
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3905
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3907
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3909
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3911
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3913
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3914
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3915
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 3916
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3917
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3896
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3897
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3898
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3874
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_aa
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3876
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3878
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3880
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3882
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3884
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3886
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3887
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3888
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 3889
    .local v8, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3890
    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3891
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3865
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ab
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3866
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3867
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3868
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3869
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3852
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ac
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3854
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3856
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3857
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3858
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3859
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3860
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3834
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ad
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3836
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3838
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3840
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3842
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3843
    .restart local v5    # "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3844
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;IIIZ)Z

    move-result v6

    .line 3845
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3846
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3847
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3827
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ae
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 3828
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3829
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3821
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_af
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 3822
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3823
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3812
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3813
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3814
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v2

    .line 3815
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3817
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3794
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3796
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3798
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3800
    .local v3, "_arg2":Z
    sget-object v4, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProfilerInfo;

    .line 3802
    .local v4, "_arg3":Landroid/app/ProfilerInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3803
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3804
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v6

    .line 3805
    .restart local v6    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3806
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3807
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3780
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/app/ProfilerInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3782
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3784
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3785
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3787
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3788
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3789
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3772
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 3773
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3774
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3775
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3761
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b4
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3763
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3764
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3765
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v3

    .line 3766
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3767
    const/4 v6, 0x1

    invoke-virtual {v15, v3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3768
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3747
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3749
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3751
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3752
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3753
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v4

    .line 3754
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3755
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3756
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3736
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3738
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3739
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3740
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V

    .line 3741
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3742
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3725
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3727
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3728
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3729
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 3730
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3731
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3715
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v1

    .line 3716
    .local v1, "_arg0":Landroid/app/IForegroundServiceObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3717
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v2

    .line 3718
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3719
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3720
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3704
    .end local v1    # "_arg0":Landroid/app/IForegroundServiceObserver;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_b9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3706
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3707
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3708
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    .line 3709
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3688
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ba
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3690
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3692
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3694
    .local v3, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3695
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3696
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v5

    .line 3697
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3699
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3680
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_bb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 3681
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3683
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3671
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_bc
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3672
    .local v1, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3673
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3674
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3675
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3676
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3659
    .end local v1    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_bd
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3661
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3662
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3663
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v3

    .line 3664
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3666
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3647
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_be
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3649
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3650
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3651
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v3

    .line 3652
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3628
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_bf
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3630
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3632
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3634
    .local v3, "_arg2":I
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 3636
    .local v4, "_arg3":Landroid/app/Notification;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3638
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3639
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3640
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 3641
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3642
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3613
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/app/Notification;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3615
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3617
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3619
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3620
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3621
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 3622
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3623
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3602
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3604
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3605
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3606
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 3607
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3608
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3591
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3593
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3594
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3595
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 3596
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3581
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3583
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3584
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3585
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 3586
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3564
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c4
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3566
    .local v1, "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 3568
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3570
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3572
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3573
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3574
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3576
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3557
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 3558
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3559
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3547
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3549
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3550
    .local v2, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3551
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 3552
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3553
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3535
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3537
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3538
    .restart local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3539
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v3

    .line 3540
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3542
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3525
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3526
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3527
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v2

    .line 3528
    .local v2, "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3529
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3530
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3516
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3517
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3518
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 3519
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3520
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3486
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ca
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3488
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3490
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3492
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3494
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3496
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3498
    .restart local v6    # "_arg5":I
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 3500
    .local v7, "_arg6":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 3502
    .local v8, "_arg7":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3504
    .local v9, "_arg8":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 3506
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3507
    .restart local v11    # "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3508
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 3509
    .local v12, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3510
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3511
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":[Landroid/content/Intent;
    .end local v8    # "_arg7":[Ljava/lang/String;
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_cb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3460
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3462
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3464
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3466
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3468
    .local v5, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/content/Intent;

    .line 3470
    .local v6, "_arg5":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 3472
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3474
    .local v8, "_arg7":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 3476
    .local v9, "_arg8":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3477
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3478
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v11

    .line 3479
    .local v11, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3481
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3442
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[Landroid/content/Intent;
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v11    # "_result":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_cc
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3444
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3446
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3448
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3450
    .local v4, "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 3451
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3452
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V

    .line 3453
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3428
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_cd
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3430
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3432
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3433
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3434
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 3435
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    const/4 v6, 0x1

    invoke-virtual {v15, v4, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3437
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3419
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ce
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3420
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3421
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 3422
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3408
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_cf
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3410
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3411
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3412
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 3413
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3414
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3397
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 3399
    .local v1, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3400
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3401
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 3402
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3403
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3380
    .end local v1    # "_arg0":Landroid/app/IActivityController;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3382
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3384
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3386
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3388
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3389
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3390
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3391
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3363
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3365
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3367
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 3369
    .restart local v3    # "_arg2":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3371
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3372
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3374
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3343
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3345
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3347
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3349
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3351
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3353
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3354
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3355
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v7

    .line 3356
    .local v7, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3357
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3358
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3325
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_result":[I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d4
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3327
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3329
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3331
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3333
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3334
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->checkContentUriPermissionFull(Landroid/net/Uri;IIII)I

    move-result v6

    .line 3336
    .local v6, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3338
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3305
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3307
    .restart local v1    # "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3309
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3311
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3313
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3315
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3316
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v7

    .line 3318
    .local v7, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3297
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v1

    .line 3298
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3289
    .end local v1    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3290
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3291
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 3292
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3293
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3275
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3277
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3279
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3280
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3281
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v4

    .line 3282
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3283
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3284
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3263
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3265
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3266
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3267
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3268
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3270
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3253
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_da
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 3254
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3255
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 3256
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3258
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3245
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_db
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3246
    .local v1, "_result":Landroid/content/res/Configuration;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3247
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3248
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3233
    .end local v1    # "_result":Landroid/content/res/Configuration;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_dc
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3235
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3237
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3238
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3239
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 3240
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3222
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_dd
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3224
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3225
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3226
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 3227
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3198
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_de
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3200
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3202
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3204
    .local v3, "_arg2":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 3206
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v5

    .line 3208
    .local v5, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v6

    .line 3210
    .local v6, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3212
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3213
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3214
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v9

    .line 3215
    .local v9, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3216
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3217
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3189
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .end local v6    # "_arg5":Landroid/app/IUiAutomationConnection;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_df
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3190
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 3192
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3178
    .end local v1    # "_arg0":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3180
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3181
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3182
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3169
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3170
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3171
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3172
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3154
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3156
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3157
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3158
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3159
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3142
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3143
    .local v1, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3144
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v2

    .line 3145
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3147
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3129
    .end local v1    # "_arg0":Landroid/app/IServiceConnection;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e4
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3131
    .restart local v1    # "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3133
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3134
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3135
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    .line 3136
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3103
    .end local v1    # "_arg0":Landroid/app/IServiceConnection;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3105
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3107
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3109
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3111
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3113
    .local v5, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3115
    .local v6, "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3117
    .local v8, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3119
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3120
    .local v10, "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3121
    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 3122
    .local v11, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3123
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3124
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3079
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/IServiceConnection;
    .end local v6    # "_arg5":J
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v11    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_e6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3081
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3083
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 3085
    .restart local v3    # "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3087
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3089
    .restart local v5    # "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3091
    .restart local v6    # "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3093
    .restart local v8    # "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3094
    .local v9, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    move-result v10

    .line 3096
    .local v10, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3098
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3063
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/IServiceConnection;
    .end local v6    # "_arg5":J
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_e7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3065
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3067
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3069
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3070
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3071
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v5

    .line 3072
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3041
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3043
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3045
    .restart local v2    # "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3047
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3049
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3051
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3053
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3054
    .restart local v7    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3055
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    .line 3056
    .local v8, "_result":Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3057
    const/4 v9, 0x1

    invoke-virtual {v15, v8, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3058
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3031
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/content/ComponentName;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3032
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3033
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3034
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3035
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3036
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3017
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Landroid/app/PendingIntent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ea
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3019
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3021
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3022
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3023
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v4

    .line 3024
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3026
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3006
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_eb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3008
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3009
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 3011
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2988
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ec
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2990
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2992
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2994
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2996
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2997
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2998
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v6

    .line 2999
    .local v6, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3000
    const/4 v9, 0x1

    invoke-virtual {v15, v6, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3001
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2976
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Landroid/app/ContentProviderHolder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ed
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2978
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2979
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v3

    .line 2981
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2959
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ee
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2961
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2963
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2965
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2967
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2968
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 2970
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2949
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ef
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2950
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2951
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2952
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    const/4 v9, 0x1

    invoke-virtual {v15, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2954
    move v12, v9

    goto/16 :goto_0

    .line 2938
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f0
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2940
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2941
    .local v3, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2942
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishAttachApplication(JJ)V

    .line 2943
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2944
    move v12, v9

    goto/16 :goto_0

    .line 2927
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f1
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2929
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2930
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 2932
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    move v12, v9

    goto/16 :goto_0

    .line 2909
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f2
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2911
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2913
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2915
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2917
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2919
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2920
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2921
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 2922
    move v12, v9

    goto/16 :goto_0

    .line 2896
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f3
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2898
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2900
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2901
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2902
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 2903
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    move v12, v9

    goto/16 :goto_0

    .line 2856
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f4
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2858
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2860
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 2862
    .local v4, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2864
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v6

    .line 2866
    .local v6, "_arg4":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2868
    .local v7, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2870
    .local v8, "_arg6":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2872
    .local v1, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 2874
    .local v10, "_arg8":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 2876
    .local v11, "_arg9":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 2878
    .local v12, "_arg10":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2880
    .local v13, "_arg11":I
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 2882
    .local v9, "_arg12":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 2884
    .local v15, "_arg13":Z
    const/16 v17, 0x1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2886
    .local v16, "_arg14":Z
    move/from16 v19, v17

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2887
    .local v17, "_arg15":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2888
    move-object v14, v9

    move-object v9, v1

    move-object v1, v0

    .end local v1    # "_arg7":Landroid/os/Bundle;
    .local v9, "_arg7":Landroid/os/Bundle;
    .local v14, "_arg12":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v17}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 2889
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object v15, v1

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2822
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/Intent;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Landroid/os/Bundle;
    .end local v11    # "_arg9":[Ljava/lang/String;
    .end local v12    # "_arg10":[Ljava/lang/String;
    .end local v13    # "_arg11":I
    .end local v14    # "_arg12":Landroid/os/Bundle;
    .end local v15    # "_arg13":Z
    .end local v16    # "_arg14":Z
    .end local v17    # "_arg15":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_f5
    move-object/from16 v18, v10

    move-object v1, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2824
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2826
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2828
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 2830
    .local v4, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2832
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2834
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 2836
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 2838
    .local v8, "_arg7":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2840
    .local v9, "_arg8":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 2842
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 2844
    .local v11, "_arg10":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 2846
    .local v12, "_arg11":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2847
    .local v13, "_arg12":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2848
    move-object v1, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {v0 .. v13}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v14

    .line 2849
    .local v14, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    move-object/from16 v14, p2

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2812
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/os/Bundle;
    .end local v8    # "_arg7":[Ljava/lang/String;
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":Z
    .end local v13    # "_arg12":I
    .end local v14    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_f6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2813
    .local v1, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2814
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;

    move-result-object v2

    .line 2815
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    const/4 v12, 0x1

    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2817
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 2803
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f7
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2804
    .restart local v1    # "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 2806
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 2777
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f8
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2779
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2781
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2783
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2785
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    .line 2787
    .local v5, "_arg4":Landroid/content/IIntentReceiver;
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 2789
    .local v6, "_arg5":Landroid/content/IntentFilter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2791
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2793
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2794
    .restart local v9    # "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2795
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v10

    .line 2796
    .local v10, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2797
    invoke-virtual {v15, v10, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2798
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 2755
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v6    # "_arg5":Landroid/content/IntentFilter;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_f9
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2757
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2759
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v3

    .line 2761
    .local v3, "_arg2":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentFilter;

    .line 2763
    .local v4, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2765
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2767
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2768
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v8

    .line 2770
    .local v8, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {v15, v8, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2772
    goto/16 :goto_0

    .line 2739
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/IIntentReceiver;
    .end local v4    # "_arg3":Landroid/content/IntentFilter;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fa
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2741
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2743
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2745
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2746
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2747
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v5

    .line 2748
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2750
    goto/16 :goto_0

    .line 2732
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fb
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 2733
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    goto/16 :goto_0

    .line 2703
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fc
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2705
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2707
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2709
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2711
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2713
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2715
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2717
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2719
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2721
    .restart local v9    # "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 2723
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 2724
    .local v11, "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v13

    .line 2726
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 2675
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v13    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_fd
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2677
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2679
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 2681
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2683
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 2685
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2687
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2689
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2691
    .restart local v8    # "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 2693
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 2694
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2695
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v11

    .line 2696
    .local v11, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2697
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    goto/16 :goto_0

    .line 2664
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v11    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_fe
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2666
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 2667
    .local v2, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2668
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 2669
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    goto/16 :goto_0

    .line 2650
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ff
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2652
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2654
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2656
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2657
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2658
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->logFgsApiStateChanged(IIII)V

    .line 2659
    goto/16 :goto_0

    .line 2638
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_100
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2640
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2642
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2643
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2644
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiEnd(III)V

    .line 2645
    goto/16 :goto_0

    .line 2626
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_101
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2628
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2630
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2631
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2632
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiBegin(III)V

    .line 2633
    goto/16 :goto_0

    .line 2612
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_102
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2614
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2616
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2617
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 2619
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2621
    goto/16 :goto_0

    .line 2600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_103
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2602
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2603
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2604
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v3

    .line 2605
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2606
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    goto/16 :goto_0

    .line 2588
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_104
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2590
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2591
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2592
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v3

    .line 2593
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2594
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2595
    goto/16 :goto_0

    .line 2575
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_105
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2577
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2579
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2580
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2581
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2582
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    goto/16 :goto_0

    .line 2562
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_106
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2564
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2566
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2567
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2568
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2569
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2570
    goto/16 :goto_0

    .line 2544
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_107
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2546
    .local v1, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2548
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2550
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2552
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 2553
    .local v5, "_arg4":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2554
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v6

    .line 2555
    .local v6, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2557
    goto :goto_0

    .line 2535
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[I
    .end local v6    # "_result":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_108
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2536
    .restart local v1    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2537
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2538
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    goto :goto_0

    .line 2520
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_109
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2522
    .restart local v1    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2524
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2526
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2527
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 2529
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    goto :goto_0

    .line 2510
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_10a
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2511
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2512
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2513
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2515
    nop

    .line 5736
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected refreshIntentCreatorToken_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 11183
    iget-object v0, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 11184
    return-void
.end method
