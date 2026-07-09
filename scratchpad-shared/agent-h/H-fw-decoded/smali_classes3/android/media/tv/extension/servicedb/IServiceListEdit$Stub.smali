.class public abstract Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;
.super Landroid/os/Binder;
.source "IServiceListEdit.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListEdit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPredefinedChannelList:I = 0x15

.field static final blacklist TRANSACTION_addPredefinedSatInfo:I = 0x16

.field static final blacklist TRANSACTION_addPredefinedServiceListInfo:I = 0x14

.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_commit:I = 0x3

.field static final blacklist TRANSACTION_getNetworkInfoList:I = 0x10

.field static final blacklist TRANSACTION_getSatelliteInfoList:I = 0x11

.field static final blacklist TRANSACTION_getServiceInfoFromDatabase:I = 0x5

.field static final blacklist TRANSACTION_getServiceInfoIdsFromDatabase:I = 0x7

.field static final blacklist TRANSACTION_getServiceInfoListFromDatabase:I = 0x6

.field static final blacklist TRANSACTION_getServiceListChannelIds:I = 0xc

.field static final blacklist TRANSACTION_getServiceListInfoByChannelId:I = 0xd

.field static final blacklist TRANSACTION_getTransportStreamInfoList:I = 0xe

.field static final blacklist TRANSACTION_getTransportStreamInfoListForce:I = 0xf

.field static final blacklist TRANSACTION_open:I = 0x1

.field static final blacklist TRANSACTION_putRecordIdList:I = 0x13

.field static final blacklist TRANSACTION_removeServiceInfoByListFromDatabase:I = 0xb

.field static final blacklist TRANSACTION_removeServiceInfoFromDatabase:I = 0xa

.field static final blacklist TRANSACTION_toRecordInfoByType:I = 0x12

.field static final blacklist TRANSACTION_updateServiceInfoByListFromDatabase:I = 0x9

.field static final blacklist TRANSACTION_updateServiceInfoFromDatabase:I = 0x8

