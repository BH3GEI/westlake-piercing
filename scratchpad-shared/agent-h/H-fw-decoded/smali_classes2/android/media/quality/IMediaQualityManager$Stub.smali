.class public abstract Landroid/media/quality/IMediaQualityManager$Stub;
.super Landroid/os/Binder;
.source "IMediaQualityManager.java"

# interfaces
.implements Landroid/media/quality/IMediaQualityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IMediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IMediaQualityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createPictureProfile:I = 0x1

.field static final blacklist TRANSACTION_createSoundProfile:I = 0xc

.field static final blacklist TRANSACTION_getAvailablePictureProfiles:I = 0x7

.field static final blacklist TRANSACTION_getAvailableSoundProfiles:I = 0x12

.field static final blacklist TRANSACTION_getParameterCapabilities:I = 0x1a

.field static final blacklist TRANSACTION_getPictureProfile:I = 0x5

.field static final blacklist TRANSACTION_getPictureProfileAllowList:I = 0x9

.field static final blacklist TRANSACTION_getPictureProfileHandle:I = 0xb

.field static final blacklist TRANSACTION_getPictureProfilePackageNames:I = 0x8

.field static final blacklist TRANSACTION_getPictureProfilesByPackage:I = 0x6

.field static final blacklist TRANSACTION_getSoundProfile:I = 0x10

.field static final blacklist TRANSACTION_getSoundProfileAllowList:I = 0x14

.field static final blacklist TRANSACTION_getSoundProfileHandle:I = 0x16

.field static final blacklist TRANSACTION_getSoundProfilePackageNames:I = 0x13

.field static final blacklist TRANSACTION_getSoundProfilesByPackage:I = 0x11

.field static final blacklist TRANSACTION_isAmbientBacklightEnabled:I = 0x24

.field static final blacklist TRANSACTION_isAutoPictureQualityEnabled:I = 0x1d

.field static final blacklist TRANSACTION_isAutoSoundQualityEnabled:I = 0x21

.field static final blacklist TRANSACTION_isSuperResolutionEnabled:I = 0x1f

.field static final blacklist TRANSACTION_isSupported:I = 0x1b

.field static final blacklist TRANSACTION_registerAmbientBacklightCallback:I = 0x19

.field static final blacklist TRANSACTION_registerPictureProfileCallback:I = 0x17

.field static final blacklist TRANSACTION_registerSoundProfileCallback:I = 0x18

.field static final blacklist TRANSACTION_removePictureProfile:I = 0x3

.field static final blacklist TRANSACTION_removeSoundProfile:I = 0xe

.field static final blacklist TRANSACTION_setAmbientBacklightEnabled:I = 0x23

.field static final blacklist TRANSACTION_setAmbientBacklightSettings:I = 0x22

.field static final blacklist TRANSACTION_setAutoPictureQualityEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setAutoSoundQualityEnabled:I = 0x20

.field static final blacklist TRANSACTION_setDefaultPictureProfile:I = 0x4

.field static final blacklist TRANSACTION_setDefaultSoundProfile:I = 0xf

.field static final blacklist TRANSACTION_setPictureProfileAllowList:I = 0xa

.field static final blacklist TRANSACTION_setSoundProfileAllowList:I = 0x15

.field static final blacklist TRANSACTION_setSuperResolutionEnabled:I = 0x1e

.field static final blacklist TRANSACTION_updatePictureProfile:I = 0x2

