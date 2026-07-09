.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.super Lcom/android/internal/widget/remotecompose/core/PaintContext;
.source "AndroidPaintContext.java"


# instance fields
.field private blacklist mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field blacklist mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

.field blacklist mCanvas:Landroid/graphics/Canvas;

.field blacklist mNode:Landroid/graphics/RenderNode;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPreviousCanvas:Landroid/graphics/Canvas;

.field blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 67
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 503
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    .line 71
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 72
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object v0
.end method

.method private blacklist getPath(IFF)Landroid/graphics/Path;
    .locals 5
    .param p1, "id"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 847
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 848
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPath(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 849
    .local v1, "p":Landroid/graphics/Path;
    if-eqz v1, :cond_0

    .line 850
    return-object v1

    .line 852
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 853
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v3

    .line 854
    .local v3, "pathData":[F
    if-eqz v3, :cond_1

    .line 855
    invoke-static {v2, v3, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 856
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    .line 859
    :cond_1
    return-object v2
.end method

.method private blacklist getPath(IIFFF)Landroid/graphics/Path;
    .locals 1
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "end"    # F

    .line 815
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath([FFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPath([FFF)Landroid/graphics/Path;
    .locals 1
    .param p1, "tmp"    # [F
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 841
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 842
    .local v0, "path":Landroid/graphics/Path;
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 843
    return-object v0
.end method

.method private blacklist getPathArray(IIF)[F
    .locals 7
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F

    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 820
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_0

    .line 821
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    return-object v1

    .line 823
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    .line 824
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    return-object v1

    .line 827
    :cond_1
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    .line 828
    .local v1, "data1":[F
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v2

    .line 829
    .local v2, "data2":[F
    array-length v3, v2

    new-array v3, v3, [F

    .line 830
    .local v3, "tmp":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 831
    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 834
    :cond_2
    aget v5, v2, v4

    aget v6, v1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, p3

    aget v6, v1, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    goto :goto_2

    .line 832
    :cond_3
    :goto_1
    aget v5, v1, v4

    aput v5, v3, v4

    .line 830
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 837
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method private blacklist getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 1
    .param p1, "id"    # I

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method public static blacklist origamiToBlendMode(I)Landroid/graphics/BlendMode;
    .locals 1
    .param p0, "mode"    # I

    .line 438
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 500
    return-object v0

    .line 498
    :pswitch_0
    return-object v0

    .line 496
    :pswitch_1
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object v0

    .line 494
    :pswitch_2
    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 492
    :pswitch_3
    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object v0

    .line 490
    :pswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object v0

    .line 488
    :pswitch_5
    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object v0

    .line 486
    :pswitch_6
    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object v0

    .line 484
    :pswitch_7
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object v0

    .line 482
    :pswitch_8
    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 480
    :pswitch_9
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 478
    :pswitch_a
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object v0

    .line 476
    :pswitch_b
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object v0

    .line 474
    :pswitch_c
    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 472
    :pswitch_d
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 470
    :pswitch_e
    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object v0

    .line 468
    :pswitch_f
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 466
    :pswitch_10
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    .line 464
    :pswitch_11
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    .line 462
    :pswitch_12
    sget-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 460
    :pswitch_13
    sget-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 458
    :pswitch_14
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 456
    :pswitch_15
    sget-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 454
    :pswitch_16
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 452
    :pswitch_17
    sget-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 450
    :pswitch_18
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 448
    :pswitch_19
    sget-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 446
    :pswitch_1a
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 444
    :pswitch_1b
    sget-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object v0

    .line 442
    :pswitch_1c
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object v0

    .line 440
    :pswitch_1d
    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "mode"    # I

    .line 396
    packed-switch p0, :pswitch_data_0

    .line 434
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 432
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 430
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 428
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 426
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 424
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 422
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 420
    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 418
    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 416
    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 414
    :pswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 412
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 410
    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 408
    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 406
    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 404
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 402
    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 400
    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 398
    :pswitch_12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1
    .param p1, "paintData"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V

    .line 722
    return-void
.end method

.method public blacklist clipPath(II)V
    .locals 2
    .param p1, "pathId"    # I
    .param p2, "regionOp"    # I

    .line 794
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    .line 795
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 800
    :goto_0
    return-void
.end method

.method public blacklist clipRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 765
    return-void
.end method

.method public blacklist drawArc(FFFFFF)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

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
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 194
    return-void
.end method

.method public blacklist drawBitmap(IFFFF)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 205
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 207
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    .local v3, "dst":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 211
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "src":Landroid/graphics/Rect;
    .end local v3    # "dst":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIII)V
    .locals 16
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I
    .param p10, "cdId"    # I

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 123
    .local v2, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 125
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v5, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 123
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 131
    :goto_0
    return-void
.end method

.method public blacklist drawCircle(FFF)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
    .locals 2
    .param p1, "computedTextLayout"    # Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    .line 383
    if-nez p1, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->get()Landroid/text/StaticLayout;

    move-result-object v0

    .line 387
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 388
    return-void
.end method

.method public blacklist drawLine(FFFF)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v1, "x1":F
    .local v2, "y1":F
    .local v3, "x2":F
    .local v4, "y2":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    return-void
.end method

.method public blacklist drawOval(FFFF)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method public blacklist drawPath(IFF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 231
    return-void
.end method

.method public blacklist drawRect(FFFF)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radiusX"    # F
    .param p6, "radiusY"    # F

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

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
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method public blacklist drawSector(FFFFFF)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

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
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method public blacklist drawTextOnPath(IIFF)V
    .locals 6
    .param p1, "textId"    # I
    .param p2, "pathId"    # I
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v4, p4

    .end local p3    # "hOffset":F
    .end local p4    # "vOffset":F
    .local v3, "hOffset":F
    .local v4, "vOffset":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 263
    return-void
.end method

.method public blacklist drawTextRun(IIIIIFFZ)V
    .locals 3
    .param p1, "textID"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "textToPaint":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 369
    if-eqz p2, :cond_3

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_2

    .line 373
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p6, p7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    return-void
.end method

.method public blacklist drawTweenPath(IIFFF)V
    .locals 4
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "end"    # F

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IIFFF)Landroid/graphics/Path;

    move-result-object v1

    move v2, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "path1Id":I
    .local v2, "end":F
    .local p2, "path1Id":I
    .local p3, "path2Id":I
    .local p4, "tween":F
    .local p5, "start":F
    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 393
    return-void
.end method

.method public blacklist endGraphicsLayer()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 183
    return-void
.end method

.method public blacklist getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 864
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTextBounds(IIII[F)V
    .locals 5
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "bounds"    # [F

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "str":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    if-nez v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 279
    and-int/lit8 v1, p4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 280
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    :cond_3
    const/4 v1, 0x0

    aput v1, p5, v2

    .line 282
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    aput v1, p5, v3

    goto :goto_0

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, p5, v2

    .line 285
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p5, v3

    goto :goto_0

    .line 288
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, p5, v3

    .line 292
    :goto_0
    and-int/lit8 v1, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, p5, v3

    .line 294
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, p5, v2

    goto :goto_1

    .line 296
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, p5, v3

    .line 297
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, p5, v2

    .line 299
    :goto_1
    return-void
.end method

.method public blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
    .locals 7
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "alignment"    # I
    .param p5, "overflow"    # I
    .param p6, "maxLines"    # I
    .param p7, "maxWidth"    # F
    .param p8, "flags"    # I

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    return-object v1

    .line 315
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_2

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    .line 319
    :cond_2
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 320
    .local v1, "textPaint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 321
    float-to-int v2, p7

    .line 322
    invoke-static {v0, p2, p3, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 323
    .local v2, "staticLayoutBuilder":Landroid/text/StaticLayout$Builder;
    packed-switch p4, :pswitch_data_0

    .line 332
    :pswitch_0
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto :goto_0

    .line 329
    :pswitch_1
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 330
    goto :goto_0

    .line 326
    :pswitch_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 327
    nop

    .line 334
    :goto_0
    packed-switch p5, :pswitch_data_1

    goto :goto_1

    .line 339
    :pswitch_3
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 340
    goto :goto_1

    .line 342
    :pswitch_4
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 343
    goto :goto_1

    .line 336
    :pswitch_5
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 337
    nop

    .line 346
    :goto_1
    invoke-virtual {v2, p6}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 348
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 349
    .local v3, "staticLayout":Landroid/text/StaticLayout;
    new-instance v4, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    .line 350
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v5, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;-><init>(Landroid/text/StaticLayout;FF)V

    .line 349
    return-object v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist matrixRestore()V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 760
    return-void
.end method

.method public blacklist matrixRotate(FFF)V
    .locals 1
    .param p1, "rotate"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .line 745
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 750
    :goto_0
    return-void
.end method

.method public blacklist matrixSave()V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 755
    return-void
.end method

.method public blacklist matrixScale(FFFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 726
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 731
    :goto_0
    return-void
.end method

.method public blacklist matrixSkew(FF)V
    .locals 1
    .param p1, "skewX"    # F
    .param p2, "skewY"    # F

    .line 740
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 741
    return-void
.end method

.method public blacklist matrixTranslate(FF)V
    .locals 1
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 735
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    return-void
.end method

.method public blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1
    .param p1, "paintBundle"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 252
    return-void
.end method

.method public blacklist reset()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 812
    return-void
.end method

.method public blacklist restore()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 95
    return-void
.end method

.method public blacklist restorePaint()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 246
    return-void
.end method

.method public blacklist roundedClipRect(FFFFFF)V
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "topStart"    # F
    .param p4, "topEnd"    # F
    .param p5, "bottomStart"    # F
    .param p6, "bottomEnd"    # F

    .line 775
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v1, v0

    .line 776
    .local v1, "roundedPath":Landroid/graphics/Path;
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput p3, v6, v0

    const/4 v0, 0x1

    aput p3, v6, v0

    const/4 v0, 0x2

    aput p4, v6, v0

    const/4 v0, 0x3

    aput p4, v6, v0

    const/4 v0, 0x4

    aput p6, v6, v0

    const/4 v0, 0x5

    aput p6, v6, v0

    const/4 v0, 0x6

    aput p5, v6, v0

    const/4 v0, 0x7

    aput p5, v6, v0

    .line 788
    .local v6, "radii":[F
    const/4 v3, 0x0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    .end local p1    # "width":F
    .end local p2    # "height":F
    .local v4, "width":F
    .local v5, "height":F
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 789
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 790
    return-void
.end method

.method public blacklist save()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 85
    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v1, "x":F
    .local v2, "y":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 90
    return-void
.end method

.method public blacklist savePaint()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public blacklist scale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 136
    return-void
.end method

.method public blacklist setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 79
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 80
    return-void
.end method

.method public blacklist setGraphicsLayer(FFFFFFFFFI)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "rotationX"    # F
    .param p4, "rotationY"    # F
    .param p5, "rotationZ"    # F
    .param p6, "shadowElevation"    # F
    .param p7, "transformOriginX"    # F
    .param p8, "transformOriginY"    # F
    .param p9, "alpha"    # F
    .param p10, "renderEffectId"    # I

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p3}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p4}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p5}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p9}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 169
    const/4 v0, 0x1

    if-ne p10, v0, :cond_1

    .line 171
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    .line 172
    .local v0, "effect":Landroid/graphics/RenderEffect;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 174
    .end local v0    # "effect":Landroid/graphics/RenderEffect;
    :cond_1
    return-void
.end method

.method public blacklist startGraphicsLayer(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 140
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "layer"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 144
    return-void
.end method

.method public blacklist translate(FF)V
    .locals 1
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    return-void
.end method

.method public blacklist tweenPath(IIIF)V
    .locals 3
    .param p1, "out"    # I
    .param p2, "path1"    # I
    .param p3, "path2"    # I
    .param p4, "tween"    # F

    .line 804
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object v0

    .line 805
    .local v0, "p":[F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 806
    .local v1, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 807
    return-void
.end method
