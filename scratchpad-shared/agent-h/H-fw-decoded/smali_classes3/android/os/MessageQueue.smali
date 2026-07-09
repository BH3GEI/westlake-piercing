.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$MatchDeliverableMessages;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObject;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;,
        Landroid/os/MessageQueue$MatchHandler;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerAndObject;,
        Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;,
        Landroid/os/MessageQueue$MatchAllMessages;,
        Landroid/os/MessageQueue$MatchAllFutureMessages;,
        Landroid/os/MessageQueue$TimedParkStateNode;,
        Landroid/os/MessageQueue$StateNode;,
        Landroid/os/MessageQueue$StackNode;,
        Landroid/os/MessageQueue$MessageCounts;,
        Landroid/os/MessageQueue$MessageCompare;,
        Landroid/os/MessageQueue$MessageNode;,
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$MatchBarrierToken;,
        Landroid/os/MessageQueue$StackNodeType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist STACK_NODE_ACTIVE:I = 0x1

.field private static final blacklist STACK_NODE_MESSAGE:I = 0x0

.field private static final blacklist STACK_NODE_PARKED:I = 0x2

.field private static final blacklist STACK_NODE_TIMEDPARK:I = 0x3

.field private static final blacklist TAG_C:Ljava/lang/String; = "ConcurrentMessageQueue"

.field private static final blacklist TAG_L:Ljava/lang/String; = "LegacyMessageQueue"

.field private static final blacklist TRACE:Z = false

.field private static final blacklist mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

.field private static final blacklist sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sNextInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sQuitting:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sStackStateActive:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sStackStateParked:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sState:Ljava/lang/invoke/VarHandle;


# instance fields
.field private blacklist mAsyncMessageCount:I

.field private final blacklist mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlocked:Z

.field private final blacklist mDrainCompleted:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFileDescriptorRecordsLock:Ljava/lang/Object;

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdleHandlersLock:Ljava/lang/Object;

.field private blacklist mLast:Landroid/os/Message;

.field private final blacklist mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

.field private final blacklist mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

.field private final blacklist mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

.field private final blacklist mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

.field private final blacklist mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

.field private final blacklist mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

.field private final blacklist mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

.field private final blacklist mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

.field private final blacklist mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

.field private final blacklist mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

.field private final blacklist mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

.field private blacklist mMessageDirectlyQueued:Z

.field greylist mMessages:Landroid/os/Message;

.field private greylist mNextBarrierToken:I

.field private final blacklist mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile blacklist mNextFrontInsertSeqValue:J

.field private volatile blacklist mNextInsertSeqValue:J

.field private blacklist mNextIsDrainingStack:Z

.field private blacklist mNextPollTimeoutMillis:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private final blacklist mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z

.field private blacklist mQuittingValue:Z

.field private final blacklist mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

.field private volatile blacklist mStateValue:Landroid/os/MessageQueue$StackNode;

.field private final blacklist mThread:Ljava/lang/Thread;

.field private final blacklist mTid:J

.field private final blacklist mUseConcurrent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 115
    const-string v0, "VarHandle lookup failed with exception: "

    const-string v1, "ConcurrentMessageQueue"

    const-class v2, Landroid/os/MessageQueue;

    const/4 v3, 0x0

    sput-object v3, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 631
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v3, Landroid/os/MessageQueue;->mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2578
    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2579
    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    .line 2586
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2587
    .local v3, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mStateValue"

    const-class v5, Landroid/os/MessageQueue$StackNode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2592
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2617
    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2618
    .restart local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mNextInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    .line 2620
    const-string/jumbo v4, "mNextFrontInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2625
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2722
    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2723
    .restart local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mQuittingValue"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2727
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2728
    return-void

    .line 2724
    :catch_0
    move-exception v2

    .line 2725
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2622
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 2623
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2589
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2590
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Z)V
    .locals 4
    .param p1, "quitAllowed"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 269
    new-instance v0, Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchDeliverableMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    .line 1512
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    .line 1555
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    .line 1598
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    .line 1638
    new-instance v0, Landroid/os/MessageQueue$MatchHandler;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandler;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    .line 1860
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    .line 1935
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    .line 2008
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    .line 2126
    new-instance v0, Landroid/os/MessageQueue$MatchAllMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    .line 2142
    new-instance v0, Landroid/os/MessageQueue$MatchAllFutureMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllFutureMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    .line 2580
    new-instance v0, Landroid/os/MessageQueue$TimedParkStateNode;

    invoke-direct {v0}, Landroid/os/MessageQueue$TimedParkStateNode;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    .line 2595
    sget-object v0, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    iput-object v0, p0, Landroid/os/MessageQueue;->mStateValue:Landroid/os/MessageQueue$StackNode;

    .line 2596
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2598
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2607
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextInsertSeqValue:J

    .line 2614
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextFrontInsertSeqValue:J

    .line 2713
    new-instance v0, Landroid/os/MessageQueue$MessageCounts;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MessageCounts;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    .line 2715
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    .line 2716
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    .line 2719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuittingValue:Z

    .line 2732
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2739
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2740
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 2741
    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    .line 132
    invoke-static {}, Landroid/os/MessageQueue;->initIsProcessAllowedToUseConcurrent()V

    .line 133
    sget-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/MessageQueue;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    .line 134
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 135
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageQueue;->mThread:Ljava/lang/Thread;

    .line 137
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mTid:J

    .line 138
    return-void
.end method

.method private blacklist addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 325
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 423
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 433
    monitor-exit p0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist decAndTraceMessageCount()V
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 225
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 226
    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .locals 8
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 559
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 562
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v2, :cond_0

    .line 563
    monitor-exit v0

    return v1

    .line 566
    :cond_0
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 567
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 568
    if-nez p2, :cond_1

    .line 569
    monitor-exit v0

    return v1

    .line 572
    :cond_1
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 573
    .local v3, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 574
    .local v4, "seq":I
    monitor-exit v0

    goto :goto_0

    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v4    # "seq":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 576
    :cond_2
    monitor-enter p0

    .line 577
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    move-object v2, v0

    .line 578
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v2, :cond_3

    .line 579
    monitor-exit p0

    return v1

    .line 582
    :cond_3
    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    move v1, v0

    .line 583
    .restart local v1    # "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 584
    if-nez p2, :cond_4

    .line 585
    monitor-exit p0

    return v1

    .line 588
    :cond_4
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    move-object v3, v0

    .line 589
    .restart local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    move v4, v0

    .line 590
    .restart local v4    # "seq":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 593
    :goto_0
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v3, v0, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 595
    .local v0, "newWatchedEvents":I
    if-eqz v0, :cond_5

    .line 596
    or-int/lit8 v0, v0, 0x4

    .line 601
    :cond_5
    if-eq v0, v1, :cond_9

    .line 602
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v5, :cond_7

    .line 603
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 604
    :try_start_2
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    .line 605
    .local v6, "index":I
    if-ltz v6, :cond_6

    iget-object v7, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_6

    iget v7, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v7, v4, :cond_6

    .line 607
    iput v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 608
    if-nez v0, :cond_6

    .line 609
    iget-object v7, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 612
    .end local v6    # "index":I
    :cond_6
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 614
    :cond_7
    monitor-enter p0

    .line 615
    :try_start_3
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 616
    .local v5, "index":I
    if-ltz v5, :cond_8

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_8

    iget v6, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v4, :cond_8

    .line 618
    iput v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 619
    if-nez v0, :cond_8

    .line 620
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 623
    .end local v5    # "index":I
    :cond_8
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    .line 628
    :cond_9
    :goto_1
    return v0

    .line 590
    .end local v0    # "newWatchedEvents":I
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v4    # "seq":I
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private greylist-max-o dispose()V
    .locals 4

    .line 256
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 257
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 258
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 260
    :cond_0
    return-void
