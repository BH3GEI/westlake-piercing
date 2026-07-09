.class final Landroid/media/tv/ad/TvAdService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final blacklist DO_CREATE_SESSION:I = 0x1

.field private static final blacklist DO_NOTIFY_SESSION_CREATED:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 937
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;Landroid/media/tv/ad/TvAdService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdService$ServiceHandler;-><init>(Landroid/media/tv/ad/TvAdService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 943
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const-string v2, "TvAdService"

    packed-switch v0, :pswitch_data_0

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 973
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 974
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ad/TvAdService$Session;

    .line 975
    .local v3, "sessionImpl":Landroid/media/tv/ad/TvAdService$Session;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ad/ITvAdSession;

    .line 976
    .local v4, "stub":Landroid/media/tv/ad/ITvAdSession;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 978
    .local v5, "cb":Landroid/media/tv/ad/ITvAdSessionCallback;
    :try_start_0
    invoke-interface {v5, v4}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    goto :goto_0

    .line 979
    :catch_0
    move-exception v6

    .line 980
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v3, :cond_0

    .line 983
    invoke-static {v3, v5}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$minitialize(Landroid/media/tv/ad/TvAdService$Session;Landroid/media/tv/ad/ITvAdSessionCallback;)V

    .line 985
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 986
    return-void

    .line 945
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "sessionImpl":Landroid/media/tv/ad/TvAdService$Session;
    .end local v4    # "stub":Landroid/media/tv/ad/ITvAdSession;
    .end local v5    # "cb":Landroid/media/tv/ad/ITvAdSessionCallback;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 946
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    .line 947
    .local v3, "channel":Landroid/view/InputChannel;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 948
    .local v4, "cb":Landroid/media/tv/ad/ITvAdSessionCallback;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 949
    .local v5, "serviceId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 950
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 951
    iget-object v7, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-virtual {v7, v5, v6}, Landroid/media/tv/ad/TvAdService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/ad/TvAdService$Session;

    move-result-object v7

    .line 952
    .local v7, "sessionImpl":Landroid/media/tv/ad/TvAdService$Session;
    if-nez v7, :cond_1

    .line 955
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 958
    goto :goto_1

    .line 956
    :catch_1
    move-exception v8

    .line 957
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 961
    :cond_1
    new-instance v1, Landroid/media/tv/ad/ITvAdSessionWrapper;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {v1, v2, v7, v3}, Landroid/media/tv/ad/ITvAdSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/ad/TvAdService$Session;Landroid/view/InputChannel;)V

    .line 964
    .local v1, "stub":Landroid/media/tv/ad/ITvAdSession;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 965
    .local v2, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 966
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 967
    iput-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 968
    iget-object v8, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {v8}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/ad/TvAdService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 969
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 970
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
