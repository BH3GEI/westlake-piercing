.class public interface abstract Landroid/app/servertransaction/BaseClientRequest;
.super Ljava/lang/Object;
.source "BaseClientRequest.java"


# virtual methods
.method public abstract execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 56
    return-void
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 0
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 37
    return-void
.end method
