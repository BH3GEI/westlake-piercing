.class public Landroid/app/blob/BlobStoreManager;
.super Ljava/lang/Object;
.source "BlobStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/BlobStoreManager$Session;
    }
.end annotation


# static fields
.field public static final COMMIT_RESULT_ERROR:I = 0x1

.field public static final COMMIT_RESULT_SUCCESS:I = 0x0

.field public static final INVALID_RES_ID:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/blob/IBlobStoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/blob/IBlobStoreManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/blob/IBlobStoreManager;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    .line 160
    return-void
.end method

.method static synthetic lambda$waitForIdle$0(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 552
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public abandonSession(J)V
    .locals 2
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/blob/IBlobStoreManager;->abandonSession(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 240
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;I)V
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/blob/BlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;IJ)V

    .line 434
    return-void
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;IJ)V
    .locals 7
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "leaseExpiryTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 317
    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .local v1, "blobHandle":Landroid/app/blob/BlobHandle;
    .local v2, "descriptionResId":I
    .local v4, "leaseExpiryTimeMillis":J
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/app/blob/IBlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    nop

    .line 326
    return-void

    .line 323
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 323
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v2    # "descriptionResId":I
    .end local v4    # "leaseExpiryTimeMillis":J
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_2
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object p1, v0

    .line 324
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v2    # "descriptionResId":I
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 319
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v2    # "descriptionResId":I
    .end local v4    # "leaseExpiryTimeMillis":J
    .local p1, "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_3
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object p1, v0

    .line 320
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v2    # "descriptionResId":I
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_1
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 321
    const-class p2, Landroid/os/LimitExceededException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 322
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/blob/BlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;J)V

    .line 484
    return-void
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;J)V
    .locals 7
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "leaseExpiryTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    const/4 v2, -0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .local v1, "blobHandle":Landroid/app/blob/BlobHandle;
    .local v3, "description":Ljava/lang/CharSequence;
    .local v4, "leaseExpiryTimeMillis":J
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/app/blob/IBlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 386
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v3    # "description":Ljava/lang/CharSequence;
    .end local v4    # "leaseExpiryTimeMillis":J
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_2
    move-exception v0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object p1, v0

    .line 387
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v3    # "description":Ljava/lang/CharSequence;
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 382
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v3    # "description":Ljava/lang/CharSequence;
    .end local v4    # "leaseExpiryTimeMillis":J
    .local p1, "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_3
    move-exception v0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object p1, v0

    .line 383
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v3    # "description":Ljava/lang/CharSequence;
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_1
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 384
    const-class p2, Landroid/os/LimitExceededException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 385
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createSession(Landroid/app/blob/BlobHandle;)J
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 196
    const-class v1, Landroid/os/LimitExceededException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteBlob(Landroid/app/blob/BlobInfo;)V
    .locals 3
    .param p1, "blobInfo"    # Landroid/app/blob/BlobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/app/blob/IBlobStoreManager;->deleteBlob(J)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 582
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLeaseInfo(Landroid/app/blob/BlobHandle;)Landroid/app/blob/LeaseInfo;
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 624
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLeasedBlobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 600
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemainingLeaseQuotaBytes()J
    .locals 2

    .line 537
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->getRemainingLeaseQuotaBytes(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 264
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openSession(J)Landroid/app/blob/BlobStoreManager$Session;
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    :try_start_0
    new-instance v0, Landroid/app/blob/BlobStoreManager$Session;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v2, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/blob/IBlobStoreManager;->openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/blob/BlobStoreManager$Session;-><init>(Landroid/app/blob/IBlobStoreSession;Landroid/app/blob/BlobStoreManager-IA;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->queryBlobsForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 568
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 570
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public releaseAllLeases()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->releaseAllLeases(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    nop

    .line 523
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 519
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public releaseLease(Landroid/app/blob/BlobHandle;)V
    .locals 2
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 503
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public waitForIdle(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 551
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 552
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/app/blob/IBlobStoreManager;->waitForIdle(Landroid/os/RemoteCallback;)V

    .line 553
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    nop

    .line 561
    return-void

    .line 554
    .restart local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timed out waiting for service to become idle"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/blob/BlobStoreManager;
    .end local p1    # "timeoutMillis":J
    throw v1
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local p0    # "this":Landroid/app/blob/BlobStoreManager;
    .restart local p1    # "timeoutMillis":J
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 556
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/ParcelableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
