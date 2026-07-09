.class Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;
.super Landroid/hardware/input/IKeyGestureHandler$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalKeyGestureHandler"
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

    .line 1178
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IKeyGestureHandler$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "ev"    # Landroid/hardware/input/AidlKeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 1181
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1182
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1183
    monitor-exit v0

    return v2

    .line 1185
    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1186
    .local v1, "numHandlers":I
    new-instance v3, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v3, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1187
    .local v3, "event":Landroid/hardware/input/KeyGestureEvent;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1188
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v5}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1189
    .local v5, "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    invoke-interface {v5, v3, p2}, Landroid/hardware/input/InputManager$KeyGestureEventHandler;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1190
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1187
    .end local v5    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1193
    .end local v1    # "numHandlers":I
    .end local v3    # "event":Landroid/hardware/input/KeyGestureEvent;
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 1194
    return v2

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isKeyGestureSupported(I)Z
    .locals 6
    .param p1, "gestureType"    # I

    .line 1199
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1200
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1201
    monitor-exit v0

    return v2

    .line 1203
    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1204
    .local v1, "numHandlers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1205
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v4}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGestureEventHandlers(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1206
    .local v4, "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    invoke-interface {v4, p1}, Landroid/hardware/input/InputManager$KeyGestureEventHandler;->isKeyGestureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1207
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1204
    .end local v4    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "numHandlers":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 1211
    return v2

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
