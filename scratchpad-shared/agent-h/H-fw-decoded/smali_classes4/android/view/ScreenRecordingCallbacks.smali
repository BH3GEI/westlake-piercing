.class public final Landroid/view/ScreenRecordingCallbacks;
.super Ljava/lang/Object;
.source "ScreenRecordingCallbacks.java"


# static fields
.field private static blacklist sInstance:Landroid/view/ScreenRecordingCallbacks;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

.field private final blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScreenRecordingCallbacks;->notifyCallbacks(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    .line 56
    return-void
.end method

.method static blacklist getInstance()Landroid/view/ScreenRecordingCallbacks;
    .locals 2

    .line 63
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/view/ScreenRecordingCallbacks;

    invoke-direct {v1}, Landroid/view/ScreenRecordingCallbacks;-><init>()V

    sput-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    .line 67
    :cond_0
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 1

    .line 59
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$notifyCallbacks$0(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "state"    # I

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyCallbacks$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "state"    # I

    .line 134
    new-instance v0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist notifyCallbacks(I)V
    .locals 6
    .param p1, "state"    # I

    .line 124
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iput p1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    .line 126
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 132
    iget-object v3, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    .line 133
    .local v3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 134
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v3, p1}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    nop

    .end local v3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 139
    .local v2, "token":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "i":I
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw v0

    .line 136
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method blacklist addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 76
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Landroid/view/ScreenRecordingCallbacks$1;

    invoke-direct {v1, p0}, Landroid/view/ScreenRecordingCallbacks$1;-><init>(Landroid/view/ScreenRecordingCallbacks;)V

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    .line 93
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v1

    .line 94
    .local v1, "visibleInScreenRecording":Z
    nop

    .line 95
    if-eqz v1, :cond_0

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v1    # "visibleInScreenRecording":Z
    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget v1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    monitor-exit v0

    return v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method blacklist removeCallback(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 113
    :try_start_1
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
