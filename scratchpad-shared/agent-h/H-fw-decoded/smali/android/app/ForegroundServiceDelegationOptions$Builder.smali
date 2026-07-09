.class public Landroid/app/ForegroundServiceDelegationOptions$Builder;
.super Ljava/lang/Object;
.source "ForegroundServiceDelegationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceDelegationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mClientAppThread:Landroid/app/IApplicationThread;

.field mClientInstanceName:Ljava/lang/String;

.field mClientNotification:Landroid/app/Notification;

.field mClientNotificationId:I

.field mClientPackageName:Ljava/lang/String;

.field mClientPid:I

.field mClientUid:I

.field mDelegationService:I

.field mForegroundServiceTypes:I

.field mSticky:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ForegroundServiceDelegationOptions;
    .locals 11

    .line 317
    new-instance v0, Landroid/app/ForegroundServiceDelegationOptions;

    iget v1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    iget v2, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    iget-object v3, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    iget-boolean v5, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    iget-object v6, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    iget v7, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    iget v8, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    iget v9, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotificationId:I

    iget-object v10, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotification:Landroid/app/Notification;

    invoke-direct/range {v0 .. v10}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;IIILandroid/app/Notification;)V

    return-object v0
.end method

.method public setClientAppThread(Landroid/app/IApplicationThread;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientAppThread"    # Landroid/app/IApplicationThread;

    .line 277
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    .line 278
    return-object p0
.end method

.method public setClientInstanceName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientInstanceName"    # Ljava/lang/String;

    .line 285
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public setClientNotification(ILandroid/app/Notification;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientNotificationId"    # I
    .param p2, "clientNotification"    # Landroid/app/Notification;

    .line 268
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotificationId:I

    .line 269
    iput-object p2, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotification:Landroid/app/Notification;

    .line 270
    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public setClientPid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientPid"    # I

    .line 243
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    .line 244
    return-object p0
.end method

.method public setClientUid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "clientUid"    # I

    .line 251
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    .line 252
    return-object p0
.end method

.method public setDelegationService(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "delegationService"    # I

    .line 309
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    .line 310
    return-object p0
.end method

.method public setForegroundServiceTypes(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "foregroundServiceTypes"    # I

    .line 301
    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    .line 302
    return-object p0
.end method

.method public setSticky(Z)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0
    .param p1, "isSticky"    # Z

    .line 293
    iput-boolean p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    .line 294
    return-object p0
.end method
