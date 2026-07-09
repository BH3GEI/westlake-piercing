.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final blacklist PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_removeImeSurface:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegation:I = 0x21

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegationAsync:I = 0x22

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_addVirtualStylusIdForTestSession:I = 0x24

.field static final blacklist TRANSACTION_getCurrentInputMethodInfoAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0x13

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final blacklist TRANSACTION_getEnabledInputMethodListLegacy:I = 0x6

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x7

.field static final blacklist TRANSACTION_getImeTrackerService:I = 0x26

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getInputMethodListLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x16

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x8

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_hideSoftInputFromServerForTest:I = 0xb

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0x10

.field static final blacklist TRANSACTION_isStylusHandwritingAvailableAsUser:I = 0x23

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromSystem:I = 0x11

.field static final blacklist TRANSACTION_prepareStylusHandwritingDelegation:I = 0x20

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x18

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x19

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x17

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x14

.field static final blacklist TRANSACTION_setExplicitlyEnabledInputMethodSubtypes:I = 0x15

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x25

.field static final blacklist TRANSACTION_shouldShowImeSwitcherButtonForTest:I = 0x12

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xe

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xf

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startConnectionlessStylusHandwriting:I = 0x1f

.field static final blacklist TRANSACTION_startImeTrace:I = 0x1c

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0xc

.field static final blacklist TRANSACTION_startInputOrWindowGainedFocusAsync:I = 0xd

.field static final blacklist TRANSACTION_startProtoDump:I = 0x1a

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x1e

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x1d


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 1655
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    .line 1666
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    .line 1682
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    nop

    .line 218
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 219
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 213
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 230
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 231
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    .line 233
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 242
    packed-switch p0, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 394
    :pswitch_0
    const-string v0, "getImeTrackerService"

    return-object v0

    .line 390
    :pswitch_1
    const-string/jumbo v0, "setStylusWindowIdleTimeoutForTest"

    return-object v0

    .line 386
    :pswitch_2
    const-string v0, "addVirtualStylusIdForTestSession"

    return-object v0

    .line 382
    :pswitch_3
    const-string v0, "isStylusHandwritingAvailableAsUser"

    return-object v0

    .line 378
    :pswitch_4
    const-string v0, "acceptStylusHandwritingDelegationAsync"

    return-object v0

    .line 374
    :pswitch_5
    const-string v0, "acceptStylusHandwritingDelegation"

    return-object v0

    .line 370
    :pswitch_6
    const-string v0, "prepareStylusHandwritingDelegation"

    return-object v0

    .line 366
    :pswitch_7
    const-string/jumbo v0, "startConnectionlessStylusHandwriting"

    return-object v0

    .line 362
    :pswitch_8
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 358
    :pswitch_9
    const-string/jumbo v0, "stopImeTrace"

    return-object v0

    .line 354
    :pswitch_a
    const-string/jumbo v0, "startImeTrace"

    return-object v0

    .line 350
    :pswitch_b
    const-string v0, "isImeTraceEnabled"

    return-object v0

    .line 346
    :pswitch_c
    const-string/jumbo v0, "startProtoDump"

    return-object v0

    .line 342
    :pswitch_d
    const-string/jumbo v0, "removeImeSurfaceFromWindowAsync"

    return-object v0

    .line 338
    :pswitch_e
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 334
    :pswitch_f
    const-string/jumbo v0, "reportPerceptibleAsync"

    return-object v0

    .line 330
    :pswitch_10
    const-string v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    .line 326
    :pswitch_11
    const-string/jumbo v0, "setExplicitlyEnabledInputMethodSubtypes"

    return-object v0

    .line 322
    :pswitch_12
    const-string/jumbo v0, "setAdditionalInputMethodSubtypes"

    return-object v0

    .line 318
    :pswitch_13
    const-string v0, "getCurrentInputMethodSubtype"

    return-object v0

    .line 314
    :pswitch_14
    const-string/jumbo v0, "shouldShowImeSwitcherButtonForTest"

    return-object v0

    .line 310
    :pswitch_15
    const-string v0, "onImeSwitchButtonClickFromSystem"

    return-object v0

    .line 306
    :pswitch_16
    const-string v0, "isInputMethodPickerShownForTest"

    return-object v0

    .line 302
    :pswitch_17
    const-string/jumbo v0, "showInputMethodPickerFromSystem"

    return-object v0

    .line 298
    :pswitch_18
    const-string/jumbo v0, "showInputMethodPickerFromClient"

    return-object v0

    .line 294
    :pswitch_19
    const-string/jumbo v0, "startInputOrWindowGainedFocusAsync"

    return-object v0

    .line 290
    :pswitch_1a
    const-string/jumbo v0, "startInputOrWindowGainedFocus"

    return-object v0

    .line 286
    :pswitch_1b
    const-string v0, "hideSoftInputFromServerForTest"

    return-object v0

    .line 282
    :pswitch_1c
    const-string v0, "hideSoftInput"

    return-object v0

    .line 278
    :pswitch_1d
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 274
    :pswitch_1e
    const-string v0, "getLastInputMethodSubtype"

    return-object v0

    .line 270
    :pswitch_1f
    const-string v0, "getEnabledInputMethodSubtypeList"

    return-object v0

    .line 266
    :pswitch_20
    const-string v0, "getEnabledInputMethodListLegacy"

    return-object v0

    .line 262
    :pswitch_21
    const-string v0, "getInputMethodListLegacy"

    return-object v0

    .line 258
    :pswitch_22
    const-string v0, "getEnabledInputMethodList"

    return-object v0

    .line 254
    :pswitch_23
    const-string v0, "getInputMethodList"

    return-object v0

    .line 250
    :pswitch_24
    const-string v0, "getCurrentInputMethodInfoAsUser"

    return-object v0

    .line 246
    :pswitch_25
    const-string v0, "addClient"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addVirtualStylusIdForTestSession_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1709
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1710
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 237
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1720
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 405
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hideSoftInputFromServerForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1650
    return-void
