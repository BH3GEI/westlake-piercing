.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesLoop.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesLoop"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa3


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutEquations:[[F

.field private final blacklist mOutRestart:[F

.field private blacklist mParticles:[[F

.field blacklist mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

.field private final blacklist mRestart:[F

.field private blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[F[[F)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "values"    # [[F

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 76
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    .line 78
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 79
    array-length v1, p2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 80
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 85
    :goto_0
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    .line 86
    array-length v1, p3

    new-array v1, v1, [[F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v3, p3, v1

    array-length v3, v3

    new-array v3, v3, [F

    aput-object v3, v2, v1

    .line 89
    aget-object v2, p3, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V
    .locals 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "equations"    # [[F

    .line 172
    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 174
    if-eqz p2, :cond_1

    .line 175
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 180
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 182
    :goto_1
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 183
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 184
    aget-object v1, p3, v0

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 185
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    aget-object v2, p3, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 186
    aget-object v2, p3, v0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 183
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 236
    const/16 v0, 0xa3

    const-string v1, "ParticlesLoop"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 237
    const-string v1, "This evolves the particles & recycles them"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of particle system"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 239
    const-string/jumbo v2, "recycleLen"

    const-string/jumbo v3, "the number of floats in restart equeation if 0 no restart"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 243
    const/16 v3, 0xa

    const-string/jumbo v4, "values"

    const-string v5, "array of floats"

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 244
    const-string/jumbo v2, "varLen"

    const-string/jumbo v5, "the number of equations to follow"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 245
    const-string v2, "equLen"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 246
    const-string v1, "floats for the equation"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 247
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 12
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

    .line 198
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 199
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 200
    .local v1, "restartLen":I
    const/4 v2, 0x0

    .line 201
    .local v2, "restart":[F
    if-lez v1, :cond_0

    .line 202
    new-array v2, v1, [F

    .line 203
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 209
    .local v3, "varLen":I
    const-string v4, " map entries more than max = "

    const/16 v5, 0x7d0

    if-gt v3, v5, :cond_4

    .line 213
    new-array v6, v3, [[F

    .line 214
    .local v6, "equations":[[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 217
    .local v8, "equLen":I
    const/16 v9, 0x20

    if-gt v8, v9, :cond_2

    .line 221
    new-array v9, v8, [F

    aput-object v9, v6, v7

    .line 222
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    aget-object v10, v6, v7

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 223
    aget-object v10, v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 214
    .end local v8    # "equLen":I
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 218
    .restart local v8    # "equLen":I
    :cond_2
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 226
    .end local v7    # "i":I
    .end local v8    # "equLen":I
    :cond_3
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;

    invoke-direct {v4, v0, v2, v6}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;-><init>(I[F[[F)V

    .line 227
    .local v4, "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void

    .line 210
    .end local v4    # "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
    .end local v6    # "equations":[[F
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 258
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 260
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v2    # "j":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v7, v7, v2

    array-length v7, v7

    new-array v4, v4, [F

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v4

    aput v4, v3, v2

    .line 267
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 270
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v2, :cond_4

    .line 271
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v3, v3, v2

    .line 273
    .local v3, "v":F
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 274
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_2

    .line 276
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_2

    .line 277
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v6

    goto :goto_4

    .line 278
    :cond_2
    move v6, v3

    :goto_4
    aput v6, v5, v2

    .line 271
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 280
    .end local v2    # "k":I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v5, v5

    new-array v4, v4, [F

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 281
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 286
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_5

    .line 287
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 290
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 292
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_5

    .line 258
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 122
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getParticles()[[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getVariableIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v1, v1, v0

    .line 128
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 126
    .end local v1    # "v":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v1, v1, v0

    .line 137
    .local v1, "mEquation":[F
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 138
    .local v4, "v":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 137
    .end local v4    # "v":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    .end local v1    # "mEquation":[F
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesLoop["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v1, v1, v0

    .line 98
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    goto :goto_1

    .line 103
    :cond_0
    move v3, v1

    :goto_1
    aput v3, v2, v0

    .line 96
    .end local v1    # "v":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v1, v1, v0

    .line 108
    .local v1, "mEquation":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 109
    aget v3, v1, v2

    .line 110
    .local v3, "v":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v4, v4, v0

    .line 111
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v5

    goto :goto_4

    .line 115
    :cond_2
    move v5, v3

    :goto_4
    aput v5, v4, v2

    .line 108
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 106
    .end local v1    # "mEquation":[F
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 149
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 150
    return-void
.end method