.field static final blacklist TRANSACTION_updateSoundProfile:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IMediaQualityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/quality/IMediaQualityManager;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/media/quality/IMediaQualityManager;

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 185
    packed-switch p0, :pswitch_data_0

    .line 333
    const/4 v0, 0x0

    return-object v0

    .line 329
    :pswitch_0
    const-string v0, "isAmbientBacklightEnabled"

    return-object v0

    .line 325
    :pswitch_1
    const-string v0, "setAmbientBacklightEnabled"

    return-object v0

    .line 321
    :pswitch_2
    const-string v0, "setAmbientBacklightSettings"

    return-object v0

    .line 317
    :pswitch_3
    const-string v0, "isAutoSoundQualityEnabled"

    return-object v0

    .line 313
    :pswitch_4
    const-string v0, "setAutoSoundQualityEnabled"

    return-object v0

    .line 309
    :pswitch_5
    const-string v0, "isSuperResolutionEnabled"

    return-object v0

    .line 305
    :pswitch_6
    const-string v0, "setSuperResolutionEnabled"

    return-object v0

    .line 301
    :pswitch_7
    const-string v0, "isAutoPictureQualityEnabled"

    return-object v0

    .line 297
    :pswitch_8
    const-string v0, "setAutoPictureQualityEnabled"

    return-object v0

    .line 293
    :pswitch_9
    const-string v0, "isSupported"

    return-object v0

    .line 289
    :pswitch_a
    const-string v0, "getParameterCapabilities"

    return-object v0

    .line 285
    :pswitch_b
    const-string v0, "registerAmbientBacklightCallback"

    return-object v0

    .line 281
    :pswitch_c
    const-string v0, "registerSoundProfileCallback"

    return-object v0

    .line 277
    :pswitch_d
    const-string v0, "registerPictureProfileCallback"

    return-object v0

    .line 273
    :pswitch_e
    const-string v0, "getSoundProfileHandle"

    return-object v0

    .line 269
    :pswitch_f
    const-string v0, "setSoundProfileAllowList"

    return-object v0

    .line 265
    :pswitch_10
    const-string v0, "getSoundProfileAllowList"

    return-object v0

    .line 261
    :pswitch_11
    const-string v0, "getSoundProfilePackageNames"

    return-object v0

    .line 257
    :pswitch_12
    const-string v0, "getAvailableSoundProfiles"

    return-object v0

    .line 253
    :pswitch_13
    const-string v0, "getSoundProfilesByPackage"

    return-object v0

    .line 249
    :pswitch_14
    const-string v0, "getSoundProfile"

    return-object v0

    .line 245
    :pswitch_15
    const-string v0, "setDefaultSoundProfile"

    return-object v0

    .line 241
    :pswitch_16
    const-string v0, "removeSoundProfile"

    return-object v0

    .line 237
    :pswitch_17
    const-string v0, "updateSoundProfile"

    return-object v0

    .line 233
    :pswitch_18
    const-string v0, "createSoundProfile"

    return-object v0

    .line 229
    :pswitch_19
    const-string v0, "getPictureProfileHandle"

    return-object v0

    .line 225
    :pswitch_1a
    const-string v0, "setPictureProfileAllowList"

    return-object v0

    .line 221
    :pswitch_1b
    const-string v0, "getPictureProfileAllowList"

    return-object v0

    .line 217
    :pswitch_1c
    const-string v0, "getPictureProfilePackageNames"

    return-object v0

    .line 213
    :pswitch_1d
    const-string v0, "getAvailablePictureProfiles"

    return-object v0

    .line 209
    :pswitch_1e
    const-string v0, "getPictureProfilesByPackage"

    return-object v0

    .line 205
    :pswitch_1f
    const-string v0, "getPictureProfile"

    return-object v0

    .line 201
    :pswitch_20
    const-string v0, "setDefaultPictureProfile"

    return-object v0

    .line 197
    :pswitch_21
    const-string v0, "removePictureProfile"

    return-object v0

    .line 193
    :pswitch_22
    const-string v0, "updatePictureProfile"

    return-object v0

    .line 189
    :pswitch_23
    const-string v0, "createPictureProfile"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 180
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1464
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 340
    invoke-static {p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const-string v0, "android.media.quality.IMediaQualityManager"

    .line 345
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 346
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 349
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    return v1

    .line 352
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 766
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 757
    :pswitch_0
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 758
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAmbientBacklightEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 760
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 762
    goto/16 :goto_0

    .line 746
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 748
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 749
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightEnabled(ZLandroid/os/UserHandle;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_0

    .line 735
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_2
    sget-object v2, Landroid/media/quality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/AmbientBacklightSettings;

    .line 737
    .local v2, "_arg0":Landroid/media/quality/AmbientBacklightSettings;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 738
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;Landroid/os/UserHandle;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_0

    .line 725
    .end local v2    # "_arg0":Landroid/media/quality/AmbientBacklightSettings;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_3
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 726
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoSoundQualityEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 728
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 730
    goto/16 :goto_0

    .line 714
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 716
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 717
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoSoundQualityEnabled(ZLandroid/os/UserHandle;)V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_5
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 705
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isSuperResolutionEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 707
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 709
    goto/16 :goto_0

    .line 693
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 695
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 696
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setSuperResolutionEnabled(ZLandroid/os/UserHandle;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto/16 :goto_0

    .line 683
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_7
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 684
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoPictureQualityEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 686
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 688
    goto/16 :goto_0

    .line 672
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 674
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 675
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoPictureQualityEnabled(ZLandroid/os/UserHandle;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    goto/16 :goto_0

    .line 662
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_9
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 663
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isSupported(Landroid/os/UserHandle;)Z

    move-result v3

    .line 665
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 667
    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 652
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 653
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getParameterCapabilities(Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 655
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 657
    goto/16 :goto_0

    .line 641
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IAmbientBacklightCallback;

    move-result-object v2

    .line 642
    .local v2, "_arg0":Landroid/media/quality/IAmbientBacklightCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_0

    .line 632
    .end local v2    # "_arg0":Landroid/media/quality/IAmbientBacklightCallback;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/ISoundProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/ISoundProfileCallback;

    move-result-object v2

    .line 633
    .local v2, "_arg0":Landroid/media/quality/ISoundProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 623
    .end local v2    # "_arg0":Landroid/media/quality/ISoundProfileCallback;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/IPictureProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IPictureProfileCallback;

    move-result-object v2

    .line 624
    .local v2, "_arg0":Landroid/media/quality/IPictureProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":Landroid/media/quality/IPictureProfileCallback;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 614
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileHandle([Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 616
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfileHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 618
    goto/16 :goto_0

    .line 600
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfileHandle;>;"
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 602
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 603
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setSoundProfileAllowList(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_0

    .line 590
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_10
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 591
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileAllowList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 593
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 595
    goto/16 :goto_0

    .line 580
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 581
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilePackageNames(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 583
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 585
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 570
    .local v2, "_arg0":Landroid/os/Bundle;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 571
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailableSoundProfiles(Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 573
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 575
    goto/16 :goto_0

    .line 554
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 558
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 559
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilesByPackage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 561
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 563
    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 544
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 545
    .local v5, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfile(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/media/quality/SoundProfile;

    move-result-object v6

    .line 547
    .local v6, "_result":Landroid/media/quality/SoundProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 549
    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/os/UserHandle;
    .end local v6    # "_result":Landroid/media/quality/SoundProfile;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 529
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultSoundProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    .line 531
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 533
    goto/16 :goto_0

    .line 515
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 518
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->removeSoundProfile(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_0

    .line 502
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/SoundProfile;

    .line 506
    .local v3, "_arg1":Landroid/media/quality/SoundProfile;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 507
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;Landroid/os/UserHandle;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_18
    sget-object v2, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/SoundProfile;

    .line 492
    .local v2, "_arg0":Landroid/media/quality/SoundProfile;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 493
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->createSoundProfile(Landroid/media/quality/SoundProfile;Landroid/os/UserHandle;)Landroid/media/quality/SoundProfile;

    move-result-object v4

    .line 495
    .local v4, "_result":Landroid/media/quality/SoundProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 497
    goto/16 :goto_0

    .line 478
    .end local v2    # "_arg0":Landroid/media/quality/SoundProfile;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/media/quality/SoundProfile;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 481
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileHandle([Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 483
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfileHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 485
    goto/16 :goto_0

    .line 467
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfileHandle;>;"
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 469
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 470
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setPictureProfileAllowList(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto/16 :goto_0

    .line 457
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_1b
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 458
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileAllowList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 460
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 462
    goto/16 :goto_0

    .line 447
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 448
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilePackageNames(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 450
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 452
    goto/16 :goto_0

    .line 435
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 437
    .local v2, "_arg0":Landroid/os/Bundle;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 438
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailablePictureProfiles(Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 440
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 442
    goto/16 :goto_0

    .line 421
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 425
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 426
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilesByPackage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 428
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 430
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 411
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 412
    .local v5, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfile(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/media/quality/PictureProfile;

    move-result-object v6

    .line 414
    .local v6, "_result":Landroid/media/quality/PictureProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 416
    goto :goto_0

    .line 393
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/os/UserHandle;
    .end local v6    # "_result":Landroid/media/quality/PictureProfile;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 396
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultPictureProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    .line 398
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto :goto_0

    .line 382
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 385
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->removePictureProfile(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto :goto_0

    .line 369
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/PictureProfile;

    .line 373
    .local v3, "_arg1":Landroid/media/quality/PictureProfile;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 374
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;Landroid/os/UserHandle;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/PictureProfile;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_23
    sget-object v2, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/PictureProfile;

    .line 359
    .local v2, "_arg0":Landroid/media/quality/PictureProfile;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 360
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->createPictureProfile(Landroid/media/quality/PictureProfile;Landroid/os/UserHandle;)Landroid/media/quality/PictureProfile;

    move-result-object v4

    .line 362
    .local v4, "_result":Landroid/media/quality/PictureProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 364
    nop

    .line 769
    .end local v2    # "_arg0":Landroid/media/quality/PictureProfile;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/media/quality/PictureProfile;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
