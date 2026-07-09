.class public interface abstract Landroid/content/pm/IBackgroundInstallControlService;
.super Ljava/lang/Object;
.source "IBackgroundInstallControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IBackgroundInstallControlService$Stub;,
        Landroid/content/pm/IBackgroundInstallControlService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IBackgroundInstallControlService"


# virtual methods
.method public abstract getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
