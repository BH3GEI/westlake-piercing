.class public abstract Landroid/hardware/biometrics/face/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x5

.field static final TRANSACTION_authenticateWithContext:I = 0xf

.field static final TRANSACTION_close:I = 0xe

.field static final TRANSACTION_detectInteraction:I = 0x6

.field static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final TRANSACTION_enroll:I = 0x4

.field static final TRANSACTION_enrollWithContext:I = 0x10

.field static final TRANSACTION_enrollWithOptions:I = 0x13

.field static final TRANSACTION_enumerateEnrollments:I = 0x7

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0xb

.field static final TRANSACTION_getEnrollmentConfig:I = 0x3

.field static final TRANSACTION_getFeatures:I = 0x9

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0xc

.field static final TRANSACTION_onContextChanged:I = 0x12

.field static final TRANSACTION_removeEnrollments:I = 0x8

.field static final TRANSACTION_resetLockout:I = 0xd

.field static final TRANSACTION_revokeChallenge:I = 0x2

.field static final TRANSACTION_setFeature:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->markVintfStability()V

    .line 112
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISession;

    if-eqz v1, :cond_1

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/ISession;

    return-object v1

    .line 127
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 136
    sparse-switch p0, :sswitch_data_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 216
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 220
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 212
    :sswitch_2
    const-string v0, "enrollWithOptions"

    return-object v0

    .line 208
    :sswitch_3
    const-string/jumbo v0, "onContextChanged"

    return-object v0

    .line 204
    :sswitch_4
    const-string v0, "detectInteractionWithContext"

    return-object v0

    .line 200
    :sswitch_5
    const-string v0, "enrollWithContext"

    return-object v0

    .line 196
    :sswitch_6
    const-string v0, "authenticateWithContext"

    return-object v0

    .line 192
    :sswitch_7
    const-string v0, "close"

    return-object v0

    .line 188
    :sswitch_8
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 184
    :sswitch_9
    const-string/jumbo v0, "invalidateAuthenticatorId"

    return-object v0

    .line 180
    :sswitch_a
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 176
    :sswitch_b
    const-string/jumbo v0, "setFeature"

    return-object v0

    .line 172
    :sswitch_c
    const-string v0, "getFeatures"

    return-object v0

    .line 168
    :sswitch_d
    const-string/jumbo v0, "removeEnrollments"

    return-object v0

    .line 164
    :sswitch_e
    const-string v0, "enumerateEnrollments"

    return-object v0

    .line 160
    :sswitch_f
    const-string v0, "detectInteraction"

    return-object v0

    .line 156
    :sswitch_10
    const-string v0, "authenticate"

    return-object v0

    .line 152
    :sswitch_11
    const-string v0, "enroll"

    return-object v0

    .line 148
    :sswitch_12
    const-string v0, "getEnrollmentConfig"

    return-object v0

    .line 144
    :sswitch_13
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 140
    :sswitch_14
    const-string v0, "generateChallenge"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x4 -> :sswitch_11
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 131
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 887
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 231
    invoke-static {p1}, Landroid/hardware/biometrics/face/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 235
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 236
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 237
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 240
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v2

    .line 243
    :cond_1
    if-ne p1, v1, :cond_2

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return v2

    .line 248
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    return v2

    .line 253
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 435
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 426
    :pswitch_0
    sget-object v1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/FaceEnrollOptions;

    .line 427
    .local v1, "_arg0":Landroid/hardware/biometrics/face/FaceEnrollOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 429
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 431
    move-object v3, p0

    goto/16 :goto_0

    .line 417
    .end local v1    # "_arg0":Landroid/hardware/biometrics/face/FaceEnrollOptions;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_1
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 418
    .local v1, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object v3, p0

    goto/16 :goto_0

    .line 407
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_2
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 408
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 410
    .restart local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 412
    move-object v3, p0

    goto/16 :goto_0

    .line 389
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_3
    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 391
    .local v4, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 393
    .local v5, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 395
    .local v6, "_arg2":[B
    sget-object v1, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/hardware/common/NativeHandle;

    .line 397
    .local v7, "_arg3":Landroid/hardware/common/NativeHandle;
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/hardware/biometrics/common/OperationContext;

    .line 398
    .local v8, "_arg4":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/face/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 400
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 402
    goto/16 :goto_0

    .line 377
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    .end local v4    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v5    # "_arg1":B
    .end local v6    # "_arg2":[B
    .end local v7    # "_arg3":Landroid/hardware/common/NativeHandle;
    .end local v8    # "_arg4":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 379
    .local v4, "_arg0":J
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 380
    .local v1, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v4, v5, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v6

    .line 382
    .local v6, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 384
    goto/16 :goto_0

    .line 370
    .end local v1    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v4    # "_arg0":J
    .end local v6    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_5
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->close()V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto/16 :goto_0

    .line 362
    :pswitch_6
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 363
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_0

    .line 355
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_7
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->invalidateAuthenticatorId()V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto/16 :goto_0

    .line 349
    :pswitch_8
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getAuthenticatorId()V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_0

    .line 337
    :pswitch_9
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 339
    .restart local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 341
    .local v4, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 342
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v4, v5}, Landroid/hardware/biometrics/face/ISession$Stub;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_0

    .line 330
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v4    # "_arg1":B
    .end local v5    # "_arg2":Z
    :pswitch_a
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getFeatures()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 322
    :pswitch_b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 323
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->removeEnrollments([I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_0

    .line 315
    .end local v1    # "_arg0":[I
    :pswitch_c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->enumerateEnrollments()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_0

    .line 308
    :pswitch_d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 309
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 311
    goto :goto_0

    .line 299
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 300
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/face/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 302
    .restart local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 304
    goto :goto_0

    .line 283
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    .end local v4    # "_arg0":J
    :pswitch_f
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 285
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 287
    .local v4, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 289
    .local v5, "_arg2":[B
    sget-object v6, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/common/NativeHandle;

    .line 290
    .local v6, "_arg3":Landroid/hardware/common/NativeHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v4, v5, v6}, Landroid/hardware/biometrics/face/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v7

    .line 292
    .local v7, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 294
    goto :goto_0

    .line 273
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v4    # "_arg1":B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":Landroid/hardware/common/NativeHandle;
    .end local v7    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_10
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 274
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISession$Stub;->getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object v4

    .line 276
    .local v4, "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 278
    goto :goto_0

    .line 264
    .end local v1    # "_arg0":B
    .end local v4    # "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    :pswitch_11
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 265
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/face/ISession$Stub;->revokeChallenge(J)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto :goto_0

    .line 257
    .end local v4    # "_arg0":J
    :pswitch_12
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->generateChallenge()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    nop

    .line 438
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
