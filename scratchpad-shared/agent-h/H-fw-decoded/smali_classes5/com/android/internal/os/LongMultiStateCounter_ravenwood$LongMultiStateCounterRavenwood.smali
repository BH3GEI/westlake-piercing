.class Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;
.super Ljava/lang/Object;
.source "LongMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongMultiStateCounter_ravenwood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongMultiStateCounterRavenwood"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;
    }
.end annotation


# instance fields
.field private blacklist mCurrentState:I

.field private blacklist mEnabled:Z

.field private blacklist mLastStateChangeTimestampMs:J

.field private blacklist mLastUpdateTimestampMs:J

.field private final blacklist mStateCount:I

.field private final blacklist mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

.field private blacklist mValue:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStateCount(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    return p0
.end method

.method constructor blacklist <init>(I)V
    .locals 4
    .param p1, "stateCount"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 40
    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    .line 52
    iput p1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    .line 53
    new-array v0, p1, [Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    iput-object v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    new-instance v2, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;-><init>(Lcom/android/internal/os/LongMultiStateCounter_ravenwood-IA;)V

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getValue(I)J
    .locals 2
    .param p1, "state"    # I

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist incrementValue(JJ)V
    .locals 2
    .param p1, "count"    # J
    .param p3, "timestampMs"    # J

    .line 138
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mValue:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->updateValue(JJ)J

    .line 139
    return-void
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_0
    nop

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public blacklist reset()V
    .locals 4

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 147
    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist setEnabled(ZJ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 60
    iget-boolean v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    if-ne p1, v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    if-nez p1, :cond_1

    .line 65
    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->setState(IJ)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    goto :goto_0

    .line 68
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 69
    iget-wide p2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 72
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 73
    iput-wide p2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 75
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    .line 77
    :goto_0
    return-void
.end method

.method public blacklist setState(IJ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 80
    iget-boolean v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 81
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 82
    iget-wide p2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mCurrentState:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    goto :goto_1

    .line 89
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mCurrentState:I

    .line 95
    iput-wide p2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .line 96
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/4 v1, 0x0

    .local v1, "state":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v1, v2, :cond_1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "state":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 183
    const-string v1, " updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 186
    const-string v1, " currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    iget-wide v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    iget-wide v3, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 188
    const-string v1, " stateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_3
    const-string v1, " currentState: none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateValue(JJ)J
    .locals 22
    .param p1, "value"    # J
    .param p3, "timestampMs"    # J

    .line 99
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    .line 100
    .local v3, "returnValue":J
    iget-boolean v5, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mEnabled:Z

    if-nez v5, :cond_1

    iget-wide v5, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    iget-wide v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    goto/16 :goto_7

    .line 101
    :cond_1
    :goto_0
    iget-wide v5, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    cmp-long v5, p3, v5

    if-gez v5, :cond_2

    .line 102
    iget-wide v5, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastStateChangeTimestampMs:J

    .end local p3    # "timestampMs":J
    .local v5, "timestampMs":J
    goto :goto_1

    .line 101
    .end local v5    # "timestampMs":J
    .restart local p3    # "timestampMs":J
    :cond_2
    move-wide/from16 v5, p3

    .line 105
    .end local p3    # "timestampMs":J
    .restart local v5    # "timestampMs":J
    :goto_1
    iget v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mCurrentState:I

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->setState(IJ)V

    .line 107
    iget-wide v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    .line 108
    iget-wide v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_7

    .line 109
    iget-wide v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mValue:J

    sub-long v7, v1, v7

    .line 110
    .local v7, "delta":J
    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    .line 111
    move-wide v3, v7

    .line 112
    iget-wide v11, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    sub-long v11, v5, v11

    .line 113
    .local v11, "timeSinceUpdate":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget v14, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v13, v14, :cond_4

    .line 114
    iget-object v14, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v14, v14, v13

    invoke-static {v14}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v14

    .line 115
    .local v14, "timeInState":J
    cmp-long v16, v14, v9

    if-lez v16, :cond_3

    .line 116
    iget-object v9, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v9, v9, v13

    invoke-static {v9}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v16

    mul-long v18, v7, v14

    div-long v18, v18, v11

    move-wide/from16 v20, v3

    .end local v3    # "returnValue":J
    .local v20, "returnValue":J
    add-long v3, v16, v18

    invoke-static {v9, v3, v4}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 117
    iget-object v3, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v3, v3, v13

    const-wide/16 v9, 0x0

    invoke-static {v3, v9, v10}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    goto :goto_3

    .line 115
    .end local v20    # "returnValue":J
    .restart local v3    # "returnValue":J
    :cond_3
    move-wide/from16 v20, v3

    .line 113
    .end local v3    # "returnValue":J
    .end local v14    # "timeInState":J
    .restart local v20    # "returnValue":J
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v20

    const-wide/16 v9, 0x0

    goto :goto_2

    .end local v20    # "returnValue":J
    .restart local v3    # "returnValue":J
    :cond_4
    move-wide/from16 v20, v3

    .line 120
    .end local v3    # "returnValue":J
    .end local v11    # "timeSinceUpdate":J
    .end local v13    # "i":I
    .restart local v20    # "returnValue":J
    goto :goto_5

    .line 121
    .end local v20    # "returnValue":J
    .restart local v3    # "returnValue":J
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    iget v10, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v9, v10, :cond_6

    .line 122
    iget-object v10, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v10, v10, v9

    const-wide/16 v11, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 121
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 125
    .end local v7    # "delta":J
    .end local v9    # "i":I
    :cond_6
    :goto_5
    goto :goto_7

    :cond_7
    iget-wide v7, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_6

    .line 126
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    iget v8, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v7, v8, :cond_8

    .line 127
    iget-object v8, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v8, v8, v7

    const-wide/16 v11, 0x0

    invoke-static {v8, v11, v12}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 132
    .end local v7    # "i":I
    :cond_8
    :goto_7
    iput-wide v1, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mValue:J

    .line 133
    iput-wide v5, v0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mLastUpdateTimestampMs:J

    .line 134
    return-wide v3
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 155
    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStateCount:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;->mStates:[Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->-$$Nest$fgetmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
