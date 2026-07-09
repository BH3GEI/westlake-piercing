.class public final Landroid/content/pm/Checksum;
.super Ljava/lang/Object;
.source "Checksum.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Checksum$Type;,
        Landroid/content/pm/Checksum$TypeMask;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CHECKSUM_SIZE_BYTES:I = 0x40

.field public static final TYPE_PARTIAL_MERKLE_ROOT_1M_SHA256:I = 0x20

.field public static final TYPE_PARTIAL_MERKLE_ROOT_1M_SHA512:I = 0x40

.field public static final TYPE_WHOLE_MD5:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_MERKLE_ROOT_4K_SHA256:I = 0x1

.field public static final TYPE_WHOLE_SHA1:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_SHA256:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_SHA512:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mType:I

.field private final mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Landroid/content/pm/Checksum$1;

    invoke-direct {v0}, Landroid/content/pm/Checksum$1;-><init>()V

    sput-object v0, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Landroid/content/pm/Checksum;->mType:I

    .line 212
    const-class v0, Landroid/content/pm/Checksum$Type;

    iget v1, p0, Landroid/content/pm/Checksum;->mType:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 214
    iput-object p2, p0, Landroid/content/pm/Checksum;->mValue:[B

    .line 215
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/Checksum;->mValue:[B

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 261
    .local v1, "value":[B
    iput v0, p0, Landroid/content/pm/Checksum;->mType:I

    .line 262
    const-class v2, Landroid/content/pm/Checksum$Type;

    iget v3, p0, Landroid/content/pm/Checksum;->mType:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 264
    iput-object v1, p0, Landroid/content/pm/Checksum;->mValue:[B

    .line 265
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/content/pm/Checksum;->mValue:[B

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    return-void
.end method

.method public static readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;
    .locals 3
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 170
    .local v0, "type":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 171
    .local v1, "valueBytes":[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 172
    new-instance v2, Landroid/content/pm/Checksum;

    invoke-direct {v2, v0, v1}, Landroid/content/pm/Checksum;-><init>(I[B)V

    return-object v2
.end method

.method public static writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    .locals 2
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "checksum"    # Landroid/content/pm/Checksum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v0

    .line 157
    .local v0, "valueBytes":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 159
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/content/pm/Checksum;->mType:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/content/pm/Checksum;->mValue:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    iget v0, p0, Landroid/content/pm/Checksum;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/content/pm/Checksum;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 245
    return-void
.end method
