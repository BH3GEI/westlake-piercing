.class Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;
    }
.end annotation


# static fields
.field private static final blacklist sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNextId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    .line 279
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sNextId:J

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;
    .locals 2
    .param p0, "instanceId"    # J

    .line 290
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    return-object v0
.end method

.method public static blacklist native_addCounts(J[J)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "counts"    # [J

    .line 328
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->addCounts([J)V

    .line 329
    return-void
.end method

.method public static blacklist native_copyStatesFrom(JJ)V
    .locals 2
    .param p0, "targetInstanceId"    # J
    .param p2, "sourceInstanceId"    # J

    .line 319
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)V

    .line 320
    return-void
.end method

.method public static blacklist native_getArrayLength(J)I
    .locals 1
    .param p0, "instanceId"    # J

    .line 303
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->-$$Nest$fgetmArrayLength(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)I

    move-result v0

    return v0
.end method

.method public static blacklist native_getCounts(J[JI)Z
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "counts"    # [J
    .param p3, "state"    # I

    .line 332
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->getValues([JI)Z

    move-result v0

    return v0
.end method

.method public static blacklist native_getStateCount(J)I
    .locals 1
    .param p0, "instanceId"    # J

    .line 299
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->-$$Nest$fgetmStateCount(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)I

    move-result v0

    return v0
.end method

.method public static blacklist native_incrementValues(J[JJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "delta"    # [J
    .param p3, "timestampMs"    # J

    .line 324
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->incrementValues([JJ)V

    .line 325
    return-void
.end method

.method public static blacklist native_init(II)J
    .locals 5
    .param p0, "stateCount"    # I
    .param p1, "arrayLength"    # I

    .line 282
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;-><init>(II)V

    .line 284
    .local v0, "instance":Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;
    sget-wide v1, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sNextId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sNextId:J

    .line 285
    .local v1, "instanceId":J
    sget-object v3, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-wide v1
.end method

.method public static blacklist native_initFromParcel(Landroid/os/Parcel;)J
    .locals 7
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 344
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "stateCount":I
    if-ltz v0, :cond_3

    const v1, 0xefff

    if-gt v0, v1, :cond_3

    .line 349
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const-string v3, "Bad parcel"

    if-ge v1, v2, :cond_2

    .line 352
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .local v1, "arrayLength":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 356
    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->native_init(II)J

    move-result-wide v4

    .line 357
    .local v4, "instanceId":J
    invoke-static {v4, v5}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->initFromParcel(Landroid/os/Parcel;)V

    .line 358
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-gt v2, v6, :cond_0

    .line 361
    return-wide v4

    .line 359
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    .end local v4    # "instanceId":J
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    .end local v1    # "arrayLength":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_3
    new-instance v1, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "stateCount out of range"

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist native_reset(J)V
    .locals 1
    .param p0, "instanceId"    # J

    .line 336
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->reset()V

    .line 337
    return-void
.end method

.method public static blacklist native_setEnabled(JZJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "enabled"    # Z
    .param p3, "timestampMs"    # J

    .line 295
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->setEnabled(ZJ)V

    .line 296
    return-void
.end method

.method public static blacklist native_setState(JIJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "state"    # I
    .param p3, "timestampMs"    # J

    .line 315
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->setState(IJ)V

    .line 316
    return-void
.end method

.method public static blacklist native_setValues(JI[J)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "state"    # I
    .param p3, "values"    # [J

    .line 307
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->setValue(I[J)V

    .line 308
    return-void
.end method

.method public static blacklist native_toString(J)Ljava/lang/String;
    .locals 1
    .param p0, "instanceId"    # J

    .line 365
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist native_updateValues(J[JJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "values"    # [J
    .param p3, "timestampMs"    # J

    .line 311
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->updateValue([JJ)V

    .line 312
    return-void
.end method

.method public static blacklist native_writeToParcel(JLandroid/os/Parcel;I)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 340
    invoke-static {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->writeToParcel(Landroid/os/Parcel;)V

    .line 341
    return-void
.end method
