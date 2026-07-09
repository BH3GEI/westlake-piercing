.class Landroid/app/SystemServiceRegistry$141;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/supervision/SupervisionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1737
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/supervision/SupervisionManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1741
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->supervisionApi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    const-string/jumbo v0, "supervision"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1747
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/supervision/ISupervisionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionManager;

    move-result-object v1

    .line 1748
    .local v1, "service":Landroid/app/supervision/ISupervisionManager;
    new-instance v2, Landroid/app/supervision/SupervisionManager;

    invoke-direct {v2, p1, v1}, Landroid/app/supervision/SupervisionManager;-><init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V

    return-object v2

    .line 1742
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/app/supervision/ISupervisionManager;
    :cond_0
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v1, "SupervisionManager is not supported"

    invoke-direct {v0, v1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1737
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$141;->createService(Landroid/app/ContextImpl;)Landroid/app/supervision/SupervisionManager;

    move-result-object p1

    return-object p1
.end method
