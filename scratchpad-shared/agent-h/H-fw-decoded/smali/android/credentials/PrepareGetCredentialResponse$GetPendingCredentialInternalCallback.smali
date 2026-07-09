.class public interface abstract Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "GetPendingCredentialInternalCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPendingIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract onResponse(Landroid/credentials/GetCredentialResponse;)V
.end method