.end method

.method private blacklist drainStack(Landroid/os/MessageQueue$StackNode;)V
    .locals 3
    .param p1, "oldTop"    # Landroid/os/MessageQueue$StackNode;

    .line 2417
    nop

    :goto_0
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2418
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    .line 2419
    .local v0, "oldTopMessageNode":Landroid/os/MessageQueue$MessageNode;
    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2420
    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    .line 2422
    :cond_0
    move-object v1, v0

    .line 2423
    .local v1, "inserted":Landroid/os/MessageQueue$MessageNode;
    iget-object p1, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2430
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2431
    .end local v0    # "oldTopMessageNode":Landroid/os/MessageQueue$MessageNode;
    .end local v1    # "inserted":Landroid/os/MessageQueue$MessageNode;
    goto :goto_0

    .line 2432
    :cond_1
    return-void
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I
    .locals 8
    .param p2, "pw"    # Landroid/util/Printer;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "h"    # Landroid/os/Handler;
    .param p5, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/Printer;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "I)I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2163
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v0, 0x0

    .line 2164
    .local v0, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2166
    .local v1, "now":J
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2167
    .local v4, "msgNode":Landroid/os/MessageQueue$MessageNode;
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v5

    .line 2168
    .local v5, "msg":Landroid/os/Message;
    if-eqz p4, :cond_0

    iget-object v6, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p4, v6, :cond_1

    .line 2169
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1, v2}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2171
    :cond_1
    nop

    .end local v4    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v5    # "msg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    .line 2172
    goto :goto_0

    .line 2173
    :cond_2
    return v0
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I
    .locals 6
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/proto/ProtoOutputStream;",
            ")I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2227
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v0, 0x0

    .line 2229
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    .line 2230
    .local v2, "msgNode":Landroid/os/MessageQueue$MessageNode;
    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    .line 2231
    .local v3, "msg":Landroid/os/Message;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p2, v4, v5}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2232
    nop

    .end local v2    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v3    # "msg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    .line 2233
    goto :goto_0

    .line 2234
    :cond_0
    return v0
.end method

