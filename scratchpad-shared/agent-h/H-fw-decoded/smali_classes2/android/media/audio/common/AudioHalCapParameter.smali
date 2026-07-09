.class public final Landroid/media/audio/common/AudioHalCapParameter;
.super Ljava/lang/Object;
.source "AudioHalCapParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;,
        Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;,
        Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;,
        Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;,
        Landroid/media/audio/common/AudioHalCapParameter$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist selectedInputSourceDevice:I = 0x1

.field public static final blacklist selectedStrategyDevice:I = 0x0

.field public static final blacklist strategyDeviceAddress:I = 0x2

.field public static final blacklist streamVolumeProfile:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapParameter$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "_value":Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    .line 24
    iput-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioHalCapParameter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioHalCapParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 191
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioHalCapParameter;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 207
    iput p1, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    .line 208
    iput-object p2, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    .line 209
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    const-string v0, "streamVolumeProfile"

    return-object v0

    .line 200
    :pswitch_1
    const-string v0, "strategyDeviceAddress"

    return-object v0

    .line 199
    :pswitch_2
    const-string v0, "selectedInputSourceDevice"

    return-object v0

    .line 198
    :pswitch_3
    const-string v0, "selectedStrategyDevice"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 187
    :cond_1
    return v0
.end method

.method public static blacklist selectedInputSourceDevice(Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;)Landroid/media/audio/common/AudioHalCapParameter;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    .line 58
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist selectedStrategyDevice(Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;)Landroid/media/audio/common/AudioHalCapParameter;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    .line 43
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist strategyDeviceAddress(Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;)Landroid/media/audio/common/AudioHalCapParameter;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    .line 73
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist streamVolumeProfile(Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;)Landroid/media/audio/common/AudioHalCapParameter;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    .line 88
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getStreamVolumeProfile()Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getStrategyDeviceAddress()Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 175
    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getSelectedInputSourceDevice()Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 172
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getSelectedStrategyDevice()Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 169
    nop

    .line 180
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getSelectedInputSourceDevice()Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
    .locals 1

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapParameter;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    return-object v0
.end method

.method public blacklist getSelectedStrategyDevice()Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapParameter;->_assertTag(I)V

    .line 48
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStrategyDeviceAddress()Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;
    .locals 1

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapParameter;->_assertTag(I)V

    .line 78
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    return-object v0
.end method

.method public blacklist getStreamVolumeProfile()Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;
    .locals 1

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapParameter;->_assertTag(I)V

    .line 93
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 37
    iget v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :pswitch_0
    sget-object v1, Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    .line 157
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 158
    return-void

    .line 151
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;
    :pswitch_1
    sget-object v1, Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    .line 152
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 153
    return-void

    .line 146
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;
    :pswitch_2
    sget-object v1, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    .line 147
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
    :pswitch_3
    sget-object v1, Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    .line 142
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 143
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setSelectedInputSourceDevice(Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public blacklist setSelectedStrategyDevice(Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public blacklist setStrategyDeviceAddress(Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public blacklist setStreamVolumeProfile(Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    .line 97
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapParameter;->_set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 118
    iget v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/media/audio/common/AudioHalCapParameter;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getStreamVolumeProfile()Landroid/media/audio/common/AudioHalCapParameter$StreamVolumeProfile;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getStrategyDeviceAddress()Landroid/media/audio/common/AudioHalCapParameter$StrategyDeviceAddress;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getSelectedInputSourceDevice()Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapParameter;->getSelectedStrategyDevice()Landroid/media/audio/common/AudioHalCapParameter$StrategyDevice;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    nop

    .line 133
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