.end method

.method protected blacklist isInputMethodPickerShownForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1663
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1664
    return-void
.end method

.method protected blacklist onImeSwitchButtonClickFromSystem_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1670
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 409
    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v9, "com.android.internal.view.IInputMethodManager"

    .line 410
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v15, v10, :cond_0

    const v1, 0xffffff

    if-gt v15, v1, :cond_0

    .line 411
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    :cond_0
    const v1, 0x5f4e5446

    if-ne v15, v1, :cond_1

    .line 414
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    return v10

    .line 417
    :cond_1
    packed-switch v15, :pswitch_data_0

    .line 897
    move-object v15, v7

    move-object v14, v8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 890
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v1

    .line 891
    .local v1, "_result":Lcom/android/internal/inputmethod/IImeTracker;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 893
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 880
    .end local v1    # "_result":Lcom/android/internal/inputmethod/IImeTracker;
    :pswitch_1
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 882
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 883
    .local v2, "_arg1":J
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 885
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 871
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":J
    :pswitch_2
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 872
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 874
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 859
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    :pswitch_3
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 862
    .local v2, "_arg1":Z
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v3

    .line 864
    .local v3, "_result":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 866
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 841
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 843
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 845
    .local v2, "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 851
    .local v5, "_arg4":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IBooleanListener;

    move-result-object v6

    .line 852
    .local v6, "_arg5":Lcom/android/internal/inputmethod/IBooleanListener;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    .line 854
    move-object/from16 v0, p0

    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 823
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Lcom/android/internal/inputmethod/IBooleanListener;
    :pswitch_5
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 825
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 827
    .restart local v2    # "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 831
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 832
    .restart local v5    # "_arg4":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 834
    .local v6, "_result":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 836
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 808
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_6
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 810
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 812
    .restart local v2    # "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 814
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 815
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 790
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 792
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 796
    .local v3, "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 800
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v6

    .line 801
    .local v6, "_arg5":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 803
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 781
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :pswitch_8
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 782
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 784
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 774
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    :pswitch_9
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    .line 775
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 768
    :pswitch_a
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    .line 769
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 761
    :pswitch_b
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v1

    .line 762
    .local v1, "_result":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 749
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 751
    .local v1, "_arg0":[B
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 753
    .restart local v2    # "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    .line 756
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 741
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 742
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 744
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 732
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_e
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface(I)V

    .line 735
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 722
    .end local v1    # "_arg0":I
    :pswitch_f
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 724
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 725
    .local v2, "_arg1":Z
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 727
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 712
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_10
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 713
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v2

    .line 715
    .local v2, "_result":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 699
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 703
    .local v2, "_arg1":[I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 704
    .local v3, "_arg2":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 706
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 686
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":I
    :pswitch_12
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 690
    .local v2, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    .restart local v3    # "_arg2":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 693
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 676
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "_arg2":I
    :pswitch_13
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 679
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 681
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 668
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_14
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest()Z

    move-result v1

    .line 669
    .local v1, "_result":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 661
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 662
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem(I)V

    .line 664
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 653
    .end local v1    # "_arg0":I
    :pswitch_16
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v1

    .line 654
    .local v1, "_result":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 656
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 643
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .local v2, "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(II)V

    .line 648
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 632
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_18
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 634
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2    # "_arg1":I
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 637
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    goto/16 :goto_0

    .line 597
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    :pswitch_19
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 599
    .local v1, "_arg0":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    .line 601
    .local v2, "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 603
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 605
    .local v4, "_arg3":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 607
    .local v5, "_arg4":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 609
    .local v6, "_arg5":I
    sget-object v11, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    .line 611
    .local v11, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v12

    .line 613
    .local v12, "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v13

    .line 615
    .local v13, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    move v14, v10

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 617
    .local v10, "_arg9":I
    move-object/from16 v16, v11

    .end local v11    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .local v16, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 619
    .local v11, "_arg10":I
    sget-object v14, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 621
    .local v14, "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    move-object/from16 v17, v9

    move-object v9, v13

    .end local v13    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .local v9, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 623
    .local v13, "_arg12":I
    move-object v8, v12

    move-object v12, v14

    .end local v14    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .local v8, "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .local v12, "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 624
    .local v14, "_arg13":Z
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    move-object v15, v7

    move-object/from16 v7, v16

    .end local v16    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .local v7, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;IZ)V

    .line 626
    .end local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .restart local v16    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v14, p3

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 565
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v13    # "_arg12":I
    .end local v14    # "_arg13":Z
    .end local v16    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    :pswitch_1a
    move-object v15, v7

    move-object/from16 v17, v9

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .restart local v1    # "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    .line 569
    .restart local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 571
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .restart local v4    # "_arg3":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 575
    .restart local v5    # "_arg4":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 577
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    .line 579
    .restart local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v8

    .line 581
    .restart local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v9

    .line 583
    .local v9, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 585
    .restart local v10    # "_arg9":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 587
    .restart local v11    # "_arg10":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 588
    .restart local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v13

    .line 590
    .local v13, "_result":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move-object/from16 v14, p3

    const/4 v0, 0x1

    invoke-virtual {v14, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 592
    move v9, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 558
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v13    # "_result":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v0, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest()V

    .line 559
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move v9, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 537
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v0, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 539
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 541
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 543
    .local v3, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 545
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 547
    .local v5, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 549
    .restart local v6    # "_arg5":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 550
    .local v7, "_arg6":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    move v9, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v8

    .line 552
    .local v8, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    goto/16 :goto_0

    .line 513
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ResultReceiver;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    .end local v8    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 515
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 519
    .restart local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .restart local v4    # "_arg3":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 523
    .local v5, "_arg4":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ResultReceiver;

    .line 525
    .local v6, "_arg5":Landroid/os/ResultReceiver;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 527
    .local v7, "_arg6":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 528
    .local v8, "_arg7":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v10

    .line 530
    .local v10, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    goto/16 :goto_0

    .line 503
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ResultReceiver;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Z
    .end local v10    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 506
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v14, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    goto/16 :goto_0

    .line 489
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 493
    .local v2, "_arg1":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 494
    .local v3, "_arg2":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v14, v4, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 498
    goto/16 :goto_0

    .line 479
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    .local v1, "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {v14, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 484
    goto/16 :goto_0

    .line 467
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .restart local v1    # "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg1":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v14, v3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 474
    goto/16 :goto_0

    .line 457
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .restart local v1    # "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v2

    .line 460
    .local v2, "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v14, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    goto :goto_0

    .line 445
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .local v2, "_arg1":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v3

    .line 450
    .local v3, "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v14, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    goto :goto_0

    .line 435
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .restart local v1    # "_arg0":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 438
    .local v2, "_result":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v14, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto :goto_0

    .line 422
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move v9, v10

    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 424
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    .line 426
    .local v2, "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .local v3, "_arg2":I
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 429
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    nop

    .line 900
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v3    # "_arg2":I
    :goto_0
    return v9

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist removeImeSurface_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1685
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1686
    return-void
.end method

.method protected blacklist setStylusWindowIdleTimeoutForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1715
    return-void
.end method

.method protected blacklist shouldShowImeSwitcherButtonForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1675
    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystem_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1659
    return-void
.end method

.method protected blacklist startImeTrace_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1694
    return-void
.end method

.method protected blacklist stopImeTrace_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1699
    return-void
.end method
