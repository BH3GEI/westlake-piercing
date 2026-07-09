.class public Landroid/app/servertransaction/ClientTransactionListenerController;
.super Ljava/lang/Object;
.source "ClientTransactionListenerController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientTransactionListenerController"

.field private static sController:Landroid/app/servertransaction/ClientTransactionListenerController;


# instance fields
.field private final mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContextToPreChangedConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field private mIsClientTransactionExecuting:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 1
    .param p1, "displayManager"    # Landroid/hardware/display/DisplayManagerGlobal;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal;

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 94
    return-void
.end method

.method public static createInstanceForTesting(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/app/servertransaction/ClientTransactionListenerController;
    .locals 1
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManagerGlobal;

    .line 89
    new-instance v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-object v0
.end method

.method public static getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;
    .locals 3

    .line 75
    const-class v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Landroid/app/servertransaction/ClientTransactionListenerController;

    .line 78
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    sput-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    .line 80
    :cond_0
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-exit v0

    return-object v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preChangedConfig"    # Landroid/content/res/Configuration;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 232
    .local v0, "postChangedConfig":Landroid/content/res/Configuration;
    invoke-static {v0, p2}, Landroid/app/WindowConfiguration;->areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public onActivityWindowInfoChanged(Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 126
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "activityWindowInfoChangedListeners":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 133
    .local v3, "activityWindowInfoChangedListener":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/function/BiConsumer;

    new-instance v5, Landroid/window/ActivityWindowInfo;

    invoke-direct {v5, p2}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    .line 134
    invoke-interface {v4, p1, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .end local v3    # "activityWindowInfoChangedListener":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void

    .line 131
    .end local v1    # "activityWindowInfoChangedListeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onClientTransactionFinished()V
    .locals 7

    .line 148
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    .line 153
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    monitor-exit v0

    return-void

    .line 158
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 159
    .local v1, "configUpdatedDisplayIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    .local v2, "contextCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 162
    :try_start_1
    iget-object v4, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 163
    .local v4, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 164
    .local v5, "preChangedConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v4, v5}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "preChangedConfig":Landroid/content/res/Configuration;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :catchall_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 170
    nop

    .end local p0    # "this":Landroid/app/servertransaction/ClientTransactionListenerController;
    throw v3

    .line 169
    .restart local p0    # "this":Landroid/app/servertransaction/ClientTransactionListenerController;
    :cond_2
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 170
    nop

    .line 171
    .end local v2    # "contextCount":I
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    :try_start_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 176
    .local v0, "displayCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 177
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 178
    .local v3, "displayId":I
    invoke-virtual {p0, v3}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    .end local v3    # "displayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "displayCount":I
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v2, "ClientTransactionListenerController"

    const-string v3, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    return-void

    .line 171
    .end local v1    # "configUpdatedDisplayIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onClientTransactionStarted()V
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onContextConfigurationPostChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    const/4 v0, -0x1

    .line 208
    .local v0, "changedDisplayId":I
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-boolean v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    if-eqz v2, :cond_1

    .line 212
    monitor-exit v1

    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 215
    .local v2, "preChangedConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    move v0, v3

    .line 218
    .end local v2    # "preChangedConfig":Landroid/content/res/Configuration;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 222
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v2, "ClientTransactionListenerController"

    const-string v3, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_3
    :goto_0
    return-void

    .line 218
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onContextConfigurationPreChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/content/res/Configuration;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 196
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayChangeFromWindowManager(I)V

    .line 244
    return-void
.end method

.method public registerActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;>;"
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;>;"
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
