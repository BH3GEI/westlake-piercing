.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final FLAG_MEMORY_FILE_DIRECT_CHANNEL_SUPPORTED:I = 0x400


# instance fields
.field private mFlags:I

.field mHighestDirectReportRateLevel:I

.field private mMaxDelay:I

.field private mMaximumRange:F

.field private mMinDelay:I

.field private final mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private final mType:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    if-lez p1, :cond_0

    .line 309
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    .line 310
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    .line 311
    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual sensor type must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .locals 13

    .line 318
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-lez v0, :cond_1

    .line 319
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting direct channel type is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    :goto_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_3

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-eqz v0, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Highest direct report rate level is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_3
    :goto_1
    new-instance v2, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    iget v6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    iget v7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    iget v8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    iget v9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    iget v10, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    iget v11, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V

    return-object v2
.end method

.method public setDirectChannelTypesSupported(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 2
    .param p1, "memoryTypes"    # I

    .line 423
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    .line 424
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    .line 426
    :cond_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 428
    :goto_0
    and-int/lit8 v0, p1, -0x2

    if-gtz v0, :cond_1

    .line 433
    return-object p0

    .line 429
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TYPE_MEMORY_FILE direct channels can be supported for virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHighestDirectReportRateLevel(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "rateLevel"    # I

    .line 406
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    .line 407
    return-object p0
.end method

.method public setMaxDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "maxDelay"    # I

    .line 394
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    .line 395
    return-object p0
.end method

.method public setMaximumRange(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "maximumRange"    # F

    .line 350
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    .line 351
    return-object p0
.end method

.method public setMinDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "minDelay"    # I

    .line 383
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    .line 384
    return-object p0
.end method

.method public setPower(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "power"    # F

    .line 372
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    .line 373
    return-object p0
.end method

.method public setReportingMode(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 3
    .param p1, "reportingMode"    # I

    .line 465
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid reporting mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    :goto_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    shl-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 472
    return-object p0
.end method

.method public setResolution(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "resolution"    # F

    .line 361
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    .line 362
    return-object p0
.end method

.method public setVendor(Ljava/lang/String;)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .line 339
    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setWakeUpSensor(Z)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 1
    .param p1, "wakeUpSensor"    # Z

    .line 444
    if-eqz p1, :cond_0

    .line 445
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    .line 447
    :cond_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 449
    :goto_0
    return-object p0
.end method
