.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addAppTask:I = 0x29

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x4d

.field static final TRANSACTION_canBeUniversalResizeable:I = 0x1d

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x45

.field static final TRANSACTION_clearLaunchParamsForPackages:I = 0x58

.field static final TRANSACTION_detachNavigationBarFromApp:I = 0x5b

.field static final TRANSACTION_finishVoiceTask:I = 0x28

.field static final TRANSACTION_focusTopTask:I = 0x21

.field static final TRANSACTION_getActivityClientController:I = 0x11

.field static final TRANSACTION_getAllRootTaskInfos:I = 0x35

.field static final TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x37

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final TRANSACTION_getAppTasks:I = 0x25

.field static final TRANSACTION_getAssistContextExtras:I = 0x3a

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x44

.field static final TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x12

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x48

.field static final TRANSACTION_getLockTaskModeState:I = 0x24

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x56

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x54

.field static final TRANSACTION_getRecentTasks:I = 0x1a

.field static final TRANSACTION_getRootTaskInfo:I = 0x36

.field static final TRANSACTION_getRootTaskInfoOnDisplay:I = 0x38

.field static final TRANSACTION_getTaskBounds:I = 0x20

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final TRANSACTION_getTaskSnapshot:I = 0x46

.field static final TRANSACTION_getTasks:I = 0x18

.field static final TRANSACTION_getVoiceInteractorPackageName:I = 0x9

.field static final TRANSACTION_getWindowOrganizerController:I = 0x41

.field static final TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xf

.field static final TRANSACTION_isAssistDataAllowed:I = 0x3d

.field static final TRANSACTION_isInLockTaskMode:I = 0x23

.field static final TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final TRANSACTION_keyguardGoingAway:I = 0x3f

.field static final TRANSACTION_moveRootTaskToDisplay:I = 0x31

.field static final TRANSACTION_moveTaskToFront:I = 0x19

.field static final TRANSACTION_moveTaskToRootTask:I = 0x32

.field static final TRANSACTION_onPictureInPictureUiStateChanged:I = 0x5a

.field static final TRANSACTION_onSplashScreenViewCopyFinished:I = 0x59

.field static final TRANSACTION_preloadRecentsActivity:I = 0xe

.field static final TRANSACTION_registerBackgroundActivityStartCallback:I = 0x5e

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4b

.field static final TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4c

.field static final TRANSACTION_registerScreenCaptureObserver:I = 0x60

.field static final TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final TRANSACTION_removeRootTasksInWindowingModes:I = 0x33

.field static final TRANSACTION_removeRootTasksWithActivityTypes:I = 0x34

.field static final TRANSACTION_removeTask:I = 0x16

.field static final TRANSACTION_reportAssistContextExtras:I = 0x1c

.field static final TRANSACTION_requestAssistContextExtras:I = 0x3b

.field static final TRANSACTION_requestAssistDataForTask:I = 0x3e

.field static final TRANSACTION_requestAutofillData:I = 0x3c

.field static final TRANSACTION_requestOpenInBrowserEducation:I = 0x43

.field static final TRANSACTION_resizeTask:I = 0x30

.field static final TRANSACTION_resumeAppSwitches:I = 0x51

.field static final TRANSACTION_setActivityController:I = 0x52

.field static final TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final TRANSACTION_setFocusedTask:I = 0x14

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x13

.field static final TRANSACTION_setLockScreenShown:I = 0x39

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x57

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x55

.field static final TRANSACTION_setPersistentVrThread:I = 0x4f

.field static final TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5c

.field static final TRANSACTION_setTaskIsPerceptible:I = 0x15

.field static final TRANSACTION_setTaskResizeable:I = 0x2f

.field static final TRANSACTION_setVoiceKeepAwake:I = 0x53

.field static final TRANSACTION_setVrThread:I = 0x4e

.field static final TRANSACTION_startActivities:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x1

.field static final TRANSACTION_startActivityAndWait:I = 0x6

.field static final TRANSACTION_startActivityAsCaller:I = 0xd

.field static final TRANSACTION_startActivityAsUser:I = 0x3

