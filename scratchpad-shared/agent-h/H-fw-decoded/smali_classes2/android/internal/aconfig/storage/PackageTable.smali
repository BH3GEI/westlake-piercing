.class public Landroid/internal/aconfig/storage/PackageTable;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/PackageTable$Header;,
        Landroid/internal/aconfig/storage/PackageTable$Node;
    }
.end annotation


# static fields
.field private static final blacklist FINGERPRINT_BYTES:I = 0x8

.field private static final blacklist NODE_SKIP_BYTES:I = 0xc


# instance fields
.field private blacklist mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

.field private blacklist mReader:Landroid/internal/aconfig/storage/ByteBufferReader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 36
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable;-><init>()V

    .line 37
    .local v0, "packageTable":Landroid/internal/aconfig/storage/PackageTable;
    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 38
    iget-object v1, v0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    .line 40
    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 45
    .local v0, "numBuckets":I
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v1

    .line 46
    .local v1, "bucketIndex":I
    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 47
    .local v2, "newPosition":I
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 48
    return-object v4

    .line 50
    :cond_0
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v3, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 51
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v3

    .line 53
    .local v3, "nodeIndex":I
    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v5}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v5

    if-lt v3, v5, :cond_4

    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v5}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v5

    if-lt v3, v5, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 58
    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v5, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 59
    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v6, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v6}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v5

    .line 60
    .local v5, "node":Landroid/internal/aconfig/storage/PackageTable$Node;
    invoke-static {v5}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    return-object v5

    .line 63
    :cond_2
    invoke-static {v5}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I

    move-result v3

    .line 64
    .end local v5    # "node":Landroid/internal/aconfig/storage/PackageTable$Node;
    goto :goto_0

    .line 66
    :cond_3
    return-object v4

    .line 54
    :cond_4
    :goto_1
    return-object v4
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    return-object v0
.end method

.method public blacklist getPackageList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 72
    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 73
    .local v1, "fingerprintBytes":I
    :goto_0
    add-int/lit8 v2, v1, 0xc

    .line 74
    .local v2, "skipBytes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v4}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 75
    iget-object v4, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v4}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v4, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v5, p0, Landroid/internal/aconfig/storage/PackageTable;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-virtual {v5}, Landroid/internal/aconfig/storage/ByteBufferReader;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method
