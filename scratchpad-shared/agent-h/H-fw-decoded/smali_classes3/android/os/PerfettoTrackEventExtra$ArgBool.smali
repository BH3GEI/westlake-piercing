.class final Landroid/os/PerfettoTrackEventExtra$ArgBool;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgBool"
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

    .line 976
    nop

    .line 978
    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_delete()J

    move-result-wide v1

    .line 977
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 976
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    .line 990
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    .line 991
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    .line 992
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 993
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

.method private static native blacklist native_init(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 1001
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .locals 2

    .line 997
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 1005
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_set_value(JZ)V

    .line 1006
    return-void
.end method
