.class public Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnJankDataListenerRegistration"
.end annotation


# static fields
.field public static final blacklist NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private blacklist mListener:Landroid/view/SurfaceControl$OnJankDataListener;

.field private final blacklist mNativeObject:J

.field private blacklist mRemoved:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 574
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 588
    nop

    .line 590
    const-class v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 591
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetJankDataListenerWrapperFinalizer()J

    move-result-wide v1

    .line 589
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 588
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 598
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    .line 599
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 600
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$OnJankDataListener;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 603
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    .line 604
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    .line 605
    :cond_0
    sget-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 607
    iput-object p2, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 608
    return-void
.end method

.method static synthetic blacklist lambda$new$0()V
    .locals 0

    .line 599
    return-void
.end method

.method static synthetic blacklist lambda$new$1()V
    .locals 0

    .line 604
    return-void
.end method


# virtual methods
.method public whitelist flush()V
    .locals 2

    .line 618
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeFlushJankData(J)V

    .line 619
    return-void
.end method

.method public blacklist release()V
    .locals 2

    .line 644
    iget-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    if-nez v0, :cond_0

    .line 645
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->removeAfter(J)V

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 648
    iget-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 649
    return-void
.end method

.method public whitelist removeAfter(J)V
    .locals 2
    .param p1, "afterVsync"    # J

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 636
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveJankDataListener(JJ)V

    .line 637
    return-void
.end method
