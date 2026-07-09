.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x20

.field static final blacklist TRANSACTION_addShellRoot:I = 0x15

.field static final blacklist TRANSACTION_addToSurfaceSyncGroup:I = 0x8e

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x12

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x7c

.field static final blacklist TRANSACTION_attachWindowContextToDisplayContent:I = 0x7e

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x7d

.field static final blacklist TRANSACTION_captureDisplay:I = 0x8c

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x8

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4b

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x23

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x53

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x54

.field static final blacklist TRANSACTION_detachWindowContext:I = 0x7f

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1a

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x1f

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x19

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1c

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x38

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x35

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x24

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x25

.field static final blacklist TRANSACTION_getApplicationLaunchKeyboardShortcuts:I = 0x9a

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x6

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x28

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x55

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x2f

.field static final blacklist TRANSACTION_getDisplayIdByUniqueId:I = 0xb

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x69

.field static final blacklist TRANSACTION_getDisplayUserRotation:I = 0x30

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x4d

.field static final blacklist TRANSACTION_getIgnoreOrientationRequest:I = 0x9b

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x84

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0x9

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x5

.field static final blacklist TRANSACTION_getLetterboxBackgroundColorInArgb:I = 0x8a

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x73

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x34

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x63

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x51

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x79

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4c

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x72

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x61

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x48

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x44

.field static final blacklist TRANSACTION_holdLock:I = 0x78

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x3a

.field static final blacklist TRANSACTION_isGlobalKey:I = 0x8d

.field static final blacklist TRANSACTION_isInTouchMode:I = 0x2b

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1d

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1e

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x6d

.field static final blacklist TRANSACTION_isLetterboxBackgroundMultiColored:I = 0x8b

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x37

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x4a

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x83

.field static final blacklist TRANSACTION_isTransitionTraceEnabled:I = 0x60

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x11

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x5d

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x49

.field static final blacklist TRANSACTION_markSurfaceSyncGroupReady:I = 0x8f

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x6f

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x3e

.field static final blacklist TRANSACTION_notifyScreenshotListeners:I = 0x90

.field static final blacklist TRANSACTION_onNotificationShadeExpanded:I = 0x6b

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x17

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x18

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2e

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x81

.field static final blacklist TRANSACTION_registerDecorViewGestureListener:I = 0x92

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x56

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x58

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x4e

.field static final blacklist TRANSACTION_registerProposedRotationListener:I = 0x33

.field static final blacklist TRANSACTION_registerScreenRecordingCallback:I = 0x96

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x52

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x41

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x86

.field static final blacklist TRANSACTION_registerTrustedPresentationListener:I = 0x94

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x3f

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x21

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x32

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x13

.field static final blacklist TRANSACTION_reparentWindowContextToDisplayArea:I = 0x80

.field static final blacklist TRANSACTION_replaceContentOnDisplay:I = 0x91

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x4f

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x43

.field static final blacklist TRANSACTION_requestImeKeyboardShortcuts:I = 0x50

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x77

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5c

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x3d

.field static final blacklist TRANSACTION_setActiveTransactionTracing:I = 0x76

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x26

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x27

.field static final blacklist TRANSACTION_setConfigurationChangeSettingsForUser:I = 0xe

.field static final blacklist TRANSACTION_setDisplayChangeWindowController:I = 0x14

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x7b

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x6a

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x70

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0x10

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x3b

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0xf

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x7

.field static final blacklist TRANSACTION_setGlobalDragListener:I = 0x98

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3c

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x29

.field static final blacklist TRANSACTION_setInTouchModeOnAllDisplays:I = 0x2a

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x6e

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x75

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x47

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x89

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x45

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x64

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x16

.field static final blacklist TRANSACTION_setShouldShowSystemDecors:I = 0x68

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x66

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2d

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x22

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x85

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x62

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x67

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x65

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x74

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2c

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x88

.field static final blacklist TRANSACTION_startTransitionTrace:I = 0x5e

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5a

.field static final blacklist TRANSACTION_stopTransitionTrace:I = 0x5f

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5b

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x6c

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x39

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x36

.field static final blacklist TRANSACTION_transferTouchGesture:I = 0x99

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x82

.field static final blacklist TRANSACTION_unregisterDecorViewGestureListener:I = 0x93

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x57

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x59

.field static final blacklist TRANSACTION_unregisterScreenRecordingCallback:I = 0x97

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x42

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x87

