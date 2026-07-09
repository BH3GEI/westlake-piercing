.class public Landroid/hardware/contexthub/HubEndpointSession;
.super Ljava/lang/Object;
.source "HubEndpointSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

.field private final blacklist mId:I

.field private final blacklist mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "hubEndpoint"    # Landroid/hardware/contexthub/HubEndpoint;
    .param p3, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p4, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p5, "serviceDescriptor"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput p1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    .line 60
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    .line 61
    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 62
    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 63
    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 130
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 132
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    invoke-virtual {v0, p0}, Landroid/hardware/contexthub/HubEndpoint;->closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V

    .line 134
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 167
    return v0

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 171
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/contexthub/HubEndpointSession;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    .line 172
    .local v2, "other":Landroid/hardware/contexthub/HubEndpointSession;
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v3

    iget v4, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v5

    .line 173
    .end local v1    # "isEqual":Z
    .local v3, "isEqual":Z
    :goto_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v1, v3

    .end local v3    # "isEqual":Z
    .restart local v1    # "isEqual":Z
    goto :goto_2

    .line 176
    .end local v1    # "isEqual":Z
    .restart local v3    # "isEqual":Z
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    and-int/2addr v1, v3

    .line 178
    .end local v3    # "isEqual":Z
    .restart local v1    # "isEqual":Z
    :goto_2
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v4, v2, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v4, v2, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    and-int/2addr v1, v0

    .line 182
    .end local v2    # "other":Landroid/hardware/contexthub/HubEndpointSession;
    :cond_5
    return v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    throw v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    return v0
.end method

.method public whitelist getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 187
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mServiceDescriptor:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist sendMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/location/ContextHubTransaction;
    .locals 5
    .param p1, "message"    # Landroid/hardware/contexthub/HubMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contexthub/HubMessage;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    .line 84
    .local v0, "isResponseRequired":Z
    new-instance v1, Landroid/hardware/location/ContextHubTransaction;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const/4 v2, 0x7

    goto :goto_0

    .line 88
    :cond_0
    const/4 v2, 0x6

    :goto_0
    invoke-direct {v1, v2}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 89
    .local v1, "ret":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    if-nez v0, :cond_1

    .line 92
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Landroid/hardware/contexthub/HubEndpoint;->sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 93
    new-instance v2, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    goto :goto_1

    .line 97
    :cond_1
    nop

    .line 98
    invoke-static {v1}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v2

    .line 100
    .local v2, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpointSession;->mHubEndpoint:Landroid/hardware/contexthub/HubEndpoint;

    invoke-virtual {v3, p0, p1, v2}, Landroid/hardware/contexthub/HubEndpoint;->sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 102
    .end local v2    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :goto_1
    return-object v1

    .line 80
    .end local v0    # "isResponseRequired":Z
    .end local v1    # "ret":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setClosed()V
    .locals 2

    .line 118
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 120
    return-void
.end method

.method public blacklist setOpened()V
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Session ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "]: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mInitiator:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "]->["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointSession;->mDestination:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
