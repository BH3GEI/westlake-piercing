.class public Landroid/app/appfunctions/IExecuteAppFunctionCallback$Default;
.super Ljava/lang/Object;
.source "IExecuteAppFunctionCallback.java"

# interfaces
.implements Landroid/app/appfunctions/IExecuteAppFunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IExecuteAppFunctionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 0
    .param p1, "exception"    # Landroid/app/appfunctions/AppFunctionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 0
    .param p1, "result"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
