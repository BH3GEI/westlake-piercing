.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;
.super Ljava/lang/Object;
.source "AndroidPaintContext.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mTileModes:[Landroid/graphics/Shader$TileMode;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public blacklist clear(J)V
    .locals 4
    .param p1, "mask"    # J

    .line 653
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 656
    :cond_0
    return-void
.end method

.method public blacklist setAlpha(F)V
    .locals 2
    .param p1, "a"    # F

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 629
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .line 648
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 649
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 624
    return-void
.end method

.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 707
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 708
    .local v0, "pmode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 711
    :cond_0
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 644
    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quality ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 619
    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .locals 9
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "endX"    # F
    .param p6, "endY"    # F
    .param p7, "tileMode"    # I

    .line 672
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v8, v2, p7

    move-object v6, p1

    move-object v7, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 681
    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .locals 8
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "radius"    # F
    .param p6, "tileMode"    # I

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v7, v2, p6

    move-object v5, p1

    move-object v6, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .end local p1    # "colors":[I
    .end local p2    # "stops":[F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "radius":F
    .local v2, "centerX":F
    .local v3, "centerY":F
    .local v4, "radius":F
    .local v5, "colors":[I
    .local v6, "stops":[F
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 694
    return-void
.end method

.method public blacklist setShader(I)V
    .locals 11
    .param p1, "shaderId"    # I

    .line 580
    if-nez p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 582
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object v0

    .line 585
    .local v0, "data":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    if-nez v0, :cond_1

    .line 586
    return-void

    .line 588
    :cond_1
    new-instance v1, Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, "shader":Landroid/graphics/RuntimeShader;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloatNames()[Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 591
    aget-object v4, v2, v3

    .line 592
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 593
    .local v5, "val":[F
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    .line 590
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformIntegerNames()[Ljava/lang/String;

    move-result-object v2

    .line 596
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 597
    aget-object v4, v2, v3

    .line 598
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformInts(Ljava/lang/String;)[I

    move-result-object v5

    .line 599
    .local v5, "val":[I
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;[I)V

    .line 596
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 601
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapNames()[Ljava/lang/String;

    move-result-object v2

    .line 602
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 603
    aget-object v4, v2, v3

    .line 604
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapId(Ljava/lang/String;)I

    move-result v5

    .line 605
    .local v5, "val":I
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 606
    .local v6, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 607
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v7, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 610
    .local v8, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v1, v4, v8}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    .line 602
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":I
    .end local v6    # "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapShader":Landroid/graphics/BitmapShader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 612
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 613
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .locals 2
    .param p1, "cap"    # I

    .line 568
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 569
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .locals 2
    .param p1, "join"    # I

    .line 638
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 639
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .locals 1
    .param p1, "miter"    # F

    .line 633
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 634
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 559
    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 703
    return-void
.end method

.method public blacklist setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 508
    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .locals 4
    .param p1, "fontType"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 512
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 520
    .local v0, "type":[I
    const/16 v1, 0x190

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 545
    :pswitch_0
    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 549
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 548
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 530
    :pswitch_1
    if-ne p2, v1, :cond_1

    if-nez p3, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 535
    goto :goto_0

    .line 537
    :pswitch_2
    if-ne p2, v1, :cond_2

    if-nez p3, :cond_2

    .line 538
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 541
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 540
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 543
    goto :goto_0

    .line 522
    :pswitch_3
    if-ne p2, v1, :cond_3

    if-nez p3, :cond_3

    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 525
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 526
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 525
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 528
    nop

    .line 554
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
