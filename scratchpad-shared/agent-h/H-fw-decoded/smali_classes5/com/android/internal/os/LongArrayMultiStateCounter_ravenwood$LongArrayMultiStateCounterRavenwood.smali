.class Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayMultiStateCounterRavenwood"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;
    }
.end annotation


# instance fields
.field private final blacklist mArrayLength:I

.field private blacklist mCurrentState:I

.field private final blacklist mDelta:[J

.field private blacklist mEnabled:Z

.field private blacklist mLastStateChangeTimestampMs:J

.field private blacklist mLastUpdateTimestampMs:J

.field private final blacklist mStateCount:I

.field private final blacklist mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

.field private final blacklist mValues:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArrayLength(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateCount(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    return p0
.end method

.method constructor blacklist <init>(II)V
    .locals 4
    .param p1, "stateCount"    # I
    .param p2, "arrayLength"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 43
    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    .line 56
    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    .line 57
    iput p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    .line 58
    new-array v0, p1, [Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    iput-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    new-instance v2, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;-><init>(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood-IA;)V

    aput-object v2, v1, v0

    .line 61
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    new-array v2, v2, [J

    invoke-static {v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;[J)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mValues:[J

    .line 64
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mDelta:[J

    .line 65
    return-void
.end method

.method private blacklist add([J[JJJ)V
    .locals 5
    .param p1, "counter"    # [J
    .param p2, "delta"    # [J
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J

    .line 265
    cmp-long v0, p3, p5

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ge v0, v1, :cond_0

    .line 267
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-long/2addr v3, p3

    div-long/2addr v3, p5

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 270
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ge v0, v1, :cond_2

    .line 271
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private blacklist delta([J[J[J)Z
    .locals 6
    .param p1, "values1"    # [J
    .param p2, "values2"    # [J
    .param p3, "delta"    # [J

    .line 247
    array-length v0, p3

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ne v0, v1, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 252
    .local v0, "is_delta_valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ge v1, v2, :cond_1

    .line 253
    aget-wide v2, p2, v1

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 254
    aget-wide v2, p2, v1

    aget-wide v4, p1, v1

    sub-long/2addr v2, v4

    aput-wide v2, p3, v1

    goto :goto_1

    .line 256
    :cond_0
    const-wide/16 v2, 0x0

    aput-wide v2, p3, v1

    .line 257
    const/4 v0, 0x0

    .line 252
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 248
    .end local v0    # "is_delta_valid":Z
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist addCounts([J)V
    .locals 6
    .param p1, "delta"    # [J

    .line 162
    iget-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v1

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;)V
    .locals 4
    .param p1, "source"    # Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_0
    iget v0, p1, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    iput v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    .line 112
    iget-wide v0, p1, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 113
    iget-wide v0, p1, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 114
    return-void
.end method

.method public blacklist getValues([JI)Z
    .locals 7
    .param p1, "values"    # [J
    .param p2, "state"    # I

    .line 172
    iget-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v0

    .line 173
    .local v0, "counts":[J
    const/4 v1, 0x1

    .line 174
    .local v1, "allZeros":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 175
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 177
    goto :goto_1

    .line 174
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 181
    return v2

    .line 183
    :cond_2
    iget v3, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist incrementValues([JJ)V
    .locals 6
    .param p1, "delta"    # [J
    .param p2, "timestampMs"    # J

    .line 152
    iget-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mValues:[J

    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mValues:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 153
    .local v0, "values":[J
    if-eqz p1, :cond_0

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    if-ge v1, v2, :cond_0

    .line 155
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->updateValue([JJ)V

    .line 159
    return-void
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_0
    nop

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public blacklist reset()V
    .locals 4

    .line 188
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 189
    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist setEnabled(ZJ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    if-ne p1, v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    if-nez p1, :cond_1

    .line 73
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->setState(IJ)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    goto :goto_0

    .line 76
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 77
    iget-wide p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 80
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 81
    iput-wide p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 83
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    .line 85
    :goto_0
    return-void
.end method

.method public blacklist setState(IJ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 88
    iget-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 89
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 90
    iget-wide p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V

    goto :goto_1

    .line 97
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    .line 103
    iput-wide p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 104
    return-void
.end method

.method public blacklist setValue(I[J)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "values"    # [J

    .line 117
    iget-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/4 v1, 0x0

    .local v1, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v1, v2, :cond_3

    .line 219
    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 224
    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "state":I
    :cond_3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-wide v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 233
    const-string v1, " updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    :cond_4
    iget-wide v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    .line 236
    const-string v1, " currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    iget-wide v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    iget-wide v3, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 238
    const-string v1, " stateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 241
    :cond_5
    const-string v1, " currentState: none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateValue([JJ)V
    .locals 11
    .param p1, "values"    # [J
    .param p2, "timestampMs"    # J

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mEnabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    iget-wide v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p0

    goto/16 :goto_3

    .line 122
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 123
    iget-wide p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 126
    :cond_2
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->setState(IJ)V

    .line 128
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 129
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 130
    iget-object v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mValues:[J

    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mDelta:[J

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->delta([J[J[J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    sub-long v9, p2, v0

    .line 132
    .local v9, "timeSinceUpdate":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)J

    move-result-wide v7

    .line 134
    .local v7, "timeInState":J
    cmp-long v1, v7, v2

    if-lez v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mDelta:[J

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->add([J[JJJ)V

    .line 136
    iget-object v1, v4, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V

    goto :goto_2

    .line 134
    :cond_3
    move-object v4, p0

    .line 132
    .end local v7    # "timeInState":J
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v4, p0

    .line 139
    .end local v0    # "i":I
    .end local v9    # "timeSinceUpdate":J
    goto :goto_3

    .line 140
    :cond_5
    move-object v4, p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 142
    :cond_6
    move-object v4, p0

    iget-wide v0, v4, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_7

    goto :goto_3

    .line 143
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 128
    :cond_8
    move-object v4, p0

    .line 147
    :goto_3
    iget-object v0, v4, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mValues:[J

    iget v1, v4, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iput-wide p2, v4, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 149
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 197
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mArrayLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
