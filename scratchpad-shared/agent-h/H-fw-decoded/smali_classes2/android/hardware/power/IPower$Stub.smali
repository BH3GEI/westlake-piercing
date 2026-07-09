.class public abstract Landroid/hardware/power/IPower$Stub;
.super Landroid/os/Binder;
.source "IPower.java"

# interfaces
.implements Landroid/hardware/power/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPower$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSessionChannel:I = 0x9

.field static final blacklist TRANSACTION_createHintSession:I = 0x5

.field static final blacklist TRANSACTION_createHintSessionWithConfig:I = 0x7

.field static final blacklist TRANSACTION_getCpuHeadroom:I = 0xb

.field static final blacklist TRANSACTION_getGpuHeadroom:I = 0xc

.field static final blacklist TRANSACTION_getHintSessionPreferredRate:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSessionChannel:I = 0x8

.field static final blacklist TRANSACTION_getSupportInfo:I = 0xa

.field static final blacklist TRANSACTION_isBoostSupported:I = 0x4

.field static final blacklist TRANSACTION_isModeSupported:I = 0x2

.field static final blacklist TRANSACTION_sendCompositionData:I = 0xd

.field static final blacklist TRANSACTION_sendCompositionUpdate:I = 0xe

.field static final blacklist TRANSACTION_setBoost:I = 0x3

