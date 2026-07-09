.class public abstract Landroid/hardware/vibrator/IVibrator$Stub;
.super Landroid/os/Binder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_alwaysOnDisable:I = 0xf

.field static final blacklist TRANSACTION_alwaysOnEnable:I = 0xe

.field static final blacklist TRANSACTION_compose:I = 0xc

.field static final blacklist TRANSACTION_composePwle:I = 0x18

.field static final blacklist TRANSACTION_composePwleV2:I = 0x1e

.field static final blacklist TRANSACTION_getBandwidthAmplitudeMap:I = 0x14

.field static final blacklist TRANSACTION_getCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getCompositionDelayMax:I = 0x8

.field static final blacklist TRANSACTION_getCompositionSizeMax:I = 0x9

.field static final blacklist TRANSACTION_getFrequencyMinimum:I = 0x13

.field static final blacklist TRANSACTION_getFrequencyResolution:I = 0x12

.field static final blacklist TRANSACTION_getFrequencyToOutputAccelerationMap:I = 0x1a

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPrimitiveDuration:I = 0xb

.field static final blacklist TRANSACTION_getPwleCompositionSizeMax:I = 0x16

.field static final blacklist TRANSACTION_getPwlePrimitiveDurationMax:I = 0x15

.field static final blacklist TRANSACTION_getPwleV2CompositionSizeMax:I = 0x1c

.field static final blacklist TRANSACTION_getPwleV2PrimitiveDurationMaxMillis:I = 0x1b

.field static final blacklist TRANSACTION_getPwleV2PrimitiveDurationMinMillis:I = 0x1d

.field static final blacklist TRANSACTION_getQFactor:I = 0x11

.field static final blacklist TRANSACTION_getResonantFrequency:I = 0x10

.field static final blacklist TRANSACTION_getSupportedAlwaysOnEffects:I = 0xd

.field static final blacklist TRANSACTION_getSupportedBraking:I = 0x17

.field static final blacklist TRANSACTION_getSupportedEffects:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPrimitives:I = 0xa

.field static final blacklist TRANSACTION_off:I = 0x2

.field static final blacklist TRANSACTION_on:I = 0x3

.field static final blacklist TRANSACTION_perform:I = 0x4

.field static final blacklist TRANSACTION_performVendorEffect:I = 0x19

.field static final blacklist TRANSACTION_setAmplitude:I = 0x6

