.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
.super Ljava/lang/Object;
.source "RemoteComposeBuffer.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EASING_CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist EASING_CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist EASING_CUBIC_CUSTOM:I = 0xb

.field public static final blacklist EASING_CUBIC_DECELERATE:I = 0x3

.field public static final blacklist EASING_CUBIC_LINEAR:I = 0x4

.field public static final blacklist EASING_CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist EASING_CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASING_EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASING_EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist EASING_SPLINE_CUSTOM:I = 0xc

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field private blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

.field private blacklist mGeneratedComponentId:I

.field private blacklist mInImpulseProcess:Z

.field private blacklist mLastComponentId:I

.field private blacklist mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

.field private final blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 2
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 2324
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mInImpulseProcess:Z

    .line 156
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 157
    return-void
.end method

.method public static blacklist fromFile(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1140
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1141
    return-object v0
.end method

.method public static blacklist fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1170
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1171
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1172
    return-object v0
.end method

.method private blacklist getComponentId(I)I
    .locals 2
    .param p1, "id"    # I

    .line 1861
    const/4 v0, 0x0

    .line 1862
    .local v0, "resolvedId":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1863
    move v0, p1

    goto :goto_0

    .line 1865
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1866
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1868
    :goto_0
    return v0
.end method

.method public static blacklist packAnimation(FI[FFF)[F
    .locals 1
    .param p0, "duration"    # F
    .param p1, "type"    # I
    .param p2, "spec"    # [F
    .param p3, "initialValue"    # F
    .param p4, "wrap"    # F

    .line 1820
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    return-object v0
.end method

.method static blacklist read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1217
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1218
    .local v0, "fd":Ljava/io/FileInputStream;
    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1219
    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/InputStream;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 1229
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1230
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reset(I)V

    .line 1231
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    array-length v2, v0

    iput v2, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    .end local v0    # "bytes":[B
    nop

    .line 1236
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    const v0, 0x8000

    new-array v0, v0, [B

    .line 1247
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 1249
    .local v1, "red":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1250
    .local v2, "ret":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1251
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1252
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 1254
    :cond_0
    add-int/2addr v1, v2

    .line 1255
    array-length v3, v0

    if-ne v1, v3, :cond_1

    .line 1256
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1258
    .end local v2    # "ret":I
    :cond_1
    goto :goto_0
.end method

.method public static blacklist readNextOperation(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1089
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    .line 1093
    .local v0, "opId":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 1094
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    if-eqz v1, :cond_0

    .line 1097
    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 1098
    return-void

    .line 1095
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist version()Ljava/lang/String;
    .locals 1

    .line 1124
    const-string/jumbo v0, "v1.0"

    return-object v0
.end method


# virtual methods
.method public varargs blacklist addAnimatedFloat([F)F
    .locals 3
    .param p1, "value"    # [F

    .line 1430
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1431
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1432
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addAnimatedFloat([F[F)F
    .locals 2
    .param p1, "value"    # [F
    .param p2, "animation"    # [F

    .line 1519
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1520
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1521
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addBitmap(Ljava/lang/Object;)I
    .locals 5
    .param p1, "image"    # Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 563
    .local v0, "imageId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 566
    .local v1, "data":[B
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v2

    .line 567
    .local v2, "imageWidth":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v3

    .line 569
    .local v3, "imageHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v4, v0, v2, v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 571
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v3    # "imageHeight":I
    :cond_0
    return v0
.end method

.method public blacklist addBitmap(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 582
    .local v0, "imageId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 585
    .local v1, "data":[B
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v2

    .line 586
    .local v2, "imageWidth":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v3

    .line 588
    .local v3, "imageHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v4, v0, v2, v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 589
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->setBitmapName(ILjava/lang/String;)V

    .line 592
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v3    # "imageHeight":I
    :cond_0
    return v0
.end method

.method public blacklist addBitmapFont([Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .locals 2
    .param p1, "glyphs"    # [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 602
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 603
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V

    .line 604
    return v0
.end method

.method public blacklist addBoolean(Z)I
    .locals 2
    .param p1, "value"    # Z

    .line 1408
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1409
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V

    .line 1410
    return v0
.end method

.method public blacklist addBoxStart(IIII)V
    .locals 2
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 2139
    return-void
.end method

.method public blacklist addCanvasContentStart(I)V
    .locals 2
    .param p1, "componentId"    # I

    .line 2220
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2221
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2222
    return-void
.end method

.method public blacklist addCanvasOperationsStart()V
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2239
    return-void
.end method

.method public blacklist addCanvasStart(II)V
    .locals 2
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I

    .line 2210
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2211
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CanvasLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 2212
    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # Ljava/lang/String;

    .line 360
    move-object/from16 v0, p7

    const/4 v1, 0x0

    .line 361
    .local v1, "contentDescriptionId":I
    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    goto :goto_0

    .line 361
    :cond_0
    move v4, v1

    .line 364
    .end local v1    # "contentDescriptionId":I
    .local v4, "contentDescriptionId":I
    :goto_0
    const/4 v1, 0x0

    .line 365
    .local v1, "metadataId":I
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v9, v1

    goto :goto_1

    .line 365
    :cond_1
    move v9, v1

    .line 368
    .end local v1    # "metadataId":I
    .local v9, "metadataId":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    .line 369
    return-void
.end method

.method public blacklist addClipPath(I)V
    .locals 1
    .param p1, "pathId"    # I

    .line 1340
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1341
    return-void
.end method

.method public blacklist addClipRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 1352
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1353
    return-void
.end method

.method public blacklist addClipRectModifier()V
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2094
    return-void
.end method

.method public blacklist addCollapsibleColumnStart(IIIIF)V
    .locals 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2198
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2199
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2201
    return-void
.end method

.method public blacklist addCollapsibleRowStart(IIIIF)V
    .locals 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2167
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2168
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleRowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2170
    return-void
.end method

.method public blacklist addColor(I)I
    .locals 3
    .param p1, "color"    # I

    .line 1679
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;-><init>(II)V

    .line 1680
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    .line 1681
    .local v1, "id":S
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->mColorId:I

    .line 1682
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1683
    return v1
.end method

.method public blacklist addColorExpression(FFF)S
    .locals 3
    .param p1, "hue"    # F
    .param p2, "sat"    # F
    .param p3, "value"    # F

    .line 1761
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IFFF)V

    .line 1762
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    .line 1763
    .local v1, "id":S
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1764
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1765
    return v1
.end method

.method public blacklist addColorExpression(FFFF)S
    .locals 7
    .param p1, "alpha"    # F
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F

    .line 1798
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "alpha":F
    .end local p2    # "red":F
    .end local p3    # "green":F
    .end local p4    # "blue":F
    .local v3, "alpha":F
    .local v4, "red":F
    .local v5, "green":F
    .local v6, "blue":F
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    .line 1800
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1801
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1802
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1803
    return p1
.end method

.method public blacklist addColorExpression(IFFF)S
    .locals 7
    .param p1, "alpha"    # I
    .param p2, "hue"    # F
    .param p3, "sat"    # F
    .param p4, "value"    # F

    .line 1779
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "alpha":I
    .end local p2    # "hue":F
    .end local p3    # "sat":F
    .end local p4    # "value":F
    .local v3, "alpha":I
    .local v4, "hue":F
    .local v5, "sat":F
    .local v6, "value":F
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    .line 1781
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1782
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1783
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1784
    return p1
.end method

.method public blacklist addColorExpression(IIF)S
    .locals 6
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "tween"    # F

    .line 1695
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":I
    .end local p2    # "color2":I
    .end local p3    # "tween":F
    .local v3, "color1":I
    .local v4, "color2":I
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1696
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1697
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1698
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1699
    return p1
.end method

.method public blacklist addColorExpression(ISF)S
    .locals 6
    .param p1, "color1"    # I
    .param p2, "color2"    # S
    .param p3, "tween"    # F

    .line 1727
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":I
    .end local p2    # "color2":S
    .end local p3    # "tween":F
    .local v3, "color1":I
    .local v4, "color2":S
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1728
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1729
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1730
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1731
    return p1
.end method

.method public blacklist addColorExpression(SIF)S
    .locals 6
    .param p1, "color1"    # S
    .param p2, "color2"    # I
    .param p3, "tween"    # F

    .line 1711
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":S
    .end local p2    # "color2":I
    .end local p3    # "tween":F
    .local v3, "color1":S
    .local v4, "color2":I
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1712
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1713
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1714
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1715
    return p1
.end method

.method public blacklist addColorExpression(SSF)S
    .locals 6
    .param p1, "color1"    # S
    .param p2, "color2"    # S
    .param p3, "tween"    # F

    .line 1744
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x3

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":S
    .end local p2    # "color2":S
    .end local p3    # "tween":F
    .local v3, "color1":S
    .local v4, "color2":S
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1745
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1746
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1747
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1748
    return p1
.end method

.method public blacklist addColumnStart(IIIIF)V
    .locals 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2183
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2184
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2185
    return-void
.end method

.method public blacklist addComponentHeightValue(I)V
    .locals 3
    .param p1, "id"    # I

    .line 2256
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 2257
    return-void
.end method

.method public blacklist addComponentStart(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1888
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addComponentStart(II)V

    .line 1889
    return-void
.end method

.method public blacklist addComponentStart(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "id"    # I

    .line 1878
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1879
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 1880
    return-void
.end method

.method public blacklist addComponentWidthValue(I)V
    .locals 3
    .param p1, "id"    # I

    .line 2247
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 2248
    return-void
.end method

.method public blacklist addContainerEnd()V
    .locals 1

    .line 1893
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1894
    return-void
.end method

.method public blacklist addContentStart()V
    .locals 2

    .line 2232
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2233
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2234
    return-void
.end method

.method public blacklist addDrawArc(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 407
    return-void
.end method

.method public blacklist addDrawBitmap(IFFFFLjava/lang/String;)V
    .locals 8
    .param p1, "imageId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "contentDescription"    # Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "contentDescriptionId":I
    if-eqz p6, :cond_0

    .line 476
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 475
    :cond_0
    move v7, v0

    .line 478
    .end local v0    # "contentDescriptionId":I
    .local v7, "contentDescriptionId":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "imageId":I
    .end local p2    # "left":F
    .end local p3    # "top":F
    .end local p4    # "right":F
    .end local p5    # "bottom":F
    .local v2, "imageId":I
    .local v3, "left":F
    .local v4, "top":F
    .local v5, "right":F
    .local v6, "bottom":F
    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 479
    return-void
.end method

.method public blacklist addDrawBitmap(IFFLjava/lang/String;)V
    .locals 10
    .param p1, "imageId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "contentDescription"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v0

    .line 490
    .local v0, "imageWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v1

    .line 491
    .local v1, "imageHeight":I
    const/4 v2, 0x0

    .line 492
    .local v2, "contentDescriptionId":I
    if-eqz p4, :cond_0

    .line 493
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v2

    move v9, v2

    goto :goto_0

    .line 492
    :cond_0
    move v9, v2

    .line 495
    .end local v2    # "contentDescriptionId":I
    .local v9, "contentDescriptionId":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    int-to-float v7, v0

    int-to-float v8, v1

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "imageId":I
    .end local p2    # "left":F
    .end local p3    # "top":F
    .local v4, "imageId":I
    .local v5, "left":F
    .local v6, "top":F
    invoke-static/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 497
    return-void
.end method

.method public blacklist addDrawBitmap(Ljava/lang/Object;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "contentDescription"    # Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    .line 447
    .local v1, "imageId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    .line 449
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    .line 450
    .local v2, "data":[B
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v3

    .line 451
    .local v3, "imageWidth":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v4

    .line 453
    .local v4, "imageHeight":I
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v5, v1, v3, v4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 456
    .end local v2    # "data":[B
    .end local v3    # "imageWidth":I
    .end local v4    # "imageHeight":I
    :cond_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawBitmap(IFFFFLjava/lang/String;)V

    .line 457
    return-void
.end method

.method public blacklist addDrawBitmapFontTextRun(IIIIFF)V
    .locals 7
    .param p1, "textId"    # I
    .param p2, "bitmapFontId"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 888
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "textId":I
    .end local p2    # "bitmapFontId":I
    .end local p3    # "start":I
    .end local p4    # "end":I
    .end local p5    # "x":F
    .end local p6    # "y":F
    .local v1, "textId":I
    .local v2, "bitmapFontId":I
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "x":F
    .local v6, "y":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    .line 889
    return-void
.end method

.method public blacklist addDrawCircle(FFF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 673
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 674
    return-void
.end method

.method public blacklist addDrawLine(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 687
    return-void
.end method

.method public blacklist addDrawOval(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 699
    return-void
.end method

.method public blacklist addDrawPath(I)V
    .locals 1
    .param p1, "pathId"    # I

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 761
    return-void
.end method

.method public blacklist addDrawPath(Ljava/lang/Object;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 711
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 714
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawPath(I)V

    .line 715
    return-void
.end method

.method public blacklist addDrawRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 772
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 773
    return-void
.end method

.method public blacklist addDrawRoundRect(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radiusX"    # F
    .param p6, "radiusY"    # F

    .line 787
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "radiusX":F
    .end local p6    # "radiusY":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "radiusX":F
    .local v6, "radiusY":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 788
    return-void
.end method

.method public blacklist addDrawSector(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 429
    return-void
.end method

.method public blacklist addDrawTextOnPath(ILjava/lang/Object;FF)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "path"    # Ljava/lang/Object;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 817
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 818
    .local v0, "pathId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 819
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, p1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 822
    return-void
.end method

.method public blacklist addDrawTextOnPath(Ljava/lang/String;Ljava/lang/Object;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/Object;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 801
    .local v0, "pathId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 802
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 804
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 805
    .local v1, "textId":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 806
    return-void
.end method

.method public blacklist addDrawTextRun(IIIIIFFZ)V
    .locals 9
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 872
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 873
    return-void
.end method

.method public blacklist addDrawTextRun(Ljava/lang/String;IIIIFFZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 846
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 847
    .local v1, "textId":I
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 848
    return-void
.end method

.method public blacklist addDrawTweenPath(IIFFF)V
    .locals 6
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "stop"    # F

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "path1Id":I
    .end local p2    # "path2Id":I
    .end local p3    # "tween":F
    .end local p4    # "start":F
    .end local p5    # "stop":F
    .local v1, "path1Id":I
    .local v2, "path2Id":I
    .local v3, "tween":F
    .local v4, "start":F
    .local v5, "stop":F
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    .line 1035
    return-void
.end method

.method public blacklist addDrawTweenPath(Ljava/lang/Object;Ljava/lang/Object;FFF)V
    .locals 8
    .param p1, "path1"    # Ljava/lang/Object;
    .param p2, "path2"    # Ljava/lang/Object;
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "stop"    # F

    .line 1013
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 1014
    .local v0, "path1Id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1015
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 1014
    :cond_0
    move v3, v0

    .line 1017
    .end local v0    # "path1Id":I
    .local v3, "path1Id":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 1018
    .local v0, "path2Id":I
    if-ne v0, v1, :cond_1

    .line 1019
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 1018
    :cond_1
    move v4, v0

    .line 1021
    .end local v0    # "path2Id":I
    .local v4, "path2Id":I
    :goto_1
    move-object v2, p0

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p3    # "tween":F
    .end local p4    # "start":F
    .end local p5    # "stop":F
    .local v5, "tween":F
    .local v6, "start":F
    .local v7, "stop":F
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawTweenPath(IIFFF)V

    .line 1022
    return-void
.end method

.method public blacklist addEndFloatFunctionDef()V
    .locals 1

    .line 2391
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2392
    return-void
.end method

.method public blacklist addFloat(F)F
    .locals 2
    .param p1, "value"    # F

    .line 1362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v0

    .line 1363
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1364
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatArray([F)F
    .locals 2
    .param p1, "values"    # [F

    .line 1558
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1559
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1560
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatList([F)F
    .locals 5
    .param p1, "values"    # [F

    .line 1570
    array-length v0, p1

    new-array v0, v0, [I

    .line 1571
    .local v0, "listId":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v2

    aput v2, v0, v1

    .line 1573
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v3, v0, v1

    aget v4, p1, v1

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addList([I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatMap([Ljava/lang/String;[F)F
    .locals 6
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [F

    .line 1598
    array-length v0, p2

    new-array v0, v0, [I

    .line 1599
    .local v0, "listId":[I
    array-length v1, p2

    new-array v1, v1, [B

    .line 1600
    .local v1, "type":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1601
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v3

    aput v3, v0, v2

    .line 1602
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v4, v0, v2

    aget v5, p2, v2

    invoke-static {v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1603
    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 1600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1605
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addMap([Ljava/lang/String;[B[I)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method public blacklist addHeader(IILjava/lang/String;FJ)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "density"    # F
    .param p5, "capabilities"    # J

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p4    # "density":F
    .end local p5    # "capabilities":J
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "density":F
    .local v4, "capabilities":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 238
    const/4 p1, 0x0

    .line 239
    .local p1, "contentDescriptionId":I
    if-eqz p3, :cond_0

    .line 240
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    .line 241
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 243
    :cond_0
    return-void
.end method

.method public blacklist addHeader([S[Ljava/lang/Object;)V
    .locals 1
    .param p1, "tags"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public blacklist addImpulse(FF)V
    .locals 1
    .param p1, "duration"    # F
    .param p2, "start"    # F

    .line 2333
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 2334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mInImpulseProcess:Z

    .line 2335
    return-void
.end method

.method public blacklist addImpulseEnd()V
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2346
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mInImpulseProcess:Z

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2349
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mInImpulseProcess:Z

    .line 2350
    return-void
.end method

.method public blacklist addImpulseProcess()V
    .locals 1

    .line 2339
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mInImpulseProcess:Z

    .line 2341
    return-void
.end method

.method public blacklist addInteger(I)I
    .locals 2
    .param p1, "value"    # I

    .line 1384
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheInteger(I)I

    move-result v0

    .line 1385
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1386
    return v0
.end method

.method public blacklist addIntegerExpression(I[I)I
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # [I

    .line 1667
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1668
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    .line 1669
    return v0
.end method

.method public blacklist addList([I)F
    .locals 2
    .param p1, "listId"    # [I

    .line 1585
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1586
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 1587
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addLong(J)I
    .locals 2
    .param p1, "value"    # J

    .line 1396
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1397
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V

    .line 1398
    return v0
.end method

.method public blacklist addLoopEnd()V
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2111
    return-void
.end method

.method public blacklist addLoopStart(IFFF)V
    .locals 1
    .param p1, "indexId"    # I
    .param p2, "from"    # F
    .param p3, "step"    # F
    .param p4, "until"    # F

    .line 2105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 2106
    return-void
.end method

.method public blacklist addMap([Ljava/lang/String;[B[I)I
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "types"    # [B
    .param p3, "listId"    # [I

    .line 1616
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1617
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    .line 1618
    return v0
.end method

.method public blacklist addMatrixRestore()V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1278
    return-void
.end method

.method public blacklist addMatrixRotate(FFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 1299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 1300
    return-void
.end method

.method public blacklist addMatrixSave()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1289
    return-void
.end method

.method public blacklist addMatrixScale(FF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 1319
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1320
    return-void
.end method

.method public blacklist addMatrixScale(FFFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 1331
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1332
    return-void
.end method

.method public blacklist addMatrixSkew(FF)V
    .locals 1
    .param p1, "skewX"    # F
    .param p2, "skewY"    # F

    .line 1268
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1269
    return-void
.end method

.method public blacklist addMatrixTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1309
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1310
    return-void
.end method

.method public blacklist addModifierBackground(II)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "shape"    # I

    .line 1936
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    .line 1937
    .local v7, "r":F
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v8, v0, v1

    .line 1938
    .local v8, "g":F
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float v9, v0, v1

    .line 1939
    .local v9, "b":F
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v10, v0, v1

    .line 1940
    .local v10, "a":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, p2

    .end local p2    # "shape":I
    .local v11, "shape":I
    invoke-static/range {v2 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V

    .line 1941
    return-void
.end method

.method public blacklist addModifierBorder(FFII)V
    .locals 15
    .param p1, "borderWidth"    # F
    .param p2, "borderRoundedCorner"    # F
    .param p3, "color"    # I
    .param p4, "shape"    # I

    .line 1953
    move/from16 v0, p3

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v10, v1, v2

    .line 1954
    .local v10, "r":F
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v11, v1, v2

    .line 1955
    .local v11, "g":F
    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float v12, v1, v2

    .line 1956
    .local v12, "b":F
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v13, v1, v2

    .line 1957
    .local v13, "a":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v14, p4

    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V

    .line 1959
    return-void
.end method

.method public blacklist addModifierGraphicsLayer(FFFFFFFFFFIIIII)V
    .locals 17
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "rotationX"    # F
    .param p4, "rotationY"    # F
    .param p5, "rotationZ"    # F
    .param p6, "shadowElevation"    # F
    .param p7, "transformOriginX"    # F
    .param p8, "transformOriginY"    # F
    .param p9, "alpha"    # F
    .param p10, "cameraDistance"    # F
    .param p11, "blendMode"    # I
    .param p12, "spotShadowColorId"    # I
    .param p13, "ambientShadowColorId"    # I
    .param p14, "colorFilterId"    # I
    .param p15, "renderEffectId"    # I

    .line 2059
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-static/range {v1 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFIIIII)V

    .line 2076
    return-void
.end method

.method public blacklist addModifierMarquee(IIFFFF)V
    .locals 7
    .param p1, "iterations"    # I
    .param p2, "animationMode"    # I
    .param p3, "repeatDelayMillis"    # F
    .param p4, "initialDelayMillis"    # F
    .param p5, "spacing"    # F
    .param p6, "velocity"    # F

    .line 2014
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "iterations":I
    .end local p2    # "animationMode":I
    .end local p3    # "repeatDelayMillis":F
    .end local p4    # "initialDelayMillis":F
    .end local p5    # "spacing":F
    .end local p6    # "velocity":F
    .local v1, "iterations":I
    .local v2, "animationMode":I
    .local v3, "repeatDelayMillis":F
    .local v4, "initialDelayMillis":F
    .local v5, "spacing":F
    .local v6, "velocity":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    .line 2022
    return-void
.end method

.method public blacklist addModifierOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1980
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1981
    return-void
.end method

.method public blacklist addModifierPadding(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 1970
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1971
    return-void
.end method

.method public blacklist addModifierRipple()V
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1995
    return-void
.end method

.method public blacklist addModifierScroll(IFI)V
    .locals 15
    .param p1, "direction"    # I
    .param p2, "positionId"    # F
    .param p3, "notches"    # I

    .line 1905
    move/from16 v0, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v5

    .line 1906
    .local v5, "max":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v12

    .line 1908
    .local v12, "notchMax":F
    if-eqz v0, :cond_0

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    :goto_0
    move v13, v1

    .line 1910
    .local v13, "touchExpressionDirection":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v2, p2

    invoke-static {v1, v0, v2, v5, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1912
    const/4 v1, 0x3

    new-array v8, v1, [F

    const/4 v1, 0x0

    aput v13, v8, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    aput v3, v8, v4

    sget v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    const/4 v6, 0x2

    aput v3, v8, v6

    move/from16 v14, p3

    int-to-float v3, v14

    new-array v10, v6, [F

    aput v3, v10, v1

    aput v12, v10, v4

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x3

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    .line 1926
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1927
    return-void
.end method

.method public blacklist addModifierZIndex(F)V
    .locals 1
    .param p1, "value"    # F

    .line 1989
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    .line 1990
    return-void
.end method

.method public blacklist addPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1
    .param p1, "paint"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 1056
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1057
    return-void
.end method

.method public blacklist addParticleLoopEnd()V
    .locals 1

    .line 2378
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2379
    return-void
.end method

.method public blacklist addParticles(I[I[[FI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "varIds"    # [I
    .param p3, "initialExpressions"    # [[F
    .param p4, "particleCount"    # I

    .line 2362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 2363
    return-void
.end method

.method public blacklist addParticlesLoop(I[F[[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "expressions"    # [[F

    .line 2373
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 2374
    return-void
.end method

.method public blacklist addPathData(Ljava/lang/Object;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/Object;

    .line 1044
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->pathToFloatArray(Ljava/lang/Object;)[F

    move-result-object v0

    .line 1045
    .local v0, "pathData":[F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    .line 1046
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1047
    return v1
.end method

.method public blacklist addRootStart()V
    .locals 2

    .line 2226
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2227
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2228
    return-void
.end method

.method public blacklist addRoundClipRectModifier(FFFF)V
    .locals 1
    .param p1, "topStart"    # F
    .param p2, "topEnd"    # F
    .param p3, "bottomStart"    # F
    .param p4, "bottomEnd"    # F

    .line 2088
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 2089
    return-void
.end method

.method public blacklist addRowStart(IIIIF)V
    .locals 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2152
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2153
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2154
    return-void
.end method

.method public blacklist addStateLayout(IIIII)V
    .locals 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "indexId"    # I

    .line 2124
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2125
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "indexId":I
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "indexId":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 2126
    return-void
.end method

.method public blacklist addText(Ljava/lang/String;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ILjava/lang/String;)V

    .line 338
    :cond_0
    return v0
.end method

.method public blacklist addTextComponentStart(IIIIFIFLjava/lang/String;III)V
    .locals 14
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "textId"    # I
    .param p4, "color"    # I
    .param p5, "fontSize"    # F
    .param p6, "fontStyle"    # I
    .param p7, "fontWeight"    # F
    .param p8, "fontFamily"    # Ljava/lang/String;
    .param p9, "textAlign"    # I
    .param p10, "overflow"    # I
    .param p11, "maxLines"    # I

    .line 2285
    move-object/from16 v0, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2286
    const/4 v1, -0x1

    .line 2287
    .local v1, "fontFamilyId":I
    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_0

    .line 2287
    :cond_0
    move v10, v1

    .line 2290
    .end local v1    # "fontFamilyId":I
    .local v10, "fontFamilyId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    .line 2303
    return-void
.end method

.method public blacklist addTouchExpression(FFFFI[FI[F[F)F
    .locals 11
    .param p1, "value"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "velocityId"    # F
    .param p5, "touchEffects"    # I
    .param p6, "exp"    # [F
    .param p7, "touchMode"    # I
    .param p8, "touchSpec"    # [F
    .param p9, "easingSpec"    # [F

    .line 1496
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    .line 1497
    .local v1, "id":F
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    .line 1508
    return v1
.end method

.method public blacklist addTouchExpression(FFFFFI[FI[F[F)V
    .locals 11
    .param p1, "id"    # F
    .param p2, "value"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "velocityId"    # F
    .param p6, "touchEffects"    # I
    .param p7, "exp"    # [F
    .param p8, "touchMode"    # I
    .param p9, "touchSpec"    # [F
    .param p10, "easingSpec"    # [F

    .line 1459
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 1461
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 1459
    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    .line 1471
    return-void
.end method

.method public blacklist asFloatId(I)F
    .locals 1
    .param p1, "id"    # I

    .line 1420
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    return v0
.end method

.method public blacklist bitmapAttribute(IS)F
    .locals 3
    .param p1, "bitmapId"    # I
    .param p2, "attribute"    # S

    .line 2410
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2411
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 2412
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist callFloatFunction(I[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [F

    .line 2401
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 2402
    return-void
.end method

.method blacklist copy()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 3

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 1109
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1110
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v2

    return-object v2
.end method

.method blacklist copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 3
    .param p2, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;",
            ")",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;"
        }
    .end annotation

    .line 1186
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1187
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    iget-object v2, p2, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1188
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 1189
    :cond_0
    return-object p2
.end method

.method public blacklist createID(I)I
    .locals 1
    .param p1, "type"    # I

    .line 2312
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result v0

    return v0
.end method

.method public blacklist createTextFromFloat(FSSI)I
    .locals 8
    .param p1, "value"    # F
    .param p2, "digitsBefore"    # S
    .param p3, "digitsAfter"    # S
    .param p4, "flags"    # I

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "placeHolder":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    .line 967
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 967
    :cond_0
    move v3, v1

    .line 971
    .end local v1    # "id":I
    .local v3, "id":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "value":F
    .end local p2    # "digitsBefore":S
    .end local p3    # "digitsAfter":S
    .end local p4    # "flags":I
    .local v4, "value":F
    .local v5, "digitsBefore":S
    .local v6, "digitsAfter":S
    .local v7, "flags":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    .line 972
    return v3
.end method

.method public blacklist createTextId(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 924
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist defineFloatFunction(I[I)V
    .locals 1
    .param p1, "fid"    # I
    .param p2, "args"    # [I

    .line 2386
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 2387
    return-void
.end method

.method public blacklist drawBitmap(Ljava/lang/Object;IIIIIIIIIILjava/lang/String;)V
    .locals 19
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "srcLeft"    # I
    .param p5, "srcTop"    # I
    .param p6, "srcRight"    # I
    .param p7, "srcBottom"    # I
    .param p8, "dstLeft"    # I
    .param p9, "dstTop"    # I
    .param p10, "dstRight"    # I
    .param p11, "dstBottom"    # I
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v3

    .line 285
    .local v3, "imageId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 286
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v3

    .line 287
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v4, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v4

    .line 288
    .local v4, "data":[B
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {v5, v3, v6, v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    move v9, v3

    goto :goto_0

    .line 285
    .end local v4    # "data":[B
    :cond_0
    move/from16 v6, p2

    move/from16 v7, p3

    move v9, v3

    .line 291
    .end local v3    # "imageId":I
    .local v9, "imageId":I
    :goto_0
    const/4 v3, 0x0

    .line 292
    .local v3, "contentDescriptionId":I
    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    goto :goto_1

    .line 292
    :cond_1
    move/from16 v18, v3

    .line 295
    .end local v3    # "contentDescriptionId":I
    .local v18, "contentDescriptionId":I
    :goto_1
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    invoke-static/range {v8 .. v18}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    .line 307
    return-void
.end method

.method public blacklist drawComponentContent()V
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2441
    return-void
.end method

.method public blacklist drawScaledBitmap(IFFFFFFFFIFLjava/lang/String;)V
    .locals 16
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "scaleType"    # I
    .param p11, "scaleFactor"    # F
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    const/4 v2, 0x0

    .line 645
    .local v2, "contentDescriptionId":I
    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    goto :goto_0

    .line 645
    :cond_0
    move v15, v2

    .line 648
    .end local v2    # "contentDescriptionId":I
    .local v15, "contentDescriptionId":I
    :goto_0
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v15}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 662
    return-void
.end method

.method public blacklist drawScaledBitmap(Ljava/lang/Object;FFFFFFFFIFLjava/lang/String;)V
    .locals 21
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "scaleType"    # I
    .param p11, "scaleFactor"    # F
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v3

    .line 527
    .local v3, "imageId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 528
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v3

    .line 529
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v4, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v4

    .line 530
    .local v4, "data":[B
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v5, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v5

    .line 531
    .local v5, "imageWidth":I
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v6, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v6

    .line 533
    .local v6, "imageHeight":I
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v7, v3, v5, v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    move v9, v3

    goto :goto_0

    .line 527
    .end local v4    # "data":[B
    .end local v5    # "imageWidth":I
    .end local v6    # "imageHeight":I
    :cond_0
    move v9, v3

    .line 535
    .end local v3    # "imageId":I
    .local v9, "imageId":I
    :goto_0
    const/4 v3, 0x0

    .line 536
    .local v3, "contentDescriptionId":I
    if-eqz v2, :cond_1

    .line 537
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    goto :goto_1

    .line 536
    :cond_1
    move/from16 v20, v3

    .line 539
    .end local v3    # "contentDescriptionId":I
    .local v20, "contentDescriptionId":I
    :goto_1
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-static/range {v8 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 553
    return-void
.end method

.method public blacklist drawTextAnchored(IFFFFI)V
    .locals 7
    .param p1, "textId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 997
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "textId":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "panX":F
    .end local p5    # "panY":F
    .end local p6    # "flags":I
    .local v1, "textId":I
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "panX":F
    .local v5, "panY":F
    .local v6, "flags":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 998
    return-void
.end method

.method public blacklist drawTextAnchored(Ljava/lang/String;FFFFI)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 914
    .local v1, "textId":I
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "panX":F
    .end local p5    # "panY":F
    .end local p6    # "flags":I
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "panX":F
    .local v5, "panY":F
    .local v6, "flags":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 915
    return-void
.end method

.method public blacklist fromFile(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1156
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1157
    return-object v0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-object v0
.end method

.method public blacklist getLastComponentId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    return v0
.end method

.method public blacklist getPlatform()Lcom/android/internal/widget/remotecompose/core/Platform;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-object v0
.end method

.method public blacklist header(IILjava/lang/String;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .line 253
    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "contentDescription":Ljava/lang/String;
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "contentDescription":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->header(IILjava/lang/String;FJ)V

    .line 254
    return-void
.end method

.method public blacklist header(IILjava/lang/String;FJ)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "density"    # F
    .param p5, "capabilities"    # J

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p4    # "density":F
    .end local p5    # "capabilities":J
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "density":F
    .local v4, "capabilities":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 216
    const/4 p1, 0x0

    .line 217
    .local p1, "contentDescriptionId":I
    if-eqz p3, :cond_0

    .line 218
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    .line 219
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 221
    :cond_0
    return-void
.end method

.method public blacklist inflateFromBuffer(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1067
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 1068
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    .line 1073
    .local v0, "opId":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 1074
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    if-eqz v1, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 1078
    .end local v0    # "opId":I
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    goto :goto_0

    .line 1075
    .restart local v0    # "opId":I
    .restart local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    .end local v0    # "opId":I
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    :cond_1
    return-void
.end method

.method public blacklist mapLookup(II)I
    .locals 4
    .param p1, "mapId"    # I
    .param p2, "strId"    # I

    .line 317
    mul-int/lit8 v0, p2, 0x21

    add-int/2addr v0, p1

    .line 318
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    .line 319
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    .line 321
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 323
    :cond_0
    return v1
.end method

.method public blacklist nextId()I
    .locals 1

    .line 2321
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    return v0
.end method

.method public varargs blacklist pathAppend(I[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "path"    # [F

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 752
    return-void
.end method

.method public blacklist pathCreate(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 739
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 740
    .local v0, "out":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 741
    return v0
.end method

.method public blacklist pathTween(IIF)I
    .locals 2
    .param p1, "pid1"    # I
    .param p2, "pid2"    # I
    .param p3, "tween"    # F

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 727
    .local v0, "out":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/PathTween;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIF)V

    .line 728
    return v0
.end method

.method public blacklist reserveFloatVariable()F
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v0

    .line 1374
    .local v0, "id":I
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist reset(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 169
    return-void
.end method

.method public blacklist setBitmapName(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 615
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 189
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 190
    return-void
.end method

.method public blacklist setColorName(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1830
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 1831
    return-void
.end method

.method public blacklist setFloatName(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 1851
    return-void
.end method

.method public blacklist setPlatform(Lcom/android/internal/widget/remotecompose/core/Platform;)V
    .locals 0
    .param p1, "platform"    # Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 181
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 182
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 1
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 385
    return-void
.end method

.method public blacklist setStringName(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1840
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 1841
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 1
    .param p1, "theme"    # I

    .line 1119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1120
    return-void
.end method

.method public blacklist textAttribute(IS)F
    .locals 2
    .param p1, "textId"    # I
    .param p2, "attribute"    # S

    .line 2421
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2422
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 2423
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textLength(I)F
    .locals 2
    .param p1, "textId"    # I

    .line 1546
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->id()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1547
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1548
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textLookup(FF)I
    .locals 5
    .param p1, "dataSet"    # F
    .param p2, "index"    # F

    .line 1632
    nop

    .line 1633
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 1634
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1636
    .local v0, "hash":J
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v2

    .line 1637
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-static {v3, v2, v4, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIF)V

    .line 1638
    return v2
.end method

.method public blacklist textLookup(FI)I
    .locals 5
    .param p1, "dataSet"    # F
    .param p2, "index"    # I

    .line 1651
    nop

    .line 1652
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-float v2, p2

    .line 1653
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1654
    .local v0, "hash":J
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v2

    .line 1655
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-static {v3, v2, v4, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1656
    return v2
.end method

.method public blacklist textMeasure(II)F
    .locals 2
    .param p1, "textId"    # I
    .param p2, "mode"    # I

    .line 1532
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    mul-int/lit8 v1, p2, 0x1f

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1533
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1534
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textMerge(II)I
    .locals 2
    .param p1, "id1"    # I
    .param p2, "id2"    # I

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    .line 936
    .local v0, "textId":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 937
    return v0
.end method

.method public varargs blacklist timeAttribute(IS[I)F
    .locals 2
    .param p1, "timeId"    # I
    .param p2, "attribute"    # S
    .param p3, "args"    # [I

    .line 2433
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2434
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 2435
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;Ljava/io/File;)V
    .locals 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .param p2, "file"    # Ljava/io/File;

    .line 1200
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1201
    .local v0, "fd":Ljava/io/FileOutputStream;
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1202
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 1203
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v0    # "fd":Ljava/io/FileOutputStream;
    nop

    .line 1207
    return-void

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
