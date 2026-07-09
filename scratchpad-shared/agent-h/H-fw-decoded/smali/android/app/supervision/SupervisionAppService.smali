.class public Landroid/app/supervision/SupervisionAppService;
.super Landroid/app/Service;
.source "SupervisionAppService.java"


# instance fields
.field private final mBinder:Landroid/app/supervision/ISupervisionAppService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Landroid/app/supervision/SupervisionAppService$1;

    invoke-direct {v0, p0}, Landroid/app/supervision/SupervisionAppService$1;-><init>(Landroid/app/supervision/SupervisionAppService;)V

    iput-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionAppService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled()V
    .locals 0

    .line 55
    return-void
.end method

.method public onEnabled()V
    .locals 0

    .line 50
    return-void
.end method
