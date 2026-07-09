.class public abstract Landroid/hardware/contexthub/IEndpointCallback$Stub;
.super Landroid/os/Binder;
.source "IEndpointCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IEndpointCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IEndpointCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onCloseEndpointSession:I = 0x6

.field static final blacklist TRANSACTION_onEndpointSessionOpenComplete:I = 0x7

.field static final blacklist TRANSACTION_onEndpointSessionOpenRequest:I = 0x5

.field static final blacklist TRANSACTION_onEndpointStarted:I = 0x1

.field static final blacklist TRANSACTION_onEndpointStopped:I = 0x2

.field static final blacklist TRANSACTION_onMessageDeliveryStatusReceived:I = 0x4

.field static final blacklist TRANSACTION_onMessageReceived:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->markVintfStability()V

    .line 65
    sget-object v0, Landroid/hardware/contexthub/IEndpointCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IEndpointCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Landroid/hardware/contexthub/IEndpointCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/contexthub/IEndpointCallback;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IEndpointCallback;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/hardware/contexthub/IEndpointCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
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

    .line 88
    sget-object v0, Landroid/hardware/contexthub/IEndpointCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v2

    .line 96
    :cond_1
    if-ne p1, v1, :cond_2

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v2

    .line 101
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v2

    .line 106
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onEndpointSessionOpenComplete(I)V

    .line 176
    goto/16 :goto_0

    .line 163
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 166
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onCloseEndpointSession(IB)V

    .line 168
    goto :goto_0

    .line 149
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/EndpointId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/EndpointId;

    .line 153
    .local v3, "_arg1":Landroid/hardware/contexthub/EndpointId;
    sget-object v4, Landroid/hardware/contexthub/EndpointId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/EndpointId;

    .line 155
    .local v4, "_arg2":Landroid/hardware/contexthub/EndpointId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V

    .line 158
    goto :goto_0

    .line 139
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/EndpointId;
    .end local v4    # "_arg2":Landroid/hardware/contexthub/EndpointId;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/MessageDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 142
    .local v3, "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onMessageDeliveryStatusReceived(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V

    .line 144
    goto :goto_0

    .line 129
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/Message;

    .line 132
    .local v3, "_arg1":Landroid/hardware/contexthub/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onMessageReceived(ILandroid/hardware/contexthub/Message;)V

    .line 134
    goto :goto_0

    .line 119
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/Message;
    :pswitch_5
    sget-object v1, Landroid/hardware/contexthub/EndpointId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/contexthub/EndpointId;

    .line 121
    .local v1, "_arg0":[Landroid/hardware/contexthub/EndpointId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 122
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onEndpointStopped([Landroid/hardware/contexthub/EndpointId;B)V

    .line 124
    goto :goto_0

    .line 111
    .end local v1    # "_arg0":[Landroid/hardware/contexthub/EndpointId;
    .end local v3    # "_arg1":B
    :pswitch_6
    sget-object v1, Landroid/hardware/contexthub/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/contexthub/EndpointInfo;

    .line 112
    .local v1, "_arg0":[Landroid/hardware/contexthub/EndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->onEndpointStarted([Landroid/hardware/contexthub/EndpointInfo;)V

    .line 114
    nop

    .line 183
    .end local v1    # "_arg0":[Landroid/hardware/contexthub/EndpointInfo;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