.method private blacklist enqueueMessageConcurrent(Landroid/os/Message;J)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1269
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist enqueueMessageLegacy(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1277
    monitor-enter p0

    .line 1278
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1282
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "LegacyMessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 1287
    monitor-exit p0

    return v1

    .line 1290
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 1291
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 1292
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1294
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1296
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_b

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto/16 :goto_5

    .line 1308
    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 1313
    .local v3, "needWake":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 1314
    iget-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v6, v4, Landroid/os/Message;->when:J

    cmp-long v4, p2, v6

    if-ltz v4, :cond_4

    .line 1315
    if-eqz v3, :cond_3

    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    if-nez v4, :cond_3

    move v1, v2

    .line 1316
    .end local v3    # "needWake":Z
    .local v1, "needWake":Z
    :cond_3
    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1317
    iget-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1318
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_6

    .line 1323
    .end local v1    # "needWake":Z
    .restart local v3    # "needWake":Z
    :cond_4
    :goto_1
    move-object v1, v0

    .line 1324
    .local v1, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 1325
    if-eqz v0, :cond_6

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_5

    .line 1326
    goto :goto_2

    .line 1328
    :cond_5
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1329
    const/4 v3, 0x0

    goto :goto_1

    .line 1332
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 1334
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1336
    :cond_7
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1337
    iput-object p1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1338
    .end local v1    # "prev":Landroid/os/Message;
    move v1, v3

    goto :goto_6

    .line 1342
    :cond_8
    :goto_3
    move-object v1, v0

    .line 1343
    .restart local v1    # "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 1344
    if-eqz v0, :cond_a

    iget-wide v6, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v6

    if-gez v4, :cond_9

    .line 1345
    goto :goto_4

    .line 1347
    :cond_9
    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1348
    const/4 v3, 0x0

    goto :goto_3

    .line 1351
    :cond_a
    :goto_4
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1352
    iput-object p1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1368
    iput-object v5, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    move v1, v3

    goto :goto_6

    .line 1298
    .end local v1    # "prev":Landroid/os/Message;
    .end local v3    # "needWake":Z
    :cond_b
    :goto_5
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1299
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1300
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1301
    .local v1, "needWake":Z
    if-nez v0, :cond_c

    .line 1302
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1372
    :cond_c
    :goto_6
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1373
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1377
    :cond_d
    if-eqz v1, :cond_e

    .line 1378
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1380
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_e
    monitor-exit p0

    .line 1381
    return v2

    .line 1279
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "when":J
    throw v0

    .line 1380
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "msg":Landroid/os/Message;
    .restart local p2    # "when":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist enqueueMessageUnchecked(Landroid/os/Message;J)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 2744
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    sget-object v4, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2745
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sending message to a Handler on a dead thread"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v6, "ConcurrentMessageQueue"

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2748
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2749
    return v5

    .line 2752
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0, v6, v7}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v8

    add-long/2addr v8, v6

    goto :goto_0

    .line 2753
    :cond_1
    sget-object v4, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

    const-wide/16 v8, -0x1

    invoke-polymorphic {v4, v0, v8, v9}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v8

    sub-long/2addr v8, v6

    :goto_0
    nop

    .line 2755
    .local v8, "seq":J
    new-instance v4, Landroid/os/MessageQueue$MessageNode;

    invoke-direct {v4, v1, v8, v9}, Landroid/os/MessageQueue$MessageNode;-><init>(Landroid/os/Message;J)V

    .line 2756
    .local v4, "node":Landroid/os/MessageQueue$MessageNode;
    iput-wide v2, v1, Landroid/os/Message;->when:J

    .line 2757
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 2758
    invoke-direct/range {p0 .. p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 2766
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 2768
    .local v6, "myLooper":Landroid/os/Looper;
    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v10

    if-ne v10, v0, :cond_3

    .line 2769
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    .line 2770
    invoke-direct {v0, v4}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    .line 2775
    iget-boolean v5, v0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    if-nez v5, :cond_2

    .line 2776
    iput-boolean v7, v0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 2777
    iget-wide v10, v0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v10, v11}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 2779
    :cond_2
    return v7

    .line 2783
    :cond_3
    :goto_1
    sget-object v10, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v10, v0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v10

    .line 2787
    .local v10, "old":Landroid/os/MessageQueue$StackNode;
    iput-object v10, v4, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2788
    invoke-virtual {v10}, Landroid/os/MessageQueue$StackNode;->getNodeType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 2815
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$MessageNode;

    .line 2817
    .local v11, "oldMessage":Landroid/os/MessageQueue$MessageNode;
    iget-object v12, v11, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v12, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2818
    iget-object v12, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    invoke-virtual {v12}, Landroid/os/MessageQueue$StateNode;->getNodeType()I

    move-result v12

    .line 2819
    .local v12, "bottomType":I
    const/4 v13, 0x2

    if-lt v12, v13, :cond_5

    move v13, v7

    goto :goto_3

    .line 2808
    .end local v11    # "oldMessage":Landroid/os/MessageQueue$MessageNode;
    .end local v12    # "bottomType":I
    :pswitch_0
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2809
    const/4 v11, 0x1

    .line 2810
    .local v11, "inactive":Z
    iget-object v12, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v12, v12, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_4

    move v12, v7

    goto :goto_2

    :cond_4
    move v12, v5

    .line 2811
    .local v12, "wakeNeeded":Z
    :goto_2
    iput-boolean v12, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2812
    goto :goto_7

    .line 2801
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :pswitch_1
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2802
    const/4 v11, 0x1

    .line 2803
    .restart local v11    # "inactive":Z
    iput-boolean v7, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2804
    const/4 v12, 0x1

    .line 2805
    .restart local v12    # "wakeNeeded":Z
    goto :goto_7

    .line 2794
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :pswitch_2
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2795
    const/4 v11, 0x0

    .line 2796
    .restart local v11    # "inactive":Z
    iput-boolean v7, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2797
    const/4 v12, 0x0

    .line 2798
    .restart local v12    # "wakeNeeded":Z
    goto :goto_7

    .line 2819
    .local v11, "oldMessage":Landroid/os/MessageQueue$MessageNode;
    .local v12, "bottomType":I
    :cond_5
    move v13, v5

    .line 2820
    .local v13, "inactive":Z
    :goto_3
    const/4 v14, 0x3

    if-ne v12, v14, :cond_6

    iget-object v14, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v14, v14, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    .line 2821
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-ltz v14, :cond_6

    iget-boolean v14, v11, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v14, :cond_6

    move v14, v7

    goto :goto_4

    :cond_6
    move v14, v5

    .line 2823
    .local v14, "wakeNeeded":Z
    :goto_4
    iget-boolean v15, v11, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v15, :cond_8

    if-eqz v14, :cond_7

    goto :goto_5

    :cond_7
    move v15, v5

    goto :goto_6

    :cond_8
    :goto_5
    move v15, v7

    :goto_6
    iput-boolean v15, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v11, v13

    move v12, v14

    .line 2826
    .end local v13    # "inactive":Z
    .end local v14    # "wakeNeeded":Z
    .local v11, "inactive":Z
    .local v12, "wakeNeeded":Z
    :goto_7
    sget-object v13, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v13, v0, v10, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$MessageNode;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2827
    if-eqz v11, :cond_a

    .line 2828
    if-eqz v12, :cond_9

    .line 2829
    iget-wide v13, v0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v13, v14}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_8

    .line 2831
    :cond_9
    iget-object v5, v0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v5}, Landroid/os/MessageQueue$MessageCounts;->incrementQueued()V

    .line 2834
    :cond_a
    :goto_8
    return v7

    .line 2836
    .end local v10    # "old":Landroid/os/MessageQueue$StackNode;
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :cond_b
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 12
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "r"    # Ljava/lang/Runnable;
    .param p5, "when"    # J
    .param p7, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p8, "removeMatches"    # Z

    .line 2943
    invoke-direct/range {p0 .. p8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v10

    .line 2944
    .local v10, "foundInStack":Z
    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v11

    .line 2946
    .local v11, "foundInQueue":Z
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v1

    or-int v0, v11, v1

    .line 2949
    .end local v11    # "foundInQueue":Z
    .local v0, "foundInQueue":Z
    if-nez v10, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;
    .locals 1
    .param p1, "node"    # Landroid/os/MessageQueue$StackNode;

    .line 2446
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    return-object v0

    .line 2449
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$StateNode;

    return-object v0
.end method

.method private blacklist hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1559
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1564
    monitor-enter p0

    .line 1565
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1566
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    .line 1567
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1568
    :cond_0
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1570
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_0

    .line 1572
    :cond_2
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1573
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;)Z
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;

    .line 1641
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "h":Landroid/os/Handler;
    .local v1, "h":Landroid/os/Handler;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1516
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1602
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1645
    monitor-enter p0

    .line 1646
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1647
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_1

    .line 1648
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_0

    .line 1649
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1651
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_0

    .line 1653
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1654
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1521
    monitor-enter p0

    .line 1522
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1523
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    .line 1524
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1

    .line 1525
    :cond_0
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1527
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_0

    .line 1529
    :cond_2
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1530
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1607
    monitor-enter p0

    .line 1608
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1609
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    .line 1610
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1

    .line 1611
    :cond_0
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1613
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_0

    .line 1615
    :cond_2
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1616
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist incAndTraceMessageCount(Landroid/os/Message;J)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 229
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->mSendingThreadName:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/PerfettoTrace;->getFlowId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 233
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 234
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    const-string/jumbo v1, "message_queue_send"

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace;->instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 235
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->addFlow(I)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 237
    const-wide/16 v1, 0x7d4

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/MessageQueue;->mThread:Ljava/lang/Thread;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 239
    const-wide/16 v3, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 244
    return-void
.end method

.method private static blacklist initIsProcessAllowedToUseConcurrent()V
    .locals 3

    .line 141
    sget-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 147
    return-void

    .line 150
    :cond_1
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 154
    return-void

    .line 160
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 162
    sget-object v2, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    const-string/jumbo v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    goto :goto_0

    .line 172
    :cond_4
    nop

    .line 173
    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 174
    const-string v2, "com.android.systemui:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 173
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 181
    :cond_7
    :goto_0
    return-void
.end method

