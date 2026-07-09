.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "GraphicsLayerModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "GraphicsLayerModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe0


# instance fields
.field blacklist mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mAmbientShadowColorId:I

.field blacklist mBlendMode:I

.field blacklist mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mColorFilterId:I

.field blacklist mRenderEffectId:I

.field blacklist mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mSpotShadowColorId:I

.field blacklist mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;


# direct methods
.method public constructor blacklist <init>(FFFFFFFFFFIIIII)V
    .locals 16
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "rotationX"    # F
    .param p4, "rotationY"    # F
    .param p5, "rotationZ"    # F
    .param p6, "shadowElevation"    # F
    .param p7, "transformOriginX"    # F
    .param p8, "transformOriginY"    # F
    .param p9, "alpha"    # F
    .param p10, "cameraDistance"    # F
    .param p11, "blendMode"    # I
    .param p12, "spotShadowColorId"    # I
    .param p13, "ambientShadowColorId"    # I
    .param p14, "colorFilterId"    # I
    .param p15, "renderEffectId"    # I

    .line 76
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 77
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 78
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 79
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v4, p3

    invoke-direct {v1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 80
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v5, p4

    invoke-direct {v1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 81
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v6, p5

    invoke-direct {v1, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 82
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v7, p6

    invoke-direct {v1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 83
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v8, p7

    invoke-direct {v1, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 84
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v9, p8

    invoke-direct {v1, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 85
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v10, p9

    invoke-direct {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 86
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    move/from16 v11, p10

    invoke-direct {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 87
    move/from16 v1, p11

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mBlendMode:I

    .line 88
    move/from16 v12, p12

    iput v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mSpotShadowColorId:I

    .line 89
    move/from16 v13, p13

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAmbientShadowColorId:I

    .line 90
    move/from16 v14, p14

    iput v14, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mColorFilterId:I

    .line 91
    move/from16 v15, p15

    iput v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRenderEffectId:I

    .line 92
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFIIIII)V
    .locals 14
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "rotationX"    # F
    .param p4, "rotationY"    # F
    .param p5, "rotationZ"    # F
    .param p6, "shadowElevation"    # F
    .param p7, "transformOriginX"    # F
    .param p8, "transformOriginY"    # F
    .param p9, "alpha"    # F
    .param p10, "cameraDistance"    # F
    .param p11, "blendMode"    # I
    .param p12, "spotShadowColorId"    # I
    .param p13, "ambientShadowColorId"    # I
    .param p14, "colorFilterId"    # I
    .param p15, "renderEffectId"    # I

    .line 264
    const/16 v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 265
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 266
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 267
    move/from16 v1, p3

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 268
    move/from16 v2, p4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 269
    move/from16 v3, p5

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 270
    move/from16 v4, p6

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 271
    move/from16 v5, p7

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 272
    move/from16 v6, p8

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 273
    move/from16 v7, p9

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 274
    move/from16 v8, p10

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 275
    move/from16 v9, p11

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 276
    move/from16 v10, p12

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 277
    move/from16 v11, p13

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 278
    move/from16 v12, p14

    invoke-virtual {p0, v12}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 279
    move/from16 v13, p15

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 280
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 329
    const/16 v0, 0xe0

    const-string v1, "GraphicsLayerModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 330
    const-string v1, "define the GraphicsLayer Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 331
    const/4 v1, 0x1

    const-string/jumbo v2, "scaleX"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 332
    const-string/jumbo v2, "scaleY"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 333
    const-string/jumbo v2, "rotationX"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 334
    const-string/jumbo v2, "rotationY"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 335
    const-string/jumbo v2, "rotationZ"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 336
    const-string/jumbo v2, "shadowElevation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 337
    const-string/jumbo v2, "transformOriginX"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 338
    const-string/jumbo v2, "transformOriginY"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 339
    const-string v2, "alpha"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 340
    const-string v2, "cameraDistance"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    const-string v2, "blendMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 342
    const-string/jumbo v2, "spotShadowColorId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 343
    const-string v2, "ambientShadowColorId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 344
    const-string v2, "colorFilterId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 345
    const-string/jumbo v2, "renderEffectId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 346
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 224
    const/16 v0, 0xe0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 215
    const-string v0, "GraphicsLayerModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 17
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 290
    .local v1, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 291
    .local v2, "scaleY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 292
    .local v3, "rotationX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 293
    .local v4, "rotationY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 294
    .local v5, "rotationZ":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 295
    .local v6, "shadowElevation":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 296
    .local v7, "transformOriginX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 297
    .local v8, "transformOriginY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    .line 298
    .local v9, "alpha":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v10

    .line 299
    .local v10, "cameraDistance":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 300
    .local v11, "blendMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    .line 301
    .local v12, "spotShadowColorId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    .line 302
    .local v13, "ambientShadowColorId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v14

    .line 303
    .local v14, "colorFilterId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v15

    .line 304
    .local v15, "renderEffectId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;-><init>(FFFFFFFFFFIIIII)V

    move/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, p1

    .end local v1    # "scaleX":F
    .local v16, "scaleX":F
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlpha()F
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getAmbientShadowColorId()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAmbientShadowColorId:I

    return v0
.end method

.method public blacklist getBlendModeId()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mBlendMode:I

    return v0
.end method

.method public blacklist getCameraDistance()F
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getColorFilterId()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mColorFilterId:I

    return v0
.end method

.method public blacklist getRenderEffectId()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRenderEffectId:I

    return v0
.end method

.method public blacklist getRotationX()F
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getRotationY()F
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getRotationZ()F
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getScaleX()F
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getScaleY()F
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getShadowElevation()F
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getSpotShadowColorId()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mSpotShadowColorId:I

    return v0
.end method

.method public blacklist getTransformOriginX()F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist getTransformOriginY()F
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 349
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 201
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 353
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 354
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "type"

    const-string v2, "GraphicsLayerModifierOperation"

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 356
    const-string/jumbo v2, "scaleX"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 357
    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 358
    const-string/jumbo v2, "rotationX"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 359
    const-string/jumbo v2, "rotationY"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 360
    const-string/jumbo v2, "rotationZ"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 361
    const-string/jumbo v2, "shadowElevation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 362
    const-string/jumbo v2, "transformOriginX"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 363
    const-string/jumbo v2, "transformOriginY"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 364
    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 365
    const-string v2, "cameraDistance"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mBlendMode:I

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blendMode"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mSpotShadowColorId:I

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spotShadowColorId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAmbientShadowColorId:I

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ambientShadowColorId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mColorFilterId:I

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "colorFilterId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRenderEffectId:I

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "renderEffectId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 371
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRAPHICS_LAYER = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphicsLayerModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 18
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mScaleY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 162
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v4

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v5

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 164
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v6

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRotationZ:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 165
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v7

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mShadowElevation:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 166
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v8

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginX:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v9

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mTransformOriginY:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 168
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v10

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAlpha:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 169
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v11

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mCameraDistance:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v12

    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mBlendMode:I

    iget v14, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mSpotShadowColorId:I

    iget v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mAmbientShadowColorId:I

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mColorFilterId:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mRenderEffectId:I

    .line 159
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFIIIII)V

    .line 176
    return-void
.end method
