.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    }
.end annotation


# instance fields
.field blacklist mVarNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "contentDescriptionId"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadataId"    # I

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 395
    .local v3, "contentDescription":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 396
    .local v8, "metadata":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 397
    return-void
.end method

.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "collection"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 174
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 1
    .param p1, "touchExpression"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    .line 379
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .locals 1
    .param p1, "id"    # I

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearDataOverride(I)V

    .line 281
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .locals 1
    .param p1, "id"    # I

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearFloatOverride(I)V

    .line 289
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .locals 1
    .param p1, "id"    # I

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearIntegerOverride(I)V

    .line 285
    return-void
.end method

.method public blacklist clearNamedDataOverride(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 155
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 157
    .end local v0    # "id":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public blacklist clearNamedFloatOverride(Ljava/lang/String;)V
    .locals 2
    .param p1, "floatName"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 138
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearFloatOverride(I)V

    .line 140
    .end local v0    # "id":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
    .locals 2
    .param p1, "integerName"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 121
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearIntegerOverride(I)V

    .line 123
    .end local v0    # "id":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public blacklist clearNamedStringOverride(Ljava/lang/String;)V
    .locals 2
    .param p1, "stringName"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 104
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 106
    .end local v0    # "id":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public blacklist getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getColor(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .locals 1
    .param p1, "id"    # I

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFloat(I)F
    .locals 1
    .param p1, "id"    # I

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getInteger(I)I
    .locals 1
    .param p1, "id"    # I

    .line 352
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPathData(I)[F
    .locals 1
    .param p1, "instanceId"    # I

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 1
    .param p1, "id"    # I

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hapticEffect(I)V
    .locals 1
    .param p1, "type"    # I

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->haptic(I)V

    .line 401
    return-void
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 363
    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "animatedFloat"    # Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 328
    return-void
.end method

.method public blacklist loadBitmap(ISSII[B)V
    .locals 10
    .param p1, "imageId"    # I
    .param p2, "encoding"    # S
    .param p3, "type"    # S
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "data"    # [B

    .line 210
    move v4, p4

    move v8, p5

    move-object/from16 v9, p6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "image":Landroid/graphics/Bitmap;
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 243
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    goto/16 :goto_3

    .line 247
    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 252
    goto/16 :goto_3

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 214
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :pswitch_2
    packed-switch p3, :pswitch_data_1

    :pswitch_3
    goto :goto_2

    .line 219
    :pswitch_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    array-length v0, v9

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    .line 221
    .local v2, "idata":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 222
    mul-int/lit8 v3, v0, 0x4

    .line 223
    .local v3, "p":I
    aget-byte v5, v9, v3

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v9, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v9, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v9, v6

    or-int/2addr v5, v6

    aput v5, v2, v0

    .line 221
    .end local v3    # "p":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 230
    goto :goto_2

    .line 232
    .end local v2    # "idata":[I
    :pswitch_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    array-length v0, v9

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    .line 234
    .local v2, "bdata":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 236
    const v3, 0x1010101

    aget-byte v5, v9, v0

    mul-int/2addr v5, v3

    aput v5, v2, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "i":I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_2

    .line 216
    .end local v2    # "bdata":[I
    :pswitch_6
    const/4 v0, 0x0

    array-length v2, v9

    invoke-static {v9, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 217
    nop

    .line 241
    :goto_2
    nop

    .line 254
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 256
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist loadColor(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 322
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateColor(II)V

    .line 323
    return-void
.end method

.method public blacklist loadFloat(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 299
    return-void
.end method

.method public blacklist loadInteger(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateInteger(II)V

    .line 309
    return-void
.end method

.method public blacklist loadPathData(I[F)V
    .locals 1
    .param p1, "instanceId"    # I
    .param p2, "floatPath"    # [F

    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 66
    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 333
    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateData(ILjava/lang/Object;)V

    .line 265
    :goto_0
    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .locals 2
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "varId"    # I
    .param p3, "varType"    # I

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 277
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideFloat(IF)V

    .line 304
    return-void
.end method

.method public blacklist overrideInt(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 273
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 313
    return-void
.end method

.method public blacklist overrideText(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "valueId"    # I

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 318
    return-void
.end method

.method public blacklist overrideText(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "map"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    .line 179
    return-void
.end method

.method public blacklist putObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateObject(ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method public blacklist runAction(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 189
    return-void
.end method

.method public blacklist runNamedAction(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public blacklist setNamedColorOverride(Ljava/lang/String;I)V
    .locals 2
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 168
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideColor(II)V

    .line 169
    return-void
.end method

.method public blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 147
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideData(ILjava/lang/Object;)V

    .line 149
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public blacklist setNamedFloatOverride(Ljava/lang/String;F)V
    .locals 1
    .param p1, "floatName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 130
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideFloat(IF)V

    .line 132
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 113
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideInt(II)V

    .line 115
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 96
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 98
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public blacklist updateOps()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    return v0
.end method

.method public blacklist useCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->reset()V

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 57
    return-void
.end method