.method private blacklist insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V
    .locals 1
    .param p1, "msgNode"    # Landroid/os/MessageQueue$MessageNode;

    .line 2378
    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2381
    :cond_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 2383
    :goto_0
    return-void
.end method

.method private blacklist isIdleConcurrent()Z
    .locals 10

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 275
    .local v6, "now":J
    iget-object v8, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 276
    return v2

    .line 279
    :cond_0
    const/4 v3, 0x0

    .line 280
    .local v3, "msgNode":Landroid/os/MessageQueue$MessageNode;
    const/4 v4, 0x0

    .line 282
    .local v4, "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    iget-object v0, v1, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :try_start_0
    iget-object v0, v1, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 285
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 288
    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    :try_start_1
    iget-object v0, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    .line 291
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 294
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    .line 295
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gtz v0, :cond_5

    .line 296
    :cond_4
    return v2

    .line 299
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isIdleLegacy()Z
    .locals 4

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 305
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    .line 306
    .end local v0    # "now":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static blacklist isInstrumenting()Z
    .locals 4

    .line 206
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 207
    .local v0, "activityThread":Landroid/app/ActivityThread;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    return v1

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 211
    .local v2, "instrumentation":Landroid/app/Instrumentation;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isPollingConcurrent()Z
    .locals 2

    .line 387
    sget-object v0, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPollingLegacy()Z
    .locals 1

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o isPollingLocked()Z
    .locals 2

    .line 418
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;)",
            "Landroid/os/MessageQueue$MessageNode;"
        }
    .end annotation

    .line 2405
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2408
    :catch_0
    move-exception v0

    .line 2412
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist legacyPeekOrPoll(Z)Landroid/os/Message;
    .locals 7
    .param p1, "peek"    # Z

    .line 1397
    monitor-enter p0

    .line 1399
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1400
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1401
    .local v2, "prevMsg":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1402
    .local v3, "msg":Landroid/os/Message;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 1405
    :cond_0
    move-object v2, v3

    .line 1406
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    .line 1407
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1409
    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 1410
    if-eqz p1, :cond_2

    .line 1411
    monitor-exit p0

    return-object v3

    .line 1413
    :cond_2
    iget-wide v5, v3, Landroid/os/Message;->when:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_3

    .line 1415
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1417
    :cond_3
    if-eqz v2, :cond_4

    .line 1418
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1419
    iget-object v5, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v5, :cond_5

    .line 1420
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_0

    .line 1423
    :cond_4
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1424
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v5, :cond_5

    .line 1425
    iput-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1428
    :cond_5
    :goto_0
    iput-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1429
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 1430
    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1431
    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1433
    :cond_6
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1437
    monitor-exit p0

    return-object v3

    .line 1439
    .end local v0    # "now":J
    .end local v2    # "prevMsg":Landroid/os/Message;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1440
    return-object v4

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private blacklist nextConcurrent()Landroid/os/Message;
    .locals 12

    .line 817
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 818
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 819
    return-object v3

    .line 822
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 823
    const/4 v4, -0x1

    .line 825
    .local v4, "pendingIdleHandlerCount":I
    :goto_0
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    if-eqz v5, :cond_1

    .line 826
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 829
    :cond_1
    iput-boolean v2, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 830
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    invoke-direct {p0, v0, v1, v5}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 832
    invoke-direct {p0, v2, v2}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v5

    .line 833
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_2

    .line 834
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 835
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 836
    return-object v5

    .line 839
    :cond_2
    sget-object v6, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v6, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 840
    return-object v3

    .line 843
    :cond_3
    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 847
    if-gez v4, :cond_4

    .line 848
    :try_start_0
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 849
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .end local v4    # "pendingIdleHandlerCount":I
    .local v7, "pendingIdleHandlerCount":I
    goto :goto_1

    .line 860
    .end local v7    # "pendingIdleHandlerCount":I
    .restart local v4    # "pendingIdleHandlerCount":I
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 851
    :cond_4
    :goto_1
    if-gtz v4, :cond_5

    .line 853
    monitor-exit v6

    goto :goto_0

    .line 856
    :cond_5
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v7, :cond_6

    .line 857
    const/4 v7, 0x4

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 859
    :cond_6
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 860
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_8

    .line 865
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v7, v6

    .line 866
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v8, v6

    .line 868
    const/4 v8, 0x0

    .line 870
    .local v8, "keep":Z
    :try_start_1
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v8, v9

    .line 873
    goto :goto_3

    .line 871
    :catchall_1
    move-exception v9

    .line 872
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "ConcurrentMessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_3
    if-nez v8, :cond_7

    .line 876
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v9

    .line 877
    :try_start_2
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v9

    goto :goto_4

    :catchall_2
    move-exception v2

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 864
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v8    # "keep":Z
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 883
    .end local v6    # "i":I
    :cond_8
    const/4 v4, 0x0

    .line 887
    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 888
    .end local v5    # "msg":Landroid/os/Message;
    goto/16 :goto_0

    .line 860
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private blacklist nextLegacy()Landroid/os/Message;
    .locals 14

    .line 895
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 896
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 897
    return-object v3

    .line 900
    :cond_0
    const/4 v2, -0x1

    .line 901
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 903
    .local v4, "nextPollTimeoutMillis":I
    :goto_0
    if-eqz v4, :cond_1

    .line 904
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 907
    :cond_1
    invoke-direct {p0, v0, v1, v4}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 909
    monitor-enter p0

    .line 911
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 912
    .local v5, "now":J
    const/4 v7, 0x0

    .line 913
    .local v7, "prevMsg":Landroid/os/Message;
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 914
    .local v8, "msg":Landroid/os/Message;
    if-eqz v8, :cond_3

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_3

    .line 917
    :cond_2
    move-object v7, v8

    .line 918
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v8, v9

    .line 919
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 921
    :cond_3
    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 922
    iget-wide v10, v8, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_4

    .line 924
    iget-wide v10, v8, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    goto :goto_2

    .line 927
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 928
    if-eqz v7, :cond_5

    .line 929
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v7, Landroid/os/Message;->next:Landroid/os/Message;

    .line 930
    iget-object v10, v7, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v10, :cond_6

    .line 931
    iput-object v7, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 934
    :cond_5
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 935
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v10, :cond_6

    .line 936
    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 939
    :cond_6
    :goto_1
    iput-object v3, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 941
    invoke-virtual {v8}, Landroid/os/Message;->markInUse()V

    .line 942
    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 943
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    sub-int/2addr v3, v9

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 945
    :cond_7
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 949
    monitor-exit p0

    return-object v8

    .line 953
    :cond_8
    const/4 v4, -0x1

    .line 957
    :goto_2
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_9

    .line 958
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 959
    monitor-exit p0

    return-object v3

    .line 965
    :cond_9
    if-gez v2, :cond_b

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_b

    .line 967
    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v2, v10

    .line 969
    :cond_b
    if-gtz v2, :cond_c

    .line 971
    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 972
    monitor-exit p0

    goto/16 :goto_0

    .line 975
    :cond_c
    iget-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v9, :cond_d

    .line 976
    const/4 v9, 0x4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 978
    :cond_d
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 979
    .end local v5    # "now":J
    .end local v7    # "prevMsg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 983
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_f

    .line 984
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v6, v6, v5

    .line 985
    .local v6, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v7, v5

    .line 987
    const/4 v7, 0x0

    .line 989
    .local v7, "keep":Z
    :try_start_1
    invoke-interface {v6}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 992
    goto :goto_4

    .line 990
    :catchall_0
    move-exception v8

    .line 991
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "LegacyMessageQueue"

    const-string v10, "IdleHandler threw exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_4
    if-nez v7, :cond_e

    .line 995
    monitor-enter p0

    .line 996
    :try_start_2
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 997
    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 983
    .end local v6    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v7    # "keep":Z
    :cond_e
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1002
    .end local v5    # "i":I
    :cond_f
    const/4 v2, 0x0

    .line 1006
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 979
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method private blacklist nextMessage(ZZ)Landroid/os/Message;
    .locals 18
    .param p1, "peek"    # Z
    .param p2, "returnEarliest"    # Z

    .line 637
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 645
    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 646
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 647
    iget-object v2, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 653
    invoke-direct {v0}, Landroid/os/MessageQueue;->swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;

    move-result-object v2

    .line 654
    .local v2, "oldTop":Landroid/os/MessageQueue$StackNode;
    invoke-direct {v0, v2}, Landroid/os/MessageQueue;->drainStack(Landroid/os/MessageQueue$StackNode;)V

    .line 656
    iget-object v3, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 657
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 658
    iget-object v4, v0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 659
    iget-object v4, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 675
    iget-object v4, v0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 676
    .local v4, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {v0, v4}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v5

    .line 677
    .local v5, "msgNode":Landroid/os/MessageQueue$MessageNode;
    iget-object v6, v0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 678
    .local v6, "asyncQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {v0, v6}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v7

    .line 699
    .local v7, "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    const/4 v8, 0x0

    .line 706
    .local v8, "found":Landroid/os/MessageQueue$MessageNode;
    const/4 v9, 0x0

    .line 708
    .local v9, "next":Landroid/os/MessageQueue$MessageNode;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 712
    .local v10, "now":J
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 713
    if-eqz v7, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v7}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-ltz v12, :cond_1

    .line 714
    :cond_0
    move-object v8, v7

    goto :goto_2

    .line 716
    :cond_1
    move-object v9, v7

    goto :goto_2

    .line 724
    :cond_2
    invoke-direct {v0, v5, v7}, Landroid/os/MessageQueue;->pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v12

    .line 726
    .local v12, "earliest":Landroid/os/MessageQueue$MessageNode;
    if-eqz v12, :cond_5

    .line 727
    if-nez p2, :cond_4

    invoke-virtual {v12}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v13

    cmp-long v13, v10, v13

    if-ltz v13, :cond_3

    goto :goto_1

    .line 730
    :cond_3
    move-object v9, v12

    goto :goto_2

    .line 728
    :cond_4
    :goto_1
    move-object v8, v12

    .line 762
    .end local v12    # "earliest":Landroid/os/MessageQueue$MessageNode;
    :cond_5
    :goto_2
    sget-object v12, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 763
    .local v12, "nextOp":Landroid/os/MessageQueue$StateNode;
    if-nez v8, :cond_8

    .line 764
    if-nez v9, :cond_6

    .line 766
    const/4 v3, -0x1

    iput v3, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 767
    sget-object v12, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    goto :goto_4

    .line 773
    :cond_6
    invoke-virtual {v9}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v13

    .line 774
    .local v13, "nextMessageWhen":J
    cmp-long v15, v13, v10

    if-lez v15, :cond_7

    .line 775
    move v15, v1

    move-object/from16 v16, v2

    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .local v15, "i":I
    .local v16, "oldTop":Landroid/os/MessageQueue$StackNode;
    sub-long v1, v13, v10

    move-object/from16 v17, v4

    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .local v17, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    goto :goto_3

    .line 778
    .end local v15    # "i":I
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v1    # "i":I
    .restart local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_7
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v15    # "i":I
    .restart local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    iput v3, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 781
    :goto_3
    iget-object v1, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget v2, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    int-to-long v2, v2

    add-long/2addr v2, v10

    iput-wide v2, v1, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    .line 782
    iget-object v12, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    goto :goto_4

    .line 763
    .end local v13    # "nextMessageWhen":J
    .end local v15    # "i":I
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v1    # "i":I
    .restart local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_8
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 795
    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v15    # "i":I
    .restart local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :goto_4
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    invoke-polymorphic {v1, v0, v2, v12}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StateNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 796
    iget-object v1, v0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v1}, Landroid/os/MessageQueue$MessageCounts;->clearCounts()V

    .line 797
    if-eqz v8, :cond_a

    .line 798
    if-nez p1, :cond_9

    invoke-direct {v0, v8}, Landroid/os/MessageQueue;->removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 803
    move v1, v15

    goto/16 :goto_0

    .line 809
    :cond_9
    invoke-static {v8}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    .line 811
    :cond_a
    const/4 v1, 0x0

    return-object v1

    .line 813
    .end local v5    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v6    # "asyncQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .end local v7    # "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v8    # "found":Landroid/os/MessageQueue$MessageNode;
    .end local v9    # "next":Landroid/os/MessageQueue$MessageNode;
    .end local v10    # "now":J
    .end local v12    # "nextOp":Landroid/os/MessageQueue$StateNode;
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_b
    move v1, v15

    goto/16 :goto_0
