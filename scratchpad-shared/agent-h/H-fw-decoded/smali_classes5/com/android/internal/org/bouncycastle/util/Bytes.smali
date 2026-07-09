.class public Lcom/android/internal/org/bouncycastle/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# static fields
.field public static final blacklist BYTES:I = 0x1

.field public static final blacklist SIZE:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist xor(I[BI[BI[BI)V
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [B
    .param p2, "xOff"    # I
    .param p3, "y"    # [B
    .param p4, "yOff"    # I
    .param p5, "z"    # [B
    .param p6, "zOff"    # I

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 25
    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist xor(I[B[B[B)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [B
    .param p2, "y"    # [B
    .param p3, "z"    # [B

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 17
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist xorTo(I[BI[BI)V
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [B
    .param p2, "xOff"    # I
    .param p3, "z"    # [B
    .param p4, "zOff"    # I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 41
    add-int v1, p4, v0

    aget-byte v2, p3, v1

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist xorTo(I[B[B)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [B
    .param p2, "z"    # [B

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 33
    aget-byte v1, p2, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
