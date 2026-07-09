.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ImpulseOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ImpulseOperation"

.field private static final blacklist OP_CODE:I = 0xa4


# instance fields
.field private blacklist mDuration:F

.field blacklist mIndexVariableId:I

.field private blacklist mInitialPass:Z

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutDuration:F

.field private blacklist mOutStartAt:F

.field private blacklist mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

.field private blacklist mStartAt:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .locals 1
    .param p1, "duration"    # F
    .param p2, "startAt"    # F

    .line 59
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    .line 60
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    .line 61
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    .line 63
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    .line 64
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "duration"    # F
    .param p2, "startAt"    # F

    .line 179
    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 182
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 203
    const/16 v0, 0xa4

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 204
    const-string v1, "Impulse Operation. This operation execute a list of action for a fixed duration"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const/4 v1, 0x1

    const-string v2, "duration"

    const-string v3, "How long to last"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const-string/jumbo v2, "startAt"

    const-string/jumbo v3, "value step"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 209
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "ImpulseOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 3
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

    .line 191
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 192
    .local v0, "duration":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 194
    .local v1, "startAt":F
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;-><init>(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 133
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist estimateIterations()I
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/16 v0, 0xa

    return v0

    .line 220
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
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

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 140
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 141
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 143
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 148
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 149
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 152
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_1

    .line 157
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    .line 159
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "....."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 71
    .local v0, "last":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    .line 73
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "last":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 83
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_3

    .line 84
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 85
    .local v2, "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 87
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "variableSupport":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :cond_3
    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 91
    :cond_5
    return-void
.end method

.method public blacklist setProcess(Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;)V
    .locals 0
    .param p1, "impulseProcess"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    .line 229
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    .line 230
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoopOperation\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 121
    .local v2, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, "  startAt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, " duration: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .end local v2    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 96
    nop

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    .line 99
    nop

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 104
    :cond_2
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 113
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 114
    return-void
.end method
