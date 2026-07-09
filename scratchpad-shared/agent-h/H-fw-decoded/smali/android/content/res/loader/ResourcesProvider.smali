.class public Landroid/content/res/loader/ResourcesProvider;
.super Ljava/lang/Object;
.source "ResourcesProvider.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesProvider"


# instance fields
.field private final mApkAssets:Landroid/content/res/ApkAssets;

.field private final mLock:Ljava/lang/Object;

.field private mOpen:Z

.field private mOpenCount:I


# direct methods
.method private constructor <init>(Landroid/content/res/ApkAssets;)V
    .locals 1
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 283
    iput-object p1, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    .line 284
    return-void
.end method

.method public static empty(Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 2
    .param p0, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;

    .line 71
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    const/4 v1, 0x4

    invoke-static {v1, p0}, Landroid/content/res/ApkAssets;->loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;
    .locals 1
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromApk(Landroid/os/ParcelFileDescriptor;JJLandroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 9
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    const/4 v7, 0x4

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, p5

    .end local p1    # "offset":J
    .end local p3    # "length":J
    .end local p5    # "assetsProvider":Landroid/content/res/loader/AssetsProvider;
    .local v3, "offset":J
    .local v5, "length":J
    .local v8, "assetsProvider":Landroid/content/res/loader/AssetsProvider;
    invoke-static/range {v1 .. v8}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static loadFromApk(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 4
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v3, 0x4

    invoke-static {v1, v2, v3, p1}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static loadFromDirectory(Ljava/lang/String;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    const/4 v1, 0x4

    invoke-static {p0, v1, p1}, Landroid/content/res/ApkAssets;->loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static loadFromSplit(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/loader/ResourcesProvider;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 256
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 257
    .local v1, "splitIndex":I
    if-ltz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 262
    .local v2, "splitPath":Ljava/lang/String;
    new-instance v3, Landroid/content/res/loader/ResourcesProvider;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v3

    .line 258
    .end local v2    # "splitPath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static loadFromTable(Landroid/os/ParcelFileDescriptor;JJLandroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 9
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    .line 240
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    const/4 v7, 0x4

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, p5

    .end local p1    # "offset":J
    .end local p3    # "length":J
    .end local p5    # "assetsProvider":Landroid/content/res/loader/AssetsProvider;
    .local v3, "offset":J
    .local v5, "length":J
    .local v8, "assetsProvider":Landroid/content/res/loader/AssetsProvider;
    invoke-static/range {v1 .. v8}, Landroid/content/res/ApkAssets;->loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    .line 239
    return-object v0
.end method

.method public static loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 4
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    .line 209
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    const/4 v3, 0x4

    invoke-static {v1, v2, v3, p1}, Landroid/content/res/ApkAssets;->loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    .line 208
    return-object v0
.end method

.method public static loadOverlay(Landroid/content/om/OverlayInfo;)Landroid/content/res/loader/ResourcesProvider;
    .locals 7
    .param p0, "overlayInfo"    # Landroid/content/om/OverlayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v0

    const-string v1, "Not accepted overlay"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    invoke-static {}, Landroid/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "Without overlayable name"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 98
    :cond_0
    nop

    .line 99
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->getOverlayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "overlayName":Ljava/lang/String;
    nop

    .line 102
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "Invalid base path"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 105
    .local v3, "frroPath":Ljava/nio/file/Path;
    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".idmap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 109
    .local v4, "idmapPath":Ljava/nio/file/Path;
    new-array v5, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    new-instance v5, Landroid/content/res/loader/ResourcesProvider;

    .line 115
    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-static {v6, v2}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    .line 113
    return-object v5

    .line 110
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v5, "The idmap file not found"

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v4    # "idmapPath":Ljava/nio/file/Path;
    :cond_2
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v4, "The frro file not found"

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 315
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    if-nez v1, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 320
    :cond_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    if-nez v1, :cond_1

    .line 324
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    .line 331
    :goto_0
    return-void

    .line 321
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close provider used by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ResourcesLoader instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    throw v1

    .line 325
    .restart local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method final decrementRefCount()V
    .locals 2

    .line 302
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "ResourcesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourcesProvider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finalized with non-zero refs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApkAssets()Landroid/content/res/ApkAssets;
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method final incrementRefCount()V
    .locals 3

    .line 293
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    if-eqz v1, :cond_0

    .line 297
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Operation failed: resources provider is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    throw v1

    .line 298
    .restart local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
