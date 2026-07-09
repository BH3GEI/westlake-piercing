.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "CubicEasing.java"


# static fields
.field private static final blacklist ACCELERATE:[F

.field private static final blacklist ANTICIPATE:[F

.field private static final blacklist DECELERATE:[F

.field private static final blacklist D_ERROR:F = 1.0E-4f

.field private static final blacklist ERROR:F = 0.01f

.field private static final blacklist LINEAR:[F

.field private static final blacklist OVERSHOOT:[F

.field private static final blacklist STANDARD:[F


# instance fields
.field blacklist mX1:F

.field blacklist mX2:F

.field blacklist mY1:F

.field blacklist mY2:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->STANDARD:[F

    .line 27
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ACCELERATE:[F

    .line 28
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->DECELERATE:[F

    .line 29
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->LINEAR:[F

    .line 30
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ANTICIPATE:[F

    .line 31
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->OVERSHOOT:[F

    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3d4ccccd    # 0.05f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3e4ccccd    # 0.2f
        0x3f733333    # 0.95f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3eb851ec    # 0.36f
        0x0
        0x3f28f5c3    # 0.66f
        -0x40f0a3d7    # -0.56f
    .end array-data

    :array_5
    .array-data 4
        0x3eae147b    # 0.34f
        0x3fc7ae14    # 1.56f
        0x3f23d70a    # 0.64f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor blacklist <init>(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 38
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    .line 22
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    .line 23
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    .line 24
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup(FFFF)V

    .line 40
    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 33
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    .line 22
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    .line 23
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    .line 24
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    .line 34
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:I

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->config(I)V

    .line 36
    return-void
.end method

.method private blacklist getX(F)F
    .locals 6
    .param p1, "t"    # F

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 81
    .local v0, "t1":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    .line 82
    .local v2, "f1":F
    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    .line 83
    .local v1, "f2":F
    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    .line 84
    .local v3, "f3":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    return v4
.end method

.method private blacklist getY(F)F
    .locals 6
    .param p1, "t"    # F

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 90
    .local v0, "t1":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    .line 91
    .local v2, "f1":F
    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    .line 92
    .local v1, "f2":F
    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    .line 93
    .local v3, "f3":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    return v4
.end method


# virtual methods
.method public blacklist config(I)V
    .locals 1
    .param p1, "type"    # I

    .line 44
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->OVERSHOOT:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ANTICIPATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    .line 59
    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->LINEAR:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    .line 56
    goto :goto_0

    .line 52
    :pswitch_3
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->DECELERATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    .line 53
    goto :goto_0

    .line 49
    :pswitch_4
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->ACCELERATE:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    .line 50
    goto :goto_0

    .line 46
    :pswitch_5
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->STANDARD:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup([F)V

    .line 47
    nop

    .line 64
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mType:I

    .line 65
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist get(F)F
    .locals 8
    .param p1, "x"    # F

    .line 130
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 131
    return v0

    .line 133
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 134
    return v0

    .line 136
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 137
    .local v0, "t":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 138
    .local v1, "range":F
    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 139
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    .line 140
    .local v2, "tx":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    .line 141
    cmpg-float v3, v2, p1

    if-gez v3, :cond_2

    .line 142
    add-float/2addr v0, v1

    goto :goto_1

    .line 144
    :cond_2
    sub-float/2addr v0, v1

    .line 146
    .end local v2    # "tx":F
    :goto_1
    goto :goto_0

    .line 147
    :cond_3
    sub-float v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    .line 148
    .local v2, "x1":F
    add-float v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v3

    .line 149
    .local v3, "x2":F
    sub-float v4, v0, v1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v4

    .line 150
    .local v4, "y1":F
    add-float v5, v0, v1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v5

    .line 151
    .local v5, "y2":F
    sub-float v6, v5, v4

    sub-float v7, p1, v2

    mul-float/2addr v6, v7

    sub-float v7, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    return v6
.end method

.method public blacklist getDiff(F)F
    .locals 8
    .param p1, "x"    # F

    .line 109
    const/high16 v0, 0x3f000000    # 0.5f

    .line 110
    .local v0, "t":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 111
    .local v1, "range":F
    :goto_0
    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 112
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    .line 113
    .local v2, "tx":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    .line 114
    cmpg-float v3, v2, p1

    if-gez v3, :cond_0

    .line 115
    add-float/2addr v0, v1

    goto :goto_1

    .line 117
    :cond_0
    sub-float/2addr v0, v1

    .line 119
    .end local v2    # "tx":F
    :goto_1
    goto :goto_0

    .line 120
    :cond_1
    sub-float v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v2

    .line 121
    .local v2, "x1":F
    add-float v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getX(F)F

    move-result v3

    .line 122
    .local v3, "x2":F
    sub-float v4, v0, v1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v4

    .line 123
    .local v4, "y1":F
    add-float v5, v0, v1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->getY(F)F

    move-result v5

    .line 124
    .local v5, "y2":F
    sub-float v6, v5, v4

    sub-float v7, v3, v2

    div-float/2addr v6, v7

    return v6
.end method

.method blacklist setup(FFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 72
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX1:F

    .line 73
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY1:F

    .line 74
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mX2:F

    .line 75
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->mY2:F

    .line 76
    return-void
.end method

.method blacklist setup([F)V
    .locals 4
    .param p1, "values"    # [F

    .line 68
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;->setup(FFFF)V

    .line 69
    return-void
.end method