.end method

.method private blacklist pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;
    .locals 1
    .param p1, "nodeA"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "nodeB"    # Landroid/os/MessageQueue$MessageNode;

    .line 2394
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2395
    invoke-virtual {p1, p2}, Landroid/os/MessageQueue$MessageNode;->compareTo(Landroid/os/MessageQueue$MessageNode;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2396
    return-object p1

    .line 2398
    :cond_0
    return-object p2

    .line 2401
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .locals 6
    .param p1, "when"    # J

    .line 1101
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 1106
    .local v0, "token":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1110
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1111
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1112
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1114
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    const-string v2, "ConcurrentMessageQueue"

    const-string v3, "Unexpected error while adding sync barrier!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v2, -0x1

    return v2

    .line 1119
    :cond_0
    return v0

    .line 1122
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-enter p0

    .line 1123
    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1124
    .restart local v0    # "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1125
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1126
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 1127
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1128
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1130
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2

    .line 1132
    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1133
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1134
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1135
    monitor-exit p0

    return v0

    .line 1138
    :cond_2
    const/4 v2, 0x0

    .line 1139
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1140
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_3

    .line 1141
    :goto_0
    if-eqz v3, :cond_3

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_3

    .line 1142
    move-object v2, v3

    .line 1143
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    .line 1147
    :cond_3
    if-nez v3, :cond_4

    .line 1149
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1152
    :cond_4
    if-eqz v2, :cond_5

    .line 1153
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1154
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 1156
    :cond_5
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1157
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1159
    :goto_1
    monitor-exit p0

    return v0

    .line 1160
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist postSyncBarrierConcurrent()I
    .locals 2

    .line 1057
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist postSyncBarrierLegacy()I
    .locals 2

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist printPriorityQueueNodes()V
    .locals 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2150
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2152
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const-string v1, "* Dump priority queue"

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue$MessageNode;

    .line 2155
    .local v1, "msgNode":Landroid/os/MessageQueue$MessageNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** MessageNode what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v4

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v4

    iget-wide v4, v4, Landroid/os/Message;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    .end local v1    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    goto :goto_0

    .line 2158
    :cond_0
    return-void
.end method

.method private blacklist priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 11
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J
    .param p8, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p9, "removeMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "J",
            "Landroid/os/MessageQueue$MessageCompare;",
            "Z)Z"
        }
    .end annotation

    .line 2918
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2919
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v1, 0x0

    .line 2921
    .local v1, "found":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2922
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2924
    .local v4, "msg":Landroid/os/MessageQueue$MessageNode;
    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v3, p8

    invoke-virtual/range {v3 .. v10}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2925
    if-eqz p9, :cond_0

    .line 2926
    const/4 v1, 0x1

    .line 2927
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2928
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 2929
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    goto :goto_1

    .line 2932
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2935
    .end local v4    # "msg":Landroid/os/MessageQueue$MessageNode;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2936
    :cond_2
    return v1
