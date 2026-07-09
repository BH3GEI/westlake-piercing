.class public abstract Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceIndication.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callRing:I = 0x1

.field static final blacklist TRANSACTION_callStateChanged:I = 0x2

.field static final blacklist TRANSACTION_cdmaCallWaiting:I = 0x3

.field static final blacklist TRANSACTION_cdmaInfoRec:I = 0x4

.field static final blacklist TRANSACTION_cdmaOtaProvisionStatus:I = 0x5

.field static final blacklist TRANSACTION_currentEmergencyNumberList:I = 0x6

.field static final blacklist TRANSACTION_enterEmergencyCallbackMode:I = 0x7

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_indicateRingbackTone:I = 0x9

.field static final blacklist TRANSACTION_onSupplementaryServiceIndication:I = 0xa

.field static final blacklist TRANSACTION_onUssd:I = 0xb

.field static final blacklist TRANSACTION_resendIncallMute:I = 0xc

.field static final blacklist TRANSACTION_srvccStateNotify:I = 0xd

.field static final blacklist TRANSACTION_stkCallControlAlphaNotify:I = 0xe

.field static final blacklist TRANSACTION_stkCallSetup:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->markVintfStability()V

    .line 93
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    :cond_1
    if-ne p1, v1, :cond_2

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v2

    .line 129
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 275
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 278
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallSetup(IJ)V

    .line 280
    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 270
    goto/16 :goto_0

    .line 255
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->srvccStateNotify(II)V

    .line 260
    goto/16 :goto_0

    .line 247
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->resendIncallMute(I)V

    .line 250
    goto/16 :goto_0

    .line 235
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 242
    goto/16 :goto_0

    .line 225
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    .line 228
    .local v3, "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V

    .line 230
    goto/16 :goto_0

    .line 215
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 218
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->indicateRingbackTone(IZ)V

    .line 220
    goto/16 :goto_0

    .line 207
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 210
    goto/16 :goto_0

    .line 199
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 202
    goto :goto_0

    .line 189
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/EmergencyNumber;

    .line 192
    .local v3, "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V

    .line 194
    goto :goto_0

    .line 179
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 184
    goto :goto_0

    .line 169
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaInformationRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CdmaInformationRecord;

    .line 172
    .local v3, "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V

    .line 174
    goto :goto_0

    .line 159
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaCallWaiting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CdmaCallWaiting;

    .line 162
    .local v3, "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V

    .line 164
    goto :goto_0

    .line 151
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callStateChanged(I)V

    .line 154
    goto :goto_0

    .line 139
    .end local v1    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 143
    .local v3, "_arg1":Z
    sget-object v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 144
    .local v4, "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V

    .line 146
    nop

    .line 287
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
