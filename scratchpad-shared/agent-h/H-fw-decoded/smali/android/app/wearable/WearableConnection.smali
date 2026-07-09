.class public interface abstract Landroid/app/wearable/WearableConnection;
.super Ljava/lang/Object;
.source "WearableConnection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract getConnection()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getMetadata()Landroid/os/PersistableBundle;
.end method

.method public abstract onConnectionAccepted()V
.end method

.method public abstract onError(I)V
.end method
