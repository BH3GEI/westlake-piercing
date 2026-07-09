.class public final Landroid/service/dreams/DreamService$DreamActivityCallbacks;
.super Landroid/os/Binder;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamActivityCallbacks"
.end annotation


# instance fields
.field private final blacklist mActivityDreamToken:Landroid/os/IBinder;

.field private blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1927
    .local p2, "service":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/service/dreams/DreamService;>;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1928
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    .line 1929
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    .line 1930
    return-void
.end method


# virtual methods
.method public blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/service/dreams/DreamActivity;

    .line 1934
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1936
    .local v0, "service":Landroid/service/dreams/DreamService;
    if-nez v0, :cond_0

    .line 1937
    return-void

    .line 1940
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    invoke-static {v0, p1, v1}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityCreated(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V

    .line 1941
    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .locals 2

    .line 1945
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1947
    .local v0, "service":Landroid/service/dreams/DreamService;
    if-nez v0, :cond_0

    .line 1948
    return-void

    .line 1951
    :cond_0
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityDestroyed(Landroid/service/dreams/DreamService;)V

    .line 1952
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    .line 1953
    return-void
.end method
