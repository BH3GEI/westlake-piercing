.class Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;
.super Landroid/hardware/input/IKeyGestureEventListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalKeyGestureEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1107
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IKeyGestureEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1110
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1111
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1112
    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1113
    .local v1, "numListeners":I
    new-instance v2, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v2, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1114
    .local v2, "event":Landroid/hardware/input/KeyGestureEvent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1115
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v4}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    invoke-virtual {v4, v2}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->onKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V

    .line 1114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1117
    .end local v1    # "numListeners":I
    .end local v2    # "event":Landroid/hardware/input/KeyGestureEvent;
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    .line 1118
    return-void

    .line 1117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
