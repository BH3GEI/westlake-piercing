.class Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation


# instance fields
.field private final mDestroyAfterTimeout:Ljava/lang/Runnable;

.field private mIBinder:Landroid/os/IBinder;

.field private mOnDestroyTimeout:Z

.field private final mTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic $r8$lambda$Vx3DOS7p-JdYlu3LYsONTQNRSZ0(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->lambda$handleNext$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W41tqMRtm2E8q_i_MnFBu3FZQII(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onDestroyTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$pTnOOPBKfqH_YXKm5tSZeRZf_NU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    return-void
.end method

.method constructor <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)V
    .locals 4
    .param p2, "filter"    # Landroid/content/Intent$FilterComparison;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1686
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1679
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    .line 1680
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    .line 1683
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1688
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1689
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    .line 1690
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 1688
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    goto :goto_0

    .line 1692
    :catch_0
    move-exception p1

    .line 1693
    .local p1, "e":Ljava/lang/Exception;
    const-string v0, "AppWidgetManager"

    const-string v1, "Error connecting to service in connection cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleNext()V
    .locals 5

    .line 1721
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1722
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1723
    .local v0, "next":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/function/Consumer<Landroid/os/IBinder;>;Ljava/util/concurrent/Executor;>;"
    if-eqz v0, :cond_0

    .line 1724
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1725
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1731
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1732
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmTimeOut(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1734
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleNext$0(Landroid/util/Pair;)V
    .locals 2
    .param p1, "next"    # Landroid/util/Pair;

    .line 1726
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1727
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1728
    return-void
.end method

.method private onDestroyTimeout()V
    .locals 3

    .line 1740
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    .line 1742
    return-void

    .line 1745
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error unbinding the cached connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1749
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmActiveConnections(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1750
    return-void
.end method


# virtual methods
.method add(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1713
    .local p1, "task":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1714
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    if-eqz v0, :cond_0

    .line 1716
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    .line 1718
    :cond_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1706
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1707
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 1699
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    .line 1700
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1701
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1710
    return-void
.end method
