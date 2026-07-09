.class public Landroid/internal/aconfig/storage/PackageTable$Header;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/PackageTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private blacklist mBucketOffset:I

.field private blacklist mContainer:Ljava/lang/String;

.field private blacklist mFileSize:I

.field private blacklist mFileType:Landroid/internal/aconfig/storage/FileType;

.field private blacklist mNodeOffset:I

.field private blacklist mNumPackages:I

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/PackageTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;
    .locals 0

    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;
    .locals 3
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 96
    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;-><init>()V

    .line 97
    .local v0, "header":Landroid/internal/aconfig/storage/PackageTable$Header;
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    .line 98
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mContainer:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FileType;->fromInt(I)Landroid/internal/aconfig/storage/FileType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    .line 100
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    .line 101
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    .line 102
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    .line 103
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    .line 105
    iget-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    sget-object v2, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    if-ne v1, v2, :cond_0

    .line 109
    return-object v0

    .line 106
    :cond_0
    new-instance v1, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v2, "binary file is not a package map"

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getBucketOffset()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    return v0
.end method

.method public blacklist getContainer()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSize()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    return v0
.end method

.method public blacklist getFileType()Landroid/internal/aconfig/storage/FileType;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method

.method public blacklist getNodeOffset()I
    .locals 1

    .line 137
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    return v0
.end method

.method public blacklist getNumPackages()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    return v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    return v0
.end method
