.class public abstract Landroid/hardware/radio/config/IRadioConfig$Stub;
.super Landroid/os/Binder;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHalDeviceCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNumOfLiveModems:I = 0x2

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x3

.field static final blacklist TRANSACTION_getSimSlotsStatus:I = 0x4

.field static final blacklist TRANSACTION_getSimTypeInfo:I = 0xa

.field static final blacklist TRANSACTION_getSimultaneousCallingSupport:I = 0x9

.field static final blacklist TRANSACTION_setNumOfLiveModems:I = 0x5

.field static final blacklist TRANSACTION_setPreferredDataModem:I = 0x6

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x7

.field static final blacklist TRANSACTION_setSimSlotsMapping:I = 0x8

.field static final blacklist TRANSACTION_setSimType:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->markVintfStability()V

    .line 78
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/config/IRadioConfig;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/config/IRadioConfig;

    return-object v1

    .line 93
    :cond_1
    new-instance v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 97
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 101
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v2

    .line 109
    :cond_1
    if-ne p1, v1, :cond_2

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 114
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v2

    .line 119
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 215
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setSimType(I[I)V

    .line 217
    goto/16 :goto_0

    .line 204
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimTypeInfo(I)V

    .line 207
    goto/16 :goto_0

    .line 196
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimultaneousCallingSupport(I)V

    .line 199
    goto/16 :goto_0

    .line 186
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/config/SlotPortMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/config/SlotPortMapping;

    .line 189
    .local v3, "_arg1":[Landroid/hardware/radio/config/SlotPortMapping;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setSimSlotsMapping(I[Landroid/hardware/radio/config/SlotPortMapping;)V

    .line 191
    goto :goto_0

    .line 176
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/config/SlotPortMapping;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigResponse;

    move-result-object v1

    .line 178
    .local v1, "_arg0":Landroid/hardware/radio/config/IRadioConfigResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigIndication;

    move-result-object v3

    .line 179
    .local v3, "_arg1":Landroid/hardware/radio/config/IRadioConfigIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setResponseFunctions(Landroid/hardware/radio/config/IRadioConfigResponse;Landroid/hardware/radio/config/IRadioConfigIndication;)V

    .line 181
    goto :goto_0

    .line 166
    .end local v1    # "_arg0":Landroid/hardware/radio/config/IRadioConfigResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/config/IRadioConfigIndication;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 169
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setPreferredDataModem(IB)V

    .line 171
    goto :goto_0

    .line 156
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 159
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfig$Stub;->setNumOfLiveModems(IB)V

    .line 161
    goto :goto_0

    .line 148
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getSimSlotsStatus(I)V

    .line 151
    goto :goto_0

    .line 140
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getPhoneCapability(I)V

    .line 143
    goto :goto_0

    .line 132
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getNumOfLiveModems(I)V

    .line 135
    goto :goto_0

    .line 124
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfig$Stub;->getHalDeviceCapabilities(I)V

    .line 127
    nop

    .line 224
    .end local v1    # "_arg0":I
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
