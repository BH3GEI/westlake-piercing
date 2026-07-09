.class Landroid/app/ApplicationPackageManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 0
    .param p1, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p2, "cacheName"    # Ljava/lang/String;

    .line 802
    .local p3, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "query"    # Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    .line 807
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetname(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetversion(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)I

    move-result v2

    .line 808
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 807
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 802
    check-cast p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$1;->recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
