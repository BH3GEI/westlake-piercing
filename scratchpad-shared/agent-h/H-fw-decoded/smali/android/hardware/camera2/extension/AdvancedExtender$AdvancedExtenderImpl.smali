.class final Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;
.super Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.source "AdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/AdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdvancedExtenderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/extension/AdvancedExtender;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/extension/AdvancedExtender;Landroid/hardware/camera2/extension/AdvancedExtender-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;-><init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V

    return-void
.end method


# virtual methods
.method public getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 316
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "supportedCaptureKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 320
    .local v1, "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide v2

    .line 321
    .local v2, "vendorId":J
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 323
    .local v4, "requestKeyTags":[I
    const/4 v5, 0x0

    .line 324
    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 325
    .local v7, "key":Landroid/hardware/camera2/CaptureRequest$Key;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v9

    aput v9, v4, v5

    .line 326
    .end local v7    # "key":Landroid/hardware/camera2/CaptureRequest$Key;
    move v5, v8

    goto :goto_0

    .line 327
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 329
    return-object v1

    .line 332
    .end local v1    # "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "vendorId":J
    .end local v4    # "requestKeyTags":[I
    .end local v5    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 337
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 338
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureResultKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 340
    .local v0, "supportedResultKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 342
    .local v1, "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide v2

    .line 343
    .local v2, "vendorId":J
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 345
    .local v4, "resultKeyTags":[I
    const/4 v5, 0x0

    .line 346
    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureResult$Key;

    .line 347
    .local v7, "key":Landroid/hardware/camera2/CaptureResult$Key;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v9

    aput v9, v4, v5

    .line 348
    .end local v7    # "key":Landroid/hardware/camera2/CaptureResult$Key;
    move v5, v8

    goto :goto_0

    .line 349
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 351
    return-object v1

    .line 354
    .end local v1    # "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "vendorId":J
    .end local v4    # "resultKeyTags":[I
    .end local v5    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 11
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 372
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 376
    .local v1, "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v2}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v2}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    .line 378
    .local v2, "vendorId":J
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 380
    .local v4, "characteristicsKeyTags":[I
    const/4 v5, 0x0

    .line 381
    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 382
    .local v7, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v8

    .line 383
    .local v8, "tag":I
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    aput v8, v4, v5

    .line 384
    iget-object v5, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v5, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 385
    .end local v7    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;>;"
    .end local v8    # "tag":I
    move v5, v9

    goto :goto_1

    .line 386
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_1
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 389
    return-object v1

    .line 392
    .end local v1    # "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "vendorId":J
    .end local v4    # "characteristicsKeyTags":[I
    .end local v5    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "outputSize"    # Landroid/hardware/camera2/extension/Size;
    .param p3, "format"    # I

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSessionProcessor()Landroid/hardware/camera2/extension/SessionProcessor;

    move-result-object v0

    .line 309
    .local v0, "processor":Landroid/hardware/camera2/extension/SessionProcessor;
    iget-object v1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/AdvancedExtender;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/extension/SessionProcessor;->setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V

    .line 310
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->getSessionProcessorBinder()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 296
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;
    .locals 1
    .param p1, "captureSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 290
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p2, "charsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v1, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->initialize(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)V

    .line 278
    return-void
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    .line 271
    .local p2, "charsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v1, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)Z

    move-result v0

    return v0
.end method

.method public isPostviewAvailable()Z
    .locals 1

    .line 366
    const/4 v0, 0x0

    return v0
.end method