.field static final blacklist TRANSACTION_userEditCommit:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEdit;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    if-eqz v1, :cond_1

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    return-object v1

    .line 158
    :cond_1
    new-instance v1, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 167
    packed-switch p0, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 255
    :pswitch_0
    const-string v0, "addPredefinedSatInfo"

    return-object v0

    .line 251
    :pswitch_1
    const-string v0, "addPredefinedChannelList"

    return-object v0

    .line 247
    :pswitch_2
    const-string v0, "addPredefinedServiceListInfo"

    return-object v0

    .line 243
    :pswitch_3
    const-string/jumbo v0, "putRecordIdList"

    return-object v0

    .line 239
    :pswitch_4
    const-string/jumbo v0, "toRecordInfoByType"

    return-object v0

    .line 235
    :pswitch_5
    const-string v0, "getSatelliteInfoList"

    return-object v0

    .line 231
    :pswitch_6
    const-string v0, "getNetworkInfoList"

    return-object v0

    .line 227
    :pswitch_7
    const-string/jumbo v0, "getTransportStreamInfoListForce"

    return-object v0

    .line 223
    :pswitch_8
    const-string/jumbo v0, "getTransportStreamInfoList"

    return-object v0

    .line 219
    :pswitch_9
    const-string v0, "getServiceListInfoByChannelId"

    return-object v0

    .line 215
    :pswitch_a
    const-string v0, "getServiceListChannelIds"

    return-object v0

    .line 211
    :pswitch_b
    const-string/jumbo v0, "removeServiceInfoByListFromDatabase"

    return-object v0

    .line 207
    :pswitch_c
    const-string/jumbo v0, "removeServiceInfoFromDatabase"

    return-object v0

    .line 203
    :pswitch_d
    const-string/jumbo v0, "updateServiceInfoByListFromDatabase"

    return-object v0

    .line 199
    :pswitch_e
    const-string/jumbo v0, "updateServiceInfoFromDatabase"

    return-object v0

    .line 195
    :pswitch_f
    const-string v0, "getServiceInfoIdsFromDatabase"

    return-object v0

    .line 191
    :pswitch_10
    const-string v0, "getServiceInfoListFromDatabase"

    return-object v0

    .line 187
    :pswitch_11
    const-string v0, "getServiceInfoFromDatabase"

    return-object v0

    .line 183
    :pswitch_12
    const-string/jumbo v0, "userEditCommit"

    return-object v0

    .line 179
    :pswitch_13
    const-string v0, "commit"

    return-object v0

    .line 175
    :pswitch_14
    const-string v0, "close"

    return-object v0

    .line 171
    :pswitch_15
    const-string/jumbo v0, "open"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 162
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1003
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 266
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    .line 271
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 272
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 275
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    return v1

    .line 278
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 522
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 511
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 514
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedSatInfo(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 516
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    move-object v5, p0

    goto/16 :goto_0

    .line 499
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 502
    .local v3, "_arg1":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedChannelList(Ljava/lang/String;[Landroid/os/Bundle;)I

    move-result v4

    .line 504
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    move-object v5, p0

    goto/16 :goto_0

    .line 481
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 483
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 490
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedServiceListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    goto/16 :goto_0

    .line 467
    .end local v2    # "_result":Ljava/lang/String;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    :pswitch_3
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 471
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->putRecordIdList(Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v6

    .line 474
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    goto/16 :goto_0

    .line 455
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":I
    :pswitch_4
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 457
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->toRecordInfoByType(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    goto/16 :goto_0

    .line 443
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_5
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getSatelliteInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 448
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 450
    goto/16 :goto_0

    .line 431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_6
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 434
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getNetworkInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 436
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    goto/16 :goto_0

    .line 419
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_7
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 422
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoListForce(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 424
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 426
    goto/16 :goto_0

    .line 407
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_8
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 410
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 412
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 414
    goto/16 :goto_0

    .line 395
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_9
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 398
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListInfoByChannelId(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 400
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    goto/16 :goto_0

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_a
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListChannelIds()[Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 390
    goto/16 :goto_0

    .line 378
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_b
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoByListFromDatabase([Ljava/lang/String;)I

    move-result v3

    .line 381
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    goto/16 :goto_0

    .line 368
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoFromDatabase(Ljava/lang/String;)I

    move-result v3

    .line 371
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_d
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 359
    .local v2, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoByListFromDatabase([Landroid/os/Bundle;)I

    move-result v3

    .line 361
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto/16 :goto_0

    .line 348
    .end local v2    # "_arg0":[Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_e
    move-object v5, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 349
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoFromDatabase(Landroid/os/Bundle;)I

    move-result v3

    .line 351
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    goto/16 :goto_0

    .line 338
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_f
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoIdsFromDatabase(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 343
    goto/16 :goto_0

    .line 326
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_10
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoListFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 331
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 333
    goto :goto_0

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_11
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 317
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 319
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    goto :goto_0

    .line 306
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_12
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->userEditCommit()I

    move-result v2

    .line 307
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    goto :goto_0

    .line 299
    .end local v2    # "_result":I
    :pswitch_13
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->commit()I

    move-result v2

    .line 300
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    goto :goto_0

    .line 292
    .end local v2    # "_result":I
    :pswitch_14
    move-object v5, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->close()I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto :goto_0

    .line 283
    .end local v2    # "_result":I
    :pswitch_15
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/servicedb/IServiceListEditListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEditListener;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Landroid/media/tv/extension/servicedb/IServiceListEditListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->open(Landroid/media/tv/extension/servicedb/IServiceListEditListener;)I

    move-result v3

    .line 286
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    nop

    .line 525
    .end local v2    # "_arg0":Landroid/media/tv/extension/servicedb/IServiceListEditListener;
    .end local v3    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
