.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;
.source "UiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 34
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 35
    .local v0, "eventID":I
    if-lez v0, :cond_0

    .line 36
    const/16 v1, 0x5a

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    .line 42
    :cond_0
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 47
    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 52
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 53
    .local v0, "eventID":I
    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    .line 54
    nop

    .line 58
    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    .line 54
    const/16 v2, 0x5a

    invoke-static {v2, v0, p2, p3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    goto :goto_0

    .line 59
    :cond_0
    if-lez v0, :cond_1

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 6
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instance"    # Lcom/android/internal/logging/InstanceId;
    .param p5, "position"    # I

    .line 80
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 81
    .local v1, "eventID":I
    if-lez v1, :cond_0

    if-eqz p4, :cond_0

    .line 82
    nop

    .line 85
    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    .line 82
    const/16 v0, 0x104

    const/4 v5, 0x0

    move-object v2, p3

    move v4, p5

    .end local p3    # "packageName":Ljava/lang/String;
    .end local p5    # "position":I
    .local v2, "packageName":Ljava/lang/String;
    .local v4, "position":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    goto :goto_0

    .line 81
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "position":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p5    # "position":I
    :cond_0
    move-object v2, p3

    move v4, p5

    .line 88
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p5    # "position":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "position":I
    if-lez v1, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .locals 6
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "position"    # I

    .line 66
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 67
    .local v1, "eventID":I
    if-lez v1, :cond_0

    .line 68
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x104

    move-object v2, p3

    move v4, p4

    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "position":I
    .local v2, "packageName":Ljava/lang/String;
    .local v4, "position":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    goto :goto_0

    .line 67
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "position":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "position":I
    :cond_0
    move-object v2, p3

    move v4, p4

    .line 75
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "position":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "position":I
    :goto_0
    return-void
.end method
