.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapData"

.field public static final blacklist ENCODING_FILE:S = 0x2s

.field public static final blacklist ENCODING_INLINE:S = 0x0s

.field public static final blacklist ENCODING_URL:S = 0x1s

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40

.field private static final blacklist OP_CODE:I = 0x65

.field public static final blacklist TYPE_PNG:S = 0x1s

.field public static final blacklist TYPE_PNG_8888:S = 0x0s

.field public static final blacklist TYPE_RAW8:S = 0x2s

.field public static final blacklist TYPE_RAW8888:S = 0x3s


# instance fields
.field final blacklist mBitmap:[B

.field blacklist mEncoding:S

.field blacklist mImageHeight:I

.field blacklist mImageId:I

.field blacklist mImageWidth:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(III[B)V
    .locals 0
    .param p1, "imageId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmap"    # [B

    .line 83
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 85
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 86
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 87
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    .line 88
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmap"    # [B

    .line 153
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 156
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 157
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 158
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V
    .locals 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "type"    # S
    .param p3, "width"    # S
    .param p4, "encoding"    # S
    .param p5, "height"    # S
    .param p6, "bitmap"    # [B

    .line 179
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 181
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p3

    .line 182
    .local v0, "w":I
    shl-int/lit8 v1, p4, 0x10

    or-int/2addr v1, p5

    .line 183
    .local v1, "h":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 185
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 186
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 214
    const/16 v0, 0x65

    const-string v1, "BitmapData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 215
    const-string v1, "Bitmap data"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of bitmap data"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 217
    const/16 v2, 0x9

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "width of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 218
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 219
    const-string v5, "encoding"

    const-string v6, "height of the image"

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 221
    const-string v1, "height"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 222
    const/16 v1, 0xb

    const-string/jumbo v2, "values"

    const-string v3, "length"

    const-string v4, "Array of ints"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 223
    return-void
.end method

.method private blacklist getEncodingString(S)Ljava/lang/String;
    .locals 1
    .param p1, "encoding"    # S

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 264
    const-string v0, "ENCODING_INVALID"

    return-object v0

    .line 262
    :pswitch_0
    const-string v0, "ENCODING_FILE"

    return-object v0

    .line 260
    :pswitch_1
    const-string v0, "ENCODING_URL"

    return-object v0

    .line 258
    :pswitch_2
    const-string v0, "ENCODING_INLINE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getImageTypeString(S)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # S

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 279
    const-string v0, "TYPE_INVALID"

    return-object v0

    .line 277
    :pswitch_0
    const-string v0, "TYPE_RAW8888"

    return-object v0

    .line 275
    :pswitch_1
    const-string v0, "TYPE_RAW8"

    return-object v0

    .line 273
    :pswitch_2
    const-string v0, "TYPE_PNG"

    return-object v0

    .line 271
    :pswitch_3
    const-string v0, "TYPE_PNG_8888"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist id()I
    .locals 1

    .line 135
    const/16 v0, 0x65

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "BitmapData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 196
    .local v0, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 197
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 198
    .local v2, "height":I
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    if-lt v2, v3, :cond_0

    const/16 v3, 0x1f40

    if-gt v2, v3, :cond_0

    if-gt v1, v3, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object v3

    .line 205
    .local v3, "bitmap":[B
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;-><init>(III[B)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void

    .line 202
    .end local v3    # "bitmap":[B
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dimension of image is invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 227
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 228
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    move-object v1, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadBitmap(ISSII[B)V

    .line 229
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 246
    nop

    .line 247
    const-string/jumbo v0, "type"

    const-string v1, "BitmapData"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageWidth"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageHeight"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 251
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getImageTypeString(S)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 252
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getEncodingString(S)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encoding"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 253
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapData id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 242
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 110
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 111
    return-void
.end method