.end method

.method private blacklist removeAllFutureMessages()V
    .locals 9

    .line 2144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2146
    return-void
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .locals 6

    .line 2086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2087
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2088
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_5

    .line 2089
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 2090
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_1

    .line 2094
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2095
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_1

    .line 2096
    return-void

    .line 2098
    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_4

    .line 2099
    nop

    .line 2103
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2104
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2107
    :cond_2
    move-object v2, v3

    .line 2108
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2109
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2110
    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2112
    :cond_3
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 2113
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2114
    if-nez v3, :cond_2

    goto :goto_1

    .line 2101
    :cond_4
    move-object v2, v3

    goto :goto_0

    .line 2117
    .end local v3    # "n":Landroid/os/Message;
    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist removeAllMessages()V
    .locals 9

    .line 2128
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2129
    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .locals 4

    .line 2072
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2073
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 2074
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2075
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2076
    move-object v0, v1

    .line 2077
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 2078
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2079
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2080
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2081
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2082
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 2083
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1938
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1939
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1942
    monitor-enter p0

    .line 1943
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1946
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    .line 1948
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1949
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1950
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1951
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1953
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1954
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1955
    move-object v0, v1

    .line 1956
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 1958
    :cond_2
    if-nez v0, :cond_3

    .line 1959
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1963
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1964
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1965
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 1966
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    .line 1967
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1968
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1969
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1971
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1972
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1973
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1974
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 1975
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 1980
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 1981
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 1982
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1983
    return-void

    .line 1982
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1729
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1730
    return-void
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1864
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1865
    return-void
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1733
    monitor-enter p0

    .line 1734
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1737
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1738
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1739
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1740
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1741
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1742
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1744
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1745
    move-object v0, v1

    .line 1746
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 1748
    :cond_2
    if-nez v0, :cond_3

    .line 1749
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1753
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1754
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1755
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 1756
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1757
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1758
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1759
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1760
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1762
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1763
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1764
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1765
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 1766
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 1771
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 1772
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 1773
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1774
    return-void

    .line 1773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1868
    monitor-enter p0

    .line 1869
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1872
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1873
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1874
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1875
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1876
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1877
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1879
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1880
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1881
    move-object v0, v1

    .line 1882
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 1884
    :cond_2
    if-nez v0, :cond_3

    .line 1885
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1889
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1890
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1891
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 1892
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1893
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1894
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1895
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1896
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1898
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1899
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1900
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1901
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 1902
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 1907
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 1908
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 1909
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1910
    return-void

    .line 1909
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z
    .locals 1
    .param p1, "msgNode"    # Landroid/os/MessageQueue$MessageNode;

    .line 2386
    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2389
    :cond_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 357
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1669
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1670
    return-void
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1789
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1790
    return-void
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1673
    monitor-enter p0

    .line 1674
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1677
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 1679
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1680
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1681
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1682
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1684
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1685
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1686
    move-object v0, v1

    .line 1687
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 1689
    :cond_2
    if-nez v0, :cond_3

    .line 1690
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1694
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1695
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1696
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 1697
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_6

    .line 1699
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1700
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1701
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1703
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1704
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1705
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1706
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 1707
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 1712
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 1713
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 1714
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1715
    return-void

    .line 1714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1793
    monitor-enter p0

    .line 1794
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1797
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 1799
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1800
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1801
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1802
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1804
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1805
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1806
    move-object v0, v1

    .line 1807
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 1809
    :cond_2
    if-nez v0, :cond_3

    .line 1810
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1814
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1815
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1816
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 1817
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_6

    .line 1819
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1820
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1821
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1823
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1824
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1825
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1826
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 1827
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 1832
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 1833
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 1834
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 1835
    return-void

    .line 1834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 478
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 480
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 484
    monitor-enter p0

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 486
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist removeSyncBarrierConcurrent(I)V
    .locals 10
    .param p1, "token"    # I

    .line 1185
    new-instance v0, Landroid/os/MessageQueue$MatchBarrierToken;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue$MatchBarrierToken;-><init>(I)V

    move-object v8, v0

    .line 1189
    .local v8, "matchBarrierToken":Landroid/os/MessageQueue$MatchBarrierToken;
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    .local v0, "first":Landroid/os/MessageQueue$MessageNode;
    goto :goto_0

    .line 1190
    .end local v0    # "first":Landroid/os/MessageQueue$MessageNode;
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 1195
    .local v0, "first":Landroid/os/MessageQueue$MessageNode;
    :goto_0
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v2

    .line 1196
    .local v2, "removed":Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    .line 1198
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_1

    iget v4, v3, Landroid/os/Message;->arg1:I

    if-ne v4, p1, :cond_1

    .line 1200
    iget-wide v4, v1, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_1

    .line 1202
    .end local v3    # "m":Landroid/os/Message;
    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    nop

    .line 1206
    return-void

    .line 1203
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist removeSyncBarrierLegacy(I)V
    .locals 5
    .param p1, "token"    # I

    .line 1209
    monitor-enter p0

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1212
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_1

    .line 1213
    :cond_0
    move-object v0, v1

    .line 1214
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 1216
    :cond_1
    if-eqz v1, :cond_8

    .line 1221
    if-eqz v0, :cond_3

    .line 1222
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1223
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_2

    .line 1224
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1226
    :cond_2
    const/4 v2, 0x0

    .local v2, "needWake":Z
    goto :goto_2

    .line 1228
    .end local v2    # "needWake":Z
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1229
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-nez v2, :cond_4

    .line 1230
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1232
    :cond_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 1234
    .restart local v2    # "needWake":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1235
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1239
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_7

    .line 1240
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1242
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_7
    monitor-exit p0

    .line 1243
    return-void

    .line 1217
    .restart local v0    # "prev":Landroid/os/Message;
    .restart local v1    # "p":Landroid/os/Message;
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "token":I
    throw v2

    .line 1242
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "token":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .locals 12
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "r"    # Ljava/lang/Runnable;
    .param p5, "when"    # J
    .param p7, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p8, "removeMatches"    # Z

    .line 2849
    const/4 v0, 0x0

    .line 2850
    .local v0, "found":Z
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v1

    .line 2851
    .local v1, "top":Landroid/os/MessageQueue$StackNode;
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;

    move-result-object v2

    .line 2860
    .local v2, "bottom":Landroid/os/MessageQueue$StateNode;
    if-ne v1, v2, :cond_1

    .line 2861
    sget-object v3, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 2862
    return v4

    .line 2864
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2865
    return v4

    .line 2875
    :cond_1
    move-object v3, v1

    check-cast v3, Landroid/os/MessageQueue$MessageNode;

    move-object v4, v3

    .line 2878
    .local v4, "p":Landroid/os/MessageQueue$MessageNode;
    :goto_0
    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v3, p7

    invoke-virtual/range {v3 .. v10}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2879
    const/4 v0, 0x1

    .line 2883
    if-eqz p8, :cond_2

    .line 2884
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2885
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->recycleUnchecked()V

    .line 2886
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2887
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageCounts;->incrementCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2888
    iget-wide v5, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v5, v6}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_1

    .line 2892
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 2896
    :cond_3
    :goto_1
    iget-object v3, v4, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2897
    .local v3, "n":Landroid/os/MessageQueue$StackNode;
    if-nez v3, :cond_4

    .line 2902
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2903
    nop

    .line 2912
    .end local v3    # "n":Landroid/os/MessageQueue$StackNode;
    return v0

    .line 2905
    .restart local v3    # "n":Landroid/os/MessageQueue$StackNode;
    :cond_4
    invoke-virtual {v3}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2907
    return v0

    .line 2909
    :cond_5
    move-object v4, v3

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2910
    .end local v3    # "n":Landroid/os/MessageQueue$StackNode;
    goto :goto_0
