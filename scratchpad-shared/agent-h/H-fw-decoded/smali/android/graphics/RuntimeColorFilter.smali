.class public Landroid/graphics/RuntimeColorFilter;
.super Landroid/graphics/ColorFilter;
.source "RuntimeColorFilter.java"


# instance fields
.field private mAgsl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "agsl"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 50
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Landroid/graphics/RuntimeColorFilter;->mAgsl:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    .line 59
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RuntimeColorFilter requires a non-null AGSL string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreateRuntimeColorFilter(Ljava/lang/String;)J
.end method

.method private static native nativeUpdateChild(JLjava/lang/String;J)V
.end method

.method private static native nativeUpdateInputColorFilter(JLjava/lang/String;J)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;FFFFI)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;IIIII)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;[FZ)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;[I)V
.end method

.method private setFloatUniform(Ljava/lang/String;FFFFI)V
    .locals 8
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F
    .param p6, "count"    # I

    .line 162
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .end local p5    # "value4":F
    .end local p6    # "count":I
    .local v2, "uniformName":Ljava/lang/String;
    .local v3, "value1":F
    .local v4, "value2":F
    .local v5, "value3":F
    .local v6, "value4":F
    .local v7, "count":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 167
    return-void

    .line 163
    .end local v2    # "uniformName":Ljava/lang/String;
    .end local v3    # "value1":F
    .end local v4    # "value2":F
    .end local v5    # "value3":F
    .end local v6    # "value4":F
    .end local v7    # "count":I
    .restart local p1    # "uniformName":Ljava/lang/String;
    .restart local p2    # "value1":F
    .restart local p3    # "value2":F
    .restart local p4    # "value3":F
    .restart local p5    # "value4":F
    .restart local p6    # "count":I
    :cond_0
    move-object v2, p1

    move v3, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .restart local v2    # "uniformName":Ljava/lang/String;
    .restart local v3    # "value1":F
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIntUniform(Ljava/lang/String;IIIII)V
    .locals 8
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I
    .param p6, "count"    # I

    .line 244
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .end local p5    # "value4":I
    .end local p6    # "count":I
    .local v2, "uniformName":Ljava/lang/String;
    .local v3, "value1":I
    .local v4, "value2":I
    .local v5, "value3":I
    .local v6, "value4":I
    .local v7, "count":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 249
    return-void

    .line 245
    .end local v2    # "uniformName":Ljava/lang/String;
    .end local v3    # "value1":I
    .end local v4    # "value2":I
    .end local v5    # "value3":I
    .end local v6    # "value4":I
    .end local v7    # "count":I
    .restart local p1    # "uniformName":Ljava/lang/String;
    .restart local p2    # "value1":I
    .restart local p3    # "value2":I
    .restart local p4    # "value3":I
    .restart local p5    # "value4":I
    .restart local p6    # "count":I
    :cond_0
    move-object v2, p1

    move v3, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .restart local v2    # "uniformName":Ljava/lang/String;
    .restart local v3    # "value1":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setUniform(Ljava/lang/String;[FZ)V
    .locals 2
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "isColor"    # Z

    .line 170
    if-eqz p1, :cond_1

    .line 173
    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createNativeInstance()J
    .locals 2

    .line 307
    iget-object v0, p0, Landroid/graphics/RuntimeColorFilter;->mAgsl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/RuntimeColorFilter;->nativeCreateRuntimeColorFilter(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setColorUniform(Ljava/lang/String;I)V
    .locals 2
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 69
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 70
    return-void
.end method

.method public setColorUniform(Ljava/lang/String;J)V
    .locals 3
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # J

    .line 81
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    .line 82
    .local v0, "exSRGB":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 83
    return-void
.end method

.method public setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .locals 3
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # Landroid/graphics/Color;

    .line 94
    if-eqz p2, :cond_0

    .line 97
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    .line 98
    .local v0, "exSRGB":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 99
    return-void

    .line 95
    .end local v0    # "exSRGB":Landroid/graphics/Color;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The color parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloatUniform(Ljava/lang/String;F)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 109
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 110
    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FF)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F

    .line 120
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 121
    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FFF)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F

    .line 132
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    .local v4, "value3":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 134
    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FFFF)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F

    .line 145
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .end local p5    # "value4":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    .local v4, "value3":F
    .local v5, "value4":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 146
    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 158
    return-void
.end method

.method public setInputColorFilter(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 277
    if-eqz p1, :cond_1

    .line 280
    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    .line 284
    invoke-virtual {p2}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    .line 283
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateInputColorFilter(JLjava/lang/String;J)V

    .line 285
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The colorFilter parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The filterName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V
    .locals 4
    .param p1, "shaderName"    # Ljava/lang/String;
    .param p2, "shader"    # Landroid/graphics/Shader;

    .line 259
    if-eqz p1, :cond_1

    .line 262
    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 266
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shader parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shaderName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V
    .locals 4
    .param p1, "xfermodeName"    # Ljava/lang/String;
    .param p2, "xfermode"    # Landroid/graphics/RuntimeXfermode;

    .line 295
    if-eqz p1, :cond_1

    .line 298
    if-eqz p2, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 302
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The xfermode parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The xfermodeName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntUniform(Ljava/lang/String;I)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 187
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 188
    return-void
.end method

.method public setIntUniform(Ljava/lang/String;II)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 199
    return-void
.end method

.method public setIntUniform(Ljava/lang/String;III)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I

    .line 209
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    .local v4, "value3":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 210
    return-void
.end method

.method public setIntUniform(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I

    .line 221
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .end local p5    # "value4":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    .local v4, "value3":I
    .local v5, "value4":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 222
    return-void
.end method

.method public setIntUniform(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .line 233
    if-eqz p1, :cond_1

    .line 236
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 240
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
