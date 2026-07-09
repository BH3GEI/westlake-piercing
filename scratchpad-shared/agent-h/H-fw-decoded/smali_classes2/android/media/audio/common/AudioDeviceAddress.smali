.class public final Landroid/media/audio/common/AudioDeviceAddress;
.super Ljava/lang/Object;
.source "AudioDeviceAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioDeviceAddress$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioDeviceAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist alsa:I = 0x4

.field public static final blacklist id:I = 0x0

.field public static final blacklist ipv4:I = 0x2

.field public static final blacklist ipv6:I = 0x3

.field public static final blacklist mac:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceAddress$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioDeviceAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioDeviceAddress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 223
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 226
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

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

    .line 240
    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 241
    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 242
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 236
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

    .line 234
    :pswitch_0
    const-string v0, "alsa"

    return-object v0

    .line 233
    :pswitch_1
    const-string v0, "ipv6"

    return-object v0

    .line 232
    :pswitch_2
    const-string v0, "ipv4"

    return-object v0

    .line 231
    :pswitch_3
    const-string v0, "mac"

    return-object v0

    .line 230
    :pswitch_4
    const-string v0, "id"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist alsa([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [I

    .line 104
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv4([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [B

    .line 74
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv6([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [I

    .line 89
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mac([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [B

    .line 59
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    .line 192
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 209
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 210
    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioDeviceAddress;

    if-nez v2, :cond_2

    return v1

    .line 211
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioDeviceAddress;

    .line 212
    .local v2, "that":Landroid/media/audio/common/AudioDeviceAddress;
    iget v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 213
    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 214
    :cond_4
    return v0
.end method

.method public blacklist getAlsa()[I
    .locals 1

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIpv4()[B
    .locals 1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getIpv6()[I
    .locals 1

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 219
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 184
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

    .line 180
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 181
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 182
    return-void

    .line 175
    .end local v1    # "_aidl_value":[I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 176
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":[I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 171
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":[B
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 166
    .restart local v1    # "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":[B
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAlsa([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setIpv4([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setIpv6([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setMac([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 197
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.alsa("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.ipv6("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.ipv4("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.mac("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 134
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    nop

    .line 152
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
