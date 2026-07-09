.class public Landroid/internal/aconfig/storage/FlagValueList$Header;
.super Ljava/lang/Object;
.source "FlagValueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagValueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private blacklist mBooleanValueOffset:I

.field private blacklist mContainer:Ljava/lang/String;

.field private blacklist mFileSize:I

.field private blacklist mFileType:Landroid/internal/aconfig/storage/FileType;

.field private blacklist mNumFlags:I

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBooleanValueOffset(Landroid/internal/aconfig/storage/FlagValueList$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumFlags(Landroid/internal/aconfig/storage/FlagValueList$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagValueList$Header;
    .locals 3
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 55
    new-instance v0, Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagValueList$Header;-><init>()V

    .line 56
    .local v0, "header":Landroid/internal/aconfig/storage/FlagValueList$Header;
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mVersion:I

    .line 57
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mContainer:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FileType;->fromInt(I)Landroid/internal/aconfig/storage/FileType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    .line 59
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileSize:I

    .line 60
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    .line 61
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    .line 63
    iget-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    sget-object v2, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    if-ne v1, v2, :cond_0

    .line 67
    return-object v0

    .line 64
    :cond_0
    new-instance v1, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v2, "binary file is not a flag value file"

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getBooleanValueOffset()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mBooleanValueOffset:I

    return v0
.end method

.method public blacklist getContainer()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSize()I
    .locals 1

    .line 83
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileSize:I

    return v0
.end method

.method public blacklist getFileType()Landroid/internal/aconfig/storage/FileType;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method

.method public blacklist getNumFlags()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mNumFlags:I

    return v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/internal/aconfig/storage/FlagValueList$Header;->mVersion:I

    return v0
.end method
