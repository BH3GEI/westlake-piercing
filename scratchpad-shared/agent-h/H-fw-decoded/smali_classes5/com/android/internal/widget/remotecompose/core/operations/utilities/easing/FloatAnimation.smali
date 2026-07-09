.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "FloatAnimation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field private blacklist mDuration:F

.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field private blacklist mInitialValue:F

.field blacklist mOffset:F

.field blacklist mSpec:[F

.field private blacklist mTargetValue:F

.field private blacklist mWrap:F


# direct methods
.method public constructor blacklist <init>(IF[FFF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "duration"    # F
    .param p3, "description"    # [F
    .param p4, "initialValue"    # F
    .param p5, "wrap"    # F

    .line 82
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 84
    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 85
    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .locals 1
    .param p1, "description"    # [F

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 66
    return-void
.end method

.method private blacklist create(I[FII)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 262
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 283
    :pswitch_1
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 284
    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 281
    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;-><init>([FII)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    .line 272
    :pswitch_4
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 278
    goto :goto_0

    .line 269
    :pswitch_5
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 270
    nop

    .line 289
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist packToFloatArray(FI[FFF)[F
    .locals 10
    .param p0, "duration"    # F
    .param p1, "type"    # I
    .param p2, "spec"    # [F
    .param p3, "initialValue"    # F
    .param p4, "wrap"    # F

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "count":I
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eq p1, v2, :cond_4

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 109
    if-nez p2, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    array-length v3, p2

    :goto_0
    add-int/2addr v0, v3

    .line 112
    :cond_4
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_5
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_6

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_7

    if-lez v0, :cond_8

    .line 119
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_8
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_a

    .line 122
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_a
    new-array v3, v0, [F

    .line 125
    .local v3, "ret":[F
    const/4 v4, 0x0

    .line 126
    .local v4, "pos":I
    if-nez p2, :cond_b

    move v5, v1

    goto :goto_1

    :cond_b
    array-length v5, p2

    .line 128
    .local v5, "specLen":I
    :goto_1
    array-length v6, v3

    if-lez v6, :cond_c

    .line 129
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "pos":I
    .local v6, "pos":I
    aput p0, v3, v4

    move v4, v6

    .line 131
    .end local v6    # "pos":I
    .restart local v4    # "pos":I
    :cond_c
    array-length v6, v3

    if-le v6, v2, :cond_e

    .line 132
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    xor-int/2addr v2, v6

    .line 133
    .local v2, "wrapBit":I
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v1

    goto :goto_2

    :cond_d
    const/4 v6, 0x2

    .line 134
    .local v6, "initBit":I
    :goto_2
    or-int v7, v2, v6

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, p1

    .line 135
    .local v7, "bits":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "pos":I
    .local v8, "pos":I
    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    aput v9, v3, v4

    move v4, v8

    .line 138
    .end local v2    # "wrapBit":I
    .end local v6    # "initBit":I
    .end local v7    # "bits":I
    .end local v8    # "pos":I
    .restart local v4    # "pos":I
    :cond_e
    if-lez v5, :cond_f

    .line 139
    array-length v2, p2

    invoke-static {p2, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v1, p2

    add-int/2addr v4, v1

    .line 142
    :cond_f
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_10

    .line 143
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "pos":I
    .local v1, "pos":I
    aput p3, v3, v4

    move v4, v1

    .line 145
    .end local v1    # "pos":I
    .restart local v4    # "pos":I
    :cond_10
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_11

    .line 146
    aput p4, v3, v4

    .line 148
    :cond_11
    return-object v3
.end method

.method private blacklist setScaleOffset()V
    .locals 1

    .line 367
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    goto :goto_0

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 375
    :goto_0
    return-void
.end method

.method public static blacklist unpackAnimationToString([F)Ljava/lang/String;
    .locals 13
    .param p0, "description"    # [F

    .line 158
    move-object v0, p0

    .line 159
    .local v0, "mSpec":[F
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    aget v1, v0, v2

    .line 160
    .local v1, "mDuration":F
    :goto_0
    const/4 v3, 0x0

    .line 161
    .local v3, "len":I
    const/4 v4, 0x0

    .line 162
    .local v4, "type":I
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 163
    .local v5, "wrapValue":F
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 164
    .local v6, "initialValue":F
    array-length v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 165
    aget v7, v0, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 166
    .local v7, "num_type":I
    and-int/lit16 v4, v7, 0xff

    .line 167
    shr-int/lit8 v9, v7, 0x8

    and-int/2addr v9, v8

    if-lez v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v2

    .line 168
    .local v9, "wrap":Z
    :goto_1
    shr-int/lit8 v10, v7, 0x8

    and-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_2

    move v2, v8

    .line 169
    .local v2, "init":Z
    :cond_2
    shr-int/lit8 v8, v7, 0x10

    const v10, 0xffff

    and-int v3, v8, v10

    .line 170
    add-int/lit8 v8, v3, 0x2

    .line 171
    .local v8, "off":I
    if-eqz v2, :cond_3

    .line 172
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "off":I
    .local v10, "off":I
    aget v6, v0, v8

    move v8, v10

    .line 174
    .end local v10    # "off":I
    .restart local v8    # "off":I
    :cond_3
    if-eqz v9, :cond_4

    .line 175
    aget v5, v0, v8

    .line 178
    .end local v2    # "init":Z
    .end local v7    # "num_type":I
    .end local v8    # "off":I
    .end local v9    # "wrap":Z
    :cond_4
    move-object v2, p0

    .line 179
    .local v2, "params":[F
    const/4 v7, 0x2

    .line 181
    .local v7, "offset":I
    const-string v8, ""

    .line 182
    .local v8, "typeStr":Ljava/lang/String;
    const-string v9, " "

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 214
    :pswitch_1
    const-string v8, "EASE_OUT_ELASTIC"

    .line 215
    goto/16 :goto_3

    .line 210
    :pswitch_2
    const-string v8, "EASE_OUT_BOUNCE"

    .line 212
    goto/16 :goto_3

    .line 217
    :pswitch_3
    const-string v8, "SPLINE_CUSTOM ("

    .line 218
    move v10, v7

    .local v10, "i":I
    :goto_2
    add-int v11, v7, v3

    if-ge v10, v11, :cond_5

    .line 219
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v2, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 221
    .end local v10    # "i":I
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 203
    :pswitch_4
    const-string v8, "CUBIC_CUSTOM ("

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x0

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x2

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x3

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 208
    goto :goto_3

    .line 199
    :pswitch_5
    const-string v8, "CUBIC_OVERSHOOT"

    .line 201
    goto :goto_3

    .line 196
    :pswitch_6
    const-string v8, "CUBIC_ANTICIPATE"

    .line 197
    goto :goto_3

    .line 193
    :pswitch_7
    const-string v8, "CUBIC_LINEAR"

    .line 194
    goto :goto_3

    .line 190
    :pswitch_8
    const-string v8, "CUBIC_DECELERATE"

    .line 191
    goto :goto_3

    .line 187
    :pswitch_9
    const-string v8, "CUBIC_ACCELERATE"

    .line 188
    goto :goto_3

    .line 184
    :pswitch_a
    const-string v8, "CUBIC_STANDARD"

    .line 185
    nop

    .line 225
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "str":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_6

    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " init ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 229
    :cond_6
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_7

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " wrap ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 232
    :cond_7
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist wrap(FF)F
    .locals 1
    .param p0, "wrap"    # F
    .param p1, "value"    # F

    .line 316
    rem-float/2addr p1, p0

    .line 317
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 318
    add-float/2addr p1, p0

    .line 320
    :cond_0
    return p1
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 3
    .param p1, "t"    # F

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDiff(F)F
    .locals 3
    .param p1, "t"    # F

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDuration()F
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    return v0
.end method

.method public blacklist getInitialValue()F
    .locals 1

    .line 395
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v0
.end method

.method public blacklist getTargetValue()F
    .locals 1

    .line 363
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 400
    nop

    .line 401
    const-string/jumbo v0, "type"

    const-string v1, "FloatAnimation"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 402
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "initialValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 403
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "targetValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 404
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 405
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easing"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 406
    return-void
.end method

.method public blacklist setAnimationDescription([F)V
    .locals 8
    .param p1, "description"    # [F

    .line 241
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "len":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 245
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 246
    .local v2, "num_type":I
    and-int/lit16 v5, v2, 0xff

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 247
    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v4

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    .line 248
    .local v5, "wrap":Z
    :goto_1
    shr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v3

    if-lez v6, :cond_2

    move v1, v4

    .line 249
    .local v1, "init":Z
    :cond_2
    shr-int/lit8 v4, v2, 0x10

    const v6, 0xffff

    and-int v0, v4, v6

    .line 250
    add-int/lit8 v4, v0, 0x2

    .line 251
    .local v4, "off":I
    if-eqz v1, :cond_3

    .line 252
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "off":I
    .local v7, "off":I
    aget v4, v6, v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    move v4, v7

    .line 254
    .end local v7    # "off":I
    .restart local v4    # "off":I
    :cond_3
    if-eqz v5, :cond_4

    .line 255
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v6, v6, v4

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 258
    .end local v1    # "init":Z
    .end local v2    # "num_type":I
    .end local v4    # "off":I
    .end local v5    # "wrap":Z
    :cond_4
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-direct {p0, v1, p1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->create(I[FII)V

    .line 259
    return-void
.end method

.method public blacklist setInitialValue(F)V
    .locals 1
    .param p1, "value"    # F

    .line 307
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 313
    return-void
.end method

.method public blacklist setTargetValue(F)V
    .locals 4
    .param p1, "value"    # F

    .line 339
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 340
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 342
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 343
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 347
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrapDistance(FFF)F

    move-result v0

    .line 348
    .local v0, "dist":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 349
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_0

    .line 350
    :cond_1
    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 351
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 354
    .end local v0    # "dist":F
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 355
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_2
    return-object v0
.end method

.method blacklist wrapDistance(FFF)F
    .locals 3
    .param p1, "wrap"    # F
    .param p2, "from"    # F
    .param p3, "to"    # F

    .line 324
    sub-float v0, p3, p2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 325
    .local v0, "delta":F
    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 326
    add-float/2addr v0, p1

    goto :goto_0

    .line 327
    :cond_0
    div-float v1, p1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 328
    sub-float/2addr v0, p1

    .line 330
    :cond_1
    :goto_0
    return v0
.end method
