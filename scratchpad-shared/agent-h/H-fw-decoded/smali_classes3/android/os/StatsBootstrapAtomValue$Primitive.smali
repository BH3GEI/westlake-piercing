.class public final Landroid/os/StatsBootstrapAtomValue$Primitive;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsBootstrapAtomValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsBootstrapAtomValue$Primitive$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsBootstrapAtomValue$Primitive;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist boolValue:I = 0x0

.field public static final blacklist bytesValue:I = 0x5

.field public static final blacklist floatValue:I = 0x3

.field public static final blacklist intValue:I = 0x1

.field public static final blacklist longValue:I = 0x2

.field public static final blacklist stringArrayValue:I = 0x6

.field public static final blacklist stringValue:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive$1;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$Primitive$1;-><init>()V

    sput-object v0, Landroid/os/StatsBootstrapAtomValue$Primitive;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    .line 105
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->readFromParcel(Landroid/os/Parcel;)V

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/StatsBootstrapAtomValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 308
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 311
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tagString(I)Ljava/lang/String;

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

    .line 327
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    .line 328
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    .line 329
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 314
    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_0
    const-string/jumbo v0, "stringArrayValue"

    return-object v0

    .line 320
    :pswitch_1
    const-string v0, "bytesValue"

    return-object v0

    .line 319
    :pswitch_2
    const-string/jumbo v0, "stringValue"

    return-object v0

    .line 318
    :pswitch_3
    const-string v0, "floatValue"

    return-object v0

    .line 317
    :pswitch_4
    const-string/jumbo v0, "longValue"

    return-object v0

    .line 316
    :pswitch_5
    const-string/jumbo v0, "intValue"

    return-object v0

    .line 315
    :pswitch_6
    const-string v0, "boolValue"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist boolValue(Z)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 3
    .param p0, "_value"    # Z

    .line 115
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bytesValue([B)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 2
    .param p0, "_value"    # [B

    .line 190
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist floatValue(F)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 3
    .param p0, "_value"    # F

    .line 160
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist intValue(I)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 3
    .param p0, "_value"    # I

    .line 130
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist longValue(J)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 3
    .param p0, "_value"    # J

    .line 145
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist stringArrayValue([Ljava/lang/String;)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 2
    .param p0, "_value"    # [Ljava/lang/String;

    .line 205
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist stringValue(Ljava/lang/String;)Landroid/os/StatsBootstrapAtomValue$Primitive;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 175
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Primitive;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    .line 304
    return v0
.end method

.method public blacklist getBoolValue()Z
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 120
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getBytesValue()[B
    .locals 1

    .line 194
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 195
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getFloatValue()F
    .locals 1

    .line 164
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 165
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getIntValue()I
    .locals 1

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 135
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLongValue()J
    .locals 2

    .line 149
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 150
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStringArrayValue()[Ljava/lang/String;
    .locals 1

    .line 209
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 210
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStringValue()Ljava/lang/String;
    .locals 1

    .line 179
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_assertTag(I)V

    .line 180
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "_aidl_value":[Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 294
    return-void

    .line 287
    .end local v1    # "_aidl_value":[Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 288
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 289
    return-void

    .line 282
    .end local v1    # "_aidl_value":[B
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 284
    return-void

    .line 277
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 278
    .local v1, "_aidl_value":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 279
    return-void

    .line 272
    .end local v1    # "_aidl_value":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 273
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 274
    return-void

    .line 267
    .end local v1    # "_aidl_value":J
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 269
    return-void

    .line 262
    .end local v1    # "_aidl_value":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 263
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 264
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setBoolValue(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 124
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public blacklist setBytesValue([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 199
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 200
    return-void
.end method

.method public blacklist setFloatValue(F)V
    .locals 2
    .param p1, "_value"    # F

    .line 169
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 170
    return-void
.end method

.method public blacklist setIntValue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 139
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method public blacklist setLongValue(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 154
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 155
    return-void
.end method

.method public blacklist setStringArrayValue([Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # [Ljava/lang/String;

    .line 214
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 215
    return-void
.end method

.method public blacklist setStringValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Primitive;->_set(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 230
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue$Primitive;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringArrayValue()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBytesValue()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 249
    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    goto :goto_0

    .line 242
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 243
    goto :goto_0

    .line 239
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    goto :goto_0

    .line 236
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_0

    .line 233
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBoolValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    nop

    .line 254
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
