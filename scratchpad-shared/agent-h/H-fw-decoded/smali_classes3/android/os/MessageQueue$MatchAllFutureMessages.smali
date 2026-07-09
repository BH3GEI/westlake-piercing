.class final Landroid/os/MessageQueue$MatchAllFutureMessages;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchAllFutureMessages"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 2131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/MessageQueue$MatchAllFutureMessages;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .locals 3
    .param p1, "n"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J

    .line 2135
    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v0

    .line 2136
    .local v0, "m":Landroid/os/Message;
    iget-wide v1, v0, Landroid/os/Message;->when:J

    cmp-long v1, v1, p6

    if-lez v1, :cond_0

    .line 2137
    const/4 v1, 0x1

    return v1

    .line 2139
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
