.class Lcom/android/internal/os/LongMultiStateCounter_ravenwood;
.super Ljava/lang/Object;
.source "LongMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;
    }
.end annotation


# static fields
.field private static final blacklist sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNextId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    .line 199
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sNextId:J

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;
    .locals 2
    .param p0, "instanceId"    # J

    .line 209
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    return-object v0
.end method

.method public static blacklist native_getCount(JI)J
    .locals 2
    .param p0, "instanceId"    # J
    .param p2, "state"    # I

    .line 234
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->getValue(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist native_getStateCount(J)I
    .locals 1
    .param p0, "instanceId"    # J

    .line 218
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->-$$Nest$fgetmStateCount(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;)I

    move-result v0

    return v0
.end method

.method public static blacklist native_incrementValue(JJJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "count"    # J
    .param p4, "timestampMs"    # J

    .line 230
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->incrementValue(JJ)V

    .line 231
    return-void
.end method

.method public static blacklist native_init(I)J
    .locals 5
    .param p0, "stateCount"    # I

    .line 202
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    invoke-direct {v0, p0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;-><init>(I)V

    .line 203
    .local v0, "instance":Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;
    sget-wide v1, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sNextId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sNextId:J

    .line 204
    .local v1, "instanceId":J
    sget-object v3, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-wide v1
.end method

.method public static blacklist native_initFromParcel(Landroid/os/Parcel;)J
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 246
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "stateCount":I
    if-ltz v0, :cond_2

    const v1, 0xefff

    if-gt v0, v1, :cond_2

    .line 251
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const-string v3, "Bad parcel"

    if-ge v1, v2, :cond_1

    .line 254
    invoke-static {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->native_init(I)J

    move-result-wide v1

    .line 255
    .local v1, "instanceId":J
    invoke-static {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->initFromParcel(Landroid/os/Parcel;)V

    .line 256
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 259
    return-wide v1

    .line 257
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    .end local v1    # "instanceId":J
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    new-instance v1, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "stateCount out of range"

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist native_reset(J)V
    .locals 1
    .param p0, "instanceId"    # J

    .line 238
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->reset()V

    .line 239
    return-void
.end method

.method public static blacklist native_setEnabled(JZJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "enabled"    # Z
    .param p3, "timestampMs"    # J

    .line 214
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->setEnabled(ZJ)V

    .line 215
    return-void
.end method

.method public static blacklist native_setState(JIJ)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "state"    # I
    .param p3, "timestampMs"    # J

    .line 226
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->setState(IJ)V

    .line 227
    return-void
.end method

.method public static blacklist native_toString(J)Ljava/lang/String;
    .locals 1
    .param p0, "instanceId"    # J

    .line 263
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist native_updateValue(JJJ)J
    .locals 2
    .param p0, "instanceId"    # J
    .param p2, "value"    # J
    .param p4, "timestampMs"    # J

    .line 222
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->updateValue(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist native_writeToParcel(JLandroid/os/Parcel;I)V
    .locals 1
    .param p0, "instanceId"    # J
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 242
    invoke-static {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood;->getInstance(J)Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->writeToParcel(Landroid/os/Parcel;)V

    .line 243
    return-void
.end method
