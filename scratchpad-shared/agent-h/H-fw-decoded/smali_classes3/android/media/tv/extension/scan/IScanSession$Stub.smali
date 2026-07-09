.class public abstract Landroid/media/tv/extension/scan/IScanSession$Stub;
.super Landroid/os/Binder;
.source "IScanSession.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IScanSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IScanSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelScan:I = 0x3

.field static final blacklist TRANSACTION_clearServiceList:I = 0x6

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x4

.field static final blacklist TRANSACTION_getCountryRegionData:I = 0x11

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x5

.field static final blacklist TRANSACTION_getPackageData:I = 0xf

.field static final blacklist TRANSACTION_getRegionData:I = 0x13

.field static final blacklist TRANSACTION_getServiceInfo:I = 0x8

.field static final blacklist TRANSACTION_getServiceInfoIdList:I = 0x9

.field static final blacklist TRANSACTION_getServiceInfoList:I = 0xa

.field static final blacklist TRANSACTION_getServiceLists:I = 0xd

.field static final blacklist TRANSACTION_getSessionToken:I = 0x15

.field static final blacklist TRANSACTION_release:I = 0x16

.field static final blacklist TRANSACTION_resetScan:I = 0x2

.field static final blacklist TRANSACTION_setCountryRegion:I = 0x12

.field static final blacklist TRANSACTION_setPackage:I = 0x10

.field static final blacklist TRANSACTION_setRegion:I = 0x14

.field static final blacklist TRANSACTION_setServiceList:I = 0xe

.field static final blacklist TRANSACTION_startScan:I = 0x1

.field static final blacklist TRANSACTION_storeServiceList:I = 0x7

.field static final blacklist TRANSACTION_updateServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_updateServiceInfoByList:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IScanSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/extension/scan/IScanSession;

    if-eqz v1, :cond_1

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IScanSession;

    return-object v1

    .line 154
    :cond_1
    new-instance v1, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 251
    :pswitch_0
    const-string/jumbo v0, "release"

    return-object v0

    .line 247
    :pswitch_1
    const-string v0, "getSessionToken"

    return-object v0

    .line 243
    :pswitch_2
    const-string/jumbo v0, "setRegion"

    return-object v0

    .line 239
    :pswitch_3
    const-string v0, "getRegionData"

    return-object v0

    .line 235
    :pswitch_4
    const-string/jumbo v0, "setCountryRegion"

    return-object v0

    .line 231
    :pswitch_5
    const-string v0, "getCountryRegionData"

    return-object v0

    .line 227
    :pswitch_6
    const-string/jumbo v0, "setPackage"

    return-object v0

    .line 223
    :pswitch_7
    const-string v0, "getPackageData"

    return-object v0

    .line 219
    :pswitch_8
    const-string/jumbo v0, "setServiceList"

    return-object v0

    .line 215
    :pswitch_9
    const-string v0, "getServiceLists"

    return-object v0

    .line 211
    :pswitch_a
    const-string/jumbo v0, "updateServiceInfoByList"

    return-object v0

    .line 207
    :pswitch_b
    const-string/jumbo v0, "updateServiceInfo"

    return-object v0

    .line 203
    :pswitch_c
    const-string v0, "getServiceInfoList"

    return-object v0

    .line 199
    :pswitch_d
    const-string v0, "getServiceInfoIdList"

    return-object v0

    .line 195
    :pswitch_e
    const-string v0, "getServiceInfo"

    return-object v0

    .line 191
    :pswitch_f
    const-string/jumbo v0, "storeServiceList"

    return-object v0

    .line 187
    :pswitch_10
    const-string v0, "clearServiceList"

    return-object v0

    .line 183
    :pswitch_11
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 179
    :pswitch_12
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 175
    :pswitch_13
    const-string v0, "cancelScan"

    return-object v0

    .line 171
    :pswitch_14
    const-string/jumbo v0, "resetScan"

    return-object v0

    .line 167
    :pswitch_15
    const-string/jumbo v0, "startScan"

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

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 940
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 262
    invoke-static {p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    .line 267
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 271
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return v1

    .line 274
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 479
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 472
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->release()I

    move-result v2

    .line 473
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_0

    .line 465
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    goto/16 :goto_0

    .line 456
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setRegion(Ljava/lang/String;)I

    move-result v3

    .line 459
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    goto/16 :goto_0

    .line 448
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getRegionData()Landroid/os/Bundle;

    move-result-object v2

    .line 449
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 451
    goto/16 :goto_0

    .line 439
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setCountryRegion(Ljava/lang/String;)I

    move-result v3

    .line 442
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    goto/16 :goto_0

    .line 431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getCountryRegionData()Landroid/os/Bundle;

    move-result-object v2

    .line 432
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 434
    goto/16 :goto_0

    .line 422
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setPackage(Ljava/lang/String;)I

    move-result v3

    .line 425
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getPackageData()Landroid/os/Bundle;

    move-result-object v2

    .line 415
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 417
    goto/16 :goto_0

    .line 405
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 406
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setServiceList(I)I

    move-result v3

    .line 408
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceLists()Landroid/os/Bundle;

    move-result-object v2

    .line 398
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    goto/16 :goto_0

    .line 388
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_a
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 389
    .local v2, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfoByList([Landroid/os/Bundle;)I

    move-result v3

    .line 391
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    goto/16 :goto_0

    .line 378
    .end local v2    # "_arg0":[Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_b
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 379
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfo(Landroid/os/Bundle;)I

    move-result v3

    .line 381
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 368
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoList(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 371
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 373
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_d
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoIdList()[Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 361
    goto/16 :goto_0

    .line 347
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 350
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 352
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 354
    goto/16 :goto_0

    .line 339
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->storeServiceList()I

    move-result v2

    .line 340
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    goto :goto_0

    .line 330
    .end local v2    # "_result":I
    :pswitch_10
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 331
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->clearServiceList(Landroid/os/Bundle;)I

    move-result v3

    .line 333
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    goto :goto_0

    .line 320
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 323
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 325
    goto :goto_0

    .line 312
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_12
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getAvailableExtensionInterfaceNames()[Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 315
    goto :goto_0

    .line 305
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->cancelScan()I

    move-result v2

    .line 306
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    goto :goto_0

    .line 298
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->resetScan()I

    move-result v2

    .line 299
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    goto :goto_0

    .line 279
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 287
    .local v7, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/media/tv/extension/scan/IScanSession$Stub;->startScan(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    nop

    .line 482
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":[I
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
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
