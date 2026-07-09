.class public interface abstract Landroid/app/appfunctions/IAppFunctionEnabledCallback;
.super Ljava/lang/Object;
.source "IAppFunctionEnabledCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;,
        Landroid/app/appfunctions/IAppFunctionEnabledCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.appfunctions.IAppFunctionEnabledCallback"


# virtual methods
.method public abstract onError(Landroid/os/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
