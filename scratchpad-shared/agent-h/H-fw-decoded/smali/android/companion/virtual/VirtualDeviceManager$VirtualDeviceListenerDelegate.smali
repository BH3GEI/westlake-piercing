.class Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
.super Landroid/companion/virtual/IVirtualDeviceListener$Stub;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualDeviceListenerDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method public static synthetic $r8$lambda$kdJUfP0pAUbkOUnCwtBb9HjFuXs(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->lambda$onVirtualDeviceCreated$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2Us45TFcGJxKVUnZv1-C1muzOI(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->lambda$onVirtualDeviceClosed$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    return-object p0
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 1354
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;-><init>()V

    .line 1355
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1356
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 1357
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method private synthetic lambda$onVirtualDeviceClosed$1(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 1373
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;->onVirtualDeviceClosed(I)V

    return-void
.end method

.method private synthetic lambda$onVirtualDeviceCreated$0(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 1363
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;->onVirtualDeviceCreated(I)V

    return-void
.end method


# virtual methods
.method public onVirtualDeviceClosed(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 1371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1373
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1376
    nop

    .line 1377
    return-void

    .line 1375
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1376
    throw v2
.end method

.method public onVirtualDeviceCreated(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 1361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1363
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    nop

    .line 1367
    return-void

    .line 1365
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    throw v2
.end method