.field static final blacklist TRANSACTION_setExternalControl:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->markVintfStability()V

    .line 161
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/vibrator/IVibrator;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/hardware/vibrator/IVibrator;

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 180
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 185
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v2

    .line 192
    :cond_1
    if-ne p1, v1, :cond_2

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return v2

    .line 197
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v2

    .line 202
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 447
    :pswitch_0
    sget-object v1, Landroid/hardware/vibrator/CompositePwleV2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/CompositePwleV2;

    .line 449
    .local v1, "_arg0":Landroid/hardware/vibrator/CompositePwleV2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 450
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwleV2(Landroid/hardware/vibrator/CompositePwleV2;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 439
    .end local v1    # "_arg0":Landroid/hardware/vibrator/CompositePwleV2;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2PrimitiveDurationMinMillis()I

    move-result v1

    .line 440
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    goto/16 :goto_0

    .line 432
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2CompositionSizeMax()I

    move-result v1

    .line 433
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_0

    .line 425
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2PrimitiveDurationMaxMillis()I

    move-result v1

    .line 426
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    goto/16 :goto_0

    .line 418
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyToOutputAccelerationMap()Ljava/util/List;

    move-result-object v1

    .line 419
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 421
    goto/16 :goto_0

    .line 408
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;>;"
    :pswitch_5
    sget-object v1, Landroid/hardware/vibrator/VendorEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/VendorEffect;

    .line 410
    .local v1, "_arg0":Landroid/hardware/vibrator/VendorEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 411
    .restart local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->performVendorEffect(Landroid/hardware/vibrator/VendorEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_0

    .line 397
    .end local v1    # "_arg0":Landroid/hardware/vibrator/VendorEffect;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_6
    sget-object v1, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/vibrator/PrimitivePwle;

    .line 399
    .local v1, "_arg0":[Landroid/hardware/vibrator/PrimitivePwle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 400
    .restart local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v1, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_0

    .line 389
    .end local v1    # "_arg0":[Landroid/hardware/vibrator/PrimitivePwle;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedBraking()[I

    move-result-object v1

    .line 390
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 392
    goto/16 :goto_0

    .line 382
    .end local v1    # "_result":[I
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleCompositionSizeMax()I

    move-result v1

    .line 383
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_0

    .line 375
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwlePrimitiveDurationMax()I

    move-result v1

    .line 376
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    goto/16 :goto_0

    .line 368
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getBandwidthAmplitudeMap()[F

    move-result-object v1

    .line 369
    .local v1, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 371
    goto/16 :goto_0

    .line 361
    .end local v1    # "_result":[F
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyMinimum()F

    move-result v1

    .line 362
    .local v1, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 364
    goto/16 :goto_0

    .line 354
    .end local v1    # "_result":F
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyResolution()F

    move-result v1

    .line 355
    .restart local v1    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 357
    goto/16 :goto_0

    .line 347
    .end local v1    # "_result":F
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getQFactor()F

    move-result v1

    .line 348
    .restart local v1    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 350
    goto/16 :goto_0

    .line 340
    .end local v1    # "_result":F
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getResonantFrequency()F

    move-result v1

    .line 341
    .restart local v1    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 343
    goto/16 :goto_0

    .line 332
    .end local v1    # "_result":F
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v1}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnDisable(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 319
    .end local v1    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 324
    .local v4, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnEnable(IIB)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_0

    .line 311
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":B
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedAlwaysOnEffects()[I

    move-result-object v1

    .line 312
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 314
    goto/16 :goto_0

    .line 301
    .end local v1    # "_result":[I
    :pswitch_12
    sget-object v1, Landroid/hardware/vibrator/CompositeEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/vibrator/CompositeEffect;

    .line 303
    .local v1, "_arg0":[Landroid/hardware/vibrator/CompositeEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 304
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v1, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_0

    .line 291
    .end local v1    # "_arg0":[Landroid/hardware/vibrator/CompositeEffect;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1}, Landroid/hardware/vibrator/IVibrator$Stub;->getPrimitiveDuration(I)I

    move-result v3

    .line 294
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto/16 :goto_0

    .line 283
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedPrimitives()[I

    move-result-object v1

    .line 284
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 286
    goto/16 :goto_0

    .line 276
    .end local v1    # "_result":[I
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionSizeMax()I

    move-result v1

    .line 277
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_0

    .line 269
    .end local v1    # "_result":I
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionDelayMax()I

    move-result v1

    .line 270
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    goto :goto_0

    .line 261
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 262
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1}, Landroid/hardware/vibrator/IVibrator$Stub;->setExternalControl(Z)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_0

    .line 252
    .end local v1    # "_arg0":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 253
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1}, Landroid/hardware/vibrator/IVibrator$Stub;->setAmplitude(F)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_0

    .line 244
    .end local v1    # "_arg0":F
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedEffects()[I

    move-result-object v1

    .line 245
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    goto :goto_0

    .line 231
    .end local v1    # "_result":[I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 235
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v4

    .line 236
    .local v4, "_arg2":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I

    move-result v5

    .line 238
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    goto :goto_0

    .line 220
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Landroid/hardware/vibrator/IVibratorCallback;
    .end local v5    # "_result":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 223
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v1, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->on(ILandroid/hardware/vibrator/IVibratorCallback;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto :goto_0

    .line 213
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->off()V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_0

    .line 206
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCapabilities()I

    move-result v1

    .line 207
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    nop

    .line 460
    .end local v1    # "_result":I
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
