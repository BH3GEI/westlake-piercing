.class public Landroid/graphics/fonts/FontFileUtil;
.super Ljava/lang/Object;
.source "FontFileUtil.java"


# static fields
.field private static final ANALYZE_ERROR:I = -0x1

.field private static final FVAR_TABLE_TAG:I = 0x66766172

.field private static final OS2_TABLE_TAG:I = 0x4f532f32

.field private static final SFNT_VERSION_1:I = 0x10000

.field private static final SFNT_VERSION_OTTO:I = 0x4f54544f

.field private static final TTC_TAG:I = 0x74746366


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I
    .locals 17
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "ttcIndex"    # I
    .param p2, "varSettings"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 77
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, -0x1

    .line 78
    .local v0, "weight":I
    const/4 v4, -0x1

    .line 79
    .local v4, "italic":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 80
    array-length v7, v3

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v3, v8

    .line 81
    .local v9, "axis":Landroid/graphics/fonts/FontVariationAxis;
    const-string/jumbo v10, "wght"

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 82
    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    float-to-int v0, v10

    goto :goto_2

    .line 83
    :cond_0
    const-string/jumbo v10, "ital"

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 84
    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    move v4, v10

    .line 80
    .end local v9    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v7, v4

    move v4, v0

    goto :goto_3

    .line 79
    :cond_4
    move v7, v4

    move v4, v0

    .line 89
    .end local v0    # "weight":I
    .local v4, "weight":I
    .local v7, "italic":I
    :goto_3
    const/4 v0, -0x1

    if-eq v4, v0, :cond_6

    if-eq v7, v0, :cond_6

    .line 93
    if-ne v7, v6, :cond_5

    move v5, v6

    :cond_5
    invoke-static {v4, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0

    return v0

    .line 96
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    .line 97
    .local v8, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    const/4 v9, 0x0

    .line 100
    .local v9, "fontFileOffset":I
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 101
    .local v10, "magicNumber":I
    const v11, 0x74746366

    if-ne v10, v11, :cond_8

    .line 103
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v11, :cond_7

    .line 104
    nop

    .line 137
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    return v0

    .line 106
    :cond_7
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0xc

    :try_start_1
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move v9, v11

    .line 109
    :cond_8
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .local v11, "sfntVersion":I
    const/high16 v12, 0x10000

    if-eq v11, v12, :cond_9

    const v12, 0x4f54544f    # 3.562295E9f

    if-eq v11, v12, :cond_9

    .line 112
    nop

    .line 137
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    return v0

    .line 115
    :cond_9
    add-int/lit8 v12, v9, 0x4

    :try_start_2
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    .line 116
    .local v12, "numTables":I
    const/4 v13, -0x1

    .line 117
    .local v13, "os2TableOffset":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v12, :cond_b

    .line 118
    add-int/lit8 v15, v9, 0xc

    mul-int/lit8 v16, v14, 0x10

    add-int v15, v15, v16

    .line 120
    .local v15, "tableOffset":I
    move/from16 v16, v6

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v5, 0x4f532f32

    if-ne v6, v5, :cond_a

    .line 121
    add-int/lit8 v5, v15, 0x8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    move v13, v5

    .line 122
    goto :goto_5

    .line 117
    .end local v15    # "tableOffset":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    move/from16 v16, v6

    .line 126
    .end local v14    # "i":I
    :goto_5
    if-ne v13, v0, :cond_c

    .line 128
    const/16 v0, 0x190

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    return v0

    .line 131
    :cond_c
    const/4 v5, 0x0

    add-int/lit8 v6, v13, 0x4

    :try_start_3
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 132
    .local v6, "weightFromOS2":I
    add-int/lit8 v14, v13, 0x3e

    .line 133
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_d

    move/from16 v14, v16

    goto :goto_6

    :cond_d
    move v14, v5

    .line 134
    .local v14, "italicFromOS2":Z
    :goto_6
    if-ne v4, v0, :cond_e

    move v15, v6

    goto :goto_7

    :cond_e
    move v15, v4

    .line 135
    :goto_7
    if-ne v7, v0, :cond_f

    move v5, v14

    goto :goto_8

    :cond_f
    move/from16 v0, v16

    if-ne v7, v0, :cond_10

    move v5, v0

    .line 134
    :cond_10
    :goto_8
    invoke-static {v15, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    return v0

    .line 137
    .end local v6    # "weightFromOS2":I
    .end local v9    # "fontFileOffset":I
    .end local v10    # "magicNumber":I
    .end local v11    # "sfntVersion":I
    .end local v12    # "numTables":I
    .end local v13    # "os2TableOffset":I
    .end local v14    # "italicFromOS2":Z
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 138
    throw v0
.end method

.method public static getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 170
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRevision(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 155
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;
    .locals 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 220
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "fontFileOffset":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 224
    .local v2, "magicNumber":I
    const v3, 0x74746366

    if-ne v2, v3, :cond_1

    .line 226
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 227
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 227
    return-object v3

    .line 229
    :cond_0
    mul-int/lit8 v3, p1, 0x4

    add-int/lit8 v3, v3, 0xc

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    move v1, v3

    .line 232
    :cond_1
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 234
    .local v3, "sfntVersion":I
    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_2

    const v4, 0x4f54544f    # 3.562295E9f

    if-eq v3, v4, :cond_2

    .line 235
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 235
    return-object v4

    .line 238
    :cond_2
    add-int/lit8 v4, v1, 0x4

    :try_start_2
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    .line 239
    .local v4, "numTables":I
    const/4 v5, -0x1

    .line 240
    .local v5, "fvarTableOffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 241
    add-int/lit8 v7, v1, 0xc

    mul-int/lit8 v8, v6, 0x10

    add-int/2addr v7, v8

    .line 243
    .local v7, "tableOffset":I
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x66766172

    if-ne v8, v9, :cond_3

    .line 244
    add-int/lit8 v8, v7, 0x8

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    move v5, v8

    .line 245
    goto :goto_1

    .line 240
    .end local v7    # "tableOffset":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    .end local v6    # "i":I
    :cond_4
    :goto_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 251
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 251
    return-object v6

    .line 254
    :cond_5
    :try_start_3
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, v5, 0x2

    .line 255
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 259
    :cond_6
    add-int/lit8 v6, v5, 0x4

    invoke-static {p0, v6}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 260
    .local v6, "axesArrayOffset":I
    add-int/lit8 v7, v5, 0x8

    invoke-static {p0, v7}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 261
    .local v7, "axisCount":I
    add-int/lit8 v8, v5, 0xa

    invoke-static {p0, v8}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 263
    .local v8, "axisSize":I
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 264
    .local v9, "axes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v7, :cond_7

    .line 265
    add-int v11, v5, v6

    mul-int v12, v8, v10

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 268
    .end local v10    # "i":I
    :cond_7
    nop

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 268
    return-object v9

    .line 256
    .end local v6    # "axesArrayOffset":I
    .end local v7    # "axisCount":I
    .end local v8    # "axisSize":I
    .end local v9    # "axes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_8
    :goto_3
    :try_start_4
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 256
    return-object v6

    .line 270
    .end local v1    # "fontFileOffset":I
    .end local v2    # "magicNumber":I
    .end local v3    # "sfntVersion":I
    .end local v4    # "numTables":I
    .end local v5    # "fvarTableOffset":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 271
    throw v1
.end method

.method private static getUInt16(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 208
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static isCollectionFont(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, "copied":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 198
    .local v2, "magicNumber":I
    const v3, 0x74746366

    if-ne v2, v3, :cond_0

    .line 199
    const/4 v1, 0x1

    return v1

    .line 200
    :cond_0
    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_2

    const v3, 0x4f54544f    # 3.562295E9f

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, -0x1

    return v1

    .line 201
    :cond_2
    :goto_0
    return v1
.end method

.method public static isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 187
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static isSuccess(I)Z
    .locals 1
    .param p0, "packed"    # I

    .line 57
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontRevision(Ljava/nio/ByteBuffer;I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static pack(IZ)I
    .locals 1
    .param p0, "weight"    # I
    .param p1, "italic"    # Z

    .line 61
    if-eqz p1, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p0

    return v0
.end method

.method public static unpackItalic(I)Z
    .locals 1
    .param p0, "packed"    # I

    .line 50
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unpackWeight(I)I
    .locals 1
    .param p0, "packed"    # I

    .line 43
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
