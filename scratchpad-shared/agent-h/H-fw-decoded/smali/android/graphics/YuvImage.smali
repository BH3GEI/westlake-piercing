.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static final sSupportedFormats:[Ljava/lang/String;

.field private static final sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

.field private static final sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    const-string v0, "YCBCR_P010"

    const-string v1, "YUV_420_888"

    const-string v2, "NV21"

    const-string v3, "YUY2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    .line 103
    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method public constructor <init>([BIII[I)V
    .locals 8
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I

    .line 148
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "yuv":[B
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "strides":[I
    .local v2, "yuv":[B
    .local v3, "format":I
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "strides":[I
    invoke-direct/range {v1 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[ILandroid/graphics/ColorSpace;)V

    .line 149
    return-void
.end method

.method public constructor <init>([BIII[ILandroid/graphics/ColorSpace;)V
    .locals 3
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I
    .param p6, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x36

    if-eq p2, v0, :cond_1

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only supports the following ImageFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    :goto_0
    if-lez p3, :cond_5

    if-lez p4, :cond_5

    .line 182
    if-eqz p1, :cond_4

    .line 186
    if-eqz p6, :cond_3

    .line 190
    if-nez p5, :cond_2

    .line 191
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    .line 193
    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 196
    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 197
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 198
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 199
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 200
    iput-object p6, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 201
    return-void

    .line 187
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 428
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 429
    .local v1, "height":I
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 431
    and-int/lit8 v0, v0, -0x2

    .line 432
    and-int/lit8 v1, v1, -0x2

    .line 433
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 434
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 435
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 436
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 439
    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 441
    and-int/lit8 v0, v0, -0x2

    .line 442
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 443
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 445
    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 4
    .param p1, "width"    # I
    .param p2, "format"    # I

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "strides":[I
    sparse-switch p2, :sswitch_data_0

    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "only supports the following ImageFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :sswitch_0
    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, p1, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 413
    .end local v0    # "strides":[I
    .local v1, "strides":[I
    return-object v1

    .line 415
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {p1, v1, v2}, [I

    move-result-object v1

    .line 416
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    .line 418
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_2
    mul-int/lit8 v1, p1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 419
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    .line 409
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_3
    filled-new-array {p1, p1}, [I

    move-result-object v1

    .line 410
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x14 -> :sswitch_2
        0x23 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSupportedJpegRColorSpace(ZI)Z
    .locals 6
    .param p0, "isHdr"    # Z
    .param p1, "colorSpace"    # I

    .line 122
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    nop

    .line 124
    .local v0, "colorSpaces":[Landroid/graphics/ColorSpace$Named;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 125
    .local v4, "cs":Landroid/graphics/ColorSpace$Named;
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 126
    const/4 v1, 0x1

    return v1

    .line 124
    .end local v4    # "cs":Landroid/graphics/ColorSpace$Named;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_2
    return v2
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z
.end method

.method private static printSupportedFormats()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 84
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 86
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printSupportedJpegRColorSpaces(Z)Ljava/lang/String;
    .locals 4
    .param p0, "isHdr"    # Z

    .line 109
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    nop

    .line 111
    .local v0, "colorSpaces":[Landroid/graphics/ColorSpace$Named;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 113
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 115
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method calculateOffsets(II)[I
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "offsets":[I
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v3, v4, v3

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 394
    .end local v0    # "offsets":[I
    .local v1, "offsets":[I
    return-object v1

    .line 397
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_0
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 398
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 399
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    return-object v1

    .line 402
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_1
    return-object v0
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 12
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 219
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21 and ImageFormat.YUY2 are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    .local v0, "wholeImage":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    if-ltz p2, :cond_3

    const/16 v1, 0x64

    if-gt p2, v1, :cond_3

    .line 237
    if-eqz p3, :cond_2

    .line 241
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 242
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v7

    .line 244
    .local v7, "offsets":[I
    iget-object v3, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v4, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v1, 0x1000

    new-array v11, v1, [B

    .line 244
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .local v9, "quality":I
    .local v10, "stream":Ljava/io/OutputStream;
    invoke-static/range {v3 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p2

    return p2

    .line 238
    .end local v7    # "offsets":[I
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_2
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "stream cannot be null"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 233
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_3
    move v9, p2

    move-object v10, p3

    .line 234
    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "quality must be 0..100"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 229
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_4
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "rectangle is not inside the image"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 224
    .end local v0    # "wholeImage":Landroid/graphics/Rect;
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_5
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Only SRGB color space is supported."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;)Z
    .locals 2
    .param p1, "sdr"    # Landroid/graphics/YuvImage;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 275
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 276
    .local v0, "emptyExif":[B
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/YuvImage;->compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z

    move-result v1

    return v1
.end method

.method public compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z
    .locals 12
    .param p1, "sdr"    # Landroid/graphics/YuvImage;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "exif"    # [B

    .line 307
    if-eqz p1, :cond_6

    .line 311
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    array-length v0, v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 315
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 320
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    if-ne v0, v1, :cond_3

    .line 324
    if-ltz p2, :cond_2

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2

    .line 328
    if-eqz p3, :cond_1

    .line 332
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    iget-object v1, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v1

    .line 340
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v3

    iget v4, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/16 v7, 0x1000

    new-array v8, v7, [B

    iget-object v10, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 343
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v11

    .line 339
    move v6, p2

    move-object v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z

    move-result v0

    return v0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported color space. SDR only supports: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-static {v2}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HDR only supports: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    invoke-static {v1}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HDR and SDR resolution mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.YCBCR_P010 and ImageFormat.YUV_420_888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input images cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDR input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 379
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    .line 358
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
