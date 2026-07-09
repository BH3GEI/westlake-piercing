.class Landroid/os/health/SystemHealthManager$2;
.super Landroid/os/ResultReceiver;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/health/SystemHealthManager;->getPowerMonitorReadings(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$onResult:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$powerMonitorsArray:[Landroid/os/PowerMonitor;


# direct methods
.method constructor blacklist <init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;[Landroid/os/PowerMonitor;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/health/SystemHealthManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 591
    iput-object p3, p0, Landroid/os/health/SystemHealthManager$2;->val$powerMonitorsArray:[Landroid/os/PowerMonitor;

    iput-object p4, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Landroid/os/PowerMonitorReadings;)V
    .locals 0
    .param p0, "onResult"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/os/PowerMonitorReadings;

    .line 600
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .locals 0
    .param p0, "onResult"    # Landroid/os/OutcomeReceiver;
    .param p1, "error"    # Ljava/lang/RuntimeException;

    .line 613
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 594
    if-nez p1, :cond_1

    .line 595
    new-instance v0, Landroid/os/PowerMonitorReadings;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$powerMonitorsArray:[Landroid/os/PowerMonitor;

    .line 596
    const-string v2, "energy"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 597
    const-string/jumbo v3, "timestamps"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 598
    const-string/jumbo v4, "granularity"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/PowerMonitorReadings;-><init>([Landroid/os/PowerMonitor;[J[JI)V

    .line 599
    .local v0, "result":Landroid/os/PowerMonitorReadings;
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/PowerMonitorReadings;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 604
    .end local v0    # "result":Landroid/os/PowerMonitorReadings;
    :goto_0
    goto :goto_2

    .line 606
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported power monitor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .local v0, "error":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 609
    .end local v0    # "error":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v0    # "error":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3

    .line 613
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0}, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 615
    :cond_3
    iget-object v1, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 618
    .end local v0    # "error":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method
