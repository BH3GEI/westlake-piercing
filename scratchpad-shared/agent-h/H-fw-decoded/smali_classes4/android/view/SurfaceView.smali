.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlViewHostParent;,
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;,
        Landroid/view/SurfaceView$SurfaceLifecycleStrategy;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_POSITION:Z = false

.field private static final blacklist FORWARD_BACK_KEY_TOLERANCE_MS:J = 0x64L

.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66

.field private static final blacklist LOGTAG_SURFACEVIEW_LAYOUT:I = 0xea65

.field public static final whitelist SURFACE_LIFECYCLE_DEFAULT:I = 0x0

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT:I = 0x2

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_VISIBILITY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field blacklist mAlpha:F

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field private final blacklist mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field private blacklist mHdrHeadroom:F

.field greylist-max-p mIsCreating:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field private final blacklist mLimitedHdrEnabled:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastSetCrop:Landroid/graphics/RectF;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field private blacklist mRequestedHdrHeadroom:F

.field greylist-max-p mRequestedHeight:I

.field blacklist mRequestedSubLayer:I

.field private blacklist mRequestedSurfaceLifecycleStrategy:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final blacklist mRtDrivenClipping:Z

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field private final blacklist mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

.field greylist-max-o mSurfaceCreated:Z

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private blacklist mSurfaceLifecycleStrategy:I

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/SurfaceSyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$NfZyM_TG8F8lqzaOVZ7noREFjzU(Landroid/view/SurfaceView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YBnSWna8pqXfO6ChPyR7fiW9mv4(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_pMdvlkS5pGjU0467JiRLPVZuqU(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fEUJ8AN5zlaEQlBS9kCb2vUfWDI(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 438
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 442
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 446
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 449
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    .local v4, "defStyleRes":I
    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 450
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 455
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 181
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 185
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 198
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->limitedHdr()Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    .line 202
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 204
    iput v1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 206
    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 209
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 210
    iput v2, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 216
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 217
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 221
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 222
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 224
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 228
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 231
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 241
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 242
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 243
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 244
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 245
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 247
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 250
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 256
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 261
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 263
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 265
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 270
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 271
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 275
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 276
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 277
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 278
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 279
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 281
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 286
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 289
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 290
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 295
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 297
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    .line 303
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 310
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 315
    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 318
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 326
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 329
    const-string v1, "SurfaceView"

    iput-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 431
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>(Landroid/view/SurfaceView-IA;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    .line 434
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->clipSurfaceviews()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    .line 1674
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1675
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    .line 1810
    iput-object v2, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1875
    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 456
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 457
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 458
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1665
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1666
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1668
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_0

    .line 1670
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1672
    :goto_0
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2336
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2337
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 2339
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_0

    .line 2341
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2343
    :goto_0
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 728
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v7

    .line 729
    .local v7, "alpha":F
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 730
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 731
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 734
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget v6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    goto :goto_0

    .line 744
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p1

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    .line 746
    :goto_0
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .locals 2
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1507
    if-eqz p1, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 1511
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 1518
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_1

    .line 1519
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1522
    :cond_1
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1558
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_0

    .line 1559
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1560
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1561
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1562
    invoke-virtual {p1, p3}, Landroid/view/ViewRootImpl;->updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1563
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1565
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1569
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1570
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1571
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1572
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1573
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1574
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1575
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1576
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_2

    .line 1580
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1581
    :goto_0
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    .line 1582
    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1583
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1586
    :goto_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_4

    .line 1587
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1588
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1590
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1591
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1592
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1593
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1594
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1599
    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_5

    .line 1600
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1602
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1603
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1605
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1606
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1607
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1608
    return-void
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1814
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1815
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1816
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1817
    monitor-exit v0

    .line 1818
    return-object v1

    .line 1817
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1427
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1429
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1440
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .locals 3
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1443
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1456
    return-void

    .line 1446
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2261
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 2262
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2263
    return-void

    .line 2265
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 2266
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 2265
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 2268
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 2269
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .locals 1

    .line 1845
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .locals 2
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1433
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1436
    :cond_0
    invoke-virtual {p2, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1437
    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1438
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1439
    return-void
.end method

.method private synthetic blacklist lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V
    .locals 2
    .param p1, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1449
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1450
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1453
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1454
    return-void

    .line 1451
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$new$0()Z
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 237
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 238
    return v1
.end method

.method private blacklist notifySurfaceDestroyed()V
    .locals 5

    .line 2272
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0xea66

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2276
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2277
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2278
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2277
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2291
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2292
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2295
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .locals 1

    .line 1616
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1617
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .locals 1

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 572
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 574
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 576
    :cond_0
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z
    .locals 11
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "relativeZChanged"    # Z
    .param p7, "hdrHeadroomChanged"    # Z
    .param p8, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1057
    move-object/from16 v2, p8

    const/4 v8, 0x0

    .line 1059
    .local v8, "realSizeChanged":Z
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1061
    :try_start_0
    invoke-direct {p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 1071
    if-eqz p3, :cond_1

    .line 1072
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1073
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {p0, v2, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1077
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 1081
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1082
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_2

    .line 1083
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1085
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1089
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 1090
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1091
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    if-eqz v0, :cond_5

    if-nez p7, :cond_4

    if-eqz p3, :cond_5

    .line 1092
    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1095
    :cond_5
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 1097
    .local v0, "alpha":F
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1100
    .end local v0    # "alpha":F
    :cond_6
    if-eqz p6, :cond_8

    .line 1101
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1104
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1106
    :cond_7
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1109
    :cond_8
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1110
    if-nez p4, :cond_9

    if-eqz p5, :cond_a

    :cond_9
    if-nez p3, :cond_a

    .line 1111
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 1113
    :cond_a
    if-nez p4, :cond_b

    if-nez p3, :cond_b

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1115
    :cond_b
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1120
    :cond_c
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    .line 1121
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 1123
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1128
    :cond_e
    :goto_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setDestinationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1131
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1134
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_3

    .line 1136
    :cond_f
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1140
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1136
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1152
    :cond_10
    :goto_3
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1153
    invoke-virtual {p0, v10}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1155
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 1156
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1157
    if-nez p2, :cond_11

    .line 1158
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1159
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1161
    :cond_11
    iget v0, p2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 1162
    .local v0, "appInvertedScale":F
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1163
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1165
    .end local v0    # "appInvertedScale":F
    :goto_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1166
    .local v0, "surfaceWidth":I
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1167
    .local v3, "surfaceHeight":I
    iget v4, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v4, v0, :cond_13

    iget v4, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v4, v3, :cond_12

    goto :goto_5

    :cond_12
    move v9, v10

    :cond_13
    :goto_5
    move v8, v9

    .line 1169
    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 1170
    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    .end local v0    # "surfaceWidth":I
    .end local v3    # "surfaceHeight":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1173
    nop

    .line 1175
    return v8

    .line 1172
    :catchall_0
    move-exception v0

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1173
    throw v0
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1460
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1461
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1462
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .locals 4
    .param p1, "releaseSurfacePackage"    # Z

    .line 1004
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 1005
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 1006
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1007
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1009
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1012
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1013
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1

    .line 1014
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1015
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1017
    :cond_1
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 1018
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1019
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1021
    :cond_2
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    .line 1022
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1023
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1026
    :cond_3
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_4

    .line 1027
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v3}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 1028
    iget-object v3, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1029
    if-eqz p1, :cond_4

    .line 1030
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1031
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1035
    :cond_4
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1036
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0

    .line 1037
    return-void

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2227
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2228
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2231
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2232
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2233
    return-void

    .line 2229
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .locals 2
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 1047
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1050
    :cond_0
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1051
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1052
    return-void
.end method

.method private blacklist requestEmbeddedFocus(Z)V
    .locals 4
    .param p1, "gainFocus"    # Z

    .line 2322
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2323
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2327
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2328
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    .line 2327
    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    goto :goto_0

    .line 2329
    :catch_0
    move-exception v1

    .line 2330
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2333
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2324
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist requiresSurfaceControlCreation(ZZ)Z
    .locals 4
    .param p1, "formatChanged"    # Z
    .param p2, "visibleChanged"    # Z

    .line 1179
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1180
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 1183
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1822
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1823
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1824
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1826
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1828
    :goto_0
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1525
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1526
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1530
    :cond_0
    return-void
.end method

.method private blacklist setTag()V
    .locals 5

    .line 481
    const-string v0, ""

    .line 482
    .local v0, "windowName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 483
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 485
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .end local v2    # "split":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 492
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .line 475
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 476
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 477
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 478
    return-void
.end method

.method private blacklist surfaceShouldExist()Z
    .locals 4

    .line 1187
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1189
    .local v0, "respectVisibility":Z
    :goto_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 997
    iget v0, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 998
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    .line 999
    .local v1, "colorComponents":[F
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1000
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 985
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 986
    return-void

    .line 988
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v0, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v0, :cond_1

    .line 990
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 992
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 994
    :goto_0
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .locals 1

    .line 977
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 980
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 982
    :goto_0
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2129
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2130
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 2132
    return-void

    .line 2134
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2135
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2136
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2137
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 472
    return-void
.end method


# virtual methods
.method public whitelist applyTransactionToFrame(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2370
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2371
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    .line 2375
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->getLastAcquiredFrameNum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 2376
    .local v1, "frameNumber":J
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 2377
    .end local v1    # "frameNumber":J
    monitor-exit v0

    .line 2378
    return-void

    .line 2372
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceView;
    .end local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    throw v1

    .line 2377
    .restart local p0    # "this":Landroid/view/SurfaceView;
    .restart local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clearChildSurfacePackage()V
    .locals 4

    .line 2209
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 2211
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2214
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2215
    .local v0, "sc":Landroid/view/SurfaceControl;
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2216
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2217
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2218
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2220
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2221
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2223
    .end local v0    # "sc":Landroid/view/SurfaceControl;
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_0
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 669
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 673
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 676
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 677
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 657
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 664
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 665
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 630
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    move-object v5, p1

    goto :goto_1

    .line 634
    :cond_0
    const/4 v0, 0x1

    .line 635
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 637
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    move-object v5, p1

    goto :goto_0

    .line 638
    :cond_1
    if-eqz p1, :cond_3

    .line 639
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 640
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 641
    .local v2, "h":I
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 642
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 644
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v6, v3, v4

    .line 645
    .local v6, "l":I
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v7, v3, v4

    .line 646
    .local v7, "t":I
    add-int v8, v6, v1

    add-int v9, v7, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .local v5, "region":Landroid/graphics/Region;
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 641
    .end local v5    # "region":Landroid/graphics/Region;
    .end local v6    # "l":I
    .end local v7    # "t":I
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_2
    move-object v5, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    goto :goto_0

    .line 638
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_3
    move-object v5, p1

    .line 649
    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    :goto_0
    iget p1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 650
    const/4 v0, 0x0

    .line 652
    :cond_4
    return v0

    .line 630
    .end local v0    # "opaque":Z
    .end local v5    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_5
    move-object v5, p1

    .line 631
    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    :goto_1
    invoke-super {p0, v5}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2397
    const-class v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 1

    .line 2197
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public whitelist getCompositionOrder()I
    .locals 1

    .line 802
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    return v0
.end method

.method public blacklist getCornerRadius()F
    .locals 1

    .line 772
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2088
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2089
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 2090
    const/4 v1, 0x0

    return-object v1

    .line 2092
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .locals 2

    .line 2249
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 2253
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2255
    :cond_1
    return v0

    .line 2257
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 4

    .line 1410
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1411
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    const-string v1, "detached"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "viewRootName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 2076
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .locals 1

    .line 1661
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFixedSize()Z
    .locals 2

    .line 1841
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isZOrderedOnTop()Z
    .locals 1

    .line 851
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 496
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 497
    invoke-direct {p0}, Landroid/view/SurfaceView;->setTag()V

    .line 498
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 500
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 501
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 503
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 504
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 505
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 507
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 508
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 509
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 511
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4

    .line 580
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 586
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 590
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 591
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 593
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 594
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 595
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 599
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 601
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 602
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 604
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 605
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 606
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2317
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2318
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2319
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2238
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2239
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2240
    return-void

    .line 2244
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 2245
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 610
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 611
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_0
    nop

    .line 613
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 614
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    .line 615
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1
    nop

    .line 616
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 617
    return-void
.end method

.method protected whitelist onSetAlpha(I)Z
    .locals 2
    .param p1, "alpha"    # I

    .line 564
    iget v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 567
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 8
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1635
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1636
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    .end local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local p2    # "surface":Landroid/view/SurfaceControl;
    .end local p5    # "postScaleX":F
    .end local p6    # "postScaleY":F
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    .local v3, "surface":Landroid/view/SurfaceControl;
    .local v4, "postScaleX":F
    .local v7, "postScaleY":F
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1638
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 515
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 516
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 517
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 518
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 519
    return-void
.end method

.method blacklist performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 2382
    invoke-super {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 2383
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2388
    .local v1, "embeddedWindowAttr":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 2389
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2390
    goto :goto_1

    .line 2392
    .end local v1    # "embeddedWindowAttr":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    goto :goto_0

    .line 2393
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .locals 8

    .line 1642
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1643
    return-void

    .line 1645
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v2, v0

    .line 1646
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1649
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1650
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1646
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1651
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1652
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1653
    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 559
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 560
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2165
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2167
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2168
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 2169
    if-eqz v0, :cond_1

    .line 2170
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2171
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2173
    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2174
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2176
    :cond_2
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2177
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->attach(Landroid/view/SurfaceView;)V

    .line 2179
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2180
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2182
    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2183
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 693
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 695
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    return-void

    .line 699
    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 709
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 712
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 715
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 716
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 717
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 718
    return-void

    .line 700
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist setCompositionOrder(I)V
    .locals 2
    .param p1, "compositionOrder"    # I

    .line 787
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 788
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v1, :cond_0

    .line 789
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 791
    :cond_0
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .line 756
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 757
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 759
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 760
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 763
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .locals 3
    .param p1, "desiredHeadroom"    # F

    .line 962
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_1
    :goto_0
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 972
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 973
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 974
    return-void

    .line 963
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 687
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 688
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 689
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 623
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 624
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 625
    return v0
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .line 1856
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1857
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1858
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1859
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1860
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1868
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1869
    return-void

    .line 1871
    :cond_0
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1872
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1873
    return-void
.end method

.method public whitelist setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 911
    if-eqz p1, :cond_0

    .line 912
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 914
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 916
    :goto_0
    return-void
.end method

.method public whitelist setSurfaceLifecycle(I)V
    .locals 0
    .param p1, "lifecycleStrategy"    # I

    .line 928
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 929
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 930
    return-void
.end method

.method public blacklist setUseAlpha()V
    .locals 0

    .line 550
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 523
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 525
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 526
    .local v0, "newRequestedVisible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    .line 533
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 535
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 536
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 537
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .line 817
    if-eqz p1, :cond_0

    .line 818
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 819
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    .line 840
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 842
    .local v0, "allowDynamicChange":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 843
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .locals 3
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z

    .line 872
    if-eqz p1, :cond_0

    .line 873
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_0

    .line 875
    .end local v0    # "subLayer":I
    :cond_0
    const/4 v0, -0x2

    .line 877
    .restart local v0    # "subLayer":I
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 878
    return v2

    .line 880
    :cond_1
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 882
    if-nez p2, :cond_2

    .line 883
    return v2

    .line 885
    :cond_2
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 886
    return v2

    .line 888
    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 889
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_4

    .line 890
    return v2

    .line 893
    :cond_4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 894
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 895
    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2103
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .locals 1

    .line 2112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2113
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 2114
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2123
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 2124
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 2126
    :cond_0
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2349
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    .line 2350
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 2298
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2299
    return-void

    .line 2301
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2306
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2307
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2308
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2309
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2310
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2309
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2311
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2312
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .locals 38

    .line 1194
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_0

    .line 1198
    return-void

    .line 1200
    :cond_0
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1202
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_1

    .line 1203
    return-void

    .line 1206
    :cond_1
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v10, 0x0

    if-eqz v0, :cond_36

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v29, v2

    goto/16 :goto_27

    .line 1212
    :cond_2
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1213
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v3, :cond_3

    .line 1214
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1217
    :cond_3
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1218
    .local v0, "myWidth":I
    if-gtz v0, :cond_4

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_4
    move v11, v0

    .line 1219
    .end local v0    # "myWidth":I
    .local v11, "myWidth":I
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1220
    .local v0, "myHeight":I
    if-gtz v0, :cond_5

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_5
    move v12, v0

    .line 1222
    .end local v0    # "myHeight":I
    .local v12, "myHeight":I
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v13

    .line 1223
    .local v13, "alpha":F
    iget v0, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v4, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v14, 0x1

    if-eq v0, v4, :cond_6

    move v0, v14

    goto :goto_0

    :cond_6
    move v0, v10

    :goto_0
    move v15, v0

    .line 1224
    .local v15, "formatChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v4, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v4, :cond_7

    move v0, v14

    goto :goto_1

    :cond_7
    move v0, v10

    :goto_1
    move v4, v0

    .line 1225
    .local v4, "visibleChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mAlpha:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_8

    move v0, v14

    goto :goto_2

    :cond_8
    move v0, v10

    :goto_2
    move/from16 v16, v0

    .line 1226
    .local v16, "alphaChanged":Z
    move v5, v4

    .end local v4    # "visibleChanged":Z
    .local v5, "visibleChanged":Z
    invoke-direct {v1, v15, v5}, Landroid/view/SurfaceView;->requiresSurfaceControlCreation(ZZ)Z

    move-result v4

    .line 1227
    .local v4, "creating":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v11, :cond_a

    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v12, :cond_9

    goto :goto_3

    :cond_9
    move v0, v10

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v14

    :goto_4
    move v6, v0

    .line 1228
    .local v6, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v7, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v7, :cond_b

    move v0, v14

    goto :goto_5

    :cond_b
    move v0, v10

    :goto_5
    move/from16 v17, v0

    .line 1229
    .local v17, "windowVisibleChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1230
    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v7, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v7, v10

    if-ne v0, v7, :cond_d

    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v7, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v7, v14

    if-eq v0, v7, :cond_c

    goto :goto_6

    :cond_c
    move v0, v10

    goto :goto_7

    :cond_d
    :goto_6
    move v0, v14

    :goto_7
    move/from16 v18, v0

    .line 1232
    .local v18, "positionChanged":Z
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v7, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v0, v7, :cond_f

    .line 1233
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v7, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v0, v7, :cond_e

    goto :goto_8

    :cond_e
    move v0, v10

    goto :goto_9

    :cond_f
    :goto_8
    move v0, v14

    :goto_9
    move/from16 v19, v0

    .line 1234
    .local v19, "layoutSizeChanged":Z
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v7, v1, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v7, :cond_10

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_10

    move v0, v14

    goto :goto_a

    :cond_10
    move v0, v10

    :goto_a
    move v7, v0

    .line 1236
    .local v7, "hintChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSubLayer:I

    iget v8, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v8, :cond_11

    move v0, v14

    goto :goto_b

    :cond_11
    move v0, v10

    :goto_b
    move v8, v0

    .line 1237
    .local v8, "relativeZChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    iget v9, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    if-eq v0, v9, :cond_12

    move v0, v14

    goto :goto_c

    :cond_12
    move v0, v10

    :goto_c
    move/from16 v20, v0

    .line 1239
    .local v20, "surfaceLifecycleStrategyChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    iget v9, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_13

    move v0, v14

    goto :goto_d

    :cond_13
    move v0, v10

    :goto_d
    move v9, v0

    .line 1241
    .local v9, "hdrHeadroomChanged":Z
    if-nez v4, :cond_15

    if-nez v15, :cond_15

    if-nez v6, :cond_15

    if-nez v5, :cond_15

    if-nez v16, :cond_15

    if-nez v17, :cond_15

    if-nez v18, :cond_15

    if-nez v19, :cond_15

    if-nez v7, :cond_15

    if-nez v8, :cond_15

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_15

    if-nez v20, :cond_15

    if-eqz v9, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_26

    .line 1257
    :cond_15
    :goto_e
    if-nez v4, :cond_17

    if-nez v15, :cond_17

    if-nez v6, :cond_17

    if-nez v5, :cond_17

    if-nez v19, :cond_17

    if-nez v8, :cond_17

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_17

    if-eqz v20, :cond_16

    goto :goto_f

    :cond_16
    move/from16 v30, v14

    goto :goto_11

    .line 1260
    :cond_17
    :goto_f
    iget-object v0, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move/from16 v30, v14

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 1261
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1262
    iget v14, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-lez v14, :cond_18

    const-string/jumbo v14, "setFixedSize"

    goto :goto_10

    :cond_18
    const-string v14, "layout"

    :goto_10
    move-object/from16 v26, v14

    .line 1263
    iget-boolean v14, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 1264
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget-boolean v14, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v21, v0

    filled-new-array/range {v21 .. v29}, [Ljava/lang/Object;

    move-result-object v0

    .line 1260
    const v14, 0xea65

    invoke-static {v14, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1268
    :goto_11
    :try_start_0
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 1269
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v10

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1270
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v30

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1271
    iput v11, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1272
    iput v12, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1273
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 1274
    iput v13, v1, Landroid/view/SurfaceView;->mAlpha:F

    .line 1275
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1276
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v1, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1277
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput v0, v1, Landroid/view/SurfaceView;->mSubLayer:I

    .line 1279
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move v14, v0

    .line 1280
    .local v14, "previousSurfaceLifecycleStrategy":I
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 1281
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    iput v0, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 1283
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 1284
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1285
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v22

    add-int v10, v10, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 1286
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v22

    add-int v10, v10, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 1287
    if-eqz v3, :cond_19

    .line 1288
    :try_start_1
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    .line 1396
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    :catch_0
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_25

    .line 1291
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    :cond_19
    :goto_12
    :try_start_2
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v10, v0

    .line 1292
    .local v10, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-object/from16 v22, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :try_start_3
    iget v3, v10, Landroid/graphics/Rect;->left:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move/from16 v23, v4

    .end local v4    # "creating":Z
    .local v23, "creating":Z
    :try_start_4
    iget v4, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1295
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object v3, v0

    .line 1296
    .local v3, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v23, :cond_1a

    .line 1297
    :try_start_5
    invoke-direct {v1}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " SurfaceView["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1299
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "name":Ljava/lang/String;
    invoke-direct {v1, v2, v0, v3}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_13

    .line 1396
    .end local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    :catch_1
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v4, v23

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_25

    .line 1301
    .restart local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    :cond_1a
    :try_start_6
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v0, :cond_1b

    .line 1302
    return-void

    .line 1301
    :cond_1b
    :goto_13
    nop

    .line 1305
    if-nez v6, :cond_1e

    if-nez v23, :cond_1e

    if-nez v7, :cond_1e

    :try_start_7
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_1e

    :cond_1c
    if-nez v16, :cond_1e

    if-eqz v8, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    move/from16 v0, v30

    :goto_15
    move/from16 v24, v0

    .line 1307
    .local v24, "redrawNeeded":Z
    if-eqz v24, :cond_1f

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1308
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v0, :cond_1f

    move/from16 v0, v30

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    :goto_16
    move/from16 v25, v0

    .line 1309
    .local v25, "shouldSyncBuffer":Z
    const/4 v0, 0x0

    .line 1310
    .local v0, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v25, :cond_20

    .line 1311
    :try_start_8
    new-instance v4, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    move-object/from16 v26, v0

    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v26, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView-IA;)V

    move-object v0, v4

    .line 1312
    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    iget-object v4, v1, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1314
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1312
    move-object/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v27, "viewRoot":Landroid/view/ViewRootImpl;
    :try_start_9
    invoke-virtual {v4, v2, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-object/from16 v26, v0

    goto :goto_17

    .line 1396
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v34, v22

    move/from16 v4, v23

    move-object/from16 v29, v27

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_25

    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :catch_3
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v1, p0

    move-object/from16 v34, v22

    move/from16 v4, v23

    move-object/from16 v29, v27

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    goto/16 :goto_25

    .line 1310
    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v24    # "redrawNeeded":Z
    .restart local v25    # "shouldSyncBuffer":Z
    :cond_20
    move-object/from16 v26, v0

    move-object/from16 v27, v2

    .line 1317
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_17
    move v1, v9

    move-object v9, v3

    move-object/from16 v3, v22

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v1

    move-object/from16 v1, p0

    move/from16 v4, v23

    move-object/from16 v2, v27

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v4    # "creating":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v9, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .local v10, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v22, "visibleChanged":Z
    .local v23, "surfaceInsets":Landroid/graphics/Rect;
    :try_start_a
    invoke-direct/range {v1 .. v9}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move/from16 v26, v0

    .line 1322
    .local v26, "realSizeChanged":Z
    const/4 v0, 0x0

    .line 1324
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v27, v4

    .line 1325
    .local v27, "surfaceChanged":Z
    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v28, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :try_start_b
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v29, v2

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v29, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    move/from16 v0, v30

    goto :goto_18

    :cond_21
    const/4 v0, 0x0

    .line 1327
    .local v0, "respectVisibility":Z
    :goto_18
    if-ne v14, v2, :cond_22

    move/from16 v2, v30

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    .line 1330
    .local v2, "previouslyDidNotRespectVisibility":Z
    :goto_19
    if-eqz v0, :cond_23

    if-eqz v2, :cond_23

    move/from16 v31, v30

    goto :goto_1a

    :cond_23
    const/16 v31, 0x0

    .line 1332
    .local v31, "lifecycleNewlyRespectsVisibility":Z
    :goto_1a
    move/from16 v32, v0

    .end local v0    # "respectVisibility":Z
    .local v32, "respectVisibility":Z
    :try_start_c
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_27

    .line 1333
    if-nez v27, :cond_26

    if-nez v32, :cond_24

    :try_start_d
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_26

    :cond_24
    if-eqz v32, :cond_25

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v0, :cond_25

    if-nez v22, :cond_26

    if-eqz v31, :cond_25

    goto :goto_1b

    :cond_25
    move v0, v2

    goto :goto_1c

    .line 1336
    :cond_26
    :goto_1b
    move v0, v2

    const/4 v2, 0x0

    .end local v2    # "previouslyDidNotRespectVisibility":Z
    .local v0, "previouslyDidNotRespectVisibility":Z
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1337
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1c

    .line 1391
    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .end local v27    # "surfaceChanged":Z
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    goto/16 :goto_24

    .line 1332
    .restart local v2    # "previouslyDidNotRespectVisibility":Z
    .restart local v27    # "surfaceChanged":Z
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v31    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v32    # "respectVisibility":Z
    :cond_27
    move v0, v2

    .line 1341
    .end local v2    # "previouslyDidNotRespectVisibility":Z
    .restart local v0    # "previouslyDidNotRespectVisibility":Z
    :goto_1c
    :try_start_e
    invoke-direct {v1, v4, v5}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1343
    invoke-direct {v1}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1344
    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move/from16 v33, v0

    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .local v33, "previouslyDidNotRespectVisibility":Z
    if-nez v2, :cond_2a

    if-nez v27, :cond_28

    if-eqz v32, :cond_2a

    if-eqz v22, :cond_2a

    .line 1346
    :cond_28
    move/from16 v2, v30

    :try_start_f
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1347
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1350
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "surfaceCreated"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1352
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1353
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v2, v0

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_1d
    if-ge v0, v2, :cond_29

    aget-object v34, v28, v0

    move-object/from16 v35, v34

    .line 1354
    .local v35, "c":Landroid/view/SurfaceHolder$Callback;
    move/from16 v34, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move/from16 v36, v2

    move-object/from16 v2, v35

    .end local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v2, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1353
    .end local v2    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v34, 0x1

    move/from16 v2, v36

    goto :goto_1d

    :cond_29
    move-object/from16 v0, v28

    goto :goto_1e

    .line 1357
    :cond_2a
    move-object/from16 v0, v28

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_1e
    if-nez v4, :cond_2d

    if-nez v15, :cond_2d

    if-nez v5, :cond_2d

    if-nez v6, :cond_2d

    if-eqz v32, :cond_2b

    if-nez v22, :cond_2d

    :cond_2b
    if-eqz v26, :cond_2c

    goto :goto_1f

    :cond_2c
    move-object/from16 v34, v3

    goto :goto_22

    .line 1362
    :cond_2d
    :goto_1f
    :try_start_10
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v34, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v34, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :try_start_11
    const-string/jumbo v3, "surfaceChanged -- format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " h="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1365
    if-nez v28, :cond_2e

    .line 1366
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_20

    .line 1365
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2e
    move-object/from16 v0, v28

    .line 1368
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_20
    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v28, v0, v3

    move-object/from16 v35, v28

    .line 1369
    .restart local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move/from16 v36, v2

    iget v2, v1, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v37, v3

    move-object/from16 v3, v35

    .end local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v3, v0, v2, v11, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1368
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v3, v37, 0x1

    move-object/from16 v0, v28

    move/from16 v2, v36

    goto :goto_21

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2f
    move-object/from16 v28, v0

    .line 1372
    :goto_22
    if-eqz v24, :cond_33

    .line 1376
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "surfaceRedrawNeeded"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0xea66

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1379
    if-nez v0, :cond_30

    .line 1380
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    move-object v0, v2

    .line 1383
    :cond_30
    if-eqz v25, :cond_31

    .line 1384
    invoke-direct {v1, v0, v10}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_23

    .line 1386
    :cond_31
    invoke-direct {v1, v0}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_23

    .line 1391
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "surfaceChanged":Z
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    .end local v33    # "previouslyDidNotRespectVisibility":Z
    :catchall_1
    move-exception v0

    goto :goto_24

    .line 1343
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v0, "previouslyDidNotRespectVisibility":Z
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v27    # "surfaceChanged":Z
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v31    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v32    # "respectVisibility":Z
    :cond_32
    move/from16 v33, v0

    move-object/from16 v34, v3

    .line 1391
    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v27    # "surfaceChanged":Z
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :cond_33
    :goto_23
    const/4 v2, 0x0

    :try_start_12
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1392
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_34

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_34

    .line 1393
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1398
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v26    # "realSizeChanged":Z
    :cond_34
    goto/16 :goto_26

    .line 1391
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "redrawNeeded":Z
    .restart local v25    # "shouldSyncBuffer":Z
    .restart local v26    # "realSizeChanged":Z
    :catchall_2
    move-exception v0

    move-object/from16 v34, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_24

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catchall_3
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_24
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1392
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_35

    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_35

    .line 1393
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1395
    :cond_35
    nop

    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v7    # "relativeZChanged":Z
    .end local v8    # "hdrHeadroomChanged":Z
    .end local v11    # "myWidth":I
    .end local v12    # "myHeight":I
    .end local v13    # "alpha":F
    .end local v15    # "formatChanged":Z
    .end local v16    # "alphaChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "positionChanged":Z
    .end local v19    # "layoutSizeChanged":Z
    .end local v20    # "surfaceLifecycleStrategyChanged":Z
    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 1396
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v26    # "realSizeChanged":Z
    .restart local v4    # "creating":Z
    .restart local v5    # "sizeChanged":Z
    .restart local v6    # "hintChanged":Z
    .restart local v7    # "relativeZChanged":Z
    .restart local v8    # "hdrHeadroomChanged":Z
    .restart local v11    # "myWidth":I
    .restart local v12    # "myHeight":I
    .restart local v13    # "alpha":F
    .restart local v15    # "formatChanged":Z
    .restart local v16    # "alphaChanged":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "positionChanged":Z
    .restart local v19    # "layoutSizeChanged":Z
    .restart local v20    # "surfaceLifecycleStrategyChanged":Z
    .restart local v22    # "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_4
    move-exception v0

    goto :goto_25

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_5
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_25

    .end local v4    # "creating":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .local v9, "hdrHeadroomChanged":Z
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v23, "creating":Z
    :catch_6
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v4, v23

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v9    # "hdrHeadroomChanged":Z
    .end local v23    # "creating":Z
    .restart local v4    # "creating":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v22, "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_25

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .restart local v9    # "hdrHeadroomChanged":Z
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_7
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v9    # "hdrHeadroomChanged":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v22, "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_25

    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .restart local v9    # "hdrHeadroomChanged":Z
    :catch_8
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .line 1397
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v9    # "hdrHeadroomChanged":Z
    .local v0, "ex":Ljava/lang/Exception;
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .restart local v22    # "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_25
    const-string v2, "SurfaceView"

    const-string v3, "Exception configuring surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void

    .line 1206
    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v7    # "relativeZChanged":Z
    .end local v8    # "hdrHeadroomChanged":Z
    .end local v11    # "myWidth":I
    .end local v12    # "myHeight":I
    .end local v13    # "alpha":F
    .end local v15    # "formatChanged":Z
    .end local v16    # "alphaChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "positionChanged":Z
    .end local v19    # "layoutSizeChanged":Z
    .end local v20    # "surfaceLifecycleStrategyChanged":Z
    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_36
    move-object/from16 v29, v2

    .line 1207
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_27
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1208
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1209
    return-void
.end method

.method public blacklist vriDrawStarted(Z)V
    .locals 4
    .param p1, "isWmSync"    # Z

    .line 1469
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1470
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1471
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1472
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SurfaceSyncGroup;

    .line 1473
    .local v3, "syncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1474
    .end local v3    # "syncGroup":Landroid/window/SurfaceSyncGroup;
    goto :goto_0

    .line 1476
    :cond_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1477
    monitor-exit v1

    .line 1478
    return-void

    .line 1477
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
