.class public abstract Landroid/database/ExecutorContentObserver;
.super Landroid/database/ContentObserver;
.source "ExecutorContentObserver.java"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/ContentObserver;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 37
    return-void
.end method
