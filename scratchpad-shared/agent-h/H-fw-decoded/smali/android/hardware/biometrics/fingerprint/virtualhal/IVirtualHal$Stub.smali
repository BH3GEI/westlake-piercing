.class public abstract Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getFingerprintHal:I = 0x20

.field static final TRANSACTION_resetConfigurations:I = 0x16

.field static final TRANSACTION_setAuthenticatorId:I = 0x4

.field static final TRANSACTION_setChallenge:I = 0x5

.field static final TRANSACTION_setControlIllumination:I = 0x1f

.field static final TRANSACTION_setDetectInteraction:I = 0x1d

.field static final TRANSACTION_setDisplayTouch:I = 0x1e

.field static final TRANSACTION_setEnrollmentHit:I = 0x2

.field static final TRANSACTION_setEnrollments:I = 0x1

.field static final TRANSACTION_setLockout:I = 0x11

.field static final TRANSACTION_setLockoutEnable:I = 0x12

.field static final TRANSACTION_setLockoutPermanentThreshold:I = 0x15

.field static final TRANSACTION_setLockoutTimedDuration:I = 0x14

.field static final TRANSACTION_setLockoutTimedThreshold:I = 0x13

.field static final TRANSACTION_setMaxEnrollmentPerUser:I = 0x1a

.field static final TRANSACTION_setNavigationGesture:I = 0x1c

.field static final TRANSACTION_setNextEnrollment:I = 0x3

.field static final TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final TRANSACTION_setOperationDetectInteractionAcquired:I = 0x10

.field static final TRANSACTION_setOperationDetectInteractionDuration:I = 0xf

.field static final TRANSACTION_setOperationDetectInteractionError:I = 0xe

.field static final TRANSACTION_setOperationDetectInteractionLatency:I = 0xd

.field static final TRANSACTION_setOperationEnrollError:I = 0xb

.field static final TRANSACTION_setOperationEnrollLatency:I = 0xc

.field static final TRANSACTION_setSensorId:I = 0x18

.field static final TRANSACTION_setSensorLocation:I = 0x1b

.field static final TRANSACTION_setSensorStrength:I = 0x19