.field static final TRANSACTION_startActivityFromGameSession:I = 0xb

.field static final TRANSACTION_startActivityFromRecents:I = 0xc

.field static final TRANSACTION_startActivityIntentSender:I = 0x5

.field static final TRANSACTION_startActivityWithConfig:I = 0x7

.field static final TRANSACTION_startAssistantActivity:I = 0xa

.field static final TRANSACTION_startBackNavigation:I = 0x5d

.field static final TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final TRANSACTION_startVoiceActivity:I = 0x8

.field static final TRANSACTION_stopAppSwitches:I = 0x50

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x42

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0x40

.field static final TRANSACTION_takeTaskSnapshot:I = 0x47

.field static final TRANSACTION_unhandledBack:I = 0x10

.field static final TRANSACTION_unregisterBackgroundActivityStartCallback:I = 0x5f

.field static final TRANSACTION_unregisterScreenCaptureObserver:I = 0x61

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final TRANSACTION_updateConfiguration:I = 0x49

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x4a

.field static final TRANSACTION_updateLockTaskPackages:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 500
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 501
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 509
    if-nez p0, :cond_0

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 512
    :cond_0
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 513
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_1

    .line 514
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    .line 516
    :cond_1
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 525
    packed-switch p0, :pswitch_data_0

    .line 917
    const/4 v0, 0x0

    return-object v0

    .line 913
    :pswitch_0
    const-string/jumbo v0, "unregisterScreenCaptureObserver"

    return-object v0

    .line 909
    :pswitch_1
    const-string/jumbo v0, "registerScreenCaptureObserver"

    return-object v0

    .line 905
    :pswitch_2
    const-string/jumbo v0, "unregisterBackgroundActivityStartCallback"

    return-object v0

    .line 901
    :pswitch_3
    const-string/jumbo v0, "registerBackgroundActivityStartCallback"

    return-object v0

    .line 897
    :pswitch_4
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    .line 893
    :pswitch_5
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    .line 889
    :pswitch_6
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 885
    :pswitch_7
    const-string/jumbo v0, "onPictureInPictureUiStateChanged"

    return-object v0

    .line 881
    :pswitch_8
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    .line 877
    :pswitch_9
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    .line 873
    :pswitch_a
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    .line 869
    :pswitch_b
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    .line 865
    :pswitch_c
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 861
    :pswitch_d
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    .line 857
    :pswitch_e
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    .line 853
    :pswitch_f
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 849
    :pswitch_10
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 845
    :pswitch_11
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 841
    :pswitch_12
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 837
    :pswitch_13
    const-string/jumbo v0, "setVrThread"

    return-object v0

    .line 833
    :pswitch_14
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    .line 829
    :pswitch_15
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    .line 825
    :pswitch_16
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    .line 821
    :pswitch_17
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    .line 817
    :pswitch_18
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 813
    :pswitch_19
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    .line 809
    :pswitch_1a
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    .line 805
    :pswitch_1b
    const-string/jumbo v0, "getTaskSnapshot"

    return-object v0

    .line 801
    :pswitch_1c
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 797
    :pswitch_1d
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    .line 793
    :pswitch_1e
    const-string/jumbo v0, "requestOpenInBrowserEducation"

    return-object v0

    .line 789
    :pswitch_1f
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    .line 785
    :pswitch_20
    const-string/jumbo v0, "getWindowOrganizerController"

    return-object v0

    .line 781
    :pswitch_21
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 777
    :pswitch_22
    const-string/jumbo v0, "keyguardGoingAway"

    return-object v0

    .line 773
    :pswitch_23
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    .line 769
    :pswitch_24
    const-string/jumbo v0, "isAssistDataAllowed"

    return-object v0

    .line 765
    :pswitch_25
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    .line 761
    :pswitch_26
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 757
    :pswitch_27
    const-string v0, "getAssistContextExtras"

    return-object v0

    .line 753
    :pswitch_28
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    .line 749
    :pswitch_29
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    .line 745
    :pswitch_2a
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    .line 741
    :pswitch_2b
    const-string v0, "getRootTaskInfo"

    return-object v0

    .line 737
    :pswitch_2c
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 733
    :pswitch_2d
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    .line 729
    :pswitch_2e
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    .line 725
    :pswitch_2f
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 721
    :pswitch_30
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    .line 717
    :pswitch_31
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 713
    :pswitch_32
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 709
    :pswitch_33
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 705
    :pswitch_34
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 701
    :pswitch_35
    const-string/jumbo v0, "getTaskDescriptionIcon"

    return-object v0

    .line 697
    :pswitch_36
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    .line 693
    :pswitch_37
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    .line 689
    :pswitch_38
    const-string v0, "addAppTask"

    return-object v0

    .line 685
    :pswitch_39
    const-string v0, "finishVoiceTask"

    return-object v0

    .line 681
    :pswitch_3a
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    .line 677
    :pswitch_3b
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 673
    :pswitch_3c
    const-string v0, "getAppTasks"

    return-object v0

    .line 669
    :pswitch_3d
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 665
    :pswitch_3e
    const-string/jumbo v0, "isInLockTaskMode"

    return-object v0

    .line 661
    :pswitch_3f
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 657
    :pswitch_40
    const-string v0, "focusTopTask"

    return-object v0

    .line 653
    :pswitch_41
    const-string/jumbo v0, "getTaskBounds"

    return-object v0

    .line 649
    :pswitch_42
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 645
    :pswitch_43
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 641
    :pswitch_44
    const-string v0, "canBeUniversalResizeable"

    return-object v0

    .line 637
    :pswitch_45
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    .line 633
    :pswitch_46
    const-string/jumbo v0, "isTopActivityImmersive"

    return-object v0

    .line 629
    :pswitch_47
    const-string v0, "getRecentTasks"

    return-object v0

    .line 625
    :pswitch_48
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 621
    :pswitch_49
    const-string/jumbo v0, "getTasks"

    return-object v0

    .line 617
    :pswitch_4a
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    .line 613
    :pswitch_4b
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 609
    :pswitch_4c
    const-string/jumbo v0, "setTaskIsPerceptible"

    return-object v0

    .line 605
    :pswitch_4d
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    .line 601
    :pswitch_4e
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    .line 597
    :pswitch_4f
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    .line 593
    :pswitch_50
    const-string v0, "getActivityClientController"

    return-object v0

    .line 589
    :pswitch_51
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 585
    :pswitch_52
    const-string/jumbo v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    .line 581
    :pswitch_53
    const-string/jumbo v0, "preloadRecentsActivity"

    return-object v0

    .line 577
    :pswitch_54
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    .line 573
    :pswitch_55
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 569
    :pswitch_56
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    .line 565
    :pswitch_57
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 561
    :pswitch_58
    const-string/jumbo v0, "getVoiceInteractorPackageName"

    return-object v0

    .line 557
    :pswitch_59
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 553
    :pswitch_5a
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    .line 549
    :pswitch_5b
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    .line 545
    :pswitch_5c
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    .line 541
    :pswitch_5d
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    .line 537
    :pswitch_5e
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 533
    :pswitch_5f
    const-string/jumbo v0, "startActivities"

    return-object v0

    .line 529
    :pswitch_60
    const-string/jumbo v0, "startActivity"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 520
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 4106
    const/16 v0, 0x60

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 924
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v7, "android.app.IActivityTaskManager"

    .line 929
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt v13, v8, :cond_0

    const v1, 0xffffff

    if-gt v13, v1, :cond_0

    .line 930
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    :cond_0
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1

    .line 933
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    return v8

    .line 936
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 2122
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2112
    :pswitch_0
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2114
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v2

    .line 2115
    .local v2, "_arg1":Landroid/app/IScreenCaptureObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2116
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2117
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2101
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    :pswitch_1
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2103
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v2

    .line 2104
    .restart local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2105
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2106
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2092
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    :pswitch_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2093
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2094
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterBackgroundActivityStartCallback(Landroid/os/IBinder;)V

    .line 2095
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2082
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2083
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2084
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z

    move-result v2

    .line 2085
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2086
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2087
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2070
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 2072
    .local v1, "_arg0":Landroid/os/RemoteCallback;
    sget-object v2, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/BackAnimationAdapter;

    .line 2073
    .local v2, "_arg1":Landroid/window/BackAnimationAdapter;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2074
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v3

    .line 2075
    .local v3, "_result":Landroid/window/BackNavigationInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2077
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2061
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    .end local v2    # "_arg1":Landroid/window/BackAnimationAdapter;
    .end local v3    # "_result":Landroid/window/BackNavigationInfo;
    :pswitch_5
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2062
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2063
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 2064
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2065
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2052
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_6
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2053
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2054
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 2055
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2043
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    sget-object v1, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    .line 2044
    .local v1, "_arg0":Landroid/app/PictureInPictureUiState;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2045
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2046
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2032
    .end local v1    # "_arg0":Landroid/app/PictureInPictureUiState;
    :pswitch_8
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2034
    .local v1, "_arg0":I
    sget-object v2, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 2035
    .local v2, "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2036
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 2037
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2023
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    :pswitch_9
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2024
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2025
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 2026
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2012
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2015
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2017
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 2002
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_b
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2004
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v2

    .line 2005
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2006
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2007
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1991
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1993
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1994
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1995
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1996
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1981
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1982
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1983
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 1984
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1970
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 1972
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1973
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1974
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 1975
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1976
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1959
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v2    # "_arg1":Z
    :pswitch_f
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 1961
    .local v1, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1962
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1963
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1964
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1965
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1952
    .end local v1    # "_arg0":Landroid/app/IActivityController;
    .end local v2    # "_arg1":Z
    :pswitch_10
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 1953
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1946
    :pswitch_11
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 1947
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1938
    :pswitch_12
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1939
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 1941
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1929
    .end local v1    # "_arg0":I
    :pswitch_13
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1930
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1931
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 1932
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1920
    .end local v1    # "_arg0":I
    :pswitch_14
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1921
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1922
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 1923
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1909
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_15
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1911
    .local v1, "_arg0":I
    sget-object v2, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition;

    .line 1912
    .local v2, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1913
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 1914
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1896
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_16
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1898
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 1900
    .local v2, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1901
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1902
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 1903
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1885
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1887
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1888
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1889
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 1890
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1875
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_18
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 1876
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 1878
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1880
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1867
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_result":Z
    :pswitch_19
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v1

    .line 1868
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1856
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1858
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1859
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1860
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 1861
    .local v3, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1863
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1844
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_1b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1846
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1847
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1848
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 1849
    .restart local v3    # "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1851
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1835
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_1c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1836
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1837
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 1838
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1827
    .end local v1    # "_arg0":I
    :pswitch_1d
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 1828
    .local v1, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1830
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1819
    .end local v1    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_1e
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1820
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1821
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V

    .line 1822
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1811
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_1f
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v1

    .line 1812
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1814
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1804
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v1

    .line 1805
    .local v1, "_result":Landroid/window/IWindowOrganizerController;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1807
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1796
    .end local v1    # "_result":Landroid/window/IWindowOrganizerController;
    :pswitch_21
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1797
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1798
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 1799
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1787
    .end local v1    # "_arg0":Z
    :pswitch_22
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1788
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 1790
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1769
    .end local v1    # "_arg0":I
    :pswitch_23
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1771
    .local v1, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1773
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1775
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1777
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1778
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1779
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1780
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1782
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1761
    .end local v1    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :pswitch_24
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowed()Z

    move-result v1

    .line 1762
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1764
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1746
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1748
    .local v1, "_arg0":Landroid/app/IAssistDataReceiver;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1750
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1752
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1753
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v5

    .line 1755
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1757
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1726
    .end local v1    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_26
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1728
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 1730
    .local v2, "_arg1":Landroid/app/IAssistDataReceiver;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1732
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1734
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1736
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1737
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1738
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v9

    .line 1739
    .local v9, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1741
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1716
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v9    # "_result":Z
    :pswitch_27
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1717
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1718
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1719
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1721
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1705
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_28
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1707
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1708
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 1710
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1691
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_29
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1693
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1695
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1696
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v4

    .line 1698
    .local v4, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v15, v4, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1700
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1681
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_2a
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1682
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1683
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v2

    .line 1684
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1686
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1669
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_2b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1671
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1672
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1673
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    .line 1674
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1676
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1661
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_2c
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    .line 1662
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1664
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1653
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_2d
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1654
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 1656
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1644
    .end local v1    # "_arg0":[I
    :pswitch_2e
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1645
    .restart local v1    # "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 1647
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1631
    .end local v1    # "_arg0":[I
    :pswitch_2f
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1633
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1635
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1636
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1638
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1620
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_30
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1622
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1623
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1625
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1607
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_31
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1609
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1611
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1612
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 1614
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1596
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_32
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1598
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1599
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1600
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1601
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1587
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_33
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1588
    .local v1, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1589
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1590
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1578
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_34
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1579
    .restart local v1    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1580
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1581
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1566
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_35
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1569
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1571
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1573
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1558
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_36
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1559
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1561
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1550
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_37
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1551
    .local v1, "_result":Landroid/graphics/Point;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1553
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1535
    .end local v1    # "_result":Landroid/graphics/Point;
    :pswitch_38
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1537
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1539
    .local v2, "_arg1":Landroid/content/Intent;
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .line 1541
    .local v3, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1542
    .local v4, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v5

    .line 1544
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1526
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    .end local v5    # "_result":I
    :pswitch_39
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 1527
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1529
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1519
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_3a
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1520
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1511
    :pswitch_3b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1512
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1513
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1514
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1501
    .end local v1    # "_arg0":I
    :pswitch_3c
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1502
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1503
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1504
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1506
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1493
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_3d
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v1

    .line 1494
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1486
    .end local v1    # "_result":I
    :pswitch_3e
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v1

    .line 1487
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1476
    .end local v1    # "_result":Z
    :pswitch_3f
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1478
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1467
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_40
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1468
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->focusTopTask(I)V

    .line 1470
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1457
    .end local v1    # "_arg0":I
    :pswitch_41
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1458
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1460
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1462
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1449
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_42
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    .line 1450
    .local v1, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1452
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1441
    .end local v1    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_43
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1442
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1444
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1431
    .end local v1    # "_arg0":I
    :pswitch_44
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1432
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 1434
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1436
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1414
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_result":Z
    :pswitch_45
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1416
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1418
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 1420
    .local v3, "_arg2":Landroid/app/assist/AssistStructure;
    sget-object v4, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistContent;

    .line 1422
    .local v4, "_arg3":Landroid/app/assist/AssistContent;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1423
    .local v5, "_arg4":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1425
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1406
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/app/assist/AssistStructure;
    .end local v4    # "_arg3":Landroid/app/assist/AssistContent;
    .end local v5    # "_arg4":Landroid/net/Uri;
    :pswitch_46
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v1

    .line 1407
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1409
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1393
    .end local v1    # "_result":Z
    :pswitch_47
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1395
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1397
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1398
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1400
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    invoke-virtual {v15, v4, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1402
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1376
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_48
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1378
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1380
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1382
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1384
    .local v4, "_arg3":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1385
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1387
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1360
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_49
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1362
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1364
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1366
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1367
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZI)Ljava/util/List;

    move-result-object v5

    .line 1369
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {v15, v5, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1371
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1353
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_4a
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1354
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1344
    :pswitch_4b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1345
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v2

    .line 1347
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1349
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1332
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1334
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1335
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskIsPerceptible(IZ)Z

    move-result v3

    .line 1337
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1339
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1323
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1326
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1314
    .end local v1    # "_arg0":I
    :pswitch_4e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1315
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1317
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1306
    .end local v1    # "_arg0":I
    :pswitch_4f
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v1

    .line 1307
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1299
    .end local v1    # "_result":I
    :pswitch_50
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    .line 1300
    .local v1, "_result":Landroid/app/IActivityClientController;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1302
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1293
    .end local v1    # "_result":Landroid/app/IActivityClientController;
    :pswitch_51
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1294
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1278
    :pswitch_52
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1280
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1282
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1284
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1285
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    .line 1287
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1289
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1269
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_53
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1270
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->preloadRecentsActivity(Landroid/content/Intent;)V

    .line 1272
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    move-object/from16 v16, v7

    goto/16 :goto_0

    .line 1237
    .end local v1    # "_arg0":Landroid/content/Intent;
    :pswitch_54
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1239
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1243
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1247
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1249
    .local v6, "_arg5":Ljava/lang/String;
    move-object v9, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1251
    .local v7, "_arg6":I
    move v10, v8

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1253
    .local v8, "_arg7":I
    sget-object v11, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ProfilerInfo;

    .line 1255
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 1257
    .local v12, "_arg9":Landroid/os/Bundle;
    move-object/from16 v16, v9

    move-object v9, v11

    .end local v11    # "_arg8":Landroid/app/ProfilerInfo;
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1259
    .local v11, "_arg10":Z
    move/from16 v17, v10

    move-object v10, v12

    .end local v12    # "_arg9":Landroid/os/Bundle;
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1260
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v13

    .line 1262
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    goto/16 :goto_0

    .line 1225
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v10    # "_arg9":Landroid/os/Bundle;
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_55
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1227
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1228
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v3

    .line 1230
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    goto/16 :goto_0

    .line 1201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1203
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1209
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1211
    .local v5, "_arg4":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1213
    .local v6, "_arg5":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1215
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1216
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v9

    .line 1218
    .local v9, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    goto/16 :goto_0

    .line 1177
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/Intent;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_57
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1181
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1185
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 1187
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1189
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1191
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1192
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v9

    .line 1194
    .restart local v9    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    goto/16 :goto_0

    .line 1167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_58
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1168
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 1170
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    goto/16 :goto_0

    .line 1135
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_59
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1141
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1143
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1145
    .restart local v5    # "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1147
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v7

    .line 1149
    .local v7, "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v8

    .line 1151
    .local v8, "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1153
    .local v9, "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1155
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1157
    .local v11, "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1158
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 1160
    .restart local v13    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    goto/16 :goto_0

    .line 1103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1105
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1111
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1115
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1117
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1119
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1121
    .restart local v9    # "_arg8":I
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/res/Configuration;

    .line 1123
    .local v10, "_arg9":Landroid/content/res/Configuration;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1125
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1126
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v13

    .line 1128
    .restart local v13    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    goto/16 :goto_0

    .line 1071
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/content/res/Configuration;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1073
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1079
    .restart local v4    # "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1081
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1083
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1085
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1087
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1089
    .restart local v9    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1091
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1093
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1094
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v13

    .line 1096
    .local v13, "_result":Landroid/app/WaitResult;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v0, 0x1

    invoke-virtual {v15, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1098
    goto/16 :goto_0

    .line 1041
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":Landroid/app/WaitResult;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1043
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1045
    .local v2, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1047
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1049
    .restart local v4    # "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1051
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1053
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1055
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1057
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1059
    .restart local v9    # "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1061
    .local v10, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1062
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v12

    .line 1064
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    goto/16 :goto_0

    .line 1027
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/IIntentSender;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1029
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1031
    .local v2, "_arg1":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1032
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v4

    .line 1034
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    goto/16 :goto_0

    .line 995
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 997
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1003
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1005
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1007
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1009
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1011
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1013
    .restart local v9    # "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1015
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1017
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1018
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 1020
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    goto/16 :goto_0

    .line 971
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 973
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 975
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 977
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    .line 979
    .local v4, "_arg3":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 983
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 985
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 986
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v9

    .line 988
    .local v9, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    goto :goto_0

    .line 941
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Landroid/content/Intent;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 943
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 945
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 947
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 949
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 951
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 953
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 955
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 957
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 959
    .local v9, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 961
    .restart local v10    # "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 962
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v12

    .line 964
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    nop

    .line 2125
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :goto_0
    const/16 v17, 0x1

    return v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
