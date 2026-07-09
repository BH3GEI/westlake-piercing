.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "FloatExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FloatExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x51


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field public blacklist mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field public blacklist mId:I

.field blacklist mLastAnimatedValue:F

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field public blacklist mPreCalcValue:[F

.field private blacklist mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

.field public blacklist mSrcAnimation:[F

.field public blacklist mSrcValue:[F


# direct methods
.method public constructor blacklist <init>(I[F[F)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # [F
    .param p3, "animation"    # [F

    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 57
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 59
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 148
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 63
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 64
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 65
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;-><init>([F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>([F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V
    .locals 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "value"    # [F
    .param p3, "animation"    # [F

    .line 256
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 259
    array-length v0, p2

    .line 260
    .local v0, "len":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_3

    .line 263
    if-eqz p3, :cond_0

    .line 264
    array-length v1, p3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 266
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 268
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p2, v3

    .line 269
    .local v4, "v":F
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 268
    .end local v4    # "v":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_1
    if-eqz p3, :cond_2

    .line 272
    array-length v1, p3

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, p3, v2

    .line 273
    .local v3, "v":F
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 272
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    :cond_2
    return-void

    .line 261
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 315
    const/16 v0, 0x51

    const-string v1, "FloatExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 316
    const-string v1, "A Float expression"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 317
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The id of the Color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 318
    const/16 v2, 0x9

    const-string v3, "expression_length"

    const-string v4, "expression length"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 319
    const-string v4, "animation_length"

    const-string v5, "animation description length"

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 320
    const/16 v2, 0xa

    const-string v5, "expression"

    const-string v6, "Sequence of Floats representing and expression"

    invoke-virtual {v0, v2, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 325
    const-string v3, "AnimationSpec"

    const-string v5, "Sequence of Floats representing animation curve"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 330
    const/4 v3, 0x1

    const-string v4, "duration"

    const-string v5, "> time in sec"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 331
    const-string v4, "bits"

    const-string v5, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "spec"

    const-string v4, "> [SPEC PARAMETERS] "

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 333
    const-string v1, "initialValue"

    const-string v2, "> [Initial value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "wrapValue"

    const-string v2, "> [Wrap value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 335
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 240
    const/16 v0, 0x51

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 231
    const-string v0, "FloatExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 8
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

    .line 285
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 286
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 287
    .local v1, "len":I
    const v2, 0xffff

    and-int v3, v1, v2

    .line 288
    .local v3, "valueLen":I
    const/16 v4, 0x20

    if-gt v3, v4, :cond_3

    .line 291
    shr-int/lit8 v4, v1, 0x10

    and-int/2addr v2, v4

    .line 292
    .local v2, "animLen":I
    new-array v4, v3, [F

    .line 293
    .local v4, "values":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    aput v6, v4, v5

    .line 293
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    .end local v5    # "i":I
    :cond_0
    if-eqz v2, :cond_2

    .line 299
    new-array v5, v2, [F

    .line 300
    .local v5, "animation":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    aput v7, v5, v6

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_1
    goto :goto_2

    .line 304
    .end local v5    # "animation":[F
    :cond_2
    const/4 v5, 0x0

    .line 306
    .restart local v5    # "animation":[F
    :goto_2
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    invoke-direct {v6, v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;-><init>(I[F[F)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void

    .line 289
    .end local v2    # "animLen":I
    .end local v4    # "values":[F
    .end local v5    # "animation":[F
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Float expression too long"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 154
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    .line 159
    .local v1, "lastComputedValue":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 160
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 161
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 164
    .end local v1    # "lastComputedValue":F
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->get(F)F

    move-result v1

    .line 166
    .restart local v1    # "lastComputedValue":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 167
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 168
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 171
    .end local v1    # "lastComputedValue":F
    :cond_3
    goto :goto_0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 173
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    .line 174
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 177
    :cond_5
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 179
    .end local v1    # "v":F
    :goto_0
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 190
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    return v1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 137
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 136
    .end local v3    # "v":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 346
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 347
    const-string/jumbo v1, "type"

    const-string v2, "FloatExpression"

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 349
    const-string/jumbo v2, "srcValues"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 350
    const-string v2, "animation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 351
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 205
    .local v0, "labels":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    const-string v2, ")"

    const-string v3, "] = ("

    const-string v4, "FloatExpression["

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 214
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    return-object v1

    .line 217
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    .line 220
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, "value_changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 83
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    .line 84
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_6

    .line 86
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_6

    .line 87
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    .line 88
    .local v3, "id":I
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    .line 91
    .local v4, "newValue":F
    const/16 v5, 0x1b

    if-ne v3, v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    .line 92
    const/high16 v4, 0x3f800000    # 1.0f

    .line 94
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v5, :cond_3

    .line 95
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_5

    .line 96
    const/4 v0, 0x1

    .line 97
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    goto :goto_1

    .line 99
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v5, :cond_4

    .line 100
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_5

    .line 101
    const/4 v0, 0x1

    .line 102
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    goto :goto_1

    .line 105
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    .line 107
    .end local v3    # "id":I
    .end local v4    # "newValue":F
    :cond_5
    :goto_1
    goto :goto_2

    .line 108
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v4, v4, v1

    aput v4, v3, v1

    .line 82
    .end local v2    # "v":F
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_7
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 112
    .local v1, "v":F
    if-eqz v0, :cond_9

    .line 113
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v1

    .line 114
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_8

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 116
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    goto :goto_3

    .line 118
    :cond_8
    const/4 v0, 0x0

    .line 122
    :cond_9
    :goto_3
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v2, :cond_b

    .line 123
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    goto :goto_4

    .line 126
    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 128
    :goto_4
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    goto :goto_5

    .line 129
    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v2, :cond_c

    .line 130
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->setTargetValue(F)V

    .line 132
    :cond_c
    :goto_5
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 198
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 199
    return-void
.end method