.field static final TRANSACTION_setType:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 350
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 351
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 359
    if-nez p0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 363
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    if-eqz v1, :cond_1

    .line 364
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    return-object v1

    .line 366
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 375
    packed-switch p0, :pswitch_data_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 503
    :pswitch_0
    const-string v0, "getFingerprintHal"

    return-object v0

    .line 499
    :pswitch_1
    const-string/jumbo v0, "setControlIllumination"

    return-object v0

    .line 495
    :pswitch_2
    const-string/jumbo v0, "setDisplayTouch"

    return-object v0

    .line 491
    :pswitch_3
    const-string/jumbo v0, "setDetectInteraction"

    return-object v0

    .line 487
    :pswitch_4
    const-string/jumbo v0, "setNavigationGesture"

    return-object v0

    .line 483
    :pswitch_5
    const-string/jumbo v0, "setSensorLocation"

    return-object v0

    .line 479
    :pswitch_6
    const-string/jumbo v0, "setMaxEnrollmentPerUser"

    return-object v0

    .line 475
    :pswitch_7
    const-string/jumbo v0, "setSensorStrength"

    return-object v0

    .line 471
    :pswitch_8
    const-string/jumbo v0, "setSensorId"

    return-object v0

    .line 467
    :pswitch_9
    const-string/jumbo v0, "setType"

    return-object v0

    .line 463
    :pswitch_a
    const-string/jumbo v0, "resetConfigurations"

    return-object v0

    .line 459
    :pswitch_b
    const-string/jumbo v0, "setLockoutPermanentThreshold"

    return-object v0

    .line 455
    :pswitch_c
    const-string/jumbo v0, "setLockoutTimedDuration"

    return-object v0

    .line 451
    :pswitch_d
    const-string/jumbo v0, "setLockoutTimedThreshold"

    return-object v0

    .line 447
    :pswitch_e
    const-string/jumbo v0, "setLockoutEnable"

    return-object v0

    .line 443
    :pswitch_f
    const-string/jumbo v0, "setLockout"

    return-object v0

    .line 439
    :pswitch_10
    const-string/jumbo v0, "setOperationDetectInteractionAcquired"

    return-object v0

    .line 435
    :pswitch_11
    const-string/jumbo v0, "setOperationDetectInteractionDuration"

    return-object v0

    .line 431
    :pswitch_12
    const-string/jumbo v0, "setOperationDetectInteractionError"

    return-object v0

    .line 427
    :pswitch_13
    const-string/jumbo v0, "setOperationDetectInteractionLatency"

    return-object v0

    .line 423
    :pswitch_14
    const-string/jumbo v0, "setOperationEnrollLatency"

    return-object v0

    .line 419
    :pswitch_15
    const-string/jumbo v0, "setOperationEnrollError"

    return-object v0

    .line 415
    :pswitch_16
    const-string/jumbo v0, "setOperationAuthenticateAcquired"

    return-object v0

    .line 411
    :pswitch_17
    const-string/jumbo v0, "setOperationAuthenticateError"

    return-object v0

    .line 407
    :pswitch_18
    const-string/jumbo v0, "setOperationAuthenticateDuration"

    return-object v0

    .line 403
    :pswitch_19
    const-string/jumbo v0, "setOperationAuthenticateLatency"

    return-object v0

    .line 399
    :pswitch_1a
    const-string/jumbo v0, "setOperationAuthenticateFails"

    return-object v0

    .line 395
    :pswitch_1b
    const-string/jumbo v0, "setChallenge"

    return-object v0

    .line 391
    :pswitch_1c
    const-string/jumbo v0, "setAuthenticatorId"

    return-object v0

    .line 387
    :pswitch_1d
    const-string/jumbo v0, "setNextEnrollment"

    return-object v0

    .line 383
    :pswitch_1e
    const-string/jumbo v0, "setEnrollmentHit"

    return-object v0

    .line 379
    :pswitch_1f
    const-string/jumbo v0, "setEnrollments"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 370
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1576
    const/16 v0, 0x1f

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 514
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    .line 519
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 523
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    return v1

    .line 526
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 813
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 806
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getFingerprintHal()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v2

    .line 807
    .local v2, "_result":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 809
    goto/16 :goto_0

    .line 798
    .end local v2    # "_result":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 799
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setControlIllumination(Z)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_0

    .line 789
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 790
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDisplayTouch(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_0

    .line 780
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 781
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDetectInteraction(Z)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 771
    .end local v2    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 772
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNavigationGesture(Z)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_0

    .line 762
    .end local v2    # "_arg0":Z
    :pswitch_5
    sget-object v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 763
    .local v2, "_arg0":Landroid/hardware/biometrics/fingerprint/SensorLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorLocation(Landroid/hardware/biometrics/fingerprint/SensorLocation;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_0

    .line 753
    .end local v2    # "_arg0":Landroid/hardware/biometrics/fingerprint/SensorLocation;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setMaxEnrollmentPerUser(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_0

    .line 744
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 745
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorStrength(B)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_0

    .line 735
    .end local v2    # "_arg0":B
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorId(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_0

    .line 726
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 727
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setType(B)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_0

    .line 719
    .end local v2    # "_arg0":B
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->resetConfigurations()V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_0

    .line 711
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    goto/16 :goto_0

    .line 702
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 703
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_0

    .line 693
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_0

    .line 684
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 685
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutEnable(Z)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_0

    .line 675
    .end local v2    # "_arg0":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 676
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockout(Z)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_0

    .line 666
    .end local v2    # "_arg0":Z
    :pswitch_10
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 667
    .local v2, "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 657
    .end local v2    # "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionDuration(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_0

    .line 648
    .end local v2    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 649
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionError(I)V

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    goto/16 :goto_0

    .line 639
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 640
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_0

    .line 630
    .end local v2    # "_arg0":[I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 631
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_0

    .line 621
    .end local v2    # "_arg0":[I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollError(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg0":I
    :pswitch_16
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 613
    .local v2, "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto/16 :goto_0

    .line 603
    .end local v2    # "_arg0":[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_0

    .line 594
    .end local v2    # "_arg0":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto :goto_0

    .line 585
    .end local v2    # "_arg0":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 586
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto :goto_0

    .line 576
    .end local v2    # "_arg0":[I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 577
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto :goto_0

    .line 567
    .end local v2    # "_arg0":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 568
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setChallenge(J)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto :goto_0

    .line 558
    .end local v2    # "_arg0":J
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 559
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setAuthenticatorId(J)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto :goto_0

    .line 549
    .end local v2    # "_arg0":J
    :pswitch_1d
    sget-object v2, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    .line 550
    .local v2, "_arg0":Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_0

    .line 540
    .end local v2    # "_arg0":Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollmentHit(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto :goto_0

    .line 531
    .end local v2    # "_arg0":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 532
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollments([I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    nop

    .line 816
    .end local v2    # "_arg0":[I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