.end method

.method private blacklist swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;
    .locals 3

    .line 2438
    nop

    :goto_0
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2439
    .local v0, "current":Landroid/os/MessageQueue$StackNode;
    sget-object v1, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2440
    invoke-polymorphic {v1, p0, v0, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2443
    .end local v0    # "current":Landroid/os/MessageQueue$StackNode;
    :cond_0
    goto :goto_0

    .line 2441
    .restart local v0    # "current":Landroid/os/MessageQueue$StackNode;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static blacklist throwIfNotTest()V
    .locals 4

    .line 185
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 186
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 191
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    if-nez v1, :cond_1

    .line 193
    return-void

    .line 195
    :cond_1
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    return-void

    .line 198
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Test-only API called not from a test!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist throwIfNotTest$ravenwood()V
    .locals 0

    .line 202
    return-void
.end method

.method private blacklist traceMessageCount()V
    .locals 4

    .line 248
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageQueue;->mTid:J

    iget-object v3, p0, Landroid/os/MessageQueue;->mThread:Ljava/lang/Thread;

    .line 249
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 251
    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 516
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 518
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 519
    .local v1, "index":I
    const/4 v2, 0x0

    .line 520
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 522
    if-ltz v1, :cond_0

    .line 523
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 524
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_0

    .line 525
    return-void

    .line 530
    :cond_0
    if-eqz p2, :cond_3

    .line 531
    or-int/lit8 p2, p2, 0x4

    .line 532
    if-nez v2, :cond_2

    .line 533
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 534
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 536
    :cond_1
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 537
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .local v3, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v3

    goto :goto_0

    .line 539
    .end local v3    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_2
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 540
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 541
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 543
    :goto_0
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_1

    .line 544
    :cond_3
    if-eqz v2, :cond_4

    .line 545
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 546
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 547
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 549
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist waitForDrainCompleted()V
    .locals 1

    .line 2453
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2454
    :goto_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 2457
    :cond_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2458
    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 347
    if-eqz p1, :cond_1

    .line 350
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 463
    if-eqz p1, :cond_2

    .line 466
    if-eqz p3, :cond_1

    .line 470
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 475
    :goto_0
    return-void

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 11
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2178
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_4

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2180
    .local v7, "now":J
    const/4 v0, 0x0

    .line 2182
    .local v0, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "(MessageQueue is using Concurrent implementation)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2184
    sget-object v2, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v2

    move v6, v0

    move-object v0, v2

    .line 2185
    .local v0, "node":Landroid/os/MessageQueue$StackNode;
    .local v6, "n":I
    :goto_0
    if-eqz v0, :cond_3

    .line 2186
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2187
    move-object v2, v0

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    .line 2188
    .local v2, "msg":Landroid/os/Message;
    if-eqz p3, :cond_0

    iget-object v9, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v9, :cond_1

    .line 2189
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v7, v8}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2191
    :cond_1
    move-object v9, v0

    check-cast v9, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v9, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2192
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2193
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "State: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2194
    const/4 v0, 0x0

    .line 2196
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2199
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "PriorityQueue Messages: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2200
    iget-object v2, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 2201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "AsyncPriorityQueue Messages: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2202
    iget-object v2, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 2204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "(Total messages: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", polling="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", quitting="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    .line 2205
    invoke-polymorphic {v9, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2204
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2206
    return-void

    .line 2209
    .end local v0    # "node":Landroid/os/MessageQueue$StackNode;
    .end local v6    # "n":I
    .end local v7    # "now":J
    :cond_4
    monitor-enter p0

    .line 2210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(MessageQueue is using Legacy implementation)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2212
    .local v6, "now":J
    const/4 v0, 0x0

    .line 2213
    .local v0, "n":I
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .restart local v2    # "msg":Landroid/os/Message;
    :goto_2
    if-eqz v2, :cond_7

    .line 2214
    if-eqz p3, :cond_5

    iget-object v8, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v8, :cond_6

    .line 2215
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v6, v7}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2217
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 2213
    iget-object v8, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v8

    goto :goto_2

    .line 2219
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "(Total messages: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", polling="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", quitting="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v8, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2221
    .end local v0    # "n":I
    .end local v6    # "now":J
    monitor-exit p0

    .line 2222
    return-void

    .line 2221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2239
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const-wide v1, 0x20b00000001L

    const-wide v3, 0x10800000003L

    const-wide v5, 0x10800000002L

    if-eqz v0, :cond_1

    .line 2240
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2242
    .local v7, "messageQueueToken":J
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2243
    .local v0, "node":Landroid/os/MessageQueue$StackNode;
    :goto_0
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2244
    move-object v9, v0

    check-cast v9, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v9}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v9

    .line 2245
    .local v9, "msg":Landroid/os/Message;
    invoke-virtual {v9, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2246
    move-object v10, v0

    check-cast v10, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v10, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2247
    .end local v9    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2249
    :cond_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v1, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2250
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v1, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2252
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v1

    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2253
    sget-object v1, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v1

    invoke-virtual {p1, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2254
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2255
    return-void

    .line 2258
    .end local v0    # "node":Landroid/os/MessageQueue$StackNode;
    .end local v7    # "messageQueueToken":J
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2259
    .restart local v7    # "messageQueueToken":J
    monitor-enter p0

    .line 2260
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_2

    .line 2261
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2260
    iget-object v9, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v9

    goto :goto_1

    .line 2263
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2264
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2267
    return-void

    .line 2265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1385
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1389
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 1390
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageConcurrent(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1392
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageLegacy(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1386
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1577
    if-nez p1, :cond_0

    .line 1578
    const/4 v0, 0x0

    return v0

    .line 1580
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1581
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 1583
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1658
    if-nez p1, :cond_0

    .line 1659
    const/4 v0, 0x0

    return v0

    .line 1661
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1662
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;)Z

    move-result v0

    return v0

    .line 1664
    :cond_1
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1534
    if-nez p1, :cond_0

    .line 1535
    const/4 v0, 0x0

    return v0

    .line 1537
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1538
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 1540
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1621
    if-nez p1, :cond_0

    .line 1622
    const/4 v0, 0x0

    return v0

    .line 1624
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1625
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1627
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist isBlockedOnSyncBarrier()Z
    .locals 5

    .line 1486
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1487
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1489
    invoke-direct {p0, v2, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    .line 1491
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1492
    .local v0, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v3

    .line 1494
    .local v3, "queueNode":Landroid/os/MessageQueue$MessageNode;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1496
    .end local v0    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .end local v3    # "queueNode":Landroid/os/MessageQueue$MessageNode;
    :cond_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1497
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public whitelist isIdle()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleConcurrent()Z

    move-result v0

    return v0

    .line 320
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleLegacy()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPolling()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingConcurrent()Z

    move-result v0

    return v0

    .line 411
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLegacy()Z

    move-result v0

    return v0
.end method

.method greylist next()Landroid/os/Message;
    .locals 1

    .line 1012
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 1013
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextConcurrent()Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextLegacy()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method blacklist peekWhenForTest()Ljava/lang/Long;
    .locals 3

    .line 1451
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1453
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1454
    invoke-direct {p0, v1, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    .local v0, "ret":Landroid/os/Message;
    goto :goto_0

    .line 1456
    .end local v0    # "ret":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    .line 1458
    .restart local v0    # "ret":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/os/Message;->when:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method blacklist pollForTest()Landroid/os/Message;
    .locals 2

    .line 1470
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1471
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1472
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1474
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist postSyncBarrier()I
    .locals 1

    .line 1091
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 1092
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierConcurrent()I

    move-result v0

    return v0

    .line 1094
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierLegacy()I

    move-result v0

    return v0
.end method

.method greylist-max-o quit(Z)V
    .locals 4
    .param p1, "safe"    # Z

    .line 1020
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_5

    .line 1024
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1025
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    sget-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    const/4 v3, 0x0

    invoke-polymorphic {v2, p0, v3, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessages()V

    goto :goto_0

    .line 1030
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessages()V

    .line 1034
    :goto_0
    iget-wide v1, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v1, v2}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1036
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1038
    :cond_2
    monitor-enter p0

    .line 1039
    :try_start_1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_3

    .line 1040
    monitor-exit p0

    return-void

    .line 1042
    :cond_3
    iput-boolean v1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 1044
    if-eqz p1, :cond_4

    .line 1045
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_1

    .line 1047
    :cond_4
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 1051
    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1052
    monitor-exit p0

    .line 1054
    :goto_2
    return-void

    .line 1052
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1021
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2060
    if-nez p1, :cond_0

    .line 2061
    return-void

    .line 2064
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_0

    .line 2067
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 2069
    :goto_0
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2012
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2013
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2016
    monitor-enter p0

    .line 2017
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2020
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2021
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2022
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2023
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2024
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2025
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2027
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2028
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2029
    move-object v0, v1

    .line 2030
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 2032
    :cond_2
    if-nez v0, :cond_3

    .line 2033
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2037
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 2038
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2039
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6

    .line 2040
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2041
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2042
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2043
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2045
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2046
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2047
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2048
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_3

    .line 2049
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_1

    .line 2054
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6
    move-object v0, v1

    .line 2055
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 2056
    .end local v0    # "p":Landroid/os/Message;
    :cond_7
    monitor-exit p0

    .line 2057
    return-void

    .line 2056
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1986
    if-nez p1, :cond_0

    .line 1987
    return-void

    .line 1990
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1991
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_0

    .line 1993
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 1995
    :goto_0
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1777
    if-nez p1, :cond_0

    .line 1778
    return-void

    .line 1781
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1782
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1784
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1786
    :goto_0
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1913
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1917
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1918
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1920
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1922
    :goto_0
    return-void

    .line 1914
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 377
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 382
    :goto_0
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1718
    if-nez p1, :cond_0

    .line 1719
    return-void

    .line 1721
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1722
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1724
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1726
    :goto_0
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1838
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1842
    :cond_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_1

    .line 1843
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1845
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1847
    :goto_0
    return-void

    .line 1839
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 503
    if-eqz p1, :cond_1

    .line 506
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeSyncBarrier(I)V
    .locals 1
    .param p1, "token"    # I

    .line 1260
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_0

    .line 1261
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierConcurrent(I)V

    goto :goto_0

    .line 1263
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierLegacy(I)V

    .line 1266
    :goto_0
    return-void
.end method
