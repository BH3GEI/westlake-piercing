.class public abstract Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BatteryHistoryFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;",
        ">;"
    }
.end annotation


# instance fields
.field public final blacklist monotonicTimeMs:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "monotonicTimeMs"    # J

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    .line 161
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I
    .locals 4
    .param p1, "o"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 165
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 155
    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    move-object v2, p1

    check-cast v2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method
