.class public final Landroid/os/PerfettoTrackEventExtra$Builder;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategory:Landroid/os/PerfettoTrace$Category;

.field private final blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private final blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

.field private blacklist mEventName:Ljava/lang/String;

.field private final blacklist mExtra:Landroid/os/PerfettoTrackEventExtra;

.field private final blacklist mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private final blacklist mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Flow;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsBuilt:Z

.field private blacklist mIsCategoryEnabled:Z

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

.field private final blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mTraceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    .line 180
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 181
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 182
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 183
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 184
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 185
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 186
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 187
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 188
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 189
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 190
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFlowCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 191
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 193
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    .line 194
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    .line 195
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    .line 196
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 197
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 198
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>()V

    return-void
.end method

.method private blacklist checkContainer()V
    .locals 2

    .line 643
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 644
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_0

    .line 648
    return-void

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Field operations must be within beginProto/endProto block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkParent()V
    .locals 2

    .line 636
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 637
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    return-void

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported for proto"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkState()V
    .locals 2

    .line 629
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This builder has already been used. Create a new builder for another event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1
    .param p1, "parent"    # Landroid/os/PerfettoTrackEventExtra$Builder;
    .param p2, "field"    # Landroid/os/PerfettoTrackEventExtra$FieldContainer;
    .param p3, "isCategoryEnabled"    # Z

    .line 620
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    .line 621
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    .line 622
    iput-boolean p3, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 625
    return-object p0
.end method


# virtual methods
.method public blacklist addArg(Ljava/lang/String;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 289
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 290
    return-object p0

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    .line 296
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgDouble;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 298
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 300
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->setValue(D)V

    .line 301
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 302
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 249
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 250
    return-object p0

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    .line 256
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgInt64;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 258
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 260
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->setValue(J)V

    .line 261
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 262
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 309
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 310
    return-object p0

    .line 315
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    .line 316
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgString;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgString;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgString;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 318
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 320
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgString;->setValue(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 322
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 269
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 270
    return-object p0

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    .line 276
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgBool;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 278
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 280
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->setValue(Z)V

    .line 281
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 282
    return-object p0
.end method

.method public blacklist addField(JD)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # J
    .param p3, "val"    # D

    .line 525
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 526
    return-object p0

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;

    .line 532
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldDouble;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->setValue(JD)V

    .line 533
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 534
    return-object p0
.end method

.method public blacklist addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # J
    .param p3, "val"    # J

    .line 509
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 510
    return-object p0

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;

    .line 516
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldInt64;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->setValue(JJ)V

    .line 517
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 518
    return-object p0
.end method

.method public blacklist addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 541
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 542
    return-object p0

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldString;

    .line 548
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldString;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$FieldString;->setValue(JLjava/lang/String;)V

    .line 549
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 550
    return-object p0
.end method

.method public blacklist addFlow(I)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # I

    .line 329
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 330
    return-object p0

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFlowSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 336
    .local v0, "flow":Landroid/os/PerfettoTrackEventExtra$Flow;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    .line 337
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 338
    return-object p0
.end method

.method public blacklist addTerminatingFlow(I)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # I

    .line 345
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 346
    return-object p0

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFlowSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 352
    .local v0, "flow":Landroid/os/PerfettoTrackEventExtra$Flow;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    .line 353
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 354
    return-object p0
.end method

.method public blacklist beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # J

    .line 592
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 593
    return-object p0

    .line 598
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;

    .line 599
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldNested;
    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->setId(J)V

    .line 600
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 601
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PerfettoTrackEventExtra$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3

    .line 562
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 563
    return-object p0

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;->clearFields()V

    .line 569
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 570
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist emit()V
    .locals 7

    .line 204
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 212
    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->getPtr()J

    move-result-wide v2

    iget-object v4, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra;->getPtr()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$smnative_emit(IJLjava/lang/String;J)V

    .line 213
    return-void
.end method

.method public blacklist endNested()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    .line 608
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 609
    return-object p0

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 612
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No nested field to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist endProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    .line 577
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 578
    return-object p0

    .line 580
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No proto to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "traceType"    # I
    .param p2, "category"    # Landroid/os/PerfettoTrace$Category;

    .line 219
    invoke-virtual {p2}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    return-object p0

    .line 222
    :cond_0
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    .line 223
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 226
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 227
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 228
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 229
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 230
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 232
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra;->reset()V

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p0, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "val"    # D

    .line 494
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 495
    return-object p0

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->setValue(D)V

    .line 501
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 502
    return-object p0
.end method

.method public blacklist setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "val"    # J

    .line 478
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 479
    return-object p0

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;->setValue(J)V

    .line 485
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 486
    return-object p0
.end method

.method public blacklist setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public blacklist setFlow(I)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # I

    .line 361
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 362
    return-object p0

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    .line 368
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 369
    return-object p0
.end method

.method public blacklist setTerminatingFlow(I)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "id"    # I

    .line 376
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 377
    return-object p0

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    .line 383
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 384
    return-object p0
.end method

.method public blacklist usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "parentUuid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 435
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 436
    return-object p0

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    .line 443
    .local v0, "track":Landroid/os/PerfettoTrackEventExtra$CounterTrack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 444
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    invoke-direct {v1, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    .line 445
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 447
    :cond_2
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 448
    return-object p0
.end method

.method public blacklist usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3
    .param p1, "parentUuid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 392
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 393
    return-object p0

    .line 399
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    .line 400
    .local v0, "track":Landroid/os/PerfettoTrackEventExtra$NamedTrack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    :cond_1
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    invoke-direct {v1, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    .line 402
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 404
    :cond_2
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 405
    return-object p0
.end method

.method public blacklist usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 456
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 457
    return-object p0

    .line 459
    :cond_0
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingProcessNamedTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 413
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 414
    return-object p0

    .line 416
    :cond_0
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "tid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 467
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 468
    return-object p0

    .line 470
    :cond_0
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingThreadNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2
    .param p1, "tid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 424
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    .line 425
    return-object p0

    .line 427
    :cond_0
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method
