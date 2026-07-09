.class Landroid/hardware/location/ContextHubManager$3;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/location/ContextHubClientCallback;

.field final synthetic blacklist val$client:Landroid/hardware/location/ContextHubClient;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1053
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onClientAuthorizationChanged$7(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "authorization"    # I

    .line 1127
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubClientCallback;->onClientAuthorizationChanged(Landroid/hardware/location/ContextHubClient;JI)V

    .line 1128
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1129
    return-void
.end method

.method static synthetic blacklist lambda$onHubReset$1(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;

    .line 1072
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubClientCallback;->onHubReset(Landroid/hardware/location/ContextHubClient;)V

    .line 1073
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1074
    return-void
.end method

.method static synthetic blacklist lambda$onMessageFromNanoApp$0(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .locals 2
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 1058
    invoke-virtual {p0, p1, p2}, Landroid/hardware/location/ContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    .line 1059
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    nop

    .line 1061
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v0

    .line 1060
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/location/ContextHubClient;->reliableMessageCallbackFinished(IB)V

    goto :goto_0

    .line 1063
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1065
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppAborted$2(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 1081
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V

    .line 1082
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1083
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppDisabled$6(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1117
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V

    .line 1118
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1119
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppEnabled$5(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1108
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V

    .line 1109
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1110
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppLoaded$3(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1090
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V

    .line 1091
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1092
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppUnloaded$4(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1099
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V

    .line 1100
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1101
    return-void
.end method


# virtual methods
.method public blacklist onClientAuthorizationChanged(JI)V
    .locals 7
    .param p1, "nanoAppId"    # J
    .param p3, "authorization"    # I

    .line 1125
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v1, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;

    move-wide v4, p1

    move v6, p3

    .end local p1    # "nanoAppId":J
    .end local p3    # "authorization":I
    .local v4, "nanoAppId":J
    .local v6, "authorization":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1130
    return-void
.end method

.method public blacklist onHubReset()V
    .locals 4

    .line 1070
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method public blacklist onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .locals 4
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 1056
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v2, p1}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method

.method public blacklist onNanoAppAborted(JI)V
    .locals 7
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 1079
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v1, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda1;

    move-wide v4, p1

    move v6, p3

    .end local p1    # "nanoAppId":J
    .end local p3    # "abortCode":I
    .local v4, "nanoAppId":J
    .local v6, "abortCode":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public blacklist onNanoAppDisabled(J)V
    .locals 4
    .param p1, "nanoAppId"    # J

    .line 1115
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1120
    return-void
.end method

.method public blacklist onNanoAppEnabled(J)V
    .locals 4
    .param p1, "nanoAppId"    # J

    .line 1106
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1111
    return-void
.end method

.method public blacklist onNanoAppLoaded(J)V
    .locals 4
    .param p1, "nanoAppId"    # J

    .line 1088
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method public blacklist onNanoAppUnloaded(J)V
    .locals 4
    .param p1, "nanoAppId"    # J

    .line 1097
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1102
    return-void
.end method
