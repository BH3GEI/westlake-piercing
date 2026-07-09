.class public final Landroid/media/audio/common/AudioHalCapCriterionV2;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;,
        Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;,
        Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;,
        Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;,
        Landroid/media/audio/common/AudioHalCapCriterionV2$Tag;,
        Landroid/media/audio/common/AudioHalCapCriterionV2$LogicalDisjunction;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist availableInputDevices:I = 0x0

.field public static final blacklist availableInputDevicesAddresses:I = 0x2

.field public static final blacklist availableOutputDevices:I = 0x1

.field public static final blacklist availableOutputDevicesAddresses:I = 0x3

.field public static final blacklist forceConfigForUse:I = 0x5

.field public static final blacklist telephonyMode:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    .line 26
    iput-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    .line 35
    iput-object p2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioHalCapCriterionV2-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 245
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tagString(I)Ljava/lang/String;

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

    .line 263
    iput p1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    .line 264
    iput-object p2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 259
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

    .line 257
    :pswitch_0
    const-string v0, "forceConfigForUse"

    return-object v0

    .line 256
    :pswitch_1
    const-string v0, "telephonyMode"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "availableOutputDevicesAddresses"

    return-object v0

    .line 254
    :pswitch_3
    const-string v0, "availableInputDevicesAddresses"

    return-object v0

    .line 253
    :pswitch_4
    const-string v0, "availableOutputDevices"

    return-object v0

    .line 252
    :pswitch_5
    const-string v0, "availableInputDevices"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist availableInputDevices(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 45
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist availableInputDevicesAddresses(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 75
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist availableOutputDevices(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 60
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist availableOutputDevicesAddresses(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 90
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 238
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 239
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 241
    :cond_1
    return v0
.end method

.method public static blacklist forceConfigForUse(Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    .line 120
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist telephonyMode(Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;)Landroid/media/audio/common/AudioHalCapCriterionV2;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    .line 105
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getForceConfigForUse()Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getTelephonyMode()Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 229
    goto :goto_0

    .line 225
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableOutputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 226
    goto :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableInputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 223
    goto :goto_0

    .line 219
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableOutputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 220
    goto :goto_0

    .line 216
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableInputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 217
    nop

    .line 234
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAvailableInputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 50
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    return-object v0
.end method

.method public blacklist getAvailableInputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    .locals 1

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 80
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    return-object v0
.end method

.method public blacklist getAvailableOutputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .locals 1

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    return-object v0
.end method

.method public blacklist getAvailableOutputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    .locals 1

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 95
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    return-object v0
.end method

.method public blacklist getForceConfigForUse()Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
    .locals 1

    .line 124
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 125
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 39
    iget v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    return v0
.end method

.method public blacklist getTelephonyMode()Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
    .locals 1

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_assertTag(I)V

    .line 110
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 208
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

    .line 204
    :pswitch_0
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    .line 205
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 206
    return-void

    .line 199
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
    :pswitch_1
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    .line 200
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 201
    return-void

    .line 194
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
    :pswitch_2
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 195
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 196
    return-void

    .line 189
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    :pswitch_3
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 190
    .restart local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 191
    return-void

    .line 184
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    :pswitch_4
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 185
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 186
    return-void

    .line 179
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    :pswitch_5
    sget-object v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 180
    .restart local v1    # "_aidl_value":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 181
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAvailableInputDevices(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public blacklist setAvailableInputDevicesAddresses(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public blacklist setAvailableOutputDevices(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public blacklist setAvailableOutputDevicesAddresses(Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    .line 99
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public blacklist setForceConfigForUse(Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public blacklist setTelephonyMode(Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2;->_set(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 150
    iget v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getForceConfigForUse()Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getTelephonyMode()Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableOutputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    goto :goto_0

    .line 159
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableInputDevicesAddresses()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableOutputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    goto :goto_0

    .line 153
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/audio/common/AudioHalCapCriterionV2;->getAvailableInputDevices()Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    nop

    .line 171
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
