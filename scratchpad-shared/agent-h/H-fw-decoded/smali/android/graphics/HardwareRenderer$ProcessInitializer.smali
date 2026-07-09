.class Landroid/graphics/HardwareRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayInitialized:Z

.field private mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private mInitialized:Z

.field private mIsolated:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mrotateBuffer(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1297
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1300
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1302
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    .line 1306
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1314
    return-void
.end method

.method private initDisplayInfo()V
    .locals 24

    .line 1374
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    if-eqz v1, :cond_0

    return-void

    .line 1375
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1376
    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1377
    return-void

    .line 1380
    :cond_1
    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1381
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    const-string v3, "HardwareRenderer"

    if-nez v1, :cond_2

    .line 1382
    const-string v2, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void

    .line 1386
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1387
    .local v5, "defaultDisplay":Landroid/view/Display;
    if-nez v5, :cond_3

    .line 1388
    const-string v2, "Failed to find default display for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void

    .line 1392
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    .line 1393
    .local v6, "allDisplays":[Landroid/view/Display;
    array-length v7, v6

    if-nez v7, :cond_4

    .line 1394
    const-string v2, "Failed to query displays"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return-void

    .line 1398
    :cond_4
    invoke-virtual {v5}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 1399
    .local v3, "activeMode":Landroid/view/Display$Mode;
    nop

    .line 1400
    invoke-virtual {v5}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    .line 1401
    .local v7, "defaultWideColorSpace":Landroid/graphics/ColorSpace;
    if-eqz v7, :cond_5

    .line 1402
    invoke-virtual {v7}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    goto :goto_0

    :cond_5
    nop

    .line 1406
    .local v4, "wideColorDataspace":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    .line 1407
    .local v8, "largestWidth":I
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    .line 1408
    .local v9, "largestHeight":I
    invoke-virtual {v5}, Landroid/view/Display;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v10

    .line 1410
    .local v10, "overlayProperties":Landroid/hardware/OverlayProperties;
    const/4 v11, 0x0

    move v15, v4

    move v12, v8

    move v13, v9

    .end local v4    # "wideColorDataspace":I
    .end local v8    # "largestWidth":I
    .end local v9    # "largestHeight":I
    .local v11, "i":I
    .local v12, "largestWidth":I
    .local v13, "largestHeight":I
    .local v15, "wideColorDataspace":I
    :goto_1
    array-length v4, v6

    if-ge v11, v4, :cond_9

    .line 1411
    aget-object v4, v6, v11

    .line 1415
    .local v4, "display":Landroid/view/Display;
    if-nez v15, :cond_6

    .line 1416
    invoke-virtual {v4}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    .line 1417
    .local v8, "cs":Landroid/graphics/ColorSpace;
    if-eqz v8, :cond_6

    .line 1418
    invoke-virtual {v8}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v9

    move v15, v9

    .line 1421
    .end local v8    # "cs":Landroid/graphics/ColorSpace;
    :cond_6
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v8

    .line 1422
    .local v8, "modes":[Landroid/view/Display$Mode;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    array-length v14, v8

    if-ge v9, v14, :cond_8

    .line 1423
    aget-object v14, v8, v9

    .line 1424
    .local v14, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v16

    .line 1425
    .local v16, "width":I
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v17

    .line 1426
    .local v17, "height":I
    mul-int v2, v16, v17

    move-object/from16 v23, v1

    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .local v23, "dm":Landroid/hardware/display/DisplayManager;
    mul-int v1, v12, v13

    if-le v2, v1, :cond_7

    .line 1427
    move/from16 v12, v16

    .line 1428
    move/from16 v13, v17

    .line 1422
    .end local v14    # "mode":Landroid/view/Display$Mode;
    .end local v16    # "width":I
    .end local v17    # "height":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v23

    const/4 v2, 0x1

    goto :goto_2

    .end local v23    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_8
    move-object/from16 v23, v1

    .line 1410
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v4    # "display":Landroid/view/Display;
    .end local v8    # "modes":[Landroid/view/Display$Mode;
    .end local v9    # "j":I
    .restart local v23    # "dm":Landroid/hardware/display/DisplayManager;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .end local v23    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_9
    move-object/from16 v23, v1

    .line 1433
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v11    # "i":I
    .restart local v23    # "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v14

    .line 1434
    invoke-virtual {v5}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v16

    .line 1435
    invoke-virtual {v5}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v18

    .line 1436
    const/high16 v1, 0x18810000

    const/16 v2, 0x16

    invoke-virtual {v10, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v20

    .line 1439
    const/high16 v1, 0xa0000

    const/high16 v2, 0x800000

    const/high16 v4, 0x18000000

    invoke-static {v1, v2, v4}, Landroid/hardware/DataSpace;->pack(III)I

    move-result v1

    .line 1438
    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v21

    .line 1444
    invoke-virtual {v10}, Landroid/hardware/OverlayProperties;->isMixedColorSpacesSupported()Z

    move-result v22

    .line 1433
    invoke-static/range {v12 .. v22}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V

    .line 1446
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1447
    return-void
.end method

.method private initGraphicsStats()V
    .locals 3

    .line 1349
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1352
    :cond_0
    :try_start_0
    const-string/jumbo v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1353
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    return-void

    .line 1354
    :cond_1
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 1355
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 1356
    :catchall_0
    move-exception v0

    .line 1357
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1359
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private initSched(J)V
    .locals 3
    .param p1, "renderProxy"    # J

    .line 1341
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnGetRenderThreadTid(J)I

    move-result v0

    .line 1342
    .local v0, "tid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    .end local v0    # "tid":I
    goto :goto_0

    .line 1343
    :catchall_0
    move-exception v0

    .line 1344
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private requestBuffer()V
    .locals 3

    .line 1456
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1457
    invoke-interface {v0, v1, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1458
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetProcessStatsBuffer(I)V

    .line 1459
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v0

    .line 1461
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private rotateBuffer()V
    .locals 0

    .line 1450
    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnRotateProcessStatsBuffer()V

    .line 1451
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V

    .line 1452
    return-void
.end method


# virtual methods
.method declared-synchronized init(J)V
    .locals 1
    .param p1, "renderProxy"    # J

    monitor-enter p0

    .line 1332
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1333
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initSched(J)V

    .line 1336
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    monitor-exit p0

    return-void

    .line 1331
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "renderProxy":J
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized initUsingContext()V
    .locals 1

    monitor-enter p0

    .line 1362
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1364
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initDisplayInfo()V

    .line 1366
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsHighEndGfx(Z)V

    .line 1367
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsLowRam(Z)V

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    monitor-exit p0

    return-void

    .line 1361
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1327
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1328
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    monitor-exit p0

    return-void

    .line 1326
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized setIsolated(Z)V
    .locals 1
    .param p1, "isolated"    # Z

    monitor-enter p0

    .line 1322
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1323
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    monitor-exit p0

    return-void

    .line 1321
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "isolated":Z
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1317
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1318
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    monitor-exit p0

    return-void

    .line 1316
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
