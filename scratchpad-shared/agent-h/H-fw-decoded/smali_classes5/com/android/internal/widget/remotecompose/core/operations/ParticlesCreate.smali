.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ParticlesCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesCreate"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa1


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private final blacklist mIndexeVars:[I

.field private final blacklist mOutEquations:[[F

.field private final blacklist mParticleCount:I

.field private final blacklist mParticles:[[F

.field private final blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[I[[FI)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "varId"    # [I
    .param p3, "values"    # [[F
    .param p4, "particleCount"    # I

    .line 55
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 56
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    .line 57
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    .line 58
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    .line 59
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    .line 60
    array-length v0, p3

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, p3, v0

    array-length v3, v3

    new-array v3, v3, [F

    aput-object v3, v1, v0

    .line 63
    aget-object v1, p3, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    aget-object v4, p3, v0

    array-length v4, v4

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    array-length v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput v0, v1, v3

    aput p4, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    .line 67
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 68
    .local v0, "index":[I
    const/4 v1, 0x0

    .line 69
    .local v1, "indexes":I
    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 70
    .local v2, "var1Int":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 71
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 72
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    aget v5, v5, v4

    .line 73
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 74
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "indexes":I
    .local v5, "indexes":I
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v6, v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    aput v6, v0, v1

    move v1, v5

    .line 71
    .end local v5    # "indexes":I
    .restart local v1    # "indexes":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 70
    .end local v4    # "k":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v3    # "j":I
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    .line 79
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V
    .locals 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "varId"    # [I
    .param p3, "equations"    # [[F
    .param p4, "particleCount"    # I

    .line 151
    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 153
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 154
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 156
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 157
    aget-object v1, p3, v0

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 158
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p3, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 159
    aget-object v2, p3, v0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 201
    const/16 v0, 0xa1

    const-string v1, "ParticlesCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 202
    const-string v1, "Creates a particle system"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The reference of the particle system"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 204
    const-string v3, "particleCount"

    const-string v4, "number of particles to create"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 205
    const-string/jumbo v3, "varLen"

    const-string v4, "number of variables asociate with the particles"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 206
    const/16 v4, 0xa

    const-string v5, "id followed by equations"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const-string v2, "equLen"

    const-string v3, "length of the equation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const-string v1, "equation"

    const-string/jumbo v2, "varLen * equLen"

    const-string v3, "float array equations"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 209
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

    .line 171
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 172
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 173
    .local v1, "particleCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 174
    .local v2, "varLen":I
    const-string v3, " map entries more than max = "

    const/16 v4, 0x7d0

    if-gt v2, v4, :cond_3

    .line 177
    new-array v5, v2, [I

    .line 178
    .local v5, "varId":[I
    new-array v6, v2, [[F

    .line 179
    .local v6, "equations":[[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    aput v8, v5, v7

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 182
    .local v8, "equLen":I
    const/16 v9, 0x20

    if-gt v8, v9, :cond_1

    .line 186
    new-array v9, v8, [F

    aput-object v9, v6, v7

    .line 187
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    aget-object v10, v6, v7

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 188
    aget-object v10, v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 187
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 179
    .end local v8    # "equLen":I
    .end local v9    # "j":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    .restart local v8    # "equLen":I
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    .end local v7    # "i":I
    .end local v8    # "equLen":I
    :cond_2
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-direct {v3, v0, v5, v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;-><init>(I[I[[FI)V

    .line 192
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void

    .line 175
    .end local v3    # "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
    .end local v5    # "varId":[I
    .end local v6    # "equations":[[F
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEquations()[[F
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    return-object v0
.end method

.method public blacklist getParticles()[[F
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    return-object v0
.end method

.method public blacklist getVariableIds()[I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    return-object v0
.end method

.method blacklist initializeParticle(I)V
    .locals 7
    .param p1, "pNo"    # I

    .line 218
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    aget v2, v2, v1

    .line 221
    .local v2, "pos":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v3, v3

    div-int v3, v2, v3

    .line 222
    .local v3, "jIndex":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v4, v4

    rem-int v4, v2, v4

    .line 223
    .local v4, "kIndex":I
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v5, v5, v3

    int-to-float v6, p1

    aput v6, v5, v4

    .line 219
    .end local v2    # "pos":I
    .end local v3    # "jIndex":I
    .end local v4    # "kIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "k":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v2

    aput v2, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 99
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v1, v1, v0

    .line 102
    .local v1, "mEquation":[F
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 103
    .local v4, "v":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 102
    .end local v4    # "v":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v1    # "mEquation":[F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesCreate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v3, v3, v2

    .line 124
    .local v3, "equation":[F
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 125
    .local v5, "labels":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 126
    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v6

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 125
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v6    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .end local v3    # "equation":[F
    .end local v5    # "labels":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 85
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 87
    .local v2, "v":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    .line 88
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    goto :goto_2

    .line 92
    :cond_0
    move v4, v2

    :goto_2
    aput v4, v3, v1

    .line 85
    .end local v2    # "v":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 114
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 115
    return-void
.end method
