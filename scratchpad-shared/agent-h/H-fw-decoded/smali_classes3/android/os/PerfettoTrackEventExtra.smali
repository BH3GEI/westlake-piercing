.class public final Landroid/os/PerfettoTrackEventExtra;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerfettoTrackEventExtra$Pool;,
        Landroid/os/PerfettoTrackEventExtra$Builder;,
        Landroid/os/PerfettoTrackEventExtra$FieldContainer;,
        Landroid/os/PerfettoTrackEventExtra$RingBuffer;,
        Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;,
        Landroid/os/PerfettoTrackEventExtra$CounterInt64;,
        Landroid/os/PerfettoTrackEventExtra$CounterDouble;,
        Landroid/os/PerfettoTrackEventExtra$Proto;,
        Landroid/os/PerfettoTrackEventExtra$Flow;,
        Landroid/os/PerfettoTrackEventExtra$FieldNested;,
        Landroid/os/PerfettoTrackEventExtra$FieldString;,
        Landroid/os/PerfettoTrackEventExtra$FieldDouble;,
        Landroid/os/PerfettoTrackEventExtra$FieldInt64;,
        Landroid/os/PerfettoTrackEventExtra$ArgString;,
        Landroid/os/PerfettoTrackEventExtra$ArgDouble;,
        Landroid/os/PerfettoTrackEventExtra$ArgBool;,
        Landroid/os/PerfettoTrackEventExtra$ArgInt64;,
        Landroid/os/PerfettoTrackEventExtra$CounterTrack;,
        Landroid/os/PerfettoTrackEventExtra$NamedTrack;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_EXTRA_CACHE_SIZE:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrackEventExtra"

.field private static final blacklist sBuilderSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldDoubleSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldInt64Supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldNestedSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldStringSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFlowSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$Flow;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final blacklist sTrackEventExtra:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/PerfettoTrackEventExtra;",
            ">;"
        }
    .end annotation
.end field


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

.field private blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

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

.field private blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private final blacklist mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Flow;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingPointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mPtr:J

.field private blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;


# direct methods
.method public static synthetic blacklist $r8$lambda$PKockuywBd_S6YrwVRC15_taBZQ()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra-IA;)V

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlowCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getCounterDouble()Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getCounterInt64()Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getFlow()Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getProto()Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getTerminatingFlow()Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldDoubleSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldInt64Supplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldNestedSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldStringSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFlowSupplier()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFlowSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsNamedTrackId()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_emit(IJLjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/os/PerfettoTrackEventExtra;->native_emit(IJLjava/lang/String;J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$1;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$1;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFlowSupplier:Ljava/util/function/Supplier;

    .line 49
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    .line 50
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldInt64Supplier:Ljava/util/function/Supplier;

    .line 51
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldDoubleSupplier:Ljava/util/function/Supplier;

    .line 52
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldStringSupplier:Ljava/util/function/Supplier;

    .line 53
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldNestedSupplier:Ljava/util/function/Supplier;

    .line 676
    nop

    .line 678
    const-class v0, Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->native_delete()J

    move-result-wide v1

    .line 677
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 676
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    .line 659
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 661
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 664
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 665
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 666
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 667
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 669
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 670
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 671
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 672
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 673
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlowCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 674
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 684
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    .line 685
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 688
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;-><init>()V

    return-void
.end method

.method public static blacklist builder()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 3

    .line 655
    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    iget-object v0, v0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    sget-object v1, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->-$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCounterDouble()Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .locals 1

    .line 731
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    .line 734
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    return-object v0
.end method

.method private blacklist getCounterDouble$ravenwood()Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .locals 1

    .line 1328
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCounterInt64()Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    return-object v0
.end method

.method private blacklist getCounterInt64$ravenwood()Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .locals 1

    .line 1323
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFlow()Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 1

    .line 747
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Flow;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method

.method private blacklist getFlow$ravenwood()Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 1

    .line 1338
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getProto()Landroid/os/PerfettoTrackEventExtra$Proto;
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    .line 742
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    return-object v0
.end method

.method private blacklist getProto$ravenwood()Landroid/os/PerfettoTrackEventExtra$Proto;
    .locals 1

    .line 1333
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTerminatingFlow()Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 1

    .line 755
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Flow;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 758
    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method

.method private blacklist getTerminatingFlow$ravenwood()Landroid/os/PerfettoTrackEventExtra$Flow;
    .locals 1

    .line 1343
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native blacklist native_add_arg(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_clear_args(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_delete$ravenwood()J
    .locals 2

    .line 1318
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_emit(IJLjava/lang/String;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_init$ravenwood()J
    .locals 2

    .line 1313
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public blacklist addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V
    .locals 1
    .param p1, "container"    # Landroid/os/PerfettoTrackEventExtra$FieldContainer;
    .param p2, "extra"    # Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;

    .line 709
    invoke-interface {p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldContainer;->addField(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 710
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method public blacklist addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V
    .locals 4
    .param p1, "extra"    # Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;

    .line 701
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-interface {p1}, Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra;->native_add_arg(JJ)V

    .line 702
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    return-void
.end method

.method public blacklist getPtr()J
    .locals 2

    .line 694
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    return-wide v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 717
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->native_clear_args(J)V

    .line 718
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 719
    return-void
.end method
