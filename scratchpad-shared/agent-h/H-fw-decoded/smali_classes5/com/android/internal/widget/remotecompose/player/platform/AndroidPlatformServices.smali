.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;
.super Ljava/lang/Object;
.source "AndroidPlatformServices.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist androidPathToFloatArray(Landroid/graphics/Path;)[F
    .locals 11
    .param p1, "path"    # Landroid/graphics/Path;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Path;->getPathIterator()Landroid/graphics/PathIterator;

    move-result-object v0

    .line 96
    .local v0, "i":Landroid/graphics/PathIterator;
    const/4 v1, 0x0

    .line 98
    .local v1, "estimatedSize":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->getPathIterator()Landroid/graphics/PathIterator;

    move-result-object v2

    .line 104
    .local v2, "iter":Landroid/graphics/PathIterator;
    mul-int/lit8 v3, v1, 0xa

    new-array v3, v3, [F

    .line 106
    .local v3, "pathFloat":[F
    const/4 v4, 0x0

    .line 107
    .local v4, "count":I
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v5

    .line 110
    .local v5, "seg":Landroid/graphics/PathIterator$Segment;
    invoke-virtual {v5}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 130
    :pswitch_0
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .local v6, "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->DONE_NAN:F

    aput v7, v3, v4

    move v4, v6

    goto :goto_2

    .line 127
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_1
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CLOSE_NAN:F

    aput v7, v3, v4

    .line 128
    move v4, v6

    goto :goto_2

    .line 124
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_2
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CUBIC_NAN:F

    aput v7, v3, v4

    .line 125
    move v4, v6

    goto :goto_2

    .line 121
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_3
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CONIC_NAN:F

    aput v7, v3, v4

    .line 122
    move v4, v6

    goto :goto_2

    .line 118
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_4
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->QUADRATIC_NAN:F

    aput v7, v3, v4

    .line 119
    move v4, v6

    goto :goto_2

    .line 115
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_5
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->LINE_NAN:F

    aput v7, v3, v4

    .line 116
    move v4, v6

    goto :goto_2

    .line 112
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :pswitch_6
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    sget v7, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    aput v7, v3, v4

    .line 113
    move v4, v6

    .line 133
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/PathIterator$Segment;->getPoints()[F

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 134
    .local v9, "p":F
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "count":I
    .local v10, "count":I
    aput v9, v3, v4

    .line 133
    .end local v9    # "p":F
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_3

    .line 136
    .end local v10    # "count":I
    .restart local v4    # "count":I
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 137
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .restart local v6    # "count":I
    invoke-virtual {v5}, Landroid/graphics/PathIterator$Segment;->getConicWeight()F

    move-result v7

    aput v7, v3, v4

    move v4, v6

    .line 139
    .end local v5    # "seg":Landroid/graphics/PathIterator$Segment;
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :cond_2
    goto :goto_1

    .line 141
    :cond_3
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getImageHeight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "image"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImageWidth(Ljava/lang/Object;)I
    .locals 1
    .param p1, "image"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist imageToByteArray(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "image"    # Ljava/lang/Object;

    .line 37
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "byteArrayBitmapStream":Ljava/io/ByteArrayOutputStream;
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 43
    .end local v0    # "byteArrayBitmapStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist log(Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
    .param p2, "message"    # Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$Platform$LogCategory:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "RemoteCompose"

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_0

    .line 83
    :pswitch_1
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_0

    .line 80
    :pswitch_2
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .line 92
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist pathToFloatArray(Ljava/lang/Object;)[F
    .locals 1
    .param p1, "path"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/graphics/Path;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;->androidPathToFloatArray(Landroid/graphics/Path;)[F

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
