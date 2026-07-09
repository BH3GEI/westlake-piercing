.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method public static synthetic $r8$lambda$jsed2v0iR-PKSQuDTq98BcHmWFo(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mhandleOnUnsyncableAccount(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method

.method private isCallerSystem()Z
    .locals 5

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 177
    .local v0, "callingUid":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "203229608"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x534e4554

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 179
    const/4 v2, 0x0

    return v2

    .line 181
    :cond_0
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 6
    .param p1, "syncContext"    # Landroid/content/ISyncContext;

    .line 262
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :try_start_1
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 271
    .local v3, "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmSyncContext(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 272
    move-object v0, v3

    .line 273
    goto :goto_1

    .line 275
    .end local v3    # "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_1
    goto :goto_0

    .line 276
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v0, :cond_5

    .line 278
    :try_start_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    const-string v1, "SyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSync() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmAuthority(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmAccount(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmAllowParallelSyncs(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    goto :goto_2

    .line 284
    :cond_4
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_2

    .line 287
    :cond_5
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 288
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() unknown context"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    .end local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_6
    :goto_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    const-string v0, "SyncAdapter"

    const-string v1, "cancelSync() finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_7
    return-void

    .line 276
    .restart local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .end local p1    # "syncContext":Landroid/content/ISyncContext;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 297
    .end local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .restart local p1    # "syncContext":Landroid/content/ISyncContext;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 293
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() caught exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_8
    nop

    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .end local p1    # "syncContext":Landroid/content/ISyncContext;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    .end local v0    # "th":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .restart local p1    # "syncContext":Landroid/content/ISyncContext;
    :goto_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_9
    throw v0
.end method

.method public onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 186
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "syncContext"    # Landroid/content/ISyncContext;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 197
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    if-eqz p4, :cond_1

    .line 202
    invoke-virtual {p4}, Landroid/os/Bundle;->size()I

    .line 204
    :cond_1
    const-string v0, "SyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSync() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/SyncContext;

    invoke-direct {v0, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    move-object v4, v0

    .line 213
    .local v4, "syncContextClient":Landroid/content/SyncContext;
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0, p3}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mtoSyncKey(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    move-object v9, v0

    .line 214
    .local v9, "threadsKey":Landroid/accounts/Account;
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 215
    :try_start_1
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 216
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmAutoInitialize(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    :try_start_2
    const-string/jumbo v0, "initialize"

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    .line 221
    :try_start_3
    invoke-static {p3, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 222
    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_3
    :try_start_4
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 226
    nop

    .line 227
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    const-string v0, "SyncAdapter"

    const-string/jumbo v1, "startSync() finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    return-void

    .line 225
    :catchall_0
    move-exception v0

    :try_start_5
    new-instance v1, Landroid/content/SyncResult;

    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 226
    nop

    .end local v4    # "syncContextClient":Landroid/content/SyncContext;
    .end local v9    # "threadsKey":Landroid/accounts/Account;
    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .end local p1    # "syncContext":Landroid/content/ISyncContext;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    .restart local v4    # "syncContextClient":Landroid/content/SyncContext;
    .restart local v9    # "threadsKey":Landroid/accounts/Account;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .restart local p1    # "syncContext":Landroid/content/ISyncContext;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "account":Landroid/accounts/Account;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    goto :goto_1

    .line 229
    :cond_5
    :try_start_6
    new-instance v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncAdapterThread-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmNumSyncStarts(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v8, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v5, "authority":Ljava/lang/String;
    .local v6, "account":Landroid/accounts/Account;
    .local v7, "extras":Landroid/os/Bundle;
    :try_start_7
    invoke-direct/range {v1 .. v8}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter-IA;)V

    .line 232
    .local v1, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object p2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {p2}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    .line 234
    const/4 p2, 0x0

    .line 235
    .end local v1    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .local p2, "alreadyInProgress":Z
    goto :goto_0

    .line 236
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .local p2, "authority":Ljava/lang/String;
    .restart local p3    # "account":Landroid/accounts/Account;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_6
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 237
    const-string p2, "SyncAdapter"

    const-string p3, "  alreadyInProgress"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_7
    const/4 p2, 0x1

    .line 241
    .local p2, "alreadyInProgress":Z
    :goto_0
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 245
    if-eqz p2, :cond_8

    .line 246
    :try_start_8
    sget-object p3, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v4, p3}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 254
    .end local v4    # "syncContextClient":Landroid/content/SyncContext;
    .end local v9    # "threadsKey":Landroid/accounts/Account;
    .end local p2    # "alreadyInProgress":Z
    :cond_8
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 255
    const-string p2, "SyncAdapter"

    const-string/jumbo p3, "startSync() finishing"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_9
    return-void

    .line 241
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local v4    # "syncContextClient":Landroid/content/SyncContext;
    .restart local v9    # "threadsKey":Landroid/accounts/Account;
    .local p2, "authority":Ljava/lang/String;
    .restart local p3    # "account":Landroid/accounts/Account;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    :goto_1
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .end local p1    # "syncContext":Landroid/content/ISyncContext;
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 248
    .end local v4    # "syncContextClient":Landroid/content/SyncContext;
    .end local v9    # "threadsKey":Landroid/accounts/Account;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .restart local p1    # "syncContext":Landroid/content/ISyncContext;
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 241
    .restart local v4    # "syncContextClient":Landroid/content/SyncContext;
    .restart local v9    # "threadsKey":Landroid/accounts/Account;
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 254
    .end local v4    # "syncContextClient":Landroid/content/SyncContext;
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v9    # "threadsKey":Landroid/accounts/Account;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "account":Landroid/accounts/Account;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_4
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p2, v0

    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    goto :goto_3

    .line 248
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "account":Landroid/accounts/Account;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p2, v0

    .line 249
    .end local p3    # "account":Landroid/accounts/Account;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .local p2, "th":Ljava/lang/Throwable;
    :goto_2
    :try_start_b
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 250
    const-string p3, "SyncAdapter"

    const-string/jumbo p4, "startSync() caught exception"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_a
    nop

    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .end local p1    # "syncContext":Landroid/content/ISyncContext;
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 254
    .end local p2    # "th":Ljava/lang/Throwable;
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    .restart local p1    # "syncContext":Landroid/content/ISyncContext;
    :catchall_5
    move-exception v0

    move-object p2, v0

    :goto_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 255
    const-string p3, "SyncAdapter"

    const-string/jumbo p4, "startSync() finishing"

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_b
    throw p2
.end method
