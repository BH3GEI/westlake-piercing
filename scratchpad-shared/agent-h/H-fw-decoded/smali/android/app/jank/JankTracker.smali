.class public Landroid/app/jank/JankTracker;
.super Ljava/lang/Object;
.source "JankTracker.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEY:Ljava/lang/String; = "JANKTRACKER"

.field private static final REGISTRATION_DELAY_MS:I = 0x3e8


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mAppUid:I

.field private mDecorView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

.field private mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

.field private mListenersRegistered:Z

.field private final mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field private mStateTracker:Landroid/app/jank/StateTracker;

.field private mSurfaceControl:Landroid/view/AttachedSurfaceControl;

.field private mTrackingEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityName(Landroid/app/jank/JankTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUid(Landroid/app/jank/JankTracker;)I
    .locals 0

    iget p0, p0, Landroid/app/jank/JankTracker;->mAppUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDecorView(Landroid/app/jank/JankTracker;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnWindowAttachListener(Landroid/app/jank/JankTracker;)Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Landroid/app/jank/JankTracker;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterForJankData(Landroid/app/jank/JankTracker;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerForJankData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterJankDataListener(Landroid/app/jank/JankTracker;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerJankDataListener()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;Landroid/view/View;)V
    .locals 2
    .param p1, "choreographer"    # Landroid/view/Choreographer;
    .param p2, "decorView"    # Landroid/view/View;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppJankTracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 81
    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 83
    new-instance v0, Landroid/app/jank/JankTracker$1;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$1;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 94
    new-instance v0, Landroid/app/jank/JankTracker$2;

    invoke-direct {v0, p0}, Landroid/app/jank/JankTracker$2;-><init>(Landroid/app/jank/JankTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 119
    new-instance v0, Landroid/app/jank/StateTracker;

    invoke-direct {v0, p1}, Landroid/app/jank/StateTracker;-><init>(Landroid/view/Choreographer;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    .line 120
    new-instance v0, Landroid/app/jank/JankDataProcessor;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-direct {v0, v1}, Landroid/app/jank/JankDataProcessor;-><init>(Landroid/app/jank/StateTracker;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    .line 121
    iput-object p2, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    .line 122
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerWindowListeners()V

    .line 124
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private registerForJankData()V
    .locals 4

    .line 251
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    .line 255
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankTracker$4;

    invoke-direct {v1, p0}, Landroid/app/jank/JankTracker$4;-><init>(Landroid/app/jank/JankTracker;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void

    .line 255
    :cond_2
    :goto_0
    return-void
.end method

.method private registerJankDataListener()V
    .locals 3

    .line 288
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->jankApi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 297
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/app/jank/JankTracker;->mJankDataListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 296
    invoke-interface {v0, v1, v2}, Landroid/view/AttachedSurfaceControl;->registerOnJankDataListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 299
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    sget-object v1, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-ne v0, v1, :cond_1

    .line 304
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 308
    :cond_2
    return-void
.end method

.method private registerWindowListeners()V
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 285
    return-void
.end method

.method private unregisterForJankData()V
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->jankApi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->release()V

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    .line 248
    return-void
.end method


# virtual methods
.method public addUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public disableAppJankTracking()V
    .locals 3

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 207
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    const-string v1, "NONE"

    iget-object v2, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v1}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->unregisterForJankData()V

    .line 209
    return-void
.end method

.method public enableAppJankTracking()V
    .locals 3

    .line 196
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    const-string v1, "NONE"

    iget-object v2, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v1}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    .line 198
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerForJankData()V

    .line 199
    return-void
.end method

.method public forceListenerRegistration()V
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/jank/JankTracker;->mSurfaceControl:Landroid/view/AttachedSurfaceControl;

    .line 237
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->registerJankDataListener()V

    .line 238
    return-void
.end method

.method public getAllUiStates(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "stateDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/jank/StateTracker$StateData;>;"
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1}, Landroid/app/jank/StateTracker;->retrieveAllStates(Ljava/util/ArrayList;)V

    .line 219
    return-void
.end method

.method public getPendingJankStats()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mJankDataProcessor:Landroid/app/jank/JankDataProcessor;

    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor;->getPendingJankStats()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public mergeAppJankStats(Landroid/app/jank/AppJankStats;)V
    .locals 2
    .param p1, "appJankStats"    # Landroid/app/jank/AppJankStats;

    .line 131
    invoke-direct {p0}, Landroid/app/jank/JankTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankTracker$3;

    invoke-direct {v1, p0, p1}, Landroid/app/jank/JankTracker$3;-><init>(Landroid/app/jank/JankTracker;Landroid/app/jank/AppJankStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public removeUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "widgetState"    # Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroid/app/jank/JankTracker;->mActivityName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAppUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 144
    iput p1, p0, Landroid/app/jank/JankTracker;->mAppUid:I

    .line 145
    return-void
.end method

.method public shouldTrack()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mTrackingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/jank/JankTracker;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetCategory"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "currentState"    # Ljava/lang/String;
    .param p4, "nextState"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Landroid/app/jank/JankTracker;->shouldTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/jank/StateTracker;->updateState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method
