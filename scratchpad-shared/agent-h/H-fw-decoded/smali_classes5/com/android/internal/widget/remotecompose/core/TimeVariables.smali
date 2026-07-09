.class public Lcom/android/internal/widget/remotecompose/core/TimeVariables;
.super Ljava/lang/Object;
.source "TimeVariables.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 72
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 73
    .local v0, "zone":Ljava/time/ZoneId;
    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 75
    .local v1, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V

    .line 76
    return-void
.end method

.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V
    .locals 12
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "zoneId"    # Ljava/time/ZoneId;
    .param p3, "dateTime"    # Ljava/time/LocalDateTime;

    .line 41
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Month;->getValue()I

    move-result v0

    .line 42
    .local v0, "month":I
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    .line 43
    .local v1, "hour":I
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v2

    .line 44
    .local v2, "minute":I
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    .line 45
    .local v3, "seconds":I
    mul-int/lit8 v4, v1, 0x3c

    add-int/2addr v4, v2

    .line 46
    .local v4, "currentMinute":I
    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v5, v3

    .line 47
    .local v5, "currentSeconds":I
    int-to-float v6, v5

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3089705f    # 1.0E-9f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 48
    .local v6, "sec":F
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->getValue()I

    move-result v7

    .line 50
    .local v7, "day_week":I
    invoke-virtual {p3, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v8

    .line 51
    .local v8, "offsetDateTime":Ljava/time/OffsetDateTime;
    invoke-virtual {v8}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v9

    .line 53
    .local v9, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v9}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    int-to-float v10, v10

    const/16 v11, 0xa

    invoke-virtual {p1, v11, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 54
    const/4 v10, 0x1

    invoke-virtual {p1, v10, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 55
    const/4 v10, 0x2

    int-to-float v11, v5

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 56
    const/4 v10, 0x3

    int-to-float v11, v4

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 57
    const/4 v10, 0x4

    int-to-float v11, v1

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 58
    const/16 v10, 0x9

    int-to-float v11, v0

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 59
    const/16 v10, 0xc

    int-to-float v11, v0

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 60
    const/16 v10, 0xb

    int-to-float v11, v7

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 61
    nop

    .line 63
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocumentApiLevel()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e4ccccd    # 0.2f

    add-float/2addr v10, v11

    .line 61
    const/16 v11, 0x1c

    invoke-virtual {p1, v11, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 64
    return-void
.end method
