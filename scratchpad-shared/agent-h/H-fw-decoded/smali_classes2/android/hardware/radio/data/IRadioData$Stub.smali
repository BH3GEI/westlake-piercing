.class public abstract Landroid/hardware/radio/data/IRadioData$Stub;
.super Landroid/os/Binder;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allocatePduSessionId:I = 0x1

.field static final blacklist TRANSACTION_cancelHandover:I = 0x2

.field static final blacklist TRANSACTION_deactivateDataCall:I = 0x3

.field static final blacklist TRANSACTION_getDataCallList:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x5

.field static final blacklist TRANSACTION_releasePduSessionId:I = 0x6

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowed:I = 0x8

.field static final blacklist TRANSACTION_setDataProfile:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottling:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApn:I = 0xb

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xc

.field static final blacklist TRANSACTION_setupDataCall:I = 0xd

.field static final blacklist TRANSACTION_startHandover:I = 0xe

.field static final blacklist TRANSACTION_startKeepalive:I = 0xf

.field static final blacklist TRANSACTION_stopKeepalive:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->markVintfStability()V

    .line 93
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioData;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioData;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
    return-object p0
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

    .line 116
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    sget-object v14, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 117
    .local v14, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    if-gt v11, v1, :cond_0

    .line 118
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_0
    const v2, 0x5f4e5446

    if-ne v11, v2, :cond_1

    .line 121
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v15

    .line 124
    :cond_1
    if-ne v11, v1, :cond_2

    .line 125
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v15

    .line 129
    :cond_2
    const v1, 0xfffffe

    if-ne v11, v1, :cond_3

    .line 130
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v15

    .line 134
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 307
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 298
    :pswitch_0
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->stopKeepalive(II)V

    .line 303
    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/KeepaliveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/KeepaliveRequest;

    .line 291
    .local v2, "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    .line 293
    goto/16 :goto_0

    .line 278
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    :pswitch_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->startHandover(II)V

    .line 283
    goto/16 :goto_0

    .line 252
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/DataProfileInfo;

    .line 258
    .local v3, "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 260
    .local v4, "_arg3":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 262
    .local v5, "_arg4":I
    sget-object v6, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/radio/data/LinkAddress;

    .line 264
    .local v6, "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 268
    .local v8, "_arg7":I
    sget-object v9, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/data/SliceInfo;

    .line 270
    .local v9, "_arg8":Landroid/hardware/radio/data/SliceInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 271
    .local v10, "_arg9":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/radio/data/IRadioData$Stub;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    .line 273
    goto/16 :goto_0

    .line 242
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/hardware/radio/data/SliceInfo;
    .end local v10    # "_arg9":Z
    :pswitch_4
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;

    move-result-object v1

    .line 244
    .local v1, "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;

    move-result-object v2

    .line 245
    .local v2, "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    .line 247
    goto/16 :goto_0

    .line 232
    .end local v1    # "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    .end local v2    # "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    :pswitch_5
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .local v1, "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/DataProfileInfo;

    .line 235
    .local v2, "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 237
    goto/16 :goto_0

    .line 220
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_6
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 224
    .local v2, "_arg1":B
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 225
    .local v3, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataThrottling(IBJ)V

    .line 227
    goto/16 :goto_0

    .line 210
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":J
    :pswitch_7
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 213
    .local v2, "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    .line 215
    goto :goto_0

    .line 200
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_8
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 203
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataAllowed(IZ)V

    .line 205
    goto :goto_0

    .line 194
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_9
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->responseAcknowledgement()V

    .line 195
    goto :goto_0

    .line 185
    :pswitch_a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->releasePduSessionId(II)V

    .line 190
    goto :goto_0

    .line 177
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getSlicingConfig(I)V

    .line 180
    goto :goto_0

    .line 169
    .end local v1    # "_arg0":I
    :pswitch_c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getDataCallList(I)V

    .line 172
    goto :goto_0

    .line 157
    .end local v1    # "_arg0":I
    :pswitch_d
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->deactivateDataCall(III)V

    .line 164
    goto :goto_0

    .line 147
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_e
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->cancelHandover(II)V

    .line 152
    goto :goto_0

    .line 139
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->allocatePduSessionId(I)V

    .line 142
    nop

    .line 310
    .end local v1    # "_arg0":I
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x1
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
