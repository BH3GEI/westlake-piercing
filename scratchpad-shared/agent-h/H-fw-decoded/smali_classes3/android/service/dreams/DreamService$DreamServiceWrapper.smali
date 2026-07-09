.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ECVNm96ywwmY895g12OaV0VHQV0(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K8ZJKdMDnolGoGrQgEsLeavi5Zg(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1854
    .local p1, "service":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/service/dreams/DreamService;>;"
    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    .line 1855
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    .line 1856
    return-void
.end method

.method static synthetic blacklist lambda$attach$1(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p0, "dreamToken"    # Landroid/os/IBinder;
    .param p1, "canDoze"    # Z
    .param p2, "isPreviewMode"    # Z
    .param p3, "started"    # Landroid/os/IRemoteCallback;
    .param p4, "dreamService"    # Landroid/service/dreams/DreamService;

    .line 1871
    invoke-static {p4, p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$post$0(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "service"    # Landroid/service/dreams/DreamService;

    .line 1865
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wakeUp$2(Landroid/service/dreams/DreamService;)V
    .locals 1
    .param p0, "dreamService"    # Landroid/service/dreams/DreamService;

    .line 1881
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method

.method private blacklist post(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1859
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/DreamService;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1861
    .local v0, "service":Landroid/service/dreams/DreamService;
    if-nez v0, :cond_0

    .line 1862
    return-void

    .line 1865
    :cond_0
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1866
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "isPreviewMode"    # Z
    .param p4, "started"    # Landroid/os/IRemoteCallback;

    .line 1871
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V

    .line 1872
    return-void
.end method

.method public blacklist comeToFront()V
    .locals 1

    .line 1886
    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    return-void

    .line 1889
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V

    .line 1890
    return-void
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 1876
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V

    .line 1877
    return-void
.end method

.method public greylist-max-o wakeUp()V
    .locals 1

    .line 1881
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V

    .line 1882
    return-void
.end method
