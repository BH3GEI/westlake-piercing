.class public interface abstract Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;
.super Ljava/lang/Object;
.source "IDependencyInstallerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;,
        Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.dependencyinstaller.IDependencyInstallerCallback"


# virtual methods
.method public abstract onAllDependenciesResolved([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailureToResolveAllDependencies()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
