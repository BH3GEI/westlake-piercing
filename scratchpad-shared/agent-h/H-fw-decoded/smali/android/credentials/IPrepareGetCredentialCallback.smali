.class public interface abstract Landroid/credentials/IPrepareGetCredentialCallback;
.super Ljava/lang/Object;
.source "IPrepareGetCredentialCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/IPrepareGetCredentialCallback$Stub;,
        Landroid/credentials/IPrepareGetCredentialCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.credentials.IPrepareGetCredentialCallback"


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
