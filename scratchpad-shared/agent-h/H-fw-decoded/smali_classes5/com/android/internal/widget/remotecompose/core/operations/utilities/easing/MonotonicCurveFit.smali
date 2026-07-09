.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
.super Ljava/lang/Object;
.source "MonotonicCurveFit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private blacklist mExtrapolate:Z

.field final blacklist mSlopeTemp:[D

.field private final blacklist mT:[D

.field private final blacklist mTangent:[[D

.field private final blacklist mY:[[D


# direct methods
.method public constructor blacklist <init>([D[[D)V
    .locals 22
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    .line 38
    array-length v4, v1

    .line 39
    .local v4, "n":I
    const/4 v5, 0x0

    aget-object v6, v2, v5

    array-length v6, v6

    .line 40
    .local v6, "dim":I
    new-array v7, v6, [D

    iput-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    .line 41
    add-int/lit8 v7, v4, -0x1

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v6, v9, v3

    aput v7, v9, v5

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 42
    .local v7, "slope":[[D
    new-array v8, v8, [I

    aput v6, v8, v3

    aput v4, v8, v5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 43
    .local v3, "tangent":[[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 44
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    add-int/lit8 v9, v4, -0x1

    if-ge v8, v9, :cond_1

    .line 45
    add-int/lit8 v9, v8, 0x1

    aget-wide v9, v1, v9

    aget-wide v11, v1, v8

    sub-double/2addr v9, v11

    .line 46
    .local v9, "dt":D
    aget-object v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget-object v12, v2, v12

    aget-wide v12, v12, v5

    aget-object v14, v2, v8

    aget-wide v14, v14, v5

    sub-double/2addr v12, v14

    div-double/2addr v12, v9

    aput-wide v12, v11, v5

    .line 47
    if-nez v8, :cond_0

    .line 48
    aget-object v11, v3, v8

    aget-object v12, v7, v8

    aget-wide v12, v12, v5

    aput-wide v12, v11, v5

    goto :goto_2

    .line 50
    :cond_0
    aget-object v11, v3, v8

    add-int/lit8 v12, v8, -0x1

    aget-object v12, v7, v12

    aget-wide v12, v12, v5

    aget-object v14, v7, v8

    aget-wide v14, v14, v5

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 44
    .end local v9    # "dt":D
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 53
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v4, -0x1

    aget-object v8, v3, v8

    add-int/lit8 v9, v4, -0x2

    aget-object v9, v7, v9

    aget-wide v9, v9, v5

    aput-wide v9, v8, v5

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v5    # "j":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    add-int/lit8 v8, v4, -0x1

    if-ge v5, v8, :cond_6

    .line 57
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v6, :cond_5

    .line 58
    aget-object v9, v7, v5

    aget-wide v9, v9, v8

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_3

    .line 59
    aget-object v9, v3, v5

    aput-wide v11, v9, v8

    .line 60
    add-int/lit8 v9, v5, 0x1

    aget-object v9, v3, v9

    aput-wide v11, v9, v8

    goto :goto_5

    .line 62
    :cond_3
    aget-object v9, v3, v5

    aget-wide v9, v9, v8

    aget-object v11, v7, v5

    aget-wide v11, v11, v8

    div-double/2addr v9, v11

    .line 63
    .local v9, "a":D
    add-int/lit8 v11, v5, 0x1

    aget-object v11, v3, v11

    aget-wide v11, v11, v8

    aget-object v13, v7, v5

    aget-wide v13, v13, v8

    div-double/2addr v11, v13

    .line 64
    .local v11, "b":D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    .line 65
    .local v13, "h":D
    const-wide/high16 v15, 0x4022000000000000L    # 9.0

    cmpl-double v15, v13, v15

    if-lez v15, :cond_4

    .line 66
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    div-double/2addr v15, v13

    .line 67
    .local v15, "t":D
    aget-object v17, v3, v5

    mul-double v18, v15, v9

    aget-object v20, v7, v5

    aget-wide v20, v20, v8

    mul-double v18, v18, v20

    aput-wide v18, v17, v8

    .line 68
    add-int/lit8 v17, v5, 0x1

    aget-object v17, v3, v17

    mul-double v18, v15, v11

    aget-object v20, v7, v5

    aget-wide v20, v20, v8

    mul-double v18, v18, v20

    aput-wide v18, v17, v8

    .line 57
    .end local v9    # "a":D
    .end local v11    # "b":D
    .end local v13    # "h":D
    .end local v15    # "t":D
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 56
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 73
    .end local v5    # "i":I
    :cond_6
    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    .line 74
    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    .line 75
    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    .line 76
    return-void
.end method

.method public static blacklist buildWave(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .locals 10
    .param p0, "configString"    # Ljava/lang/String;

    .line 349
    move-object v0, p0

    .line 350
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    .line 351
    .local v1, "values":[D
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 352
    .local v2, "start":I
    const/16 v3, 0x2c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 353
    .local v4, "off1":I
    const/4 v5, 0x0

    .line 354
    .local v5, "count":I
    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 355
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "tmp":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "count":I
    .local v7, "count":I
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aput-wide v8, v1, v5

    .line 357
    add-int/lit8 v5, v4, 0x1

    move v2, v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 358
    .end local v6    # "tmp":Ljava/lang/String;
    move v5, v7

    goto :goto_0

    .line 359
    .end local v7    # "count":I
    .restart local v5    # "count":I
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 360
    .end local v4    # "off1":I
    .local v3, "off1":I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "tmp":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aput-wide v7, v1, v5

    .line 363
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->buildWave([D)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist buildWave([D)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .locals 18
    .param p0, "values"    # [D

    .line 368
    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 369
    .local v1, "length":I
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 370
    .local v3, "len":I
    int-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 371
    .local v5, "gap":D
    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 372
    .local v2, "points":[[D
    new-array v9, v1, [D

    .line 373
    .local v9, "time":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, v0

    if-ge v10, v11, :cond_1

    .line 374
    aget-wide v11, v0, v10

    .line 375
    .local v11, "v":D
    add-int v13, v10, v3

    aget-object v13, v2, v13

    aput-wide v11, v13, v4

    .line 376
    add-int v13, v10, v3

    int-to-double v14, v10

    mul-double/2addr v14, v5

    aput-wide v14, v9, v13

    .line 377
    if-lez v10, :cond_0

    .line 378
    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    aget-object v13, v2, v13

    add-double v14, v11, v7

    aput-wide v14, v13, v4

    .line 379
    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-double v14, v10

    mul-double/2addr v14, v5

    add-double/2addr v14, v7

    aput-wide v14, v9, v13

    .line 381
    add-int/lit8 v13, v10, -0x1

    aget-object v13, v2, v13

    sub-double v14, v11, v7

    sub-double/2addr v14, v5

    aput-wide v14, v13, v4

    .line 382
    add-int/lit8 v13, v10, -0x1

    int-to-double v14, v10

    mul-double/2addr v14, v5

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    add-double v14, v14, v16

    sub-double/2addr v14, v5

    aput-wide v14, v9, v13

    .line 373
    .end local v11    # "v":D
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 386
    .end local v10    # "i":I
    :cond_1
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    invoke-direct {v4, v9, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;-><init>([D[[D)V

    return-object v4
.end method

.method private static blacklist diff(DDDDDD)D
    .locals 8
    .param p0, "h"    # D
    .param p2, "x"    # D
    .param p4, "y1"    # D
    .param p6, "y2"    # D
    .param p8, "t1"    # D
    .param p10, "t2"    # D

    .line 328
    mul-double v0, p2, p2

    .line 329
    .local v0, "x2":D
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    mul-double/2addr v2, v0

    mul-double/2addr v2, p6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double v6, p2, v4

    mul-double/2addr v6, p6

    add-double/2addr v2, v6

    mul-double v6, v0, v4

    mul-double/2addr v6, p4

    add-double/2addr v2, v6

    mul-double/2addr v4, p2

    mul-double/2addr v4, p4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v6, p0, v4

    mul-double v6, v6, p10

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p10

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    mul-double v4, p0, p8

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static blacklist interpolate(DDDDDD)D
    .locals 12
    .param p0, "h"    # D
    .param p2, "x"    # D
    .param p4, "y1"    # D
    .param p6, "y2"    # D
    .param p8, "t1"    # D
    .param p10, "t2"    # D

    .line 312
    mul-double v0, p2, p2

    .line 313
    .local v0, "x2":D
    mul-double v2, v0, p2

    .line 314
    .local v2, "x3":D
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, v0, v6

    mul-double v8, v8, p6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v8

    mul-double v10, v10, p4

    add-double/2addr v4, v10

    mul-double/2addr v6, v0

    mul-double v6, v6, p4

    sub-double/2addr v4, v6

    add-double v4, v4, p4

    mul-double v6, p0, p10

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, p0, p8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, p0, p10

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr v8, p0

    mul-double v8, v8, p8

    mul-double/2addr v8, v0

    sub-double/2addr v4, v8

    mul-double v6, p0, p8

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public blacklist getPos(DI)D
    .locals 20
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v2, v2

    .line 207
    .local v2, "n":I
    iget-boolean v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v3, v4

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_0

    .line 209
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v3, v3, v4

    aget-wide v5, v3, v1

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v3, v4

    sub-double v7, p1, v7

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v3, v3, v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v3

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    return-wide v5

    .line 211
    :cond_0
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_3

    .line 212
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v1

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    sub-double v5, p1, v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v8, v2, -0x1

    aget-wide v7, v7, v8

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    return-wide v3

    .line 215
    :cond_1
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v3, v4

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_2

    .line 216
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v3, v3, v4

    aget-wide v3, v3, v1

    return-wide v3

    .line 218
    :cond_2
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_3

    .line 219
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v1

    return-wide v3

    .line 223
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_6

    .line 224
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    .line 225
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    return-wide v4

    .line 227
    :cond_4
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    cmpg-double v4, p1, v4

    if-gez v4, :cond_5

    .line 228
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v8, v4, v6

    .line 229
    .local v8, "h":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    sub-double v4, p1, v4

    div-double v10, v4, v8

    .line 230
    .local v10, "x":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v12, v4, v1

    .line 231
    .local v12, "y1":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aget-wide v14, v4, v1

    .line 232
    .local v14, "y2":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v4, v4, v3

    aget-wide v16, v4, v1

    .line 233
    .local v16, "t1":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aget-wide v18, v4, v1

    .line 234
    .local v18, "t2":D
    invoke-static/range {v8 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v4

    return-wide v4

    .line 223
    .end local v8    # "h":D
    .end local v10    # "x":D
    .end local v12    # "y1":D
    .end local v14    # "y2":D
    .end local v16    # "t1":D
    .end local v18    # "t2":D
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    :cond_6
    const-wide/16 v3, 0x0

    return-wide v3
.end method

.method public blacklist getPos(D[D)V
    .locals 20
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 86
    .local v1, "n":I
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 87
    .local v2, "dim":I
    iget-boolean v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_3

    .line 88
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    .line 89
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 90
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 91
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v7, v3

    sub-double v7, p1, v7

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, p3, v4

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "j":I
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_7

    .line 96
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 97
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 98
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v7, v1, -0x1

    aget-wide v6, v6, v7

    sub-double v6, p1, v6

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v8, v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p3, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v3    # "j":I
    :cond_2
    return-void

    .line 103
    :cond_3
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    .line 104
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 105
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 107
    .end local v4    # "j":I
    :cond_4
    return-void

    .line 109
    :cond_5
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_7

    .line 110
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 111
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    aput-wide v4, p3, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 113
    .end local v3    # "j":I
    :cond_6
    return-void

    .line 117
    :cond_7
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_b

    .line 118
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_8

    .line 119
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    if-ge v4, v2, :cond_8

    .line 120
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 123
    .end local v4    # "j":I
    :cond_8
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    cmpg-double v4, p1, v4

    if-gez v4, :cond_a

    .line 124
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v8, v4, v6

    .line 125
    .local v8, "h":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    sub-double v4, p1, v4

    div-double v10, v4, v8

    .line 126
    .local v10, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    if-ge v4, v2, :cond_9

    .line 127
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v12, v5, v4

    .line 128
    .local v12, "y1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aget-wide v14, v5, v4

    .line 129
    .local v14, "y2":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v5, v3

    aget-wide v16, v5, v4

    .line 130
    .local v16, "t1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aget-wide v18, v5, v4

    .line 131
    .local v18, "t2":D
    invoke-static/range {v8 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v5

    aput-wide v5, p3, v4

    .line 126
    .end local v12    # "y1":D
    .end local v14    # "y2":D
    .end local v16    # "t1":D
    .end local v18    # "t2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 133
    .end local v4    # "j":I
    :cond_9
    return-void

    .line 117
    .end local v8    # "h":D
    .end local v10    # "x":D
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 136
    .end local v3    # "i":I
    :cond_b
    return-void
.end method

.method public blacklist getPos(D[F)V
    .locals 20
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 146
    .local v1, "n":I
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 147
    .local v2, "dim":I
    iget-boolean v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_3

    .line 148
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    .line 149
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 150
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 151
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v7, v3

    sub-double v7, p1, v7

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p3, v4

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v4    # "j":I
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_7

    .line 156
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 157
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 158
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v7, v1, -0x1

    aget-wide v6, v6, v7

    sub-double v6, p1, v6

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v8, v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    .end local v3    # "j":I
    :cond_2
    return-void

    .line 163
    :cond_3
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    .line 164
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 165
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 167
    .end local v4    # "j":I
    :cond_4
    return-void

    .line 169
    :cond_5
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_7

    .line 170
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 171
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    double-to-float v4, v4

    aput v4, p3, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 173
    .end local v3    # "j":I
    :cond_6
    return-void

    .line 177
    :cond_7
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_b

    .line 178
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_8

    .line 179
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    if-ge v4, v2, :cond_8

    .line 180
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 183
    .end local v4    # "j":I
    :cond_8
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    cmpg-double v4, p1, v4

    if-gez v4, :cond_a

    .line 184
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v8, v4, v6

    .line 185
    .local v8, "h":D
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    sub-double v4, p1, v4

    div-double v10, v4, v8

    .line 186
    .local v10, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    if-ge v4, v2, :cond_9

    .line 187
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v12, v5, v4

    .line 188
    .local v12, "y1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aget-wide v14, v5, v4

    .line 189
    .local v14, "y2":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v5, v3

    aget-wide v16, v5, v4

    .line 190
    .local v16, "t1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aget-wide v18, v5, v4

    .line 191
    .local v18, "t2":D
    invoke-static/range {v8 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p3, v4

    .line 186
    .end local v12    # "y1":D
    .end local v14    # "y2":D
    .end local v16    # "t1":D
    .end local v18    # "t2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 193
    .end local v4    # "j":I
    :cond_9
    return-void

    .line 177
    .end local v8    # "h":D
    .end local v10    # "x":D
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 196
    .end local v3    # "i":I
    :cond_b
    return-void
.end method

.method public blacklist getSlope(DI)D
    .locals 21
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 281
    .local v1, "n":I
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v2, p1, v4

    if-gez v2, :cond_0

    .line 282
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v2, v2, v3

    .end local p1    # "t":D
    .local v2, "t":D
    goto :goto_0

    .line 283
    .end local v2    # "t":D
    .restart local p1    # "t":D
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v2, v2, v3

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    .line 284
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v2, v2, v3

    .end local p1    # "t":D
    .restart local v2    # "t":D
    goto :goto_0

    .line 283
    .end local v2    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v2, p1

    .line 286
    .end local p1    # "t":D
    .restart local v2    # "t":D
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_3

    .line 287
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v5, v5, v6

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_2

    .line 288
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v5, v5, v6

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v7, v4

    sub-double v9, v5, v7

    .line 289
    .local v9, "h":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v5, v4

    sub-double v5, v2, v5

    div-double v11, v5, v9

    .line 290
    .local v11, "x":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v13, v5, p3

    .line 291
    .local v13, "y1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v6, v4, 0x1

    aget-object v5, v5, v6

    aget-wide v15, v5, p3

    .line 292
    .local v15, "y2":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v5, v4

    aget-wide v17, v5, p3

    .line 293
    .local v17, "t1":D
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    add-int/lit8 v6, v4, 0x1

    aget-object v5, v5, v6

    aget-wide v19, v5, p3

    .line 294
    .local v19, "t2":D
    invoke-static/range {v9 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v5

    div-double/2addr v5, v9

    return-wide v5

    .line 286
    .end local v9    # "h":D
    .end local v11    # "x":D
    .end local v13    # "y1":D
    .end local v15    # "y2":D
    .end local v17    # "t1":D
    .end local v19    # "t2":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 297
    .end local v4    # "i":I
    :cond_3
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public blacklist getSlope(D[D)V
    .locals 22
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 248
    .local v1, "n":I
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 249
    .local v2, "dim":I
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 250
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v3, v4, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_0

    .line 251
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_0
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_1

    .line 252
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    .end local p1    # "t":D
    .restart local v3    # "t":D
    goto :goto_0

    .line 251
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v3, p1

    .line 255
    .end local p1    # "t":D
    .restart local v3    # "t":D
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_4

    .line 256
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v6, v6, v7

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_3

    .line 257
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v8, v8, v5

    sub-double v10, v6, v8

    .line 258
    .local v10, "h":D
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v5

    sub-double v6, v3, v6

    div-double v12, v6, v10

    .line 259
    .local v12, "x":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v2, :cond_2

    .line 260
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v7, v7, v5

    aget-wide v14, v7, v6

    .line 261
    .local v14, "y1":D
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v16, v7, v6

    .line 262
    .local v16, "y2":D
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v7, v7, v5

    aget-wide v18, v7, v6

    .line 263
    .local v18, "t1":D
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v20, v7, v6

    .line 264
    .local v20, "t2":D
    invoke-static/range {v10 .. v21}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v7

    div-double/2addr v7, v10

    aput-wide v7, p3, v6

    .line 259
    .end local v14    # "y1":D
    .end local v16    # "y2":D
    .end local v18    # "t1":D
    .end local v20    # "t2":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 266
    .end local v6    # "j":I
    :cond_2
    goto :goto_3

    .line 255
    .end local v10    # "h":D
    .end local v12    # "x":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v5    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public blacklist getTimePoints()[D
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    return-object v0
.end method
