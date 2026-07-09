.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addActivityPolicyExemption:I = 0xc

.field static final TRANSACTION_canCreateMirrorDisplays:I = 0x7

.field static final TRANSACTION_close:I = 0xa

.field static final TRANSACTION_createVirtualDisplay:I = 0x11

.field static final TRANSACTION_createVirtualDpad:I = 0x12

.field static final TRANSACTION_createVirtualKeyboard:I = 0x13

.field static final TRANSACTION_createVirtualMouse:I = 0x14

.field static final TRANSACTION_createVirtualNavigationTouchpad:I = 0x16

.field static final TRANSACTION_createVirtualRotaryEncoder:I = 0x18

.field static final TRANSACTION_createVirtualStylus:I = 0x17

.field static final TRANSACTION_createVirtualTouchscreen:I = 0x15

.field static final TRANSACTION_getAssociationId:I = 0x1

.field static final TRANSACTION_getCursorPosition:I = 0x27

.field static final TRANSACTION_getDeviceId:I = 0x2

.field static final TRANSACTION_getDevicePolicy:I = 0x5

.field static final TRANSACTION_getDisplayIds:I = 0x4

.field static final TRANSACTION_getInputDeviceId:I = 0x1a

.field static final TRANSACTION_getPersistentDeviceId:I = 0x3

.field static final TRANSACTION_getVirtualCameraId:I = 0x2e

.field static final TRANSACTION_getVirtualSensorList:I = 0x24

.field static final TRANSACTION_goToSleep:I = 0x8

.field static final TRANSACTION_hasCustomAudioInputSupport:I = 0x6

.field static final TRANSACTION_launchPendingIntent:I = 0x26

.field static final TRANSACTION_onAudioSessionEnded:I = 0x10

.field static final TRANSACTION_onAudioSessionStarting:I = 0xf

.field static final TRANSACTION_registerIntentInterceptor:I = 0x2a

.field static final TRANSACTION_registerVirtualCamera:I = 0x2c

.field static final TRANSACTION_removeActivityPolicyExemption:I = 0xd

.field static final TRANSACTION_sendButtonEvent:I = 0x1d

.field static final TRANSACTION_sendDpadKeyEvent:I = 0x1b

.field static final TRANSACTION_sendKeyEvent:I = 0x1c

.field static final TRANSACTION_sendRelativeEvent:I = 0x1e

.field static final TRANSACTION_sendRotaryEncoderScrollEvent:I = 0x23

.field static final TRANSACTION_sendScrollEvent:I = 0x1f

.field static final TRANSACTION_sendSensorEvent:I = 0x25

.field static final TRANSACTION_sendStylusButtonEvent:I = 0x22

.field static final TRANSACTION_sendStylusMotionEvent:I = 0x21

.field static final TRANSACTION_sendTouchEvent:I = 0x20

.field static final TRANSACTION_setDevicePolicy:I = 0xb

.field static final TRANSACTION_setDevicePolicyForDisplay:I = 0xe

.field static final TRANSACTION_setDisplayImePolicy:I = 0x29

.field static final TRANSACTION_setListeners:I = 0x2f

.field static final TRANSACTION_setShowPointerIcon:I = 0x28

.field static final TRANSACTION_unregisterInputDevice:I = 0x19

.field static final TRANSACTION_unregisterIntentInterceptor:I = 0x2b

.field static final TRANSACTION_unregisterVirtualCamera:I = 0x2d

