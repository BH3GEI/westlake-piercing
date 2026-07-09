.class Landroid/app/NotificationManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/app/NotificationManager$NotificationChannelQuery;",
        "Ljava/util/List<",
        "Landroid/app/NotificationChannel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/NotificationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1478
    iput-object p1, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1478
    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;
    .locals 4
    .param p1, "query"    # Landroid/app/NotificationManager$NotificationChannelQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1483
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetcallingPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgettargetPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetuserId(Landroid/app/NotificationManager$NotificationChannelQuery;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1484
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    return-object v1

    .line 1485
    :catch_0
    move-exception v1

    .line 1486
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z
    .locals 2
    .param p1, "query"    # Landroid/app/NotificationManager$NotificationChannelQuery;

    .line 1494
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shouldBypassCache called when nm_binder_perf_cache_channels off"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v0, 0x1

    return v0

    .line 1499
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldBypassCache(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1478
    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z

    move-result p1

    return p1
.end method
