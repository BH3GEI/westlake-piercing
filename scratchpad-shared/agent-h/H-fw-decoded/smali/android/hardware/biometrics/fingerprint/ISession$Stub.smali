.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x4

.field static final TRANSACTION_authenticateWithContext:I = 0xf

.field static final TRANSACTION_close:I = 0xb

.field static final TRANSACTION_detectInteraction:I = 0x5

.field static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enrollWithContext:I = 0x10

.field static final TRANSACTION_enumerateEnrollments:I = 0x6

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field static final TRANSACTION_onContextChanged:I = 0x14

.field static final TRANSACTION_onPointerCancelWithContext:I = 0x15

.field static final TRANSACTION_onPointerDown:I = 0xc

.field static final TRANSACTION_onPointerDownWithContext:I = 0x12

.field static final TRANSACTION_onPointerUp:I = 0xd

.field static final TRANSACTION_onPointerUpWithContext:I = 0x13

.field static final TRANSACTION_onUiReady:I = 0xe

.field static final TRANSACTION_removeEnrollments:I = 0x7

.field static final TRANSACTION_resetLockout:I = 0xa

.field static final TRANSACTION_revokeChallenge:I = 0x2

.field static final TRANSACTION_setIgnoreDisplayTouches:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 592
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 593
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->markVintfStability()V

    .line 594
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 602
    if-nez p0, :cond_0

    .line 603
    const/4 v0, 0x0

    return-object v0

    .line 605
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 606
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_1

    .line 607
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v1

    .line 609
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 618
    sparse-switch p0, :sswitch_data_0

    .line 718
    const/4 v0, 0x0

    return-object v0

    .line 710
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 714
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 706
    :sswitch_2
    const-string/jumbo v0, "setIgnoreDisplayTouches"

    return-object v0

    .line 702
    :sswitch_3
    const-string/jumbo v0, "onPointerCancelWithContext"

    return-object v0

    .line 698
    :sswitch_4
    const-string/jumbo v0, "onContextChanged"

    return-object v0

    .line 694
    :sswitch_5
    const-string/jumbo v0, "onPointerUpWithContext"

    return-object v0

    .line 690
    :sswitch_6
    const-string/jumbo v0, "onPointerDownWithContext"

    return-object v0

    .line 686
    :sswitch_7
    const-string v0, "detectInteractionWithContext"

    return-object v0

    .line 682
    :sswitch_8
    const-string v0, "enrollWithContext"

    return-object v0

    .line 678
    :sswitch_9
    const-string v0, "authenticateWithContext"

    return-object v0

    .line 674
    :sswitch_a
    const-string/jumbo v0, "onUiReady"

    return-object v0

    .line 670
    :sswitch_b
    const-string/jumbo v0, "onPointerUp"

    return-object v0

    .line 666
    :sswitch_c
    const-string/jumbo v0, "onPointerDown"

    return-object v0

    .line 662
    :sswitch_d
    const-string v0, "close"

    return-object v0

    .line 658
    :sswitch_e
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 654
    :sswitch_f
    const-string/jumbo v0, "invalidateAuthenticatorId"

    return-object v0

    .line 650
    :sswitch_10
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 646
    :sswitch_11
    const-string/jumbo v0, "removeEnrollments"

    return-object v0

    .line 642
    :sswitch_12
    const-string v0, "enumerateEnrollments"

    return-object v0

    .line 638
    :sswitch_13
    const-string v0, "detectInteraction"

    return-object v0

    .line 634
    :sswitch_14
    const-string v0, "authenticate"

    return-object v0

    .line 630
    :sswitch_15
    const-string v0, "enroll"

    return-object v0

    .line 626
    :sswitch_16
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 622
    :sswitch_17
    const-string v0, "generateChallenge"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
        0x10 -> :sswitch_8
        0x11 -> :sswitch_7
        0x12 -> :sswitch_6
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 613
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1892
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 725
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 729
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 730
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 731
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    return v2

    .line 737
    :cond_1
    if-ne p1, v1, :cond_2

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    return v2

    .line 742
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    return v2

    .line 747
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 946
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 938
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 939
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->setIgnoreDisplayTouches(Z)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move-object v3, p0

    goto/16 :goto_0

    .line 929
    .end local v1    # "_arg0":Z
    :pswitch_1
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 930
    .local v1, "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    move-object v3, p0

    goto/16 :goto_0

    .line 920
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_2
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 921
    .local v1, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    move-object v3, p0

    goto/16 :goto_0

    .line 911
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_3
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 912
    .local v1, "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    move-object v3, p0

    goto/16 :goto_0

    .line 902
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_4
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 903
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object v3, p0

    goto/16 :goto_0

    .line 892
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_5
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 893
    .local v1, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 895
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 897
    move-object v3, p0

    goto/16 :goto_0

    .line 880
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_6
    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 882
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    sget-object v3, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/common/OperationContext;

    .line 883
    .local v3, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v4

    .line 885
    .local v4, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 887
    move-object v3, p0

    goto/16 :goto_0

    .line 868
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v3    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v4    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 870
    .local v3, "_arg0":J
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 871
    .local v1, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    .line 873
    .local v5, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 875
    move-object v3, p0

    goto/16 :goto_0

    .line 861
    .end local v1    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_arg0":J
    .end local v5    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onUiReady()V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object v3, p0

    goto/16 :goto_0

    .line 853
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUp(I)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    move-object v3, p0

    goto/16 :goto_0

    .line 836
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 838
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 840
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 842
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 844
    .local v7, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 845
    .local v8, "_arg4":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDown(IIIFF)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_0

    .line 829
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":F
    .end local v8    # "_arg4":F
    :pswitch_b
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->close()V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto/16 :goto_0

    .line 821
    :pswitch_c
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 822
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_0

    .line 814
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->invalidateAuthenticatorId()V

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_0

    .line 808
    :pswitch_e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getAuthenticatorId()V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_0

    .line 800
    :pswitch_f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 801
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->removeEnrollments([I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto :goto_0

    .line 793
    .end local v1    # "_arg0":[I
    :pswitch_10
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enumerateEnrollments()V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto :goto_0

    .line 786
    :pswitch_11
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 787
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 789
    goto :goto_0

    .line 777
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_12
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 778
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 780
    .restart local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 782
    goto :goto_0

    .line 767
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    .end local v4    # "_arg0":J
    :pswitch_13
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 768
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v4

    .line 770
    .local v4, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 772
    goto :goto_0

    .line 758
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v4    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_14
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 759
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->revokeChallenge(J)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto :goto_0

    .line 751
    .end local v4    # "_arg0":J
    :pswitch_15
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->generateChallenge()V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    nop

    .line 949
    :goto_0
    return v2

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
