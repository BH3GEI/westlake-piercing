.class public Landroid/internal/aconfig/storage/FlagTable;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/FlagTable$Header;,
        Landroid/internal/aconfig/storage/FlagTable$Node;
    }
.end annotation


# instance fields
.field private blacklist mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

.field private blacklist mReader:Landroid/internal/aconfig/storage/ByteBufferReader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Landroid/internal/aconfig/storage/FlagTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable;-><init>()V

    .line 31
    .local v0, "flagTable":Landroid/internal/aconfig/storage/FlagTable;
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 32
    iget-object v1, v0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Header;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    .line 34
    return-object v0
.end method

.method private static blacklist makeKey(ILjava/lang/String;)[B
    .locals 3
    .param p0, "packageId"    # I
    .param p1, "flagName"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .locals 7
    .param p1, "packageId"    # I
    .param p2, "flagName"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 39
    .local v0, "numBuckets":I
    invoke-static {p1, p2}, Landroid/internal/aconfig/storage/FlagTable;->makeKey(ILjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v1

    .line 40
    .local v1, "bucketIndex":I
    iget-object v2, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 41
    .local v2, "newPosition":I
    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 42
    return-object v4

    .line 45
    :cond_0
    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v3, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 46
    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v3

    .line 47
    .local v3, "nodeIndex":I
    iget-object v5, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v5

    if-lt v3, v5, :cond_4

    iget-object v5, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v5

    if-lt v3, v5, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 52
    iget-object v5, p0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v5, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 53
    iget-object v5, p0, Landroid/internal/aconfig/storage/FlagTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object v5

    .line 54
    .local v5, "node":Landroid/internal/aconfig/storage/FlagTable$Node;
    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 55
    return-object v5

    .line 57
    :cond_2
    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v3

    .line 58
    .end local v5    # "node":Landroid/internal/aconfig/storage/FlagTable$Node;
    goto :goto_0

    .line 60
    :cond_3
    return-object v4

    .line 48
    :cond_4
    :goto_1
    return-object v4
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/FlagTable$Header;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    return-object v0
.end method
