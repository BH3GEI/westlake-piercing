.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static final greylist-max-o sRemoteViewFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 299
    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 301
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    const/4 v2, 0x0

    .line 302
    .local v2, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v3, 0x0

    .line 303
    .local v3, "isCreated":Z
    sget-object v4, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v4

    .line 305
    .end local v2    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .local v4, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    sget-object v2, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-interface {v4}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    .line 307
    const/4 v2, 0x0

    .end local v3    # "isCreated":Z
    .local v2, "isCreated":Z
    goto :goto_0

    .line 309
    .end local v4    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .local v2, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .restart local v3    # "isCreated":Z
    :cond_0
    sget-object v4, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 310
    .end local v2    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .restart local v4    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v2, 0x1

    .line 312
    .end local v3    # "isCreated":Z
    .local v2, "isCreated":Z
    :goto_0
    new-instance v3, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    invoke-direct {v3, v4, v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V

    monitor-exit v0

    return-object v3

    .line 313
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "isCreated":Z
    .end local v4    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract whitelist onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
