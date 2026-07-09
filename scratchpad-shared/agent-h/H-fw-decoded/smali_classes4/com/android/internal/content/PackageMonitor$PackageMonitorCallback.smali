.class final Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageMonitorCallback"
.end annotation


# instance fields
.field private final blacklist mMonitorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/content/PackageMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/internal/content/PackageMonitor;

    .line 601
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 602
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    .line 603
    return-void
.end method

.method private blacklist onHandlePackageMonitorCallback(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 611
    const-string v0, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 614
    const-string v1, "PackageMonitor"

    const-string v2, "No intent is set for PackageMonitorCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/PackageMonitor;

    .line 618
    .local v1, "monitor":Lcom/android/internal/content/PackageMonitor;
    if-eqz v1, :cond_1

    .line 619
    invoke-static {v1, v0}, Lcom/android/internal/content/PackageMonitor;->-$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    .line 621
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->onHandlePackageMonitorCallback(Landroid/os/Bundle;)V

    .line 608
    return-void
.end method