.field static final blacklist TRANSACTION_unregisterTrustedPresentationListener:I = 0x95

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x40

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibleTypes:I = 0x71

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x46

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x7a

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x31


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1184
    nop

    .line 1185
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/IWindowManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1186
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1174
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1175
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1176
    if-eqz p1, :cond_0

    .line 1179
    iput-object p1, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1180
    return-void

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1193
    if-nez p0, :cond_0

    .line 1194
    const/4 v0, 0x0

    return-object v0

    .line 1196
    :cond_0
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1197
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 1198
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1200
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1209
    packed-switch p0, :pswitch_data_0

    .line 1833
    const/4 v0, 0x0

    return-object v0

    .line 1829
    :pswitch_0
    const-string v0, "getIgnoreOrientationRequest"

    return-object v0

    .line 1825
    :pswitch_1
    const-string v0, "getApplicationLaunchKeyboardShortcuts"

    return-object v0

    .line 1821
    :pswitch_2
    const-string/jumbo v0, "transferTouchGesture"

    return-object v0

    .line 1817
    :pswitch_3
    const-string/jumbo v0, "setGlobalDragListener"

    return-object v0

    .line 1813
    :pswitch_4
    const-string/jumbo v0, "unregisterScreenRecordingCallback"

    return-object v0

    .line 1809
    :pswitch_5
    const-string/jumbo v0, "registerScreenRecordingCallback"

    return-object v0

    .line 1805
    :pswitch_6
    const-string/jumbo v0, "unregisterTrustedPresentationListener"

    return-object v0

    .line 1801
    :pswitch_7
    const-string/jumbo v0, "registerTrustedPresentationListener"

    return-object v0

    .line 1797
    :pswitch_8
    const-string/jumbo v0, "unregisterDecorViewGestureListener"

    return-object v0

    .line 1793
    :pswitch_9
    const-string/jumbo v0, "registerDecorViewGestureListener"

    return-object v0

    .line 1789
    :pswitch_a
    const-string/jumbo v0, "replaceContentOnDisplay"

    return-object v0

    .line 1785
    :pswitch_b
    const-string v0, "notifyScreenshotListeners"

    return-object v0

    .line 1781
    :pswitch_c
    const-string v0, "markSurfaceSyncGroupReady"

    return-object v0

    .line 1777
    :pswitch_d
    const-string v0, "addToSurfaceSyncGroup"

    return-object v0

    .line 1773
    :pswitch_e
    const-string v0, "isGlobalKey"

    return-object v0

    .line 1769
    :pswitch_f
    const-string v0, "captureDisplay"

    return-object v0

    .line 1765
    :pswitch_10
    const-string v0, "isLetterboxBackgroundMultiColored"

    return-object v0

    .line 1761
    :pswitch_11
    const-string v0, "getLetterboxBackgroundColorInArgb"

    return-object v0

    .line 1757
    :pswitch_12
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1753
    :pswitch_13
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1749
    :pswitch_14
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1745
    :pswitch_15
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1741
    :pswitch_16
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1737
    :pswitch_17
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1733
    :pswitch_18
    const-string v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1729
    :pswitch_19
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1725
    :pswitch_1a
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1721
    :pswitch_1b
    const-string/jumbo v0, "reparentWindowContextToDisplayArea"

    return-object v0

    .line 1717
    :pswitch_1c
    const-string v0, "detachWindowContext"

    return-object v0

    .line 1713
    :pswitch_1d
    const-string v0, "attachWindowContextToDisplayContent"

    return-object v0

    .line 1709
    :pswitch_1e
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1705
    :pswitch_1f
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1701
    :pswitch_20
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1697
    :pswitch_21
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1693
    :pswitch_22
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1689
    :pswitch_23
    const-string v0, "holdLock"

    return-object v0

    .line 1685
    :pswitch_24
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1681
    :pswitch_25
    const-string/jumbo v0, "setActiveTransactionTracing"

    return-object v0

    .line 1677
    :pswitch_26
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1673
    :pswitch_27
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1669
    :pswitch_28
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1665
    :pswitch_29
    const-string v0, "getWindowInsets"

    return-object v0

    .line 1661
    :pswitch_2a
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibleTypes"

    return-object v0

    .line 1657
    :pswitch_2b
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1653
    :pswitch_2c
    const-string v0, "mirrorDisplay"

    return-object v0

    .line 1649
    :pswitch_2d
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1645
    :pswitch_2e
    const-string v0, "isLayerTracing"

    return-object v0

    .line 1641
    :pswitch_2f
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1637
    :pswitch_30
    const-string v0, "onNotificationShadeExpanded"

    return-object v0

    .line 1633
    :pswitch_31
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1629
    :pswitch_32
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1625
    :pswitch_33
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1621
    :pswitch_34
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1617
    :pswitch_35
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1613
    :pswitch_36
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1609
    :pswitch_37
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1605
    :pswitch_38
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1601
    :pswitch_39
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1597
    :pswitch_3a
    const-string v0, "getWindowingMode"

    return-object v0

    .line 1593
    :pswitch_3b
    const-string v0, "isTransitionTraceEnabled"

    return-object v0

    .line 1589
    :pswitch_3c
    const-string/jumbo v0, "stopTransitionTrace"

    return-object v0

    .line 1585
    :pswitch_3d
    const-string/jumbo v0, "startTransitionTrace"

    return-object v0

    .line 1581
    :pswitch_3e
    const-string v0, "isWindowTraceEnabled"

    return-object v0

    .line 1577
    :pswitch_3f
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1573
    :pswitch_40
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1569
    :pswitch_41
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1565
    :pswitch_42
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1561
    :pswitch_43
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1557
    :pswitch_44
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1553
    :pswitch_45
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1549
    :pswitch_46
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1545
    :pswitch_47
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1541
    :pswitch_48
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1537
    :pswitch_49
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1533
    :pswitch_4a
    const-string v0, "getStableInsets"

    return-object v0

    .line 1529
    :pswitch_4b
    const-string/jumbo v0, "requestImeKeyboardShortcuts"

    return-object v0

    .line 1525
    :pswitch_4c
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1521
    :pswitch_4d
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1517
    :pswitch_4e
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1513
    :pswitch_4f
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    .line 1509
    :pswitch_50
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1505
    :pswitch_51
    const-string v0, "isSafeModeEnabled"

    return-object v0

    .line 1501
    :pswitch_52
    const-string v0, "lockNow"

    return-object v0

    .line 1497
    :pswitch_53
    const-string v0, "hasNavigationBar"

    return-object v0

    .line 1493
    :pswitch_54
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1489
    :pswitch_55
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1485
    :pswitch_56
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1481
    :pswitch_57
    const-string v0, "hideTransientBars"

    return-object v0

    .line 1477
    :pswitch_58
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1473
    :pswitch_59
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1469
    :pswitch_5a
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1465
    :pswitch_5b
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1461
    :pswitch_5c
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1457
    :pswitch_5d
    const-string v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1453
    :pswitch_5e
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1449
    :pswitch_5f
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1445
    :pswitch_60
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1441
    :pswitch_61
    const-string v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1437
    :pswitch_62
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1433
    :pswitch_63
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1429
    :pswitch_64
    const-string v0, "isRotationFrozen"

    return-object v0

    .line 1425
    :pswitch_65
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1421
    :pswitch_66
    const-string v0, "freezeRotation"

    return-object v0

    .line 1417
    :pswitch_67
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1413
    :pswitch_68
    const-string/jumbo v0, "registerProposedRotationListener"

    return-object v0

    .line 1409
    :pswitch_69
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1405
    :pswitch_6a
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1401
    :pswitch_6b
    const-string v0, "getDisplayUserRotation"

    return-object v0

    .line 1397
    :pswitch_6c
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1393
    :pswitch_6d
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1389
    :pswitch_6e
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1385
    :pswitch_6f
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1381
    :pswitch_70
    const-string v0, "isInTouchMode"

    return-object v0

    .line 1377
    :pswitch_71
    const-string/jumbo v0, "setInTouchModeOnAllDisplays"

    return-object v0

    .line 1373
    :pswitch_72
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1369
    :pswitch_73
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1365
    :pswitch_74
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1361
    :pswitch_75
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1357
    :pswitch_76
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1353
    :pswitch_77
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1349
    :pswitch_78
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1345
    :pswitch_79
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1341
    :pswitch_7a
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1337
    :pswitch_7b
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1333
    :pswitch_7c
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1329
    :pswitch_7d
    const-string v0, "isKeyguardSecure"

    return-object v0

    .line 1325
    :pswitch_7e
    const-string v0, "isKeyguardLocked"

    return-object v0

    .line 1321
    :pswitch_7f
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1317
    :pswitch_80
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1313
    :pswitch_81
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1309
    :pswitch_82
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1305
    :pswitch_83
    const-string v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1301
    :pswitch_84
    const-string v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1297
    :pswitch_85
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1293
    :pswitch_86
    const-string v0, "addShellRoot"

    return-object v0

    .line 1289
    :pswitch_87
    const-string/jumbo v0, "setDisplayChangeWindowController"

    return-object v0

    .line 1285
    :pswitch_88
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1281
    :pswitch_89
    const-string v0, "addWindowToken"

    return-object v0

    .line 1277
    :pswitch_8a
    const-string v0, "isWindowToken"

    return-object v0

    .line 1273
    :pswitch_8b
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1269
    :pswitch_8c
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1265
    :pswitch_8d
    const-string/jumbo v0, "setConfigurationChangeSettingsForUser"

    return-object v0

    .line 1261
    :pswitch_8e
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1257
    :pswitch_8f
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1253
    :pswitch_90
    const-string v0, "getDisplayIdByUniqueId"

    return-object v0

    .line 1249
    :pswitch_91
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1245
    :pswitch_92
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1241
    :pswitch_93
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1237
    :pswitch_94
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1233
    :pswitch_95
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1229
    :pswitch_96
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1225
    :pswitch_97
    const-string v0, "openSession"

    return-object v0

    .line 1221
    :pswitch_98
    const-string v0, "isViewServerRunning"

    return-object v0

    .line 1217
    :pswitch_99
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1213
    :pswitch_9a
    const-string/jumbo v0, "startViewServer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addShellRoot_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6688
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6689
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1204
    return-object p0
