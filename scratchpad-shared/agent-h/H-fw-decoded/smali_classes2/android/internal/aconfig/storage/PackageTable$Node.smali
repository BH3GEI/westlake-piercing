.class public Landroid/internal/aconfig/storage/PackageTable$Node;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/PackageTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mBooleanStartIndex:I

.field private blacklist mHasPackageFingerprint:Z

.field private blacklist mNextOffset:I

.field private blacklist mPackageFingerprint:J

.field private blacklist mPackageId:I

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 0

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 1
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;
    .param p1, "version"    # I

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 158
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    return-object v0

    .line 155
    :pswitch_0
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v0

    return-object v0

    .line 153
    :pswitch_1
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 2
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 163
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    .line 164
    .local v0, "node":Landroid/internal/aconfig/storage/PackageTable$Node;
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    .line 166
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    .line 167
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 168
    iget v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    :goto_0
    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 169
    return-object v0
.end method

.method private static blacklist fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 3
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 173
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    .line 174
    .local v0, "node":Landroid/internal/aconfig/storage/PackageTable$Node;
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    .line 176
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    .line 177
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    .line 178
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 179
    iget v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    :goto_0
    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    .line 181
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 192
    return v0

    .line 195
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/internal/aconfig/storage/PackageTable$Node;

    if-nez v2, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/internal/aconfig/storage/PackageTable$Node;

    .line 200
    .local v2, "other":Landroid/internal/aconfig/storage/PackageTable$Node;
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    iget v4, v2, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    iget v4, v2, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    iget v4, v2, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 196
    .end local v2    # "other":Landroid/internal/aconfig/storage/PackageTable$Node;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getBooleanStartIndex()I
    .locals 1

    .line 219
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    return v0
.end method

.method public blacklist getNextOffset()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return v0
.end method

.method public blacklist getPackageFingerprint()J
    .locals 2

    .line 215
    iget-wide v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    return-wide v0
.end method

.method public blacklist getPackageId()I
    .locals 1

    .line 211
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasPackageFingerprint()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 186
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
