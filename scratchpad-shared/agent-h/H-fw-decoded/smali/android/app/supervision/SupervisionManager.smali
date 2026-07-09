.class public Landroid/app/supervision/SupervisionManager;
.super Ljava/lang/Object;
.source "SupervisionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACTION_DISABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.DISABLE_SUPERVISION"

.field public static final ACTION_ENABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.ENABLE_SUPERVISION"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/supervision/ISupervisionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/supervision/ISupervisionManager;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    .line 84
    return-void
.end method


# virtual methods
.method public createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .locals 3

    .line 103
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_1

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "result":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 107
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    return-object v0

    .line 111
    .end local v0    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveSupervisionAppPackage()Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/supervision/ISupervisionManager;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupervisionEnabled()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isSupervisionEnabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 139
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1}, Landroid/app/supervision/ISupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSupervisionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 157
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/supervision/SupervisionManager;->setSupervisionEnabledForUser(IZ)V

    .line 158
    return-void
.end method

.method public setSupervisionEnabledForUser(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 167
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1, p2}, Landroid/app/supervision/ISupervisionManager;->setSupervisionEnabledForUser(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
