.class final Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;
.super Landroid/media/IMediaRoute2ProviderService$Stub;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRoute2ProviderServiceStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRoute2ProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRoute2ProviderService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 881
    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderService$Stub;-><init>()V

    return-void
.end method

.method private blacklist checkCallerIsSystem()Z
    .locals 2

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MR2ProviderService"

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Ignoring empty routeId from system service."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return v1

    .line 911
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 912
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Ignoring unknown route from system service. routeId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return v1
.end method

.method private blacklist checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 888
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 889
    const-string v0, "MR2ProviderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Ignoring empty sessionId from system service."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return v1

    .line 892
    :cond_0
    const/4 v0, 0x0

    .line 893
    .local v0, "idMatchesSystemSession":Z
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmSessionLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 895
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v3}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmOngoingMediaStreams(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 896
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 898
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-virtual {v2, p1}, Landroid/media/MediaRoute2ProviderService;->getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 899
    const-string v2, "MR2ProviderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Ignoring unknown session from system service. sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v1

    .line 903
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public blacklist deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 1013
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1016
    :cond_0
    const-string v0, "deselectRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1017
    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 1021
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 1022
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1021
    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1023
    return-void

    .line 1018
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist releaseSession(JLjava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 1054
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmSessionLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1060
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1, p3}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$mmaybeReleaseMediaStreams(Landroid/media/MediaRoute2ProviderService;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 1061
    .local v1, "releasedSession":Landroid/media/RoutingSessionInfo;
    if-eqz v1, :cond_1

    .line 1062
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmPendingSystemSessionReleases(Landroid/media/MediaRoute2ProviderService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1063
    :cond_1
    const-string v2, "releaseSession"

    invoke-direct {p0, p3, v2}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1064
    monitor-exit v0

    return-void

    .line 1066
    .end local v1    # "releasedSession":Landroid/media/RoutingSessionInfo;
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 1069
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda8;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 1070
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1069
    invoke-static {v1, v2, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    return-void

    .line 1066
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "requestCreateSession"    # Landroid/os/Bundle;

    .line 954
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    return-void

    .line 957
    :cond_0
    const-string v0, "requestCreateSession"

    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 961
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 962
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 961
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "routeId":Ljava/lang/String;
    .end local p5    # "requestCreateSession":Landroid/os/Bundle;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "routeId":Ljava/lang/String;
    .local v6, "requestCreateSession":Landroid/os/Bundle;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 964
    return-void
.end method

.method public blacklist requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "requestId"    # J
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "routeId"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 973
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    const-string v0, "requestCreateSession"

    invoke-direct {p0, p5, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmRequestIdsLock(Landroid/media/MediaRoute2ProviderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmSystemRoutingSessionCreationRequests(Landroid/media/MediaRoute2ProviderService;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    new-instance v0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;-><init>()V

    .line 983
    invoke-virtual {v0, p4}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;

    move-result-object v0

    .line 984
    .local v0, "sessionParamsBuilder":Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    if-eqz p6, :cond_2

    .line 985
    invoke-virtual {v0, p6}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;

    .line 987
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->build()Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;

    move-result-object v1

    .line 988
    .local v1, "sessionParams":Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda7;-><init>()V

    iget-object v4, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 992
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 989
    invoke-static {v3, v4, v5, p5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 988
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    return-void

    .line 981
    .end local v0    # "sessionParamsBuilder":Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .end local v1    # "sessionParams":Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 974
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 999
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    return-void

    .line 1002
    :cond_0
    const-string v0, "selectRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 1007
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 1008
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1007
    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1009
    return-void

    .line 1004
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 921
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda9;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    return-void
.end method

.method public blacklist setRouteVolume(JLjava/lang/String;I)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 940
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    return-void

    .line 943
    :cond_0
    const-string v0, "setRouteVolume"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 947
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 948
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 947
    invoke-static {v1, v2, v3, p3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 949
    return-void
.end method

.method public blacklist setSessionVolume(JLjava/lang/String;I)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 1041
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    return-void

    .line 1044
    :cond_0
    const-string v0, "setSessionVolume"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 1048
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 1049
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1048
    invoke-static {v1, v2, v3, p3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1050
    return-void
.end method

.method public blacklist transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 1027
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    return-void

    .line 1030
    :cond_0
    const-string v0, "transferToRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1031
    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V

    .line 1035
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    .line 1036
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1035
    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    return-void

    .line 1032
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .locals 3
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 930
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->-$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    return-void
.end method
