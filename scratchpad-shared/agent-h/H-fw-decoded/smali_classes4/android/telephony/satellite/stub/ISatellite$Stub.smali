.class public abstract Landroid/telephony/satellite/stub/ISatellite$Stub;
.super Landroid/os/Binder;
.source "ISatellite.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatellite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatellite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortSendingSatelliteDatagrams:I = 0x14

.field static final blacklist TRANSACTION_enableTerrestrialNetworkScanWhileSatelliteModeIsOn:I = 0x3

.field static final blacklist TRANSACTION_pollPendingSatelliteDatagrams:I = 0xa

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x5

.field static final blacklist TRANSACTION_requestIsSatelliteEnabledForCarrier:I = 0x10

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x6

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x7

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x4

.field static final blacklist TRANSACTION_requestSatelliteListeningEnabled:I = 0x2

.field static final blacklist TRANSACTION_requestSatelliteModemState:I = 0xc

.field static final blacklist TRANSACTION_requestSignalStrength:I = 0x11

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0xd

.field static final blacklist TRANSACTION_sendSatelliteDatagram:I = 0xb

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrier:I = 0xf

.field static final blacklist TRANSACTION_setSatelliteListener:I = 0x1

.field static final blacklist TRANSACTION_setSatellitePlmn:I = 0xe

.field static final blacklist TRANSACTION_startSendingNtnSignalStrength:I = 0x12

.field static final blacklist TRANSACTION_startSendingSatellitePointingInfo:I = 0x8

.field static final blacklist TRANSACTION_stopSendingNtnSignalStrength:I = 0x13

.field static final blacklist TRANSACTION_stopSendingSatellitePointingInfo:I = 0x9

.field static final blacklist TRANSACTION_updateSatelliteSubscription:I = 0x15

