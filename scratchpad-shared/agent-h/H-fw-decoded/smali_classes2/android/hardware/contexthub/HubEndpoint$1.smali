.class Landroid/hardware/contexthub/HubEndpoint$1;
.super Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/contexthub/HubEndpoint;


# direct methods
.method public static synthetic blacklist $r8$lambda$WDKl2F8IpddfwlxwBCm8X8FXrt0(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wgr7HfV80R43MKHm3AygViFSD-M(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEFeKd02U6OLgKkDFA207DPz-qo(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fcciXbBnQxMabvDoOIyXX7spePM(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIE-glYnkToYq9p5Ej6kxJdMhQ4(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/contexthub/HubEndpoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-eqz v0, :cond_0

    .line 270
    :try_start_1
    const-string v2, "HubEndpoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionOpenRequestResult: session already exists, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 288
    .end local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    :catchall_0
    move-exception v0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    goto :goto_0

    .line 277
    .restart local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    :cond_0
    :try_start_2
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v3}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "sessionId":I
    .end local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p3    # "serviceDescriptor":Ljava/lang/String;
    .local v3, "sessionId":I
    .local v6, "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .local v7, "serviceDescriptor":Ljava/lang/String;
    :try_start_3
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 285
    .end local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    .local v2, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    new-instance p1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, v3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 287
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 292
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    move-object p1, v2

    .line 294
    .local p1, "finalActiveSession":Landroid/hardware/contexthub/HubEndpointSession;
    iget-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    .end local p1    # "finalActiveSession":Landroid/hardware/contexthub/HubEndpointSession;
    :cond_1
    return-void

    .line 288
    .end local v2    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    .end local v3    # "sessionId":I
    .end local v6    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .local p1, "sessionId":I
    .restart local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p3    # "serviceDescriptor":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "sessionId":I
    .end local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p3    # "serviceDescriptor":Ljava/lang/String;
    .restart local v3    # "sessionId":I
    .restart local v6    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method private blacklist getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 215
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubEndpointSession;

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V
    .locals 3
    .param p1, "consumer"    # Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_1

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "HubEndpoint"

    const-string v2, "IllegalStateException while calling callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 322
    :goto_1
    return-void
.end method

.method private blacklist invokeCallbackFinished()V
    .locals 1

    .line 308
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 309
    return-void
.end method

.method static synthetic blacklist lambda$acceptSession$5(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSessionRequestComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 1
    .param p1, "finalActiveSession"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 295
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeCallbackFinished$8(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->onCallbackFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .locals 1
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "sessionId"    # I

    .line 208
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointMessageCallback;->onMessageReceived(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;)V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 210
    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V
    .locals 2
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "reason"    # I
    .param p3, "sessionId"    # I

    .line 180
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionClosed(Landroid/hardware/contexthub/HubEndpointSession;I)V

    .line 183
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 184
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 1
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 161
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    .line 162
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 163
    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    .line 139
    invoke-interface {v0, p2, p3}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpenRequest(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;

    move-result-object v0

    .line 135
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$rejectSession$7(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 1
    .param p0, "sessionId"    # I
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessageDeliveryStatus$4(ILandroid/hardware/contexthub/HubMessage;BLandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 1
    .param p0, "sessionId"    # I
    .param p1, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p2, "errorCode"    # B
    .param p3, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    nop

    .line 227
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v0

    .line 225
    invoke-interface {p3, p0, v0, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessageDeliveryStatus(IIB)V

    return-void
.end method

.method private blacklist processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/hardware/contexthub/HubEndpointSessionResult;

    .line 238
    if-eqz p4, :cond_1

    .line 243
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was rejected, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "HubEndpoint"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    .line 257
    :goto_0
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 258
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HubEndpointSessionResult shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist rejectSession(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 300
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 305
    return-void
.end method

.method private blacklist sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "errorCode"    # B

    .line 222
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;-><init>(ILandroid/hardware/contexthub/HubMessage;B)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 230
    :cond_0
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 231
    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 198
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: session not active, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 203
    :cond_2
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 212
    :goto_1
    return-void
.end method

.method public blacklist onSessionClosed(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 172
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionClosed: session not active, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 192
    :goto_0
    return-void
.end method

.method public blacklist onSessionOpenComplete(I)V
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 149
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionOpenComplete: no pending session open request? id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 158
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 167
    :goto_1
    return-void
.end method

.method public blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "sessionExists":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionOpenComplete: session already exists, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 142
    :cond_2
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 144
    :goto_1
    return-void
.end method
