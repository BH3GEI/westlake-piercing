.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x38

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x24

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x25

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x6

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1a

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x17

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x19

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x46

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x28

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x13

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x3a

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x15

.field static final blacklist TRANSACTION_dumpProto:I = 0x4b

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x29

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x31

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xc

.field static final blacklist TRANSACTION_hideToast:I = 0x3c

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x14

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x51

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4d

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4e

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2e

.field static final blacklist TRANSACTION_onBiometricError:I = 0x30

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x2f

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1d

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x34

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x35

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1f

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x22

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x36

.field static final blacklist TRANSACTION_onWalletLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x41

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x10

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x49

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x26

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x45

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x40

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x44

.field static final blacklist TRANSACTION_runGcForTest:I = 0x43

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x32

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0x9

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x42

.field static final blacklist TRANSACTION_setQsTiles:I = 0x27

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x4f

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x23

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x33

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xa

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1b

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2d

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x21

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x39

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x50

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x20

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2a

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2b

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4c

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xb

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x12

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2c

.field static final blacklist TRANSACTION_showToast:I = 0x3b

.field static final blacklist TRANSACTION_showTransient:I = 0x37

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1c

.field static final blacklist TRANSACTION_startTracing:I = 0x3d

.field static final blacklist TRANSACTION_stopTracing:I = 0x3e

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3f

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x7

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xd

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0xf

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xe

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4a

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x48

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x47


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 444
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 445
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 453
    if-nez p0, :cond_0

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 457
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 458
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 460
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 469
    packed-switch p0, :pswitch_data_0

    .line 797
    const/4 v0, 0x0

    return-object v0

    .line 793
    :pswitch_0
    const-string v0, "moveFocusedTaskToDesktop"

    return-object v0

    .line 789
    :pswitch_1
    const-string/jumbo v0, "showMediaOutputSwitcher"

    return-object v0

    .line 785
    :pswitch_2
    const-string/jumbo v0, "setSplitscreenFocus"

    return-object v0

    .line 781
    :pswitch_3
    const-string v0, "moveFocusedTaskToStageSplit"

    return-object v0

    .line 777
    :pswitch_4
    const-string v0, "moveFocusedTaskToFullscreen"

    return-object v0

    .line 773
    :pswitch_5
    const-string/jumbo v0, "showRearDisplayDialog"

    return-object v0

    .line 769
    :pswitch_6
    const-string v0, "dumpProto"

    return-object v0

    .line 765
    :pswitch_7
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 761
    :pswitch_8
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 757
    :pswitch_9
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 753
    :pswitch_a
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 749
    :pswitch_b
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 745
    :pswitch_c
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 741
    :pswitch_d
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 737
    :pswitch_e
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    .line 733
    :pswitch_f
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    .line 729
    :pswitch_10
    const-string v0, "passThroughShellCommand"

    return-object v0

    .line 725
    :pswitch_11
    const-string/jumbo v0, "requestMagnificationConnection"

    return-object v0

    .line 721
    :pswitch_12
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 717
    :pswitch_13
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 713
    :pswitch_14
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 709
    :pswitch_15
    const-string v0, "hideToast"

    return-object v0

    .line 705
    :pswitch_16
    const-string/jumbo v0, "showToast"

    return-object v0

    .line 701
    :pswitch_17
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 697
    :pswitch_18
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 693
    :pswitch_19
    const-string v0, "abortTransient"

    return-object v0

    .line 689
    :pswitch_1a
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 685
    :pswitch_1b
    const-string v0, "onSystemBarAttributesChanged"

    return-object v0

    .line 681
    :pswitch_1c
    const-string v0, "onDisplayRemoveSystemDecorations"

    return-object v0

    .line 677
    :pswitch_1d
    const-string v0, "onDisplayAddSystemDecorations"

    return-object v0

    .line 673
    :pswitch_1e
    const-string/jumbo v0, "setUdfpsRefreshRateCallback"

    return-object v0

    .line 669
    :pswitch_1f
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 665
    :pswitch_20
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    .line 661
    :pswitch_21
    const-string v0, "onBiometricError"

    return-object v0

    .line 657
    :pswitch_22
    const-string v0, "onBiometricHelp"

    return-object v0

    .line 653
    :pswitch_23
    const-string v0, "onBiometricAuthenticated"

    return-object v0

    .line 649
    :pswitch_24
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 645
    :pswitch_25
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    .line 641
    :pswitch_26
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 637
    :pswitch_27
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 633
    :pswitch_28
    const-string v0, "handleSystemKey"

    return-object v0

    .line 629
    :pswitch_29
    const-string v0, "clickQsTile"

    return-object v0

    .line 625
    :pswitch_2a
    const-string/jumbo v0, "setQsTiles"

    return-object v0

    .line 621
    :pswitch_2b
    const-string/jumbo v0, "remQsTile"

    return-object v0

    .line 617
    :pswitch_2c
    const-string v0, "addQsTileToFrontOrEnd"

    return-object v0

    .line 613
    :pswitch_2d
    const-string v0, "addQsTile"

    return-object v0

    .line 609
    :pswitch_2e
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    .line 605
    :pswitch_2f
    const-string v0, "onProposedRotationChanged"

    return-object v0

    .line 601
    :pswitch_30
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    .line 597
    :pswitch_31
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    .line 593
    :pswitch_32
    const-string v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    .line 589
    :pswitch_33
    const-string v0, "onWalletLaunchGestureDetected"

    return-object v0

    .line 585
    :pswitch_34
    const-string v0, "onCameraLaunchGestureDetected"

    return-object v0

    .line 581
    :pswitch_35
    const-string/jumbo v0, "startAssist"

    return-object v0

    .line 577
    :pswitch_36
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    .line 573
    :pswitch_37
    const-string v0, "appTransitionFinished"

    return-object v0

    .line 569
    :pswitch_38
    const-string v0, "appTransitionStarting"

    return-object v0

    .line 565
    :pswitch_39
    const-string v0, "appTransitionCancelled"

    return-object v0

    .line 561
    :pswitch_3a
    const-string v0, "appTransitionPending"

    return-object v0

    .line 557
    :pswitch_3b
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    .line 553
    :pswitch_3c
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    .line 549
    :pswitch_3d
    const-string v0, "immersiveModeChanged"

    return-object v0

    .line 545
    :pswitch_3e
    const-string v0, "confirmImmersivePrompt"

    return-object v0

    .line 541
    :pswitch_3f
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    .line 537
    :pswitch_40
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    .line 533
    :pswitch_41
    const-string v0, "preloadRecentApps"

    return-object v0

    .line 529
    :pswitch_42
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    .line 525
    :pswitch_43
    const-string/jumbo v0, "toggleTaskbar"

    return-object v0

    .line 521
    :pswitch_44
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    .line 517
    :pswitch_45
    const-string v0, "hideRecentApps"

    return-object v0

    .line 513
    :pswitch_46
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    .line 509
    :pswitch_47
    const-string/jumbo v0, "setWindowState"

    return-object v0

    .line 505
    :pswitch_48
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 501
    :pswitch_49
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    .line 497
    :pswitch_4a
    const-string/jumbo v0, "toggleNotificationsPanel"

    return-object v0

    .line 493
    :pswitch_4b
    const-string v0, "animateCollapsePanels"

    return-object v0

    .line 489
    :pswitch_4c
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    .line 485
    :pswitch_4d
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    .line 481
    :pswitch_4e
    const-string v0, "disable"

    return-object v0

    .line 477
    :pswitch_4f
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 473
    :pswitch_50
    const-string/jumbo v0, "setIcon"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 464
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2842
    const/16 v0, 0x50

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 804
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "com.android.internal.statusbar.IStatusBar"

    .line 809
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_0

    const v1, 0xffffff

    if-gt v12, v1, :cond_0

    .line 810
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    :cond_0
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1

    .line 813
    move-object/from16 v9, p3

    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    return v15

    .line 816
    :cond_1
    move-object/from16 v9, p3

    packed-switch v12, :pswitch_data_0

    .line 1526
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1519
    :pswitch_0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    .line 1522
    goto/16 :goto_0

    .line 1509
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1511
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1512
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1513
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1514
    goto/16 :goto_0

    .line 1501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    :pswitch_2
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1502
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1503
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    .line 1504
    goto/16 :goto_0

    .line 1491
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1493
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1494
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1495
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    .line 1496
    goto/16 :goto_0

    .line 1483
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1484
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1485
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    .line 1486
    goto/16 :goto_0

    .line 1475
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1476
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    .line 1478
    goto/16 :goto_0

    .line 1465
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "_arg0":[Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1468
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1470
    goto/16 :goto_0

    .line 1457
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_7
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1458
    .local v1, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1460
    goto/16 :goto_0

    .line 1449
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_8
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1450
    .restart local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1452
    goto/16 :goto_0

    .line 1435
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_9
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1437
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1439
    .local v2, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 1441
    .local v3, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1442
    .local v4, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1444
    goto/16 :goto_0

    .line 1423
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_a
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1425
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1427
    .restart local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v3

    .line 1428
    .local v3, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1429
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1430
    goto/16 :goto_0

    .line 1415
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_b
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1418
    goto/16 :goto_0

    .line 1397
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1399
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1401
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1403
    .local v3, "_arg2":Ljava/lang/CharSequence;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1405
    .restart local v4    # "_arg3":Ljava/lang/CharSequence;
    sget-object v5, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 1407
    .local v5, "_arg4":Landroid/graphics/drawable/Icon;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v6

    .line 1408
    .local v6, "_arg5":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1409
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1410
    goto/16 :goto_0

    .line 1389
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    .end local v5    # "_arg4":Landroid/graphics/drawable/Icon;
    .end local v6    # "_arg5":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1390
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1392
    goto/16 :goto_0

    .line 1383
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_e
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1384
    goto/16 :goto_0

    .line 1374
    :pswitch_f
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1376
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1377
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1379
    goto/16 :goto_0

    .line 1364
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_10
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "_arg0":[Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1367
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1369
    goto/16 :goto_0

    .line 1356
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_11
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1357
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    .line 1359
    goto/16 :goto_0

    .line 1348
    .end local v1    # "_arg0":Z
    :pswitch_12
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1349
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1351
    goto/16 :goto_0

    .line 1342
    .end local v1    # "_arg0":Z
    :pswitch_13
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1343
    goto/16 :goto_0

    .line 1337
    :pswitch_14
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1338
    goto/16 :goto_0

    .line 1328
    :pswitch_15
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1331
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1333
    goto/16 :goto_0

    .line 1306
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_16
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1308
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1312
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1314
    .restart local v4    # "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1316
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1318
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v7

    .line 1320
    .local v7, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1321
    .local v8, "_arg7":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1323
    goto/16 :goto_0

    .line 1298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v8    # "_arg7":I
    :pswitch_17
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1299
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1301
    goto/16 :goto_0

    .line 1292
    .end local v1    # "_arg0":Z
    :pswitch_18
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1293
    goto/16 :goto_0

    .line 1283
    :pswitch_19
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1285
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1286
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    .line 1288
    goto/16 :goto_0

    .line 1271
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1a
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1273
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1275
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1276
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    .line 1278
    goto/16 :goto_0

    .line 1249
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_1b
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1253
    .restart local v2    # "_arg1":I
    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    .line 1255
    .local v3, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1257
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1259
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1261
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1263
    .local v7, "_arg6":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1264
    .local v8, "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1266
    goto/16 :goto_0

    .line 1241
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    :pswitch_1c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1242
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1243
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayRemoveSystemDecorations(I)V

    .line 1244
    goto/16 :goto_0

    .line 1233
    .end local v1    # "_arg0":I
    :pswitch_1d
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1234
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayAddSystemDecorations(I)V

    .line 1236
    goto/16 :goto_0

    .line 1225
    .end local v1    # "_arg0":I
    :pswitch_1e
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1226
    .local v1, "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1228
    goto/16 :goto_0

    .line 1217
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    :pswitch_1f
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1218
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1220
    goto/16 :goto_0

    .line 1209
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_20
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1210
    .local v1, "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1212
    goto/16 :goto_0

    .line 1197
    .end local v1    # "_arg0":J
    :pswitch_21
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1199
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1201
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1202
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1204
    goto/16 :goto_0

    .line 1187
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_22
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1189
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1192
    goto/16 :goto_0

    .line 1179
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1180
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1182
    goto/16 :goto_0

    .line 1155
    .end local v1    # "_arg0":I
    :pswitch_24
    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1157
    .local v1, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1159
    .local v2, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1161
    .local v3, "_arg2":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1163
    .restart local v4    # "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1165
    .local v5, "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1167
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1169
    .local v7, "_arg6":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1171
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1172
    .local v10, "_arg8":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1174
    goto/16 :goto_0

    .line 1145
    .end local v1    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v2    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":J
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":J
    :pswitch_25
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1147
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 1150
    goto/16 :goto_0

    .line 1139
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1140
    goto/16 :goto_0

    .line 1132
    :pswitch_27
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1133
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1135
    goto/16 :goto_0

    .line 1124
    .end local v1    # "_arg0":Z
    :pswitch_28
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1125
    .local v1, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1127
    goto/16 :goto_0

    .line 1116
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_29
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1117
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1119
    goto/16 :goto_0

    .line 1108
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2a
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    .line 1111
    goto/16 :goto_0

    .line 1100
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_2b
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1101
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1103
    goto/16 :goto_0

    .line 1090
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1092
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1093
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    .line 1095
    goto/16 :goto_0

    .line 1082
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    :pswitch_2d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1083
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1085
    goto/16 :goto_0

    .line 1074
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2e
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1075
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1077
    goto/16 :goto_0

    .line 1064
    .end local v1    # "_arg0":Z
    :pswitch_2f
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1066
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1067
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1069
    goto/16 :goto_0

    .line 1058
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_30
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 1059
    goto/16 :goto_0

    .line 1053
    :pswitch_31
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 1054
    goto/16 :goto_0

    .line 1048
    :pswitch_32
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 1049
    goto/16 :goto_0

    .line 1043
    :pswitch_33
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWalletLaunchGestureDetected()V

    .line 1044
    goto/16 :goto_0

    .line 1036
    :pswitch_34
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 1039
    goto/16 :goto_0

    .line 1028
    .end local v1    # "_arg0":I
    :pswitch_35
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1029
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1031
    goto/16 :goto_0

    .line 1022
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_36
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 1023
    goto/16 :goto_0

    .line 1015
    :pswitch_37
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1016
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 1018
    goto/16 :goto_0

    .line 1003
    .end local v1    # "_arg0":I
    :pswitch_38
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1005
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1007
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1008
    .local v4, "_arg2":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 1010
    goto/16 :goto_0

    .line 995
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    :pswitch_39
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 996
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 998
    goto/16 :goto_0

    .line 987
    .end local v1    # "_arg0":I
    :pswitch_3a
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 990
    goto/16 :goto_0

    .line 979
    .end local v1    # "_arg0":I
    :pswitch_3b
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 980
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 982
    goto/16 :goto_0

    .line 973
    .end local v1    # "_arg0":I
    :pswitch_3c
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 974
    goto/16 :goto_0

    .line 964
    :pswitch_3d
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 966
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 967
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZ)V

    .line 969
    goto/16 :goto_0

    .line 958
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_3e
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    .line 959
    goto/16 :goto_0

    .line 951
    :pswitch_3f
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 952
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 954
    goto/16 :goto_0

    .line 945
    .end local v1    # "_arg0":I
    :pswitch_40
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 946
    goto/16 :goto_0

    .line 940
    :pswitch_41
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 941
    goto/16 :goto_0

    .line 935
    :pswitch_42
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 936
    goto/16 :goto_0

    .line 930
    :pswitch_43
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    .line 931
    goto/16 :goto_0

    .line 925
    :pswitch_44
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 926
    goto/16 :goto_0

    .line 916
    :pswitch_45
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 918
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 919
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 921
    goto/16 :goto_0

    .line 908
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_46
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 909
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 911
    goto/16 :goto_0

    .line 896
    .end local v1    # "_arg0":Z
    :pswitch_47
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 900
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 901
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 903
    goto :goto_0

    .line 882
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_48
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 884
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 886
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 888
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 889
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(IIIZ)V

    .line 891
    goto :goto_0

    .line 874
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_49
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 875
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 877
    goto :goto_0

    .line 868
    .end local v1    # "_arg0":I
    :pswitch_4a
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    .line 869
    goto :goto_0

    .line 863
    :pswitch_4b
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 864
    goto :goto_0

    .line 856
    :pswitch_4c
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 859
    goto :goto_0

    .line 850
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 851
    goto :goto_0

    .line 839
    :pswitch_4e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 844
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 846
    goto :goto_0

    .line 831
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4f
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 834
    goto :goto_0

    .line 821
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_50
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 824
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 826
    nop

    .line 1529
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_0
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