.end method

.method protected blacklist clearForcedDisplayDensityForUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6668
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6669
    return-void
.end method

.method protected blacklist clearForcedDisplaySize_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6655
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6656
    return-void
.end method

.method protected blacklist exitKeyguardSecurely_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6703
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6704
    return-void
.end method

.method protected blacklist getCurrentImeTouchRegion_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6768
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6769
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 6859
    const/16 v0, 0x9a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1840
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1844
    const-string v0, "android.view.IWindowManager"

    .line 1845
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1846
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 1849
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1850
    return v1

    .line 1852
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 3417
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3408
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3409
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3410
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getIgnoreOrientationRequest(I)Z

    move-result v3

    .line 3411
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3412
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3413
    move-object v3, p0

    goto/16 :goto_0

    .line 3398
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3399
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3400
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object v3

    .line 3401
    .local v3, "_result":Landroid/view/KeyboardShortcutGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3402
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3403
    move-object v3, p0

    goto/16 :goto_0

    .line 3386
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/KeyboardShortcutGroup;
    :pswitch_2
    sget-object v2, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/InputTransferToken;

    .line 3388
    .local v2, "_arg0":Landroid/window/InputTransferToken;
    sget-object v3, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/InputTransferToken;

    .line 3389
    .local v3, "_arg1":Landroid/window/InputTransferToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3390
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v4

    .line 3391
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3393
    move-object v3, p0

    goto/16 :goto_0

    .line 3377
    .end local v2    # "_arg0":Landroid/window/InputTransferToken;
    .end local v3    # "_arg1":Landroid/window/InputTransferToken;
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IGlobalDragListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IGlobalDragListener;

    move-result-object v2

    .line 3378
    .local v2, "_arg0":Landroid/window/IGlobalDragListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3379
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V

    .line 3380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3381
    move-object v3, p0

    goto/16 :goto_0

    .line 3368
    .end local v2    # "_arg0":Landroid/window/IGlobalDragListener;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object v2

    .line 3369
    .local v2, "_arg0":Landroid/window/IScreenRecordingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3370
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V

    .line 3371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3372
    move-object v3, p0

    goto/16 :goto_0

    .line 3358
    .end local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object v2

    .line 3359
    .restart local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3360
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v3

    .line 3361
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3363
    move-object v3, p0

    goto/16 :goto_0

    .line 3347
    .end local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object v2

    .line 3349
    .local v2, "_arg0":Landroid/window/ITrustedPresentationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3350
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3351
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V

    .line 3352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3353
    move-object v3, p0

    goto/16 :goto_0

    .line 3332
    .end local v2    # "_arg0":Landroid/window/ITrustedPresentationListener;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3334
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object v3

    .line 3336
    .local v3, "_arg1":Landroid/window/ITrustedPresentationListener;
    sget-object v4, Landroid/window/TrustedPresentationThresholds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TrustedPresentationThresholds;

    .line 3338
    .local v4, "_arg2":Landroid/window/TrustedPresentationThresholds;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3339
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3340
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V

    .line 3341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3342
    move-object v3, p0

    goto/16 :goto_0

    .line 3321
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/ITrustedPresentationListener;
    .end local v4    # "_arg2":Landroid/window/TrustedPresentationThresholds;
    .end local v5    # "_arg3":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object v2

    .line 3323
    .local v2, "_arg0":Landroid/view/IDecorViewGestureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3324
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    move-object v3, p0

    goto/16 :goto_0

    .line 3310
    .end local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object v2

    .line 3312
    .restart local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3313
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3314
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    move-object v3, p0

    goto/16 :goto_0

    .line 3298
    .end local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    .end local v3    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3300
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 3301
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3302
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->replaceContentOnDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v4

    .line 3303
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3305
    move-object v3, p0

    goto/16 :goto_0

    .line 3288
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3290
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object v3

    .line 3291
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3292
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3293
    move-object v3, p0

    goto/16 :goto_0

    .line 3280
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3281
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3282
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V

    .line 3283
    move-object v3, p0

    goto/16 :goto_0

    .line 3263
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3265
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3267
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ISurfaceSyncGroupCompletedListener;

    move-result-object v4

    .line 3269
    .local v4, "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    new-instance v5, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v5}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 3270
    .local v5, "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3271
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result v6

    .line 3272
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3274
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3275
    move-object v3, p0

    goto/16 :goto_0

    .line 3253
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    .end local v5    # "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    .end local v6    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3254
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3255
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isGlobalKey(I)Z

    move-result v3

    .line 3256
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3258
    move-object v3, p0

    goto/16 :goto_0

    .line 3241
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3243
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$CaptureArgs;

    .line 3245
    .local v3, "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    sget-object v4, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 3246
    .local v4, "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3247
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    .line 3248
    move-object v3, p0

    goto/16 :goto_0

    .line 3233
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    .end local v4    # "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    :pswitch_10
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLetterboxBackgroundMultiColored()Z

    move-result v2

    .line 3234
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3235
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3236
    move-object v3, p0

    goto/16 :goto_0

    .line 3226
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getLetterboxBackgroundColorInArgb()I

    move-result v2

    .line 3227
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3229
    move-object v3, p0

    goto/16 :goto_0

    .line 3218
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3219
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3220
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3222
    move-object v3, p0

    goto/16 :goto_0

    .line 3208
    .end local v2    # "_arg0":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3209
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3210
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3211
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3212
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3213
    move-object v3, p0

    goto/16 :goto_0

    .line 3199
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v2

    .line 3200
    .local v2, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3201
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3203
    move-object v3, p0

    goto/16 :goto_0

    .line 3188
    .end local v2    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3190
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v3

    .line 3191
    .local v3, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3192
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3194
    move-object v3, p0

    goto/16 :goto_0

    .line 3179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3180
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3181
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    move-object v3, p0

    goto/16 :goto_0

    .line 3171
    .end local v2    # "_arg0":Z
    :pswitch_17
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v2

    .line 3172
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3174
    move-object v3, p0

    goto/16 :goto_0

    .line 3164
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v2

    .line 3165
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3167
    move-object v3, p0

    goto/16 :goto_0

    .line 3156
    .end local v2    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 3157
    .local v2, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3158
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 3159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    move-object v3, p0

    goto/16 :goto_0

    .line 3146
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 3147
    .restart local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3148
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v3

    .line 3149
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3151
    move-object v3, p0

    goto/16 :goto_0

    .line 3132
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v3    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3134
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3136
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3137
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3138
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result v5

    .line 3139
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3141
    move-object v3, p0

    goto/16 :goto_0

    .line 3123
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3124
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3125
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->detachWindowContext(Landroid/os/IBinder;)V

    .line 3126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3127
    move-object v3, p0

    goto/16 :goto_0

    .line 3109
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3111
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3113
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3114
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3115
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object v5

    .line 3116
    .local v5, "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3117
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3118
    move-object v3, p0

    goto/16 :goto_0

    .line 3095
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/window/WindowContextInfo;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3097
    .restart local v2    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3099
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3100
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3101
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object v5

    .line 3102
    .restart local v5    # "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3104
    move-object v3, p0

    goto/16 :goto_0

    .line 3077
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_result":Landroid/window/WindowContextInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v4

    .line 3079
    .local v4, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 3081
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3083
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3085
    .local v7, "_arg3":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/Bundle;

    .line 3086
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3087
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object v2

    .line 3088
    .local v2, "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3089
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3090
    goto/16 :goto_0

    .line 3068
    .end local v2    # "_result":Landroid/window/WindowContextInfo;
    .end local v4    # "_arg0":Landroid/app/IApplicationThread;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/os/Bundle;
    :pswitch_20
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3069
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3070
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 3071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3072
    goto/16 :goto_0

    .line 3058
    .end local v2    # "_arg0":Z
    :pswitch_21
    move-object v3, p0

    sget-object v2, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    .line 3059
    .local v2, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3060
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v4

    .line 3061
    .local v4, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3062
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3063
    goto/16 :goto_0

    .line 3050
    .end local v2    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v4    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_22
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2

    .line 3051
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3053
    goto/16 :goto_0

    .line 3040
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_23
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3042
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3043
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3044
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 3045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3046
    goto/16 :goto_0

    .line 3025
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_24
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3027
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3029
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3031
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v6

    .line 3032
    .local v6, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3033
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 3034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3035
    goto/16 :goto_0

    .line 3016
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_25
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3017
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3018
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setActiveTransactionTracing(Z)V

    .line 3019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3020
    goto/16 :goto_0

    .line 3007
    .end local v2    # "_arg0":Z
    :pswitch_26
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3008
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3009
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 3010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3011
    goto/16 :goto_0

    .line 3000
    .end local v2    # "_arg0":I
    :pswitch_27
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 3001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    goto/16 :goto_0

    .line 2991
    :pswitch_28
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2992
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2993
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object v4

    .line 2994
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2996
    goto/16 :goto_0

    .line 2976
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_29
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2978
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2980
    .local v4, "_arg1":Landroid/os/IBinder;
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5}, Landroid/view/InsetsState;-><init>()V

    .line 2981
    .local v5, "_arg2":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2982
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    move-result v6

    .line 2983
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2985
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2986
    goto/16 :goto_0

    .line 2961
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Landroid/view/InsetsState;
    .end local v6    # "_result":Z
    :pswitch_2a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2963
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2965
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2967
    .local v5, "_arg2":I
    sget-object v6, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/ImeTracker$Token;

    .line 2968
    .local v6, "_arg3":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibleTypes(IIILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    goto/16 :goto_0

    .line 2950
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_2b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2952
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v4

    .line 2953
    .local v4, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    goto/16 :goto_0

    .line 2937
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_2c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2939
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/view/SurfaceControl;

    invoke-direct {v4}, Landroid/view/SurfaceControl;-><init>()V

    .line 2940
    .local v4, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2941
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v5

    .line 2942
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2943
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2944
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2945
    goto/16 :goto_0

    .line 2928
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/SurfaceControl;
    .end local v5    # "_result":Z
    :pswitch_2d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2929
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2930
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 2931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2932
    goto/16 :goto_0

    .line 2920
    .end local v2    # "_arg0":Z
    :pswitch_2e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v2

    .line 2921
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2923
    goto/16 :goto_0

    .line 2912
    .end local v2    # "_result":Z
    :pswitch_2f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2913
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2914
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 2915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    goto/16 :goto_0

    .line 2901
    .end local v2    # "_arg0":Z
    :pswitch_30
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2903
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2904
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2905
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->onNotificationShadeExpanded(Landroid/os/IBinder;Z)V

    .line 2906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    goto/16 :goto_0

    .line 2890
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Z
    :pswitch_31
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2892
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2893
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2894
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    goto/16 :goto_0

    .line 2880
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_32
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2881
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2882
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v4

    .line 2883
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2884
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2885
    goto/16 :goto_0

    .line 2869
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_33
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2871
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2872
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 2874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    goto/16 :goto_0

    .line 2859
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_34
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2860
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2861
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v4

    .line 2862
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2863
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2864
    goto/16 :goto_0

    .line 2848
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_35
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2850
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2851
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2852
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    goto/16 :goto_0

    .line 2838
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_36
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2839
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2840
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v4

    .line 2841
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2842
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2843
    goto/16 :goto_0

    .line 2827
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_37
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2829
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2830
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2831
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    goto/16 :goto_0

    .line 2817
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_38
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2818
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2819
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v4

    .line 2820
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2821
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    goto/16 :goto_0

    .line 2806
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_39
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2808
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2809
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2810
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2812
    goto/16 :goto_0

    .line 2796
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_3a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2797
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2798
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v4

    .line 2799
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    goto/16 :goto_0

    .line 2788
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_3b
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTransitionTraceEnabled()Z

    move-result v2

    .line 2789
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2790
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2791
    goto/16 :goto_0

    .line 2782
    .end local v2    # "_result":Z
    :pswitch_3c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopTransitionTrace()V

    .line 2783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2784
    goto/16 :goto_0

    .line 2776
    :pswitch_3d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startTransitionTrace()V

    .line 2777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    goto/16 :goto_0

    .line 2769
    :pswitch_3e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v2

    .line 2770
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2772
    goto/16 :goto_0

    .line 2763
    .end local v2    # "_result":Z
    :pswitch_3f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    goto/16 :goto_0

    .line 2757
    :pswitch_40
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2759
    goto/16 :goto_0

    .line 2751
    :pswitch_41
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2753
    goto/16 :goto_0

    .line 2743
    :pswitch_42
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2744
    .local v2, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2745
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2747
    goto/16 :goto_0

    .line 2733
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_43
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2734
    .restart local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2735
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v4

    .line 2736
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2737
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2738
    goto/16 :goto_0

    .line 2724
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v4    # "_result":[I
    :pswitch_44
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2725
    .local v2, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2726
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2728
    goto/16 :goto_0

    .line 2715
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_45
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2716
    .restart local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2717
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2719
    goto/16 :goto_0

    .line 2707
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_46
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2

    .line 2708
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2709
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2710
    goto/16 :goto_0

    .line 2696
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_47
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2698
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2699
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    move-result v5

    .line 2701
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2703
    goto/16 :goto_0

    .line 2680
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_48
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2682
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2684
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2686
    .local v5, "_arg2":I
    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    .line 2687
    .local v6, "_arg3":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2688
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2691
    goto/16 :goto_0

    .line 2669
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/InputChannel;
    :pswitch_49
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2671
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v2

    .line 2672
    .local v2, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2673
    invoke-virtual {p0, v4, v5, v2}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2675
    goto/16 :goto_0

    .line 2657
    .end local v2    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    .end local v4    # "_arg0":J
    :pswitch_4a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2659
    .local v2, "_arg0":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2660
    .local v4, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2661
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2663
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2664
    goto/16 :goto_0

    .line 2646
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :pswitch_4b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2648
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2649
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2650
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->requestImeKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2652
    goto/16 :goto_0

    .line 2635
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_arg1":I
    :pswitch_4c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2637
    .restart local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2638
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2639
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    goto/16 :goto_0

    .line 2624
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_arg1":I
    :pswitch_4d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2626
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v4

    .line 2627
    .local v4, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2628
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    goto/16 :goto_0

    .line 2616
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_4e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v2

    .line 2617
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2618
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    goto/16 :goto_0

    .line 2607
    .end local v2    # "_result":I
    :pswitch_4f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2608
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2609
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v4

    .line 2610
    .local v4, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2612
    goto/16 :goto_0

    .line 2597
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_50
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2598
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2599
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v4

    .line 2600
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2602
    goto/16 :goto_0

    .line 2589
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_51
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v2

    .line 2590
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2591
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2592
    goto/16 :goto_0

    .line 2581
    .end local v2    # "_result":Z
    :pswitch_52
    move-object v3, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2582
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2583
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    goto/16 :goto_0

    .line 2571
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_53
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2572
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2573
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v4

    .line 2574
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2576
    goto/16 :goto_0

    .line 2562
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_54
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2563
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2564
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2566
    goto/16 :goto_0

    .line 2552
    .end local v2    # "_arg0":Z
    :pswitch_55
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2554
    .local v2, "_arg0":I
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Rect;

    .line 2555
    .local v4, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2557
    goto/16 :goto_0

    .line 2544
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_56
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2545
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2546
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2547
    goto/16 :goto_0

    .line 2536
    .end local v2    # "_arg0":Z
    :pswitch_57
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2537
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2538
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2539
    goto/16 :goto_0

    .line 2526
    .end local v2    # "_arg0":I
    :pswitch_58
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 2527
    .local v2, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v4

    .line 2529
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2531
    goto/16 :goto_0

    .line 2515
    .end local v2    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v4    # "_result":Z
    :pswitch_59
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2517
    .local v2, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2518
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2519
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    goto/16 :goto_0

    .line 2504
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v4    # "_arg1":I
    :pswitch_5a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2506
    .restart local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2507
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2508
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    goto/16 :goto_0

    .line 2493
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v4    # "_arg1":I
    :pswitch_5b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2495
    .local v2, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2496
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2497
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    goto/16 :goto_0

    .line 2481
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v4    # "_arg1":I
    :pswitch_5c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2483
    .restart local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2484
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v5

    .line 2486
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2488
    goto/16 :goto_0

    .line 2471
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_5d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2472
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2473
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 2474
    .local v4, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2476
    goto/16 :goto_0

    .line 2463
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/view/SurfaceControl;
    :pswitch_5e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2464
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2465
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2466
    goto/16 :goto_0

    .line 2453
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_5f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2455
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2456
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    goto/16 :goto_0

    .line 2442
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_60
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2444
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2445
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2446
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    goto/16 :goto_0

    .line 2432
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_61
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2434
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v4

    .line 2435
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2437
    goto/16 :goto_0

    .line 2421
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_62
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2423
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2424
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2425
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(ILjava/lang/String;)V

    .line 2426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    goto/16 :goto_0

    .line 2408
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_63
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2410
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2412
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2413
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2414
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(IILjava/lang/String;)V

    .line 2415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    goto/16 :goto_0

    .line 2400
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_64
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v2

    .line 2401
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2403
    goto/16 :goto_0

    .line 2392
    .end local v2    # "_result":Z
    :pswitch_65
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2393
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2394
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->thawRotation(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    goto/16 :goto_0

    .line 2381
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_66
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2383
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2384
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2385
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->freezeRotation(ILjava/lang/String;)V

    .line 2386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2387
    goto/16 :goto_0

    .line 2371
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_67
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2372
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2373
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v4

    .line 2374
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    goto/16 :goto_0

    .line 2359
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_68
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2361
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v4

    .line 2362
    .local v4, "_arg1":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2363
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result v5

    .line 2364
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2365
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    goto/16 :goto_0

    .line 2350
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/view/IRotationWatcher;
    .end local v5    # "_result":I
    :pswitch_69
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2351
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2352
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2354
    goto/16 :goto_0

    .line 2338
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_6a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2340
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2341
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2342
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v5

    .line 2343
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2345
    goto/16 :goto_0

    .line 2328
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_6b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2329
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2330
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayUserRotation(I)I

    move-result v4

    .line 2331
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2332
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    goto/16 :goto_0

    .line 2320
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_6c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v2

    .line 2321
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2322
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    goto/16 :goto_0

    .line 2314
    .end local v2    # "_result":I
    :pswitch_6d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    goto/16 :goto_0

    .line 2306
    :pswitch_6e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2307
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2308
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    goto/16 :goto_0

    .line 2297
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2298
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    goto/16 :goto_0

    .line 2287
    .end local v2    # "_arg0":Z
    :pswitch_70
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2288
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2289
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isInTouchMode(I)Z

    move-result v4

    .line 2290
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2292
    goto/16 :goto_0

    .line 2278
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_71
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2279
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2280
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchModeOnAllDisplays(Z)V

    .line 2281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    goto/16 :goto_0

    .line 2267
    .end local v2    # "_arg0":Z
    :pswitch_72
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2269
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2270
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2271
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setInTouchMode(ZI)V

    .line 2272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2273
    goto/16 :goto_0

    .line 2259
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":I
    :pswitch_73
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v2

    .line 2260
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2262
    goto/16 :goto_0

    .line 2251
    .end local v2    # "_result":F
    :pswitch_74
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 2252
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2253
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2255
    goto/16 :goto_0

    .line 2240
    .end local v2    # "_arg0":[F
    :pswitch_75
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2242
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 2243
    .local v4, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2244
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2246
    goto/16 :goto_0

    .line 2232
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":F
    :pswitch_76
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v2

    .line 2233
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2235
    goto/16 :goto_0

    .line 2223
    .end local v2    # "_result":[F
    :pswitch_77
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2224
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2225
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v4

    .line 2226
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2228
    goto/16 :goto_0

    .line 2214
    .end local v2    # "_arg0":I
    .end local v4    # "_result":F
    :pswitch_78
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2215
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2216
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    goto/16 :goto_0

    .line 2205
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_79
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2206
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2207
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    goto/16 :goto_0

    .line 2196
    .end local v2    # "_arg0":Z
    :pswitch_7a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2197
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2198
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2200
    goto/16 :goto_0

    .line 2187
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_7b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2188
    .restart local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2189
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    goto/16 :goto_0

    .line 2176
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_7c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 2178
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 2179
    .local v4, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2180
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    goto/16 :goto_0

    .line 2166
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v4    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_7d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2167
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2168
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v4

    .line 2169
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2171
    goto/16 :goto_0

    .line 2158
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_7e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v2

    .line 2159
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2161
    goto/16 :goto_0

    .line 2150
    .end local v2    # "_result":Z
    :pswitch_7f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 2151
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2152
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    goto/16 :goto_0

    .line 2139
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_80
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2141
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2142
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    goto/16 :goto_0

    .line 2126
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_81
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2128
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2130
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2131
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2132
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    goto/16 :goto_0

    .line 2119
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_82
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    goto/16 :goto_0

    .line 2109
    :pswitch_83
    move-object v3, p0

    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 2111
    .local v2, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2112
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    goto/16 :goto_0

    .line 2094
    .end local v2    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v4    # "_arg1":I
    :pswitch_84
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v2

    .line 2096
    .local v2, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    .line 2098
    .local v4, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2100
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2101
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2102
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 2103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    goto/16 :goto_0

    .line 2081
    .end local v2    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v4    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    :pswitch_85
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2083
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2085
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 2086
    .local v5, "_arg2":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2087
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 2088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    goto/16 :goto_0

    .line 2067
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/IWindow;
    :pswitch_86
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2069
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 2071
    .local v4, "_arg1":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2072
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2073
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v6

    .line 2074
    .local v6, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2076
    goto/16 :goto_0

    .line 2058
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IWindow;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Landroid/view/SurfaceControl;
    :pswitch_87
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayChangeWindowController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowController;

    move-result-object v2

    .line 2059
    .local v2, "_arg0":Landroid/view/IDisplayChangeWindowController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2060
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V

    .line 2061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    goto/16 :goto_0

    .line 2047
    .end local v2    # "_arg0":Landroid/view/IDisplayChangeWindowController;
    :pswitch_88
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2049
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2050
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2051
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 2052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    goto/16 :goto_0

    .line 2032
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_89
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2034
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2036
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2038
    .restart local v5    # "_arg2":I
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 2039
    .local v6, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2040
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 2041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    goto/16 :goto_0

    .line 2022
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/Bundle;
    :pswitch_8a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2023
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2024
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v4

    .line 2025
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2026
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2027
    goto/16 :goto_0

    .line 2013
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_8b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2014
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2015
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 2016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2017
    goto/16 :goto_0

    .line 2002
    .end local v2    # "_arg0":Z
    :pswitch_8c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2004
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2005
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2006
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 2007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    goto/16 :goto_0

    .line 1991
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_8d
    move-object v3, p0

    sget-object v2, Landroid/window/ConfigurationChangeSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1993
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/window/ConfigurationChangeSetting;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1994
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1995
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setConfigurationChangeSettingsForUser(Ljava/util/List;I)V

    .line 1996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    goto/16 :goto_0

    .line 1980
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/window/ConfigurationChangeSetting;>;"
    .end local v4    # "_arg1":I
    :pswitch_8e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1982
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1983
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1984
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 1985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    goto/16 :goto_0

    .line 1967
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_8f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1969
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1971
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1972
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1973
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 1974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    goto/16 :goto_0

    .line 1957
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_90
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1959
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result v4

    .line 1960
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1962
    goto/16 :goto_0

    .line 1947
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_91
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1948
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1949
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v4

    .line 1950
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1951
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    goto/16 :goto_0

    .line 1937
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_92
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1938
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1939
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v4

    .line 1940
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1941
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    goto/16 :goto_0

    .line 1928
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_93
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1929
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1930
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    goto/16 :goto_0

    .line 1915
    .end local v2    # "_arg0":I
    :pswitch_94
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1917
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1919
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1920
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    goto/16 :goto_0

    .line 1903
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_95
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1905
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1906
    .local v4, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1907
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1910
    goto :goto_0

    .line 1891
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Point;
    :pswitch_96
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1893
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1894
    .restart local v4    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1895
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1898
    goto :goto_0

    .line 1881
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Point;
    :pswitch_97
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 1882
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1883
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v4

    .line 1884
    .local v4, "_result":Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1886
    goto :goto_0

    .line 1873
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v4    # "_result":Landroid/view/IWindowSession;
    :pswitch_98
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v2

    .line 1874
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1876
    goto :goto_0

    .line 1866
    .end local v2    # "_result":Z
    :pswitch_99
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v2

    .line 1867
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1869
    goto :goto_0

    .line 1857
    .end local v2    # "_result":Z
    :pswitch_9a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1858
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v4

    .line 1860
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1862
    nop

    .line 3420
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist registerScreenRecordingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6845
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6846
    return-void
.end method

.method protected blacklist setConfigurationChangeSettingsForUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6673
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6674
    return-void
.end method

.method protected blacklist setDisplayWindowInsetsController_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6799
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6800
    return-void
.end method

.method protected blacklist setForcedDisplayDensityForUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6663
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6664
    return-void
.end method

.method protected blacklist setForcedDisplayScalingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6678
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6679
    return-void
.end method

.method protected blacklist setForcedDisplaySize_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6650
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6651
    return-void
.end method

.method protected blacklist setNavBarVirtualKeyHapticFeedbackEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6750
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6751
    return-void
.end method

.method protected blacklist setShellRootAccessibilityWindow_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6693
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6694
    return-void
.end method

.method protected blacklist unregisterScreenRecordingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6850
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6851
    return-void
.end method

.method protected blacklist updateDisplayWindowRequestedVisibleTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6804
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6805
    return-void
.end method