.field static final TRANSACTION_wakeUp:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 272
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 284
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_1

    .line 285
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    return-object v1

    .line 287
    :cond_1
    new-instance v1, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 296
    packed-switch p0, :pswitch_data_0

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 484
    :pswitch_0
    const-string/jumbo v0, "setListeners"

    return-object v0

    .line 480
    :pswitch_1
    const-string/jumbo v0, "getVirtualCameraId"

    return-object v0

    .line 476
    :pswitch_2
    const-string/jumbo v0, "unregisterVirtualCamera"

    return-object v0

    .line 472
    :pswitch_3
    const-string/jumbo v0, "registerVirtualCamera"

    return-object v0

    .line 468
    :pswitch_4
    const-string/jumbo v0, "unregisterIntentInterceptor"

    return-object v0

    .line 464
    :pswitch_5
    const-string/jumbo v0, "registerIntentInterceptor"

    return-object v0

    .line 460
    :pswitch_6
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 456
    :pswitch_7
    const-string/jumbo v0, "setShowPointerIcon"

    return-object v0

    .line 452
    :pswitch_8
    const-string v0, "getCursorPosition"

    return-object v0

    .line 448
    :pswitch_9
    const-string/jumbo v0, "launchPendingIntent"

    return-object v0

    .line 444
    :pswitch_a
    const-string/jumbo v0, "sendSensorEvent"

    return-object v0

    .line 440
    :pswitch_b
    const-string/jumbo v0, "getVirtualSensorList"

    return-object v0

    .line 436
    :pswitch_c
    const-string/jumbo v0, "sendRotaryEncoderScrollEvent"

    return-object v0

    .line 432
    :pswitch_d
    const-string/jumbo v0, "sendStylusButtonEvent"

    return-object v0

    .line 428
    :pswitch_e
    const-string/jumbo v0, "sendStylusMotionEvent"

    return-object v0

    .line 424
    :pswitch_f
    const-string/jumbo v0, "sendTouchEvent"

    return-object v0

    .line 420
    :pswitch_10
    const-string/jumbo v0, "sendScrollEvent"

    return-object v0

    .line 416
    :pswitch_11
    const-string/jumbo v0, "sendRelativeEvent"

    return-object v0

    .line 412
    :pswitch_12
    const-string/jumbo v0, "sendButtonEvent"

    return-object v0

    .line 408
    :pswitch_13
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 404
    :pswitch_14
    const-string/jumbo v0, "sendDpadKeyEvent"

    return-object v0

    .line 400
    :pswitch_15
    const-string v0, "getInputDeviceId"

    return-object v0

    .line 396
    :pswitch_16
    const-string/jumbo v0, "unregisterInputDevice"

    return-object v0

    .line 392
    :pswitch_17
    const-string v0, "createVirtualRotaryEncoder"

    return-object v0

    .line 388
    :pswitch_18
    const-string v0, "createVirtualStylus"

    return-object v0

    .line 384
    :pswitch_19
    const-string v0, "createVirtualNavigationTouchpad"

    return-object v0

    .line 380
    :pswitch_1a
    const-string v0, "createVirtualTouchscreen"

    return-object v0

    .line 376
    :pswitch_1b
    const-string v0, "createVirtualMouse"

    return-object v0

    .line 372
    :pswitch_1c
    const-string v0, "createVirtualKeyboard"

    return-object v0

    .line 368
    :pswitch_1d
    const-string v0, "createVirtualDpad"

    return-object v0

    .line 364
    :pswitch_1e
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 360
    :pswitch_1f
    const-string/jumbo v0, "onAudioSessionEnded"

    return-object v0

    .line 356
    :pswitch_20
    const-string/jumbo v0, "onAudioSessionStarting"

    return-object v0

    .line 352
    :pswitch_21
    const-string/jumbo v0, "setDevicePolicyForDisplay"

    return-object v0

    .line 348
    :pswitch_22
    const-string/jumbo v0, "removeActivityPolicyExemption"

    return-object v0

    .line 344
    :pswitch_23
    const-string v0, "addActivityPolicyExemption"

    return-object v0

    .line 340
    :pswitch_24
    const-string/jumbo v0, "setDevicePolicy"

    return-object v0

    .line 336
    :pswitch_25
    const-string v0, "close"

    return-object v0

    .line 332
    :pswitch_26
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 328
    :pswitch_27
    const-string/jumbo v0, "goToSleep"

    return-object v0

    .line 324
    :pswitch_28
    const-string v0, "canCreateMirrorDisplays"

    return-object v0

    .line 320
    :pswitch_29
    const-string/jumbo v0, "hasCustomAudioInputSupport"

    return-object v0

    .line 316
    :pswitch_2a
    const-string v0, "getDevicePolicy"

    return-object v0

    .line 312
    :pswitch_2b
    const-string v0, "getDisplayIds"

    return-object v0

    .line 308
    :pswitch_2c
    const-string v0, "getPersistentDeviceId"

    return-object v0

    .line 304
    :pswitch_2d
    const-string v0, "getDeviceId"

    return-object v0

    .line 300
    :pswitch_2e
    const-string v0, "getAssociationId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 291
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1914
    const/16 v0, 0x2e

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 495
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    const-string v0, "android.companion.virtual.IVirtualDevice"

    .line 500
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 501
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 504
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    return v1

    .line 507
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 979
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 969
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v2

    .line 971
    .local v2, "_arg0":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-result-object v3

    .line 972
    .local v3, "_arg1":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    goto/16 :goto_0

    .line 959
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .end local v3    # "_arg1":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    :pswitch_1
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 960
    .local v2, "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 964
    goto/16 :goto_0

    .line 950
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 951
    .restart local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_0

    .line 941
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :pswitch_3
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 942
    .restart local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_0

    .line 932
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    .line 933
    .local v2, "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    goto/16 :goto_0

    .line 921
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    .line 923
    .restart local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 924
    .local v3, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_0

    .line 910
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    .end local v3    # "_arg1":Landroid/content/IntentFilter;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 912
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 913
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayImePolicy(II)V

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    goto/16 :goto_0

    .line 901
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 902
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_0

    .line 891
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 892
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v3

    .line 894
    .local v3, "_result":Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 896
    goto/16 :goto_0

    .line 878
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/graphics/PointF;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 880
    .local v2, "_arg0":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 882
    .local v3, "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 883
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_0

    .line 866
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 868
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 869
    .local v3, "_arg1":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result v4

    .line 871
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 873
    goto/16 :goto_0

    .line 858
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualSensorList()Ljava/util/List;

    move-result-object v2

    .line 859
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensor;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 861
    goto/16 :goto_0

    .line 847
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensor;>;"
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 849
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    .line 850
    .local v3, "_arg1":Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result v4

    .line 852
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    goto/16 :goto_0

    .line 835
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 837
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualStylusButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 838
    .local v3, "_arg1":Landroid/hardware/input/VirtualStylusButtonEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result v4

    .line 840
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 842
    goto/16 :goto_0

    .line 823
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualStylusButtonEvent;
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 825
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualStylusMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 826
    .local v3, "_arg1":Landroid/hardware/input/VirtualStylusMotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result v4

    .line 828
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 830
    goto/16 :goto_0

    .line 811
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualStylusMotionEvent;
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 813
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualTouchEvent;

    .line 814
    .local v3, "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v4

    .line 816
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    goto/16 :goto_0

    .line 799
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    .end local v4    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 801
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 802
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v4

    .line 804
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    goto/16 :goto_0

    .line 787
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    .end local v4    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 789
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 790
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v4

    .line 792
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 794
    goto/16 :goto_0

    .line 775
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    .end local v4    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 777
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 778
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v4

    .line 780
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 782
    goto/16 :goto_0

    .line 763
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    .end local v4    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 765
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    .line 766
    .local v3, "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    .line 768
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 770
    goto/16 :goto_0

    .line 751
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    .end local v4    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 753
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    .line 754
    .restart local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    .line 756
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 758
    goto/16 :goto_0

    .line 741
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    .end local v4    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 742
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v3

    .line 744
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    goto/16 :goto_0

    .line 732
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 733
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice(Landroid/os/IBinder;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    goto/16 :goto_0

    .line 721
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    sget-object v2, Landroid/hardware/input/VirtualRotaryEncoderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualRotaryEncoderConfig;

    .line 723
    .local v2, "_arg0":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 724
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_0

    .line 710
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_18
    sget-object v2, Landroid/hardware/input/VirtualStylusConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualStylusConfig;

    .line 712
    .local v2, "_arg0":Landroid/hardware/input/VirtualStylusConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 713
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_0

    .line 699
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualStylusConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_19
    sget-object v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    .line 701
    .local v2, "_arg0":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 702
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_0

    .line 688
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_1a
    sget-object v2, Landroid/hardware/input/VirtualTouchscreenConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualTouchscreenConfig;

    .line 690
    .local v2, "_arg0":Landroid/hardware/input/VirtualTouchscreenConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 691
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_0

    .line 677
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualTouchscreenConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_1b
    sget-object v2, Landroid/hardware/input/VirtualMouseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualMouseConfig;

    .line 679
    .local v2, "_arg0":Landroid/hardware/input/VirtualMouseConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 680
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    goto/16 :goto_0

    .line 666
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualMouseConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_1c
    sget-object v2, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualKeyboardConfig;

    .line 668
    .local v2, "_arg0":Landroid/hardware/input/VirtualKeyboardConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 669
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_0

    .line 655
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualKeyboardConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_1d
    sget-object v2, Landroid/hardware/input/VirtualDpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualDpadConfig;

    .line 657
    .local v2, "_arg0":Landroid/hardware/input/VirtualDpadConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 658
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_0

    .line 643
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualDpadConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_1e
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    .line 645
    .local v2, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    .line 646
    .local v3, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result v4

    .line 648
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    goto/16 :goto_0

    .line 636
    .end local v2    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v3    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v4    # "_result":I
    :pswitch_1f
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_0

    .line 624
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 626
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object v3

    .line 628
    .local v3, "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v4

    .line 629
    .local v4, "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .end local v4    # "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 613
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 616
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicyForDisplay(III)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_0

    .line 602
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_22
    sget-object v2, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 603
    .local v2, "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_0

    .line 593
    .end local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    :pswitch_23
    sget-object v2, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 594
    .restart local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_0

    .line 582
    .end local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 585
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicy(II)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto :goto_0

    .line 575
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_25
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto :goto_0

    .line 569
    :pswitch_26
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->wakeUp()V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto :goto_0

    .line 563
    :pswitch_27
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->goToSleep()V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto :goto_0

    .line 556
    :pswitch_28
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->canCreateMirrorDisplays()Z

    move-result v2

    .line 557
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 559
    goto :goto_0

    .line 549
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->hasCustomAudioInputSupport()Z

    move-result v2

    .line 550
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 552
    goto :goto_0

    .line 540
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDevicePolicy(I)I

    move-result v3

    .line 543
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    goto :goto_0

    .line 532
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2b
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDisplayIds()[I

    move-result-object v2

    .line 533
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 535
    goto :goto_0

    .line 525
    .end local v2    # "_result":[I
    :pswitch_2c
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    goto :goto_0

    .line 518
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDeviceId()I

    move-result v2

    .line 519
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    goto :goto_0

    .line 511
    .end local v2    # "_result":I
    :pswitch_2e
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result v2

    .line 512
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    nop

    .line 982
    .end local v2    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
