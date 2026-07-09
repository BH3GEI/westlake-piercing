.class public Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final blacklist fractionDigits:I

.field public final blacklist roundedBytes:J

.field public final blacklist units:Landroid/icu/util/MeasureUnit;

.field public final blacklist value:F


# direct methods
.method private constructor blacklist <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "units"    # Landroid/icu/util/MeasureUnit;
    .param p3, "fractionDigits"    # I
    .param p4, "roundedBytes"    # J

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 191
    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 192
    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 193
    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    .line 194
    return-void
.end method

.method public static blacklist roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .locals 16
    .param p0, "sizeBytes"    # J
    .param p2, "flags"    # I

    .line 201
    move-wide/from16 v0, p0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    .line 202
    .local v2, "unit":I
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 203
    .local v5, "isNegative":Z
    :goto_1
    if-eqz v5, :cond_2

    neg-long v6, v0

    long-to-float v6, v6

    goto :goto_2

    :cond_2
    long-to-float v6, v0

    .line 204
    .local v6, "result":F
    :goto_2
    sget-object v7, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 205
    .local v7, "units":Landroid/icu/util/MeasureUnit;
    const-wide/16 v8, 0x1

    .line 206
    .local v8, "mult":J
    const/high16 v10, 0x44610000    # 900.0f

    cmpl-float v11, v6, v10

    if-lez v11, :cond_3

    .line 207
    sget-object v7, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 208
    int-to-long v8, v2

    .line 209
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 211
    :cond_3
    cmpl-float v11, v6, v10

    if-lez v11, :cond_4

    .line 212
    sget-object v7, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 213
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 214
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 216
    :cond_4
    cmpl-float v11, v6, v10

    if-lez v11, :cond_5

    .line 217
    sget-object v7, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 218
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 219
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 221
    :cond_5
    cmpl-float v11, v6, v10

    if-lez v11, :cond_6

    .line 222
    sget-object v7, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 223
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 224
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 226
    :cond_6
    cmpl-float v10, v6, v10

    if-lez v10, :cond_7

    .line 227
    sget-object v7, Landroid/icu/util/MeasureUnit;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 228
    int-to-long v10, v2

    mul-long/2addr v8, v10

    .line 229
    int-to-float v10, v2

    div-float/2addr v6, v10

    move-wide v13, v8

    move-object v9, v7

    goto :goto_3

    .line 226
    :cond_7
    move-wide v13, v8

    move-object v9, v7

    .line 236
    .end local v7    # "units":Landroid/icu/util/MeasureUnit;
    .end local v8    # "mult":J
    .local v9, "units":Landroid/icu/util/MeasureUnit;
    .local v13, "mult":J
    :goto_3
    const-wide/16 v7, 0x1

    cmp-long v7, v13, v7

    if-eqz v7, :cond_d

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_8

    goto :goto_4

    .line 239
    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_9

    .line 240
    const/16 v7, 0x64

    .line 241
    .local v7, "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .local v8, "roundDigits":I
    goto :goto_5

    .line 242
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_9
    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_b

    .line 243
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_a

    .line 244
    const/16 v7, 0xa

    .line 245
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x1

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_5

    .line 247
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_a
    const/16 v7, 0x64

    .line 248
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_5

    .line 251
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_b
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_c

    .line 252
    const/4 v7, 0x1

    .line 253
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x0

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_5

    .line 255
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_c
    const/16 v7, 0x64

    .line 256
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_5

    .line 237
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_d
    :goto_4
    const/4 v7, 0x1

    .line 238
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x0

    move v15, v7

    move v10, v8

    .line 260
    .end local v7    # "roundFactor":I
    .local v10, "roundDigits":I
    .local v15, "roundFactor":I
    :goto_5
    if-eqz v5, :cond_e

    .line 261
    neg-float v6, v6

    move v8, v6

    goto :goto_6

    .line 260
    :cond_e
    move v8, v6

    .line 267
    .end local v6    # "result":F
    .local v8, "result":F
    :goto_6
    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_f

    move-wide v11, v3

    goto :goto_7

    .line 268
    :cond_f
    int-to-float v3, v15

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v13

    int-to-long v6, v15

    div-long/2addr v3, v6

    move-wide v11, v3

    :goto_7
    nop

    .line 270
    .local v11, "roundedBytes":J
    new-instance v7, Landroid/text/format/Formatter$RoundedBytesResult;

    invoke-direct/range {v7 .. v12}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v7
.end method
