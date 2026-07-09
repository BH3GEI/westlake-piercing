.class public final Landroid/media/audio/common/AudioPolicyForceUse;
.super Ljava/lang/Object;
.source "AudioPolicyForceUse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPolicyForceUse$MediaDeviceCategory;,
        Landroid/media/audio/common/AudioPolicyForceUse$Tag;,
        Landroid/media/audio/common/AudioPolicyForceUse$EncodedSurroundConfig;,
        Landroid/media/audio/common/AudioPolicyForceUse$DockType;,
        Landroid/media/audio/common/AudioPolicyForceUse$CommunicationDeviceCategory;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPolicyForceUse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist dock:I = 0x4

.field public static final blacklist encodedSurround:I = 0x7

.field public static final blacklist forCommunication:I = 0x1

.field public static final blacklist forMedia:I = 0x0

.field public static final blacklist forRecord:I = 0x2

.field public static final blacklist forVibrateRinging:I = 0x3

.field public static final blacklist hdmiSystemAudio:I = 0x6

.field public static final blacklist systemSounds:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPolicyForceUse$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "_value":B
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 28
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 37
    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPolicyForceUse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 268
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 271
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

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

    .line 288
    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 289
    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 284
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

    .line 282
    :pswitch_0
    const-string v0, "encodedSurround"

    return-object v0

    .line 281
    :pswitch_1
    const-string v0, "hdmiSystemAudio"

    return-object v0

    .line 280
    :pswitch_2
    const-string v0, "systemSounds"

    return-object v0

    .line 279
    :pswitch_3
    const-string v0, "dock"

    return-object v0

    .line 278
    :pswitch_4
    const-string v0, "forVibrateRinging"

    return-object v0

    .line 277
    :pswitch_5
    const-string v0, "forRecord"

    return-object v0

    .line 276
    :pswitch_6
    const-string v0, "forCommunication"

    return-object v0

    .line 275
    :pswitch_7
    const-string v0, "forMedia"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist dock(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 107
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist encodedSurround(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 152
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forCommunication(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 62
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forMedia(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 47
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forRecord(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 77
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forVibrateRinging(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # B

    .line 92
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hdmiSystemAudio(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # Z

    .line 137
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemSounds(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 3
    .param p0, "_value"    # Z

    .line 122
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    .line 264
    return v0
.end method

.method public blacklist getDock()B
    .locals 1

    .line 111
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 112
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getEncodedSurround()B
    .locals 1

    .line 156
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 157
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForCommunication()B
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 67
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForMedia()B
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 52
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForRecord()B
    .locals 1

    .line 81
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 82
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForVibrateRinging()B
    .locals 1

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 97
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getHdmiSystemAudio()Z
    .locals 1

    .line 141
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 142
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getSystemSounds()Z
    .locals 1

    .line 126
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 127
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 41
    iget v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 256
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

    .line 252
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 253
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 254
    return-void

    .line 247
    .end local v1    # "_aidl_value":B
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 248
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 249
    return-void

    .line 242
    .end local v1    # "_aidl_value":Z
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 243
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 244
    return-void

    .line 237
    .end local v1    # "_aidl_value":Z
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 238
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 239
    return-void

    .line 232
    .end local v1    # "_aidl_value":B
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 233
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 234
    return-void

    .line 227
    .end local v1    # "_aidl_value":B
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 228
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 229
    return-void

    .line 222
    .end local v1    # "_aidl_value":B
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 223
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 224
    return-void

    .line 217
    .end local v1    # "_aidl_value":B
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 218
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 219
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist setDock(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 116
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public blacklist setEncodedSurround(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 161
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public blacklist setForCommunication(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 71
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public blacklist setForMedia(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 56
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public blacklist setForRecord(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 86
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public blacklist setForVibrateRinging(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 101
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public blacklist setHdmiSystemAudio(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 146
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method public blacklist setSystemSounds(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 131
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 182
    iget v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getEncodedSurround()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getHdmiSystemAudio()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getSystemSounds()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_0

    .line 197
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getDock()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    goto :goto_0

    .line 194
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForVibrateRinging()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    goto :goto_0

    .line 191
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForRecord()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    goto :goto_0

    .line 188
    :pswitch_6
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForCommunication()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 189
    goto :goto_0

    .line 185
    :pswitch_7
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForMedia()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    nop

    .line 209
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
