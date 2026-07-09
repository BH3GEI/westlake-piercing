.class public abstract Landroid/hardware/radio/ims/IRadioIms$Stub;
.super Landroid/os/Binder;
.source "IRadioIms.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendAnbrQuery:I = 0x7

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x6

.field static final blacklist TRANSACTION_setSrvccCallInfo:I = 0x1

.field static final blacklist TRANSACTION_startImsTraffic:I = 0x3

.field static final blacklist TRANSACTION_stopImsTraffic:I = 0x4

.field static final blacklist TRANSACTION_triggerEpsFallback:I = 0x5

.field static final blacklist TRANSACTION_updateImsCallStatus:I = 0x8

.field static final blacklist TRANSACTION_updateImsRegistrationInfo:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->markVintfStability()V

    .line 69
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioIms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioIms;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ims/IRadioIms;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    return-object p0
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

    .line 92
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v2

    .line 100
    :cond_1
    if-ne p1, v1, :cond_2

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v2

    .line 105
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v2

    .line 110
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 204
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 195
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/ImsCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/ims/ImsCall;

    .line 198
    .local v3, "_arg1":[Landroid/hardware/radio/ims/ImsCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    .line 200
    move-object v4, p0

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/ims/ImsCall;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/ims/IRadioIms$Stub;->sendAnbrQuery(IIII)V

    .line 190
    move-object v4, p0

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsResponse;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Landroid/hardware/radio/ims/IRadioImsResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsIndication;

    move-result-object v3

    .line 174
    .local v3, "_arg1":Landroid/hardware/radio/ims/IRadioImsIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setResponseFunctions(Landroid/hardware/radio/ims/IRadioImsResponse;Landroid/hardware/radio/ims/IRadioImsIndication;)V

    .line 176
    move-object v4, p0

    goto :goto_0

    .line 161
    .end local v1    # "_arg0":Landroid/hardware/radio/ims/IRadioImsResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/ims/IRadioImsIndication;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->triggerEpsFallback(II)V

    .line 166
    move-object v4, p0

    goto :goto_0

    .line 151
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->stopImsTraffic(II)V

    .line 156
    move-object v4, p0

    goto :goto_0

    .line 135
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 137
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 139
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 141
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 143
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 144
    .local v9, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/radio/ims/IRadioIms$Stub;->startImsTraffic(IIIII)V

    .line 146
    goto :goto_0

    .line 125
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :pswitch_6
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ims/ImsRegistration;

    .line 128
    .local v3, "_arg1":Landroid/hardware/radio/ims/ImsRegistration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    .line 130
    goto :goto_0

    .line 115
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/ims/ImsRegistration;
    :pswitch_7
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/ims/SrvccCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/ims/SrvccCall;

    .line 118
    .local v3, "_arg1":[Landroid/hardware/radio/ims/SrvccCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    .line 120
    nop

    .line 207
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/ims/SrvccCall;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
