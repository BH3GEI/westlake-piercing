.class Landroid/speech/RecognitionService$2;
.super Ljava/lang/Object;
.source "RecognitionService.java"

# interfaces
.implements Landroid/speech/ModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsTerminated:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist val$listener:Landroid/speech/IModelDownloadListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    .line 240
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 289
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    nop

    .line 299
    :try_start_2
    monitor-exit v0

    .line 300
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    .end local p1    # "error":I
    throw v2

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    .restart local p1    # "error":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onProgress(I)V
    .locals 3
    .param p1, "completedPercent"    # I

    .line 245
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    .line 254
    :try_start_2
    monitor-exit v0

    .line 255
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    .end local p1    # "completedPercent":I
    throw v2

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    .restart local p1    # "completedPercent":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onScheduled()V
    .locals 3

    .line 274
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onScheduled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    nop

    .line 284
    :try_start_2
    monitor-exit v0

    .line 285
    return-void

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    throw v2

    .line 284
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onSuccess()V
    .locals 3

    .line 259
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    nop

    .line 269
    :try_start_2
    monitor-exit v0

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    throw v2

    .line 269
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
