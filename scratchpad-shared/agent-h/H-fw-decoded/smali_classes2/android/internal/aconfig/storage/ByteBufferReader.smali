.class public Landroid/internal/aconfig/storage/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 29
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist position()I
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist position(I)V
    .locals 1
    .param p1, "newPosition"    # I

    .line 64
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    return-void
.end method

.method public blacklist readByte()I
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public blacklist readByte(I)I
    .locals 1
    .param p1, "i"    # I

    .line 60
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public blacklist readInt()I
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public blacklist readLong()J
    .locals 2

    .line 45
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()I
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .locals 4

    .line 49
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v0

    .line 50
    .local v0, "length":I
    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 54
    new-array v1, v0, [B

    .line 55
    .local v1, "bytes":[B
    iget-object v2, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 56
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 51
    .end local v1    # "bytes":[B
    :cond_0
    new-instance v1, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String length exceeds maximum allowed size (1024 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
