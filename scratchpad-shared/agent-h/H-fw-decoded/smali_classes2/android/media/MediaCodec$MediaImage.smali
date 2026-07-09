.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final greylist-max-o TYPE_YUV:I = 0x1


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mBufferContext:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mInfo:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mIsReadOnly:Z

.field private final greylist-max-o mPlanes:[Landroid/media/Image$Plane;

.field private final greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private final greylist-max-o mTransform:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mXOffset:I

.field private final greylist-max-o mYOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 25
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    .line 6144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0}, Landroid/media/Image;-><init>()V

    .line 6069
    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 6070
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 6145
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 6146
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6147
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v8

    iput-boolean v8, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 6148
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6151
    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 6152
    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 6153
    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 6155
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 6157
    const/4 v9, -0x1

    .line 6158
    .local v9, "cbPlaneOffset":I
    const/4 v10, -0x1

    .line 6159
    .local v10, "crPlaneOffset":I
    const/4 v11, -0x1

    .line 6160
    .local v11, "planeOffsetInc":I
    const/4 v12, -0x1

    .line 6163
    .local v12, "pixelStride":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x68

    if-ne v13, v14, :cond_17

    .line 6164
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 6165
    .local v13, "type":I
    if-ne v13, v7, :cond_16

    .line 6168
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 6169
    .local v14, "numPlanes":I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_15

    .line 6172
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 6173
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 6174
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    const-string v4, "x"

    if-lt v15, v7, :cond_14

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    if-lt v15, v7, :cond_14

    .line 6178
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 6179
    .local v15, "bitDepth":I
    const/16 v7, 0x8

    if-eq v15, v7, :cond_1

    const/16 v7, 0xa

    if-ne v15, v7, :cond_0

    goto :goto_0

    .line 6180
    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported bit depth: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6182
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 6183
    .local v5, "bitDepthAllocated":I
    const/16 v6, 0x10

    const/16 v7, 0x8

    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 6184
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported allocated bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6187
    :cond_3
    :goto_1
    const/16 v7, 0x23

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4

    if-ne v5, v6, :cond_4

    .line 6188
    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6189
    const/4 v6, 0x1

    .line 6190
    .end local v11    # "planeOffsetInc":I
    .local v6, "planeOffsetInc":I
    const/4 v11, 0x2

    .end local v12    # "pixelStride":I
    .local v11, "pixelStride":I
    goto :goto_2

    .line 6191
    .end local v6    # "planeOffsetInc":I
    .local v11, "planeOffsetInc":I
    .restart local v12    # "pixelStride":I
    :cond_4
    const/16 v6, 0xa

    if-ne v15, v6, :cond_13

    const/16 v6, 0x10

    if-ne v5, v6, :cond_13

    .line 6192
    const/16 v6, 0x36

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6193
    const/4 v6, 0x2

    .line 6194
    .end local v11    # "planeOffsetInc":I
    .restart local v6    # "planeOffsetInc":I
    const/4 v11, 0x4

    .line 6200
    .end local v12    # "pixelStride":I
    .local v11, "pixelStride":I
    :goto_2
    new-array v12, v14, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v12, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 6201
    const/4 v12, 0x0

    .local v12, "ix":I
    :goto_3
    if-ge v12, v14, :cond_d

    .line 6202
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 6203
    .local v20, "planeOffset":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 6204
    .local v7, "colInc":I
    move/from16 v21, v6

    .end local v6    # "planeOffsetInc":I
    .local v21, "planeOffsetInc":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 6205
    .local v6, "rowInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 6206
    .local v8, "horiz":I
    move/from16 v22, v13

    .end local v13    # "type":I
    .local v22, "type":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 6207
    .local v13, "vert":I
    if-ne v8, v13, :cond_b

    move/from16 v23, v14

    if-nez v12, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x2

    .end local v14    # "numPlanes":I
    .local v23, "numPlanes":I
    :goto_4
    if-ne v8, v14, :cond_c

    .line 6211
    const/4 v14, 0x1

    if-lt v7, v14, :cond_a

    if-lt v6, v14, :cond_a

    .line 6215
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6216
    iget-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    add-int v14, v14, v20

    div-int v24, v2, v8

    mul-int v24, v24, v7

    add-int v14, v14, v24

    div-int v24, v3, v13

    mul-int v24, v24, v6

    add-int v14, v14, v24

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    move/from16 v24, v14

    const/16 v14, 0x8

    invoke-static {v15, v14}, Landroid/media/Utils;->divUp(II)I

    move-result v18

    add-int v18, v24, v18

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v14, v13

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v6

    add-int v18, v18, v14

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v7

    add-int v14, v18, v14

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6220
    iget-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v1, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    move-object/from16 v18, v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-direct {v1, v0, v14, v6, v7}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v1, v18, v12

    .line 6221
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x23

    if-eq v1, v14, :cond_6

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x36

    if-eq v1, v14, :cond_6

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x3c

    if-ne v1, v14, :cond_7

    :cond_6
    const/4 v14, 0x1

    if-ne v12, v14, :cond_7

    .line 6224
    move/from16 v1, v20

    move v9, v1

    .end local v9    # "cbPlaneOffset":I
    .local v1, "cbPlaneOffset":I
    goto :goto_5

    .line 6225
    .end local v1    # "cbPlaneOffset":I
    .restart local v9    # "cbPlaneOffset":I
    :cond_7
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x23

    if-eq v1, v14, :cond_8

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x36

    if-eq v1, v14, :cond_8

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x3c

    if-ne v1, v14, :cond_9

    :cond_8
    const/4 v1, 0x2

    if-ne v12, v1, :cond_9

    .line 6229
    move/from16 v1, v20

    move v10, v1

    .line 6201
    .end local v6    # "rowInc":I
    .end local v7    # "colInc":I
    .end local v8    # "horiz":I
    .end local v13    # "vert":I
    .end local v20    # "planeOffset":I
    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v6, v21

    move/from16 v13, v22

    move/from16 v14, v23

    const/16 v7, 0x23

    goto/16 :goto_3

    .line 6212
    .restart local v6    # "rowInc":I
    .restart local v7    # "colInc":I
    .restart local v8    # "horiz":I
    .restart local v13    # "vert":I
    .restart local v20    # "planeOffset":I
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected strides: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " pixel, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " row on plane "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6207
    .end local v23    # "numPlanes":I
    .restart local v14    # "numPlanes":I
    :cond_b
    move/from16 v23, v14

    .line 6208
    .end local v14    # "numPlanes":I
    .restart local v23    # "numPlanes":I
    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "rowInc":I
    .local v17, "rowInc":I
    const-string v6, "unexpected subsampling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " on plane "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6201
    .end local v7    # "colInc":I
    .end local v8    # "horiz":I
    .end local v17    # "rowInc":I
    .end local v20    # "planeOffset":I
    .end local v21    # "planeOffsetInc":I
    .end local v22    # "type":I
    .end local v23    # "numPlanes":I
    .local v6, "planeOffsetInc":I
    .local v13, "type":I
    .restart local v14    # "numPlanes":I
    :cond_d
    move/from16 v21, v6

    move/from16 v22, v13

    move/from16 v23, v14

    .line 6232
    .end local v5    # "bitDepthAllocated":I
    .end local v6    # "planeOffsetInc":I
    .end local v12    # "ix":I
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .end local v15    # "bitDepth":I
    .restart local v21    # "planeOffsetInc":I
    nop

    .line 6238
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x36

    if-eq v1, v14, :cond_e

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v14, 0x3c

    if-ne v1, v14, :cond_f

    .line 6239
    :cond_e
    add-int v6, v9, v21

    if-ne v10, v6, :cond_12

    .line 6243
    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/16 v16, 0x1

    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v11, :cond_11

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/16 v19, 0x2

    aget-object v1, v1, v19

    .line 6244
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v11, :cond_11

    .line 6249
    :cond_f
    if-nez p8, :cond_10

    .line 6250
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .local v1, "cropRect":Landroid/graphics/Rect;
    goto :goto_6

    .line 6249
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v1, p8

    .line 6252
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .restart local v1    # "cropRect":Landroid/graphics/Rect;
    :goto_6
    neg-int v4, v2

    neg-int v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6253
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6254
    return-void

    .line 6245
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Invalid pixelStride"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6240
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid plane offsets cbPlaneOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " crPlaneOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6191
    .end local v21    # "planeOffsetInc":I
    .restart local v5    # "bitDepthAllocated":I
    .local v11, "planeOffsetInc":I
    .local v12, "pixelStride":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    .restart local v15    # "bitDepth":I
    :cond_13
    move/from16 v22, v13

    move/from16 v23, v14

    .line 6196
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .restart local v22    # "type":I
    .restart local v23    # "numPlanes":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t infer ImageFormat bitDepth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bitDepthAllocated: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6174
    .end local v5    # "bitDepthAllocated":I
    .end local v15    # "bitDepth":I
    .end local v22    # "type":I
    .end local v23    # "numPlanes":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    :cond_14
    move/from16 v22, v13

    move/from16 v23, v14

    .line 6175
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .restart local v22    # "type":I
    .restart local v23    # "numPlanes":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6170
    .end local v22    # "type":I
    .end local v23    # "numPlanes":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    :cond_15
    move/from16 v23, v14

    .end local v14    # "numPlanes":I
    .restart local v23    # "numPlanes":I
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected number of planes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v23

    .end local v23    # "numPlanes":I
    .local v5, "numPlanes":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6166
    .end local v5    # "numPlanes":I
    :cond_16
    move/from16 v22, v13

    .end local v13    # "type":I
    .restart local v22    # "type":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v22

    .end local v22    # "type":I
    .local v5, "type":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6233
    .end local v5    # "type":I
    :cond_17
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported info length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6234
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;[I[IIIIZJIILandroid/graphics/Rect;J)V
    .locals 16
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "rowStrides"    # [I
    .param p3, "pixelStrides"    # [I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "format"    # I
    .param p7, "readOnly"    # Z
    .param p8, "timestamp"    # J
    .param p10, "xOffset"    # I
    .param p11, "yOffset"    # I
    .param p12, "cropRect"    # Landroid/graphics/Rect;
    .param p13, "context"    # J

    .line 6259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-direct {v0}, Landroid/media/Image;-><init>()V

    .line 6069
    const/4 v6, 0x0

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 6070
    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 6260
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_2

    array-length v7, v1

    array-length v8, v3

    if-ne v7, v8, :cond_2

    .line 6264
    move/from16 v7, p4

    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 6265
    move/from16 v8, p5

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 6266
    move/from16 v9, p6

    iput v9, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 6267
    move-wide/from16 v10, p8

    iput-wide v10, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 6268
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6269
    move/from16 v12, p7

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 6270
    const/4 v13, 0x0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6271
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 6272
    array-length v13, v1

    new-array v13, v13, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 6273
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    .line 6274
    iget-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v15, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    aget-object v6, v1, v13

    aget v1, v2, v13

    aget v2, v3, v13

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v15, v14, v13

    .line 6273
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto :goto_0

    .line 6278
    .end local v13    # "i":I
    :cond_0
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 6279
    iput v5, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 6281
    if-nez p12, :cond_1

    .line 6282
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p12    # "cropRect":Landroid/graphics/Rect;
    .local v1, "cropRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 6281
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p12    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v1, p12

    .line 6284
    .end local p12    # "cropRect":Landroid/graphics/Rect;
    .restart local v1    # "cropRect":Landroid/graphics/Rect;
    :goto_1
    neg-int v2, v4

    neg-int v6, v5

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 6285
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6287
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 6288
    return-void

    .line 6260
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p12    # "cropRect":Landroid/graphics/Rect;
    :cond_2
    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v12, p7

    move-wide/from16 v10, p8

    move-wide/from16 v13, p13

    .line 6261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffers, rowStrides and pixelStrides should have the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 6117
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    .line 6118
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 6119
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 6121
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 6122
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$smnative_closeMediaImage(J)V

    .line 6124
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 6126
    :cond_2
    return-void
.end method

.method public whitelist getFormat()I
    .locals 1

    .line 6074
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6075
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 6080
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6081
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .line 6111
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6112
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    .line 6098
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6099
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 6104
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6105
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    .line 6092
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6093
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 6086
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 6087
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 6136
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 6139
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6140
    return-void

    .line 6137
    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
