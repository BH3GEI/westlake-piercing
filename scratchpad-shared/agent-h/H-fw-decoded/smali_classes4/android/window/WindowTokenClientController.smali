.class public Landroid/window/WindowTokenClientController;
.super Ljava/lang/Object;
.source "WindowTokenClientController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sController:Landroid/window/WindowTokenClientController;


# instance fields
.field private final blacklist mAppThread:Landroid/app/IApplicationThread;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mWindowTokenClients:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/WindowTokenClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const-class v0, Landroid/window/WindowTokenClientController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    .line 87
    return-void
.end method

.method public static blacklist createInstanceForTesting()Landroid/window/WindowTokenClientController;
    .locals 1

    .line 84
    new-instance v0, Landroid/window/WindowTokenClientController;

    invoke-direct {v0}, Landroid/window/WindowTokenClientController;-><init>()V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/window/WindowTokenClientController;
    .locals 2

    .line 64
    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Landroid/window/WindowTokenClientController;

    invoke-direct {v1}, Landroid/window/WindowTokenClientController;-><init>()V

    sput-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    .line 68
    :cond_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;
    .locals 6
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 279
    instance-of v0, p1, Landroid/window/WindowTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 283
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v3, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    sget-object v3, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find attached WindowTokenClient for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v2

    return-object v1

    .line 288
    :cond_0
    monitor-exit v2

    .line 289
    return-object v0

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    .end local v0    # "windowTokenClient":Landroid/window/WindowTokenClient;
    :cond_1
    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowTokenClient failed for non-window token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v1
.end method

.method private blacklist onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V
    .locals 3
    .param p1, "client"    # Landroid/window/WindowTokenClient;
    .param p2, "info"    # Landroid/window/WindowContextInfo;
    .param p3, "shouldReportConfigChange"    # Z

    .line 226
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    .line 227
    if-eqz p3, :cond_0

    .line 231
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 238
    :goto_0
    return-void
.end method

.method public static blacklist overrideForTesting(Landroid/window/WindowTokenClientController;)V
    .locals 2
    .param p0, "controller"    # Landroid/window/WindowTokenClientController;

    .line 75
    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    .line 76
    :try_start_0
    sput-object p0, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist recordWindowContextToken(Landroid/window/WindowTokenClient;)V
    .locals 2
    .param p1, "client"    # Landroid/window/WindowTokenClient;

    .line 241
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist attachToDisplayArea(Landroid/window/WindowTokenClient;IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "client"    # Landroid/window/WindowTokenClient;
    .param p2, "type"    # I
    .param p3, "displayId"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "client":Landroid/window/WindowTokenClient;
    .end local p2    # "type":I
    .end local p3    # "displayId":I
    .end local p4    # "options":Landroid/os/Bundle;
    .local v2, "client":Landroid/window/WindowTokenClient;
    .local v3, "type":I
    .local v4, "displayId":I
    .local v5, "options":Landroid/os/Bundle;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .local p1, "info":Landroid/window/WindowContextInfo;
    nop

    .line 121
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 122
    return p2

    .line 124
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 125
    const/4 p2, 0x1

    return p2

    .line 118
    .end local p1    # "info":Landroid/window/WindowContextInfo;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "client":Landroid/window/WindowTokenClient;
    .end local v3    # "type":I
    .end local v4    # "displayId":I
    .end local v5    # "options":Landroid/os/Bundle;
    .local p1, "client":Landroid/window/WindowTokenClient;
    .restart local p2    # "type":I
    .restart local p3    # "displayId":I
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object p1, v0

    .line 119
    .end local p2    # "type":I
    .end local p3    # "displayId":I
    .end local p4    # "options":Landroid/os/Bundle;
    .restart local v2    # "client":Landroid/window/WindowTokenClient;
    .restart local v3    # "type":I
    .restart local v4    # "displayId":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z
    .locals 5
    .param p1, "client"    # Landroid/window/WindowTokenClient;
    .param p2, "displayId"    # I

    .line 136
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 137
    .local v0, "wms":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->trackSystemUiContextBeforeWms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    .line 147
    :cond_0
    return v1

    .line 151
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .local v2, "info":Landroid/window/WindowContextInfo;
    nop

    .line 158
    if-nez v2, :cond_2

    .line 159
    return v1

    .line 161
    :cond_2
    invoke-direct {p0, p1, v2, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 162
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v2    # "info":Landroid/window/WindowContextInfo;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    const-string v4, "Failed attachToDisplayContent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return v1

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist attachToWindowToken(Landroid/window/WindowTokenClient;Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "client"    # Landroid/window/WindowTokenClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v0, "info":Landroid/window/WindowContextInfo;
    nop

    .line 181
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    return v1

    .line 185
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 186
    return v1

    .line 178
    .end local v0    # "info":Landroid/window/WindowContextInfo;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detachIfNeeded(Landroid/window/WindowTokenClient;)V
    .locals 3
    .param p1, "client"    # Landroid/window/WindowTokenClient;

    .line 191
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    monitor-exit v0

    return-void

    .line 195
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 197
    .local v0, "wms":Landroid/view/IWindowManager;
    if-nez v0, :cond_1

    .line 200
    return-void

    .line 203
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->detachWindowContext(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 195
    .end local v0    # "wms":Landroid/view/IWindowManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getWindowContext(Landroid/os/IBinder;)Landroid/content/Context;
    .locals 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 92
    instance-of v0, p1, Landroid/window/WindowTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 95
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v3, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    monitor-exit v2

    return-object v1

    .line 99
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->getContext()Landroid/content/Context;

    move-result-object v1

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 93
    .end local v0    # "windowTokenClient":Landroid/window/WindowTokenClient;
    :cond_1
    return-object v1
.end method

.method public blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 1

    .line 296
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onWindowConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 266
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object v0

    .line 267
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 275
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .locals 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/WindowContextInfo;

    .line 249
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object v0

    .line 250
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 253
    :cond_0
    return-void
.end method

.method public blacklist onWindowContextWindowRemoved(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 257
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object v0

    .line 258
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->onWindowTokenRemoved()V

    .line 261
    :cond_0
    return-void
.end method

.method public blacklist reparentToDisplayArea(Landroid/window/WindowTokenClient;I)V
    .locals 3
    .param p1, "client"    # Landroid/window/WindowTokenClient;
    .param p2, "displayId"    # I

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t succeed reparenting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    nop

    .line 222
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