.field static final blacklist TRANSACTION_updateSystemSelectionChannels:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 462
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 463
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 471
    if-nez p0, :cond_0

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_0
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 475
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatellite;

    if-eqz v1, :cond_1

    .line 476
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/stub/ISatellite;

    return-object v1

    .line 478
    :cond_1
    new-instance v1, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 487
    packed-switch p0, :pswitch_data_0

    .line 579
    const/4 v0, 0x0

    return-object v0

    .line 575
    :pswitch_0
    const-string/jumbo v0, "updateSystemSelectionChannels"

    return-object v0

    .line 571
    :pswitch_1
    const-string/jumbo v0, "updateSatelliteSubscription"

    return-object v0

    .line 567
    :pswitch_2
    const-string v0, "abortSendingSatelliteDatagrams"

    return-object v0

    .line 563
    :pswitch_3
    const-string/jumbo v0, "stopSendingNtnSignalStrength"

    return-object v0

    .line 559
    :pswitch_4
    const-string/jumbo v0, "startSendingNtnSignalStrength"

    return-object v0

    .line 555
    :pswitch_5
    const-string/jumbo v0, "requestSignalStrength"

    return-object v0

    .line 551
    :pswitch_6
    const-string/jumbo v0, "requestIsSatelliteEnabledForCarrier"

    return-object v0

    .line 547
    :pswitch_7
    const-string/jumbo v0, "setSatelliteEnabledForCarrier"

    return-object v0

    .line 543
    :pswitch_8
    const-string/jumbo v0, "setSatellitePlmn"

    return-object v0

    .line 539
    :pswitch_9
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility"

    return-object v0

    .line 535
    :pswitch_a
    const-string/jumbo v0, "requestSatelliteModemState"

    return-object v0

    .line 531
    :pswitch_b
    const-string/jumbo v0, "sendSatelliteDatagram"

    return-object v0

    .line 527
    :pswitch_c
    const-string v0, "pollPendingSatelliteDatagrams"

    return-object v0

    .line 523
    :pswitch_d
    const-string/jumbo v0, "stopSendingSatellitePointingInfo"

    return-object v0

    .line 519
    :pswitch_e
    const-string/jumbo v0, "startSendingSatellitePointingInfo"

    return-object v0

    .line 515
    :pswitch_f
    const-string/jumbo v0, "requestSatelliteCapabilities"

    return-object v0

    .line 511
    :pswitch_10
    const-string/jumbo v0, "requestIsSatelliteSupported"

    return-object v0

    .line 507
    :pswitch_11
    const-string/jumbo v0, "requestIsSatelliteEnabled"

    return-object v0

    .line 503
    :pswitch_12
    const-string/jumbo v0, "requestSatelliteEnabled"

    return-object v0

    .line 499
    :pswitch_13
    const-string v0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    return-object v0

    .line 495
    :pswitch_14
    const-string/jumbo v0, "requestSatelliteListeningEnabled"

    return-object v0

    .line 491
    :pswitch_15
    const-string/jumbo v0, "setSatelliteListener"

    return-object v0

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

    .line 482
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1520
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 586
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 590
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    .line 591
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 592
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 595
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    return v1

    .line 598
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 820
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 811
    :pswitch_0
    sget-object v2, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 813
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/stub/SystemSelectionSpecifier;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 814
    .local v3, "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    .line 816
    goto/16 :goto_0

    .line 801
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/stub/SystemSelectionSpecifier;>;"
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 804
    .restart local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V

    .line 806
    goto/16 :goto_0

    .line 793
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 794
    .local v2, "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    .line 796
    goto/16 :goto_0

    .line 785
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 786
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    .line 788
    goto/16 :goto_0

    .line 777
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 778
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    .line 780
    goto/16 :goto_0

    .line 767
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 769
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;

    move-result-object v3

    .line 770
    .local v3, "_arg1":Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V

    .line 772
    goto/16 :goto_0

    .line 755
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 757
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 759
    .local v3, "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object v4

    .line 760
    .local v4, "_arg2":Landroid/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 762
    goto/16 :goto_0

    .line 743
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    .end local v4    # "_arg2":Landroid/telephony/IBooleanConsumer;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 745
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 747
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v4

    .line 748
    .local v4, "_arg2":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V

    .line 750
    goto/16 :goto_0

    .line 729
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/telephony/IIntegerConsumer;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 733
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 735
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v5

    .line 736
    .local v5, "_arg3":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    .line 738
    goto/16 :goto_0

    .line 719
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg3":Landroid/telephony/IIntegerConsumer;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 721
    .local v2, "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 722
    .local v3, "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    .line 724
    goto/16 :goto_0

    .line 709
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 711
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 712
    .restart local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    .line 714
    goto/16 :goto_0

    .line 697
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_b
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 699
    .local v2, "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 701
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v4

    .line 702
    .local v4, "_arg2":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    .line 704
    goto/16 :goto_0

    .line 689
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/telephony/IIntegerConsumer;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 690
    .local v2, "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    .line 692
    goto/16 :goto_0

    .line 681
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 682
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    .line 684
    goto/16 :goto_0

    .line 673
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 674
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    .line 676
    goto/16 :goto_0

    .line 663
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 665
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    move-result-object v3

    .line 666
    .local v3, "_arg1":Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    .line 668
    goto/16 :goto_0

    .line 653
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 655
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object v3

    .line 656
    .local v3, "_arg1":Landroid/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 658
    goto :goto_0

    .line 643
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/IBooleanConsumer;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v2

    .line 645
    .restart local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object v3

    .line 646
    .restart local v3    # "_arg1":Landroid/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 648
    goto :goto_0

    .line 633
    .end local v2    # "_arg0":Landroid/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/IBooleanConsumer;
    :pswitch_12
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    .line 635
    .local v2, "_arg0":Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 636
    .local v3, "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V

    .line 638
    goto :goto_0

    .line 623
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 625
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v3

    .line 626
    .restart local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    .line 628
    goto :goto_0

    .line 611
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/telephony/IIntegerConsumer;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 613
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v4

    .line 616
    .restart local v4    # "_arg2":Landroid/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V

    .line 618
    goto :goto_0

    .line 603
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/IIntegerConsumer;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object v2

    .line 604
    .local v2, "_arg0":Landroid/telephony/satellite/stub/ISatelliteListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    .line 606
    nop

    .line 823
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/ISatelliteListener;
    :goto_0
    return v1

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
