.class public Landroid/app/job/IJobCallback$Default;
.super Ljava/lang/Object;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .param p3, "transferredBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .param p3, "transferredBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public acknowledgeStartMessage(IZ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public completeWork(II)Z
    .locals 1
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWork(I)Landroid/app/job/JobWorkItem;
    .locals 1
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAbandonedJob(I)V
    .locals 0
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public jobFinished(IZ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public setNotification(IILandroid/app/Notification;I)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "notificationId"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "jobEndNotificationPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "downloadBytes"    # J
    .param p5, "uploadBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "transferredDownloadBytes"    # J
    .param p5, "transferredUploadBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method
