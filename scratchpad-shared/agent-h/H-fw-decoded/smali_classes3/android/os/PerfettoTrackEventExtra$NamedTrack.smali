.class Landroid/os/PerfettoTrackEventExtra$NamedTrack;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedTrack"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 801
    nop

    .line 803
    const-class v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->native_delete()J

    move-result-wide v1

    .line 802
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 801
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUuid"    # J

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsNamedTrackId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->native_init(JLjava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    .line 811
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mExtraPtr:J

    .line 812
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mName:Ljava/lang/String;

    .line 813
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 814
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init(JLjava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 822
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .locals 2

    .line 818
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->mExtraPtr:J

    return-wide v0
.end method
