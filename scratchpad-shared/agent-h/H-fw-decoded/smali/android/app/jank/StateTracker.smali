.class public Landroid/app/jank/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/StateTracker$StateData;
    }
.end annotation


# static fields
.field protected static final MAX_CONCURRENT_STATE_COUNT:I = 0x19

.field private static final MAX_POOL_SIZE:I = 0x1f4

.field protected static final MAX_PREVIOUSLY_ACTIVE_STATE_COUNT:I = 0x3e8


# instance fields
.field private mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateDataObjectPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 2
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    iput-object p1, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    .line 61
    return-void
.end method


# virtual methods
.method public addPendingStateData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "stateData":Ljava/util/List;, "Ljava/util/List<Landroid/app/jank/StateTracker$StateData;>;"
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "stateKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/jank/StateTracker$StateData;

    .line 128
    .local v1, "stateData":Landroid/app/jank/StateTracker$StateData;
    if-nez v1, :cond_2

    .line 129
    new-instance v2, Landroid/app/jank/StateTracker$StateData;

    invoke-direct {v2}, Landroid/app/jank/StateTracker$StateData;-><init>()V

    move-object v1, v2

    .line 131
    :cond_2
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdStart:J

    .line 132
    iput-object v0, v1, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    .line 133
    iput-object p3, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetState:Ljava/lang/String;

    .line 134
    iput-object p1, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetCategory:Ljava/lang/String;

    .line 135
    iput-object p2, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetId:Ljava/lang/String;

    .line 136
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    .line 137
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "stateKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/jank/StateTracker$StateData;

    .line 96
    .local v1, "stateData":Landroid/app/jank/StateTracker$StateData;
    if-nez v1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    .line 102
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_1

    .line 103
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    monitor-exit v2

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public retrieveAllStates(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "allStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/jank/StateTracker$StateData;>;"
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stateProcessingComplete()V
    .locals 4

    .line 158
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 160
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/jank/StateTracker$StateData;

    .line 161
    .local v2, "stateData":Landroid/app/jank/StateTracker$StateData;
    iget-boolean v3, v2, Landroid/app/jank/StateTracker$StateData;->mProcessed:Z

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "stateData":Landroid/app/jank/StateTracker$StateData;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "currentState"    # Ljava/lang/String;
    .param p4, "nextState"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
