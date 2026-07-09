.class public Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;
.super Ljava/lang/Object;
.source "PhotonBeetleDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# instance fields
.field private blacklist D:I

.field private blacklist DSquare:I

.field private blacklist Dq:I

.field private blacklist Dr:I

.field private final blacklist INITIAL_RATE_INBYTES:I

.field private blacklist LAST_THREE_BITS_OFFSET:I

.field private blacklist MixColMatrix:[[B

.field private blacklist RATE_INBYTES:I

.field private blacklist RC:[[B

.field private blacklist ROUND:I

.field private blacklist S:I

.field private blacklist SQUEEZE_RATE_INBYTES:I

.field private blacklist STATE_INBYTES:I

.field private blacklist S_1:I

.field private blacklist TAG_INBYTES:I

.field private blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist sbox:[B

.field private blacklist state:[B

.field private blacklist state_2d:[[B


# direct methods
.method public constructor blacklist <init>()V
    .locals 14

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 26
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->INITIAL_RATE_INBYTES:I

    .line 27
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    .line 28
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    .line 29
    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    .line 30
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    .line 31
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    .line 32
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    .line 33
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    .line 34
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    .line 35
    const/4 v5, 0x7

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    .line 36
    const/16 v5, 0x40

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    .line 37
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    .line 38
    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    .line 39
    new-array v6, v2, [B

    fill-array-data v6, :array_0

    new-array v7, v2, [B

    fill-array-data v7, :array_1

    new-array v8, v2, [B

    fill-array-data v8, :array_2

    new-array v9, v2, [B

    fill-array-data v9, :array_3

    new-array v10, v2, [B

    fill-array-data v10, :array_4

    new-array v11, v2, [B

    fill-array-data v11, :array_5

    new-array v12, v2, [B

    fill-array-data v12, :array_6

    new-array v13, v2, [B

    fill-array-data v13, :array_7

    filled-new-array/range {v6 .. v13}, [[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    .line 49
    new-array v4, v3, [B

    fill-array-data v4, :array_8

    new-array v5, v3, [B

    fill-array-data v5, :array_9

    new-array v6, v3, [B

    fill-array-data v6, :array_a

    new-array v7, v3, [B

    fill-array-data v7, :array_b

    new-array v8, v3, [B

    fill-array-data v8, :array_c

    new-array v9, v3, [B

    fill-array-data v9, :array_d

    new-array v10, v3, [B

    fill-array-data v10, :array_e

    new-array v11, v3, [B

    fill-array-data v11, :array_f

    filled-new-array/range {v4 .. v11}, [[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    .line 64
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    .line 65
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    .line 66
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_c
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_d
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method blacklist PHOTON_Permutation()V
    .locals 10

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    shr-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, "round":I
    :goto_1
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    if-ge v1, v2, :cond_c

    .line 162
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v2, v2, v0

    aget-byte v4, v2, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    :cond_1
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v2, :cond_3

    .line 169
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v6, v6, v0

    aget-byte v6, v6, v2

    aget-byte v5, v5, v6

    aput-byte v5, v4, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 167
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    .end local v2    # "j":I
    :cond_3
    const/4 v0, 0x1

    :goto_5
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 182
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_6
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_b

    .line 184
    const/4 v0, 0x0

    :goto_7
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v3, :cond_9

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "sum":B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_8
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v4, v5, :cond_8

    .line 189
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v4

    .local v5, "x":I
    const/4 v6, 0x0

    .local v6, "ret":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v7, v7, v4

    aget-byte v7, v7, v2

    .line 190
    .local v7, "b":I
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_9
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    if-ge v8, v9, :cond_7

    .line 192
    ushr-int v9, v7, v8

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    .line 194
    xor-int/2addr v6, v5

    .line 196
    :cond_5
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    ushr-int v9, v5, v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    .line 198
    shl-int/lit8 v5, v5, 0x1

    .line 199
    xor-int/lit8 v5, v5, 0x3

    goto :goto_a

    .line 203
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    .line 190
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 206
    :cond_7
    and-int/lit8 v9, v6, 0xf

    xor-int/2addr v9, v3

    int-to-byte v3, v9

    .line 187
    .end local v5    # "x":I
    .end local v6    # "ret":I
    .end local v7    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 208
    .end local v8    # "l":I
    :cond_8
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aput-byte v3, v5, v0

    .line 184
    .end local v3    # "sum":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 210
    .end local v4    # "k":I
    :cond_9
    const/4 v0, 0x0

    :goto_b
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v3, :cond_a

    .line 212
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 182
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 159
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 216
    .end local v1    # "round":I
    .end local v2    # "j":I
    :cond_c
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v1, :cond_d

    .line 218
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    ushr-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v4, v0, v4

    aget-object v3, v3, v4

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v5, v0, v5

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v5, v6

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 216
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 220
    :cond_d
    return-void
.end method

.method public blacklist doFinal([BI)I
    .locals 12
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .line 99
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 104
    .local v0, "input":[B
    array-length v1, v0

    .line 105
    .local v1, "inlen":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v5, v3

    aget-byte v6, v4, v5

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v7

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    goto/16 :goto_3

    .line 109
    :cond_0
    const/4 v4, 0x2

    const/16 v5, 0x10

    if-gt v1, v5, :cond_3

    .line 111
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    if-ge v1, v5, :cond_1

    .line 114
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v7, v6, v1

    xor-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 116
    :cond_1
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v7, v3

    aget-byte v8, v6, v7

    if-ge v1, v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v4

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    goto :goto_3

    .line 120
    :cond_3
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/lit8 v1, v1, -0x10

    .line 122
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    div-int/2addr v6, v7

    .line 124
    .local v6, "Dlen_inblocks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 127
    iget v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v9, v10, v2}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 130
    iget v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v8, v7

    sub-int v8, v1, v8

    .line 131
    .local v8, "LastDBlocklen":I
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v9, v5, v2}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 132
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    if-ge v8, v5, :cond_5

    .line 134
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v9, v5, v8

    xor-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v9, v3

    aget-byte v10, v5, v9

    iget v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    rem-int v11, v1, v11

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v4

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v5, v9

    .line 138
    .end local v6    # "Dlen_inblocks":I
    .end local v7    # "i":I
    .end local v8    # "LastDBlocklen":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 139
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 141
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    sub-int/2addr v5, v6

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v2

    .line 101
    .end local v0    # "input":[B
    .end local v1    # "inlen":I
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "Photon-Beetle Hash"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 150
    return-void
.end method

.method public blacklist update(B)V
    .locals 1
    .param p1, "input"    # B

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    return-void
.end method

.method public blacklist update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 89
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
