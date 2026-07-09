.class Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;
.super Ljava/io/InputStream;
.source "ConstructedBitStream.java"


# instance fields
.field private blacklist _currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _octetAligned:Z

.field private blacklist _padBits:I

.field private final blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;Z)V
    .locals 1
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    .param p2, "octetAligned"    # Z

    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 22
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    .line 23
    return-void
.end method

.method private blacklist getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 124
    .local v0, "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_2

    .line 126
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 134
    :cond_2
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-eqz v1, :cond_4

    .line 136
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v1, :cond_3

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    return-object v1

    .line 138
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "only the last nested bitstring can have padding"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method blacklist getPadBits()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    return v0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    .line 87
    return v1

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    .line 93
    return v1

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 104
    .local v0, "b":I
    if-ltz v0, :cond_3

    .line 106
    return v0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 110
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    .line 111
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v2, :cond_4

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 114
    return v1

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 118
    .end local v0    # "b":I
    goto :goto_0
.end method

.method public whitelist test-api read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 34
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    .line 36
    return v1

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    .line 42
    return v1

    .line 45
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 54
    .local v0, "totalRead":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 56
    .local v2, "numRead":I
    if-ltz v2, :cond_3

    .line 58
    add-int/2addr v0, v2

    .line 60
    if-ne v0, p3, :cond_6

    .line 62
    return v0

    .line 67
    :cond_3
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 68
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    .line 69
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v3, :cond_5

    .line 71
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 72
    const/4 v3, 0x1

    if-ge v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 77
    .end local v2    # "numRead":I
    :cond_6
    goto :goto_0
.end method
