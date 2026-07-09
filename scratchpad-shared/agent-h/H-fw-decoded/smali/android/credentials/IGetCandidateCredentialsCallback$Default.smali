.class public Landroid/credentials/IGetCandidateCredentialsCallback$Default;
.super Ljava/lang/Object;
.source "IGetCandidateCredentialsCallback.java"

# interfaces
.implements Landroid/credentials/IGetCandidateCredentialsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/IGetCandidateCredentialsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/credentials/GetCandidateCredentialsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