.field static final blacklist TRANSACTION_setMode:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->markVintfStability()V

    .line 95
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/IPower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/power/IPower;

    if-eqz v1, :cond_1

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/IPower;

    return-object v1

    .line 110
    :cond_1
    new-instance v1, Landroid/hardware/power/IPower$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/IPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 119
    sparse-switch p0, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 179
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 183
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 175
    :sswitch_2
    const-string v0, "sendCompositionUpdate"

    return-object v0

    .line 171
    :sswitch_3
    const-string v0, "sendCompositionData"

    return-object v0

    .line 167
    :sswitch_4
    const-string v0, "getGpuHeadroom"

    return-object v0

    .line 163
    :sswitch_5
    const-string v0, "getCpuHeadroom"

    return-object v0

    .line 159
    :sswitch_6
    const-string v0, "getSupportInfo"

    return-object v0

    .line 155
    :sswitch_7
    const-string v0, "closeSessionChannel"

    return-object v0

    .line 151
    :sswitch_8
    const-string v0, "getSessionChannel"

    return-object v0

    .line 147
    :sswitch_9
    const-string v0, "createHintSessionWithConfig"

    return-object v0

    .line 143
    :sswitch_a
    const-string v0, "getHintSessionPreferredRate"

    return-object v0

    .line 139
    :sswitch_b
    const-string v0, "createHintSession"

    return-object v0

    .line 135
    :sswitch_c
    const-string v0, "isBoostSupported"

    return-object v0

    .line 131
    :sswitch_d
    const-string v0, "setBoost"

    return-object v0

    .line 127
    :sswitch_e
    const-string v0, "isModeSupported"

    return-object v0

    .line 123
    :sswitch_f
    const-string v0, "setMode"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x4 -> :sswitch_c
        0x5 -> :sswitch_b
        0x6 -> :sswitch_a
        0x7 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 721
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 194
    invoke-static {p1}, Landroid/hardware/power/IPower$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    move-object v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 199
    .local v10, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v11, 0x1

    if-lt p1, v11, :cond_0

    if-gt p1, v1, :cond_0

    .line 200
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 203
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v11

    .line 206
    :cond_1
    if-ne p1, v1, :cond_2

    .line 207
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v11

    .line 211
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 212
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v11

    .line 216
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 369
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 362
    :pswitch_0
    sget-object v1, Landroid/hardware/power/CompositionUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/CompositionUpdate;

    .line 363
    .local v1, "_arg0":Landroid/hardware/power/CompositionUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->sendCompositionUpdate(Landroid/hardware/power/CompositionUpdate;)V

    .line 365
    goto/16 :goto_0

    .line 354
    .end local v1    # "_arg0":Landroid/hardware/power/CompositionUpdate;
    :pswitch_1
    sget-object v1, Landroid/hardware/power/CompositionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/CompositionData;

    .line 355
    .local v1, "_arg0":[Landroid/hardware/power/CompositionData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->sendCompositionData([Landroid/hardware/power/CompositionData;)V

    .line 357
    goto/16 :goto_0

    .line 344
    .end local v1    # "_arg0":[Landroid/hardware/power/CompositionData;
    :pswitch_2
    sget-object v1, Landroid/hardware/power/GpuHeadroomParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/GpuHeadroomParams;

    .line 345
    .local v1, "_arg0":Landroid/hardware/power/GpuHeadroomParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v2

    .line 347
    .local v2, "_result":Landroid/hardware/power/GpuHeadroomResult;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 349
    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg0":Landroid/hardware/power/GpuHeadroomParams;
    .end local v2    # "_result":Landroid/hardware/power/GpuHeadroomResult;
    :pswitch_3
    sget-object v1, Landroid/hardware/power/CpuHeadroomParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/CpuHeadroomParams;

    .line 335
    .local v1, "_arg0":Landroid/hardware/power/CpuHeadroomParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v2

    .line 337
    .local v2, "_result":Landroid/hardware/power/CpuHeadroomResult;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto/16 :goto_0

    .line 326
    .end local v1    # "_arg0":Landroid/hardware/power/CpuHeadroomParams;
    .end local v2    # "_result":Landroid/hardware/power/CpuHeadroomResult;
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object v1

    .line 327
    .local v1, "_result":Landroid/hardware/power/SupportInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 329
    goto/16 :goto_0

    .line 317
    .end local v1    # "_result":Landroid/hardware/power/SupportInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v1, v2}, Landroid/hardware/power/IPower$Stub;->closeSessionChannel(II)V

    .line 322
    goto/16 :goto_0

    .line 305
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v1, v2}, Landroid/hardware/power/IPower$Stub;->getSessionChannel(II)Landroid/hardware/power/ChannelConfig;

    move-result-object v3

    .line 310
    .local v3, "_result":Landroid/hardware/power/ChannelConfig;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 312
    goto/16 :goto_0

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/hardware/power/ChannelConfig;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 290
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 292
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 294
    .local v6, "_arg4":I
    new-instance v7, Landroid/hardware/power/SessionConfig;

    invoke-direct {v7}, Landroid/hardware/power/SessionConfig;-><init>()V

    .line 295
    .local v7, "_arg5":Landroid/hardware/power/SessionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/power/IPower$Stub;->createHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)Landroid/hardware/power/IPowerHintSession;

    move-result-object v12

    .line 297
    .local v12, "_result":Landroid/hardware/power/IPowerHintSession;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    invoke-virtual {v9, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 300
    goto :goto_0

    .line 276
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/hardware/power/SessionConfig;
    .end local v12    # "_result":Landroid/hardware/power/IPowerHintSession;
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getHintSessionPreferredRate()J

    move-result-wide v0

    .line 277
    .local v0, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    goto :goto_0

    .line 261
    .end local v0    # "_result":J
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 267
    .restart local v3    # "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 268
    .restart local v4    # "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/power/IPower$Stub;->createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;

    move-result-object v6

    .line 270
    .local v6, "_result":Landroid/hardware/power/IPowerHintSession;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 272
    goto :goto_0

    .line 251
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":J
    .end local v6    # "_result":Landroid/hardware/power/IPowerHintSession;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->isBoostSupported(I)Z

    move-result v2

    .line 254
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    goto :goto_0

    .line 241
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v1, v2}, Landroid/hardware/power/IPower$Stub;->setBoost(II)V

    .line 246
    goto :goto_0

    .line 231
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPower$Stub;->isModeSupported(I)Z

    move-result v2

    .line 234
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_0

    .line 221
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 224
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v1, v2}, Landroid/hardware/power/IPower$Stub;->setMode(IZ)V

    .line 226
    nop

    .line 372
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
