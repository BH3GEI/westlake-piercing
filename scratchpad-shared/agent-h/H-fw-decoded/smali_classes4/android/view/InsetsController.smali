.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static final blacklist DEBUG:Z = false

.field private static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field private static final blacklist ID_CAPTION_BAR:I

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearanceControlled:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mBehaviorControlled:Z

.field private blacklist mCancelledForNewAnimationTypes:I

.field private blacklist mCaptionInsetsHeight:I

.field private blacklist mCompatSysUiVisibilityStaled:Z

.field private final blacklist mConsumerCreator:Lcom/android/internal/util/function/TriFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControllableTypes:I

.field private blacklist mExistingTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private final blacklist mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private blacklist mIsPredictiveBackImeHideAnimInProgress:Z

.field private final blacklist mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private blacklist mLastActivityType:I

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mReportedRequestedVisibleTypes:I

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mVisibleTypes:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2LIr3EryRYmtQ1HDd2j7SPwxf78(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$byQpFrvTVUSIm262wbTCVu-YfPc(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m0h69hPi9k8nqDnYD5vTLkv4rsM(Landroid/view/InsetsController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$updateState$4([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$meqKUiuVHZJFS86fhQQzBBmdABw(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njZtqr3ZSj8qfjB8biFLGe-UC1E(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zHkX5nyqL2mGn5Rg6byt6DH0yFE(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zM05iYQaCKzLG8Raquar1hv37XU(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    .line 243
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 245
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 247
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 259
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 263
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 267
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 272
    nop

    .line 273
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    .line 333
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .locals 2
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 755
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    .line 761
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 755
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V

    .line 762
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V
    .locals 2
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 767
    .local p2, "consumerCreator":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 609
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 612
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 614
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 617
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 622
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 641
    iput v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 649
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 657
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 660
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 663
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 666
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 677
    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 701
    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 768
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 769
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    .line 770
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 771
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 818
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 819
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .locals 2

    .line 1747
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1749
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1750
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1753
    :cond_0
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .locals 2

    .line 1869
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1870
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1871
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1869
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1873
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .locals 5

    .line 2232
    const/4 v0, 0x0

    .line 2233
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2234
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2235
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2236
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 2237
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    or-int/2addr v0, v4

    .line 2233
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2240
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 5
    .param p1, "control"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1810
    const/16 v0, 0x28

    if-eqz p2, :cond_0

    .line 1811
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1813
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_0

    .line 1816
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1824
    :goto_0
    const/4 v0, 0x0

    .line 1825
    .local v0, "removedTypes":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1826
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    .line 1827
    .local v3, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v4, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v4, p1, :cond_2

    .line 1828
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1829
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    .line 1830
    if-eqz p2, :cond_1

    .line 1831
    iget-object v2, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_2

    .line 1833
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1834
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 1835
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 1836
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz v2, :cond_3

    .line 1839
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1840
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1841
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 1840
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1825
    .end local v3    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1849
    .end local v1    # "i":I
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1850
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    .line 1852
    :cond_4
    invoke-virtual {p0, v0, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1853
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .locals 5
    .param p1, "types"    # I

    .line 1729
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1730
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1732
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1733
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1734
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 1735
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1732
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1738
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1739
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    :cond_2
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1743
    nop

    .line 1744
    return-void

    .line 1742
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1743
    throw v1
.end method

.method private blacklist collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;
    .locals 16
    .param p1, "fromIme"    # Z
    .param p2, "types"    # I
    .param p4, "animationType"    # I
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p6, "fromPredictiveBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1620
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x23

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1623
    const/4 v4, 0x0

    .line 1624
    .local v4, "typesReady":I
    const/4 v6, 0x1

    .line 1625
    .local v6, "imeReady":Z
    iget-object v7, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_c

    .line 1626
    iget-object v9, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 1627
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    and-int v10, v10, p2

    if-nez v10, :cond_0

    .line 1628
    move-object/from16 v15, p3

    goto/16 :goto_a

    .line 1630
    :cond_0
    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_1

    if-eqz p6, :cond_2

    iget-object v11, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1632
    invoke-interface {v11}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    move v11, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v8

    .line 1633
    .local v11, "show":Z
    :goto_2
    const/4 v12, 0x1

    .line 1634
    .local v12, "canRun":Z
    if-eqz v11, :cond_3

    .line 1636
    invoke-virtual {v9, v1, v3}, Landroid/view/InsetsSourceConsumer;->requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto :goto_3

    .line 1648
    :pswitch_0
    const/4 v12, 0x0

    .line 1651
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v13

    invoke-virtual {v0, v10, v13}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    goto :goto_3

    .line 1640
    :pswitch_1
    const/4 v6, 0x0

    .line 1642
    goto :goto_3

    .line 1638
    :pswitch_2
    nop

    .line 1652
    :goto_3
    goto :goto_6

    .line 1655
    :cond_3
    if-nez v1, :cond_5

    if-eqz p6, :cond_4

    iget-object v13, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1656
    invoke-interface {v13}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    move v10, v8

    .line 1655
    :goto_5
    invoke-virtual {v9, v10, v3}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1658
    :goto_6
    if-nez v12, :cond_6

    .line 1662
    move-object/from16 v15, p3

    goto :goto_a

    .line 1664
    :cond_6
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v10

    .line 1665
    .local v10, "control":Landroid/view/InsetsSourceControl;
    if-eqz v10, :cond_9

    .line 1666
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    if-nez v13, :cond_8

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v13

    sget v14, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v13, v14, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v15, p3

    goto :goto_8

    .line 1667
    :cond_8
    :goto_7
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v13

    new-instance v14, Landroid/view/InsetsSourceControl;

    invoke-direct {v14, v10}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1668
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v13

    or-int/2addr v4, v13

    goto :goto_a

    .line 1665
    :cond_9
    move-object/from16 v15, p3

    .line 1669
    :goto_8
    if-eqz v1, :cond_b

    .line 1670
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "collectSourceControls can\'t continue for type: ime, fromIme: true requires a control with a leash but we have "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1672
    if-nez v10, :cond_a

    .line 1673
    const-string v14, "control: null"

    goto :goto_9

    .line 1674
    :cond_a
    const-string v14, "control: non-null and control.getLeash(): null"

    :goto_9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1670
    const-string v14, "InsetsController"

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v13

    invoke-interface {v13, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1625
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    .end local v11    # "show":Z
    .end local v12    # "canRun":Z
    :cond_b
    :goto_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v15, p3

    .line 1679
    .end local v7    # "i":I
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;
    .locals 7
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1687
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    const/4 v0, 0x0

    .line 1688
    .local v0, "typesReady":I
    const/4 v1, 0x0

    .line 1690
    .local v1, "typesWithoutLeash":I
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 1691
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1692
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_0

    .line 1693
    goto :goto_2

    .line 1696
    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    .line 1697
    .local v4, "control":Landroid/view/InsetsSourceControl;
    if-eqz v4, :cond_3

    .line 1698
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 1702
    :cond_1
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v1, v5

    goto :goto_2

    .line 1699
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v4}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1700
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v0, v5

    .line 1690
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1706
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private blacklist computeAnimatingTypes()I
    .locals 3

    .line 1977
    const/4 v0, 0x0

    .line 1978
    .local v0, "animatingTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1979
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v0, v2

    .line 1978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p7, "animationType"    # I
    .param p8, "layoutInsetsDuringAnimation"    # I
    .param p9, "useInsetsAnimationThread"    # Z
    .param p10, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p11, "fromPredictiveBack"    # Z

    .line 1364
    const/4 v0, 0x0

    if-nez p8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1366
    .local v1, "visible":Z
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p11, :cond_1

    if-nez v1, :cond_1

    .line 1367
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1369
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    .line 1372
    :cond_1
    if-eqz v1, :cond_2

    move v0, p1

    :cond_2
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1376
    invoke-direct/range {p0 .. p11}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1382
    move v0, p11

    move-object p11, p10

    move p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "types":I
    .local v0, "fromPredictiveBack":Z
    .local p2, "types":I
    .local p3, "cancellationSignal":Landroid/os/CancellationSignal;
    .local p4, "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .local p5, "frame":Landroid/graphics/Rect;
    .local p6, "fromIme":Z
    .local p7, "insetsAnimationSpec":Landroid/view/InsetsAnimationSpec;
    .local p8, "animationType":I
    .local p9, "layoutInsetsDuringAnimation":I
    .local p10, "useInsetsAnimationThread":Z
    .local p11, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct {p0, p11}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1383
    return-void
.end method

.method private blacklist controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .locals 24
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p7, "animationType"    # I
    .param p8, "layoutInsetsDuringAnimation"    # I
    .param p9, "useInsetsAnimationThread"    # Z
    .param p10, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p11, "fromPredictiveBack"    # Z

    .line 1392
    move-object/from16 v6, p0

    move/from16 v8, p1

    move-object/from16 v4, p3

    move/from16 v9, p7

    move-object/from16 v5, p10

    iget v0, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int/2addr v0, v8

    const/16 v1, 0x21

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1393
    if-eqz v9, :cond_1

    if-ne v9, v15, :cond_0

    goto :goto_0

    :cond_0
    move v15, v2

    .line 1395
    .local v15, "monitoredAnimation":Z
    :cond_1
    :goto_0
    if-eqz v15, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 1396
    const/16 v0, 0x28

    if-nez v9, :cond_2

    .line 1397
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_1

    .line 1401
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1405
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1408
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start a new insets animation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1409
    invoke-static {v8}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while an existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1410
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    .end local v15    # "monitoredAnimation":Z
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1414
    const-string v0, "IC.showRequestFromApiToImeReady"

    const-string v1, "IC.showRequestFromApi"

    const/4 v3, 0x0

    const-wide/16 v10, 0x8

    if-nez v8, :cond_5

    .line 1416
    invoke-interface {v4, v3}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1418
    invoke-static {v10, v11, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1419
    invoke-static {v10, v11, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1420
    return-void

    .line 1423
    :cond_5
    iget v7, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1425
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1428
    .local v7, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v12

    const-wide/16 v13, 0x7d0

    if-eqz v12, :cond_a

    .line 1430
    invoke-direct {v6, v8, v7}, Landroid/view/InsetsController;->collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v12

    .line 1431
    .local v12, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1432
    .local v2, "typesReady":I
    const/4 v3, 0x2

    if-ne v9, v3, :cond_8

    .line 1433
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1439
    .local v3, "typesWithoutLeash":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v18

    and-int v18, v8, v18

    if-eqz v18, :cond_6

    and-int v18, v8, v3

    if-eqz v18, :cond_6

    .line 1445
    move-object/from16 v18, v7

    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v18, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    new-instance v7, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v19, v12

    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    move-wide/from16 v20, v13

    const/4 v14, 0x0

    move-object/from16 v13, p2

    move-object/from16 v10, p6

    move v11, v9

    move-object v9, v4

    move-object v4, v0

    move-wide/from16 v22, v20

    move-object/from16 v20, v1

    move-wide/from16 v0, v22

    invoke-direct/range {v7 .. v14}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    .line 1449
    .local v7, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v7, v6, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1451
    iget-object v9, v6, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v10, v6, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1454
    if-eqz v13, :cond_7

    .line 1455
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6, v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v13, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto :goto_2

    .line 1439
    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v7, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v13, p2

    move-object v4, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v12

    .line 1466
    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    :goto_2
    if-eq v2, v8, :cond_9

    .line 1472
    return-void

    .line 1432
    .end local v3    # "typesWithoutLeash":I
    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v13, p2

    move-object v4, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v12

    .line 1475
    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    :cond_9
    move-object v10, v4

    move v0, v8

    move-object v1, v13

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p3

    move-object v13, v6

    const-wide/16 v5, 0x8

    goto/16 :goto_3

    .line 1476
    .end local v2    # "typesReady":I
    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    :cond_a
    move-object v4, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v7

    move-wide v0, v13

    move-object/from16 v13, p2

    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object v10, v4

    move v2, v8

    move-object/from16 v3, v18

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v4, p7

    move-wide v8, v0

    move-object v0, v6

    move/from16 v1, p5

    move/from16 v6, p11

    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController;->collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;

    move-result-object v7

    .line 1478
    .end local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v7, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1479
    .local v16, "typesReady":I
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1485
    .local v17, "imeReady":Z
    if-nez v17, :cond_d

    .line 1487
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1488
    new-instance v0, Landroid/view/InsetsController$PendingControlRequest;

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v19, v7

    move-object v6, v13

    move-object/from16 v13, p0

    move/from16 v7, p9

    .end local v7    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    move-object v4, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    .line 1491
    .local v2, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v2, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1492
    iget-object v3, v13, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v5, v13, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1494
    if-eqz v1, :cond_b

    .line 1495
    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v3, v13, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1506
    :cond_b
    invoke-static/range {v18 .. v18}, Landroid/view/InsetsController;->releaseControls(Landroid/util/SparseArray;)V

    .line 1510
    iget v3, v13, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-virtual {v13, v3, v0}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1512
    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v11, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1513
    if-nez p5, :cond_c

    .line 1514
    invoke-static {v5, v6, v10, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1516
    :cond_c
    return-void

    .line 1485
    .end local v2    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v7    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_d
    move/from16 v0, p1

    move-object/from16 v4, p3

    move-object/from16 v19, v7

    move-object v1, v13

    const-wide/16 v5, 0x8

    move-object/from16 v13, p0

    .end local v7    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move/from16 v2, v16

    .line 1520
    .end local v16    # "typesReady":I
    .end local v17    # "imeReady":Z
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v2, "typesReady":I
    :goto_3
    if-nez v2, :cond_10

    .line 1521
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1523
    invoke-static {v5, v6, v11, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1524
    invoke-interface {v4, v14}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    goto :goto_4

    .line 1527
    :cond_e
    invoke-interface {v4, v14}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1528
    invoke-static {v5, v6, v11, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1529
    if-nez p5, :cond_f

    .line 1530
    invoke-static {v5, v6, v10, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1533
    :cond_f
    :goto_4
    return-void

    .line 1536
    :cond_10
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1537
    iput v2, v13, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    .line 1538
    invoke-direct {v13, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1539
    iput v12, v13, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    goto :goto_5

    .line 1541
    :cond_11
    invoke-direct {v13, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1544
    :goto_5
    if-eqz p9, :cond_12

    .line 1545
    new-instance v0, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v13, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v7, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1548
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v10

    iget-object v7, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p10

    move v5, v2

    move-object v6, v13

    move-object/from16 v1, v18

    move/from16 v13, p1

    move-object/from16 v2, p4

    .end local v2    # "typesReady":I
    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v5, "typesReady":I
    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    move/from16 v4, p7

    move v2, v5

    move-object/from16 v5, p10

    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    goto :goto_6

    .line 1549
    .end local v5    # "typesReady":I
    .restart local v2    # "typesReady":I
    :cond_12
    move v5, v2

    move-object v6, v13

    move v13, v0

    .end local v2    # "typesReady":I
    .restart local v5    # "typesReady":I
    new-instance v0, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v6, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1551
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v1, v18

    .end local v18    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    move v2, v5

    move v4, v9

    move-object v5, v12

    .end local v5    # "typesReady":I
    .restart local v2    # "typesReady":I
    :goto_6
    nop

    .line 1553
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v15

    .local v3, "i":I
    :goto_7
    if-ltz v3, :cond_14

    .line 1554
    iget-object v7, v6, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    .line 1555
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v7, :cond_13

    .line 1556
    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    .line 1553
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_13
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1559
    .end local v3    # "i":I
    :cond_14
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_15

    .line 1560
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v7, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1561
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1560
    const-string v8, "InsetsAnimationControlImpl"

    invoke-virtual {v3, v8, v7, v14}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1562
    if-ne v4, v15, :cond_15

    .line 1563
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v7, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1566
    :cond_15
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v7, 0x27

    invoke-interface {v3, v5, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1567
    iget-object v3, v6, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1568
    iget-object v3, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3, v15}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    .line 1570
    :cond_16
    iget-object v3, v6, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v7, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v7, v0, v4}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    move-object/from16 v3, p2

    if-eqz v3, :cond_17

    .line 1574
    new-instance v7, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v7, v6, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v3, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const-wide/16 v8, 0x8

    const/4 v12, 0x0

    goto :goto_8

    .line 1578
    :cond_17
    const-string v7, "IC.pendingAnim"

    const-wide/16 v8, 0x8

    const/4 v12, 0x0

    invoke-static {v8, v9, v7, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1581
    :goto_8
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1582
    invoke-virtual {v6, v2, v15}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    goto :goto_9

    .line 1584
    :cond_18
    invoke-virtual {v6, v13, v15}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1587
    :goto_9
    if-eqz p5, :cond_19

    .line 1588
    packed-switch v4, :pswitch_data_0

    goto :goto_a

    .line 1593
    :pswitch_0
    const-string v7, "IC.hideRequestFromIme"

    invoke-static {v8, v9, v7, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_a

    .line 1590
    :pswitch_1
    const-string v7, "IC.showRequestFromIme"

    invoke-static {v8, v9, v7, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1591
    nop

    .line 1594
    :goto_a
    goto :goto_b

    .line 1596
    :cond_19
    if-ne v4, v15, :cond_1a

    .line 1597
    const-string v7, "IC.hideRequestFromApi"

    invoke-static {v8, v9, v7, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1599
    :cond_1a
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(IZ)I
    .locals 2
    .param p1, "types"    # I
    .param p2, "fromPredictiveBack"    # Z

    .line 1711
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1715
    return v0

    .line 1723
    :cond_0
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_1

    .line 1724
    goto :goto_0

    .line 1725
    :cond_1
    const/4 v0, 0x1

    .line 1723
    :goto_0
    return v0
.end method

.method private blacklist handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 13
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1202
    iget-object v12, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1203
    .local v12, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1204
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1208
    iget v1, v12, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v12, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v12, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v6, v12, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    iget v7, v12, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v8, v12, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v9, v12, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1214
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .locals 4

    .line 2247
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 2248
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 2249
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2250
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2251
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2253
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1456
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_0

    .line 1460
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1462
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1496
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_0

    .line 1500
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1502
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1576
    return-void
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .locals 4
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 756
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 757
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()V
    .locals 15

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 773
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    return-void

    .line 777
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v1, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object v5, v2

    .line 780
    .local v5, "state":Landroid/view/InsetsState;
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 781
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    .line 783
    .local v3, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v6, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 784
    .local v6, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v7, v6, Landroid/view/WindowInsetsAnimationController;

    if-eqz v7, :cond_2

    .line 789
    iget-boolean v7, v3, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v7, :cond_1

    .line 790
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_1
    move-object v7, v6

    check-cast v7, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v7, v5}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 794
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    .end local v3    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v6    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 799
    .end local v2    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 800
    invoke-virtual {v2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v8

    iget v9, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v10, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v11, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v12, p0, Landroid/view/InsetsController;->mWindowType:I

    iget v13, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 799
    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    .line 803
    .local v2, "insets":Landroid/view/WindowInsets;
    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 804
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 803
    invoke-interface {v3, v2, v6}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 812
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 813
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 812
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 815
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private synthetic blacklist lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 2109
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    return-void

    .line 2113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2114
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2113
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2115
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2116
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 2117
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_1

    .line 2118
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 2115
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2121
    .end local v0    # "i":I
    :cond_2
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2122
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 2123
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2124
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2125
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/ImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 2127
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 2128
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 2129
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2130
    return-void
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .locals 5
    .param p0, "alphaFraction"    # F

    .line 250
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 251
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 252
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    .line 253
    return v0

    .line 255
    :cond_0
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 256
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 6
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 333
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateState$4([I)V
    .locals 1
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 913
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method static blacklist releaseControls(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 1602
    .local p0, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1603
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 1602
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1605
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1991
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->computeAnimatingTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .local v0, "typesToReport":I
    goto :goto_0

    .line 1998
    .end local v0    # "typesToReport":I
    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 2001
    .restart local v0    # "typesToReport":I
    :goto_0
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    const/16 v2, 0x30

    if-eq v0, v1, :cond_3

    .line 2002
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    xor-int/2addr v1, v0

    .line 2003
    .local v1, "diff":I
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2004
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 2006
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2007
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2010
    :cond_2
    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v2, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 2011
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v3, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-interface {v2, v3, p1}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .end local v1    # "diff":I
    goto :goto_1

    .line 2012
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2013
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_5

    .line 2014
    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 2015
    .local v1, "control":Landroid/view/InsetsSourceControl;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2019
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_2

    .line 2012
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    :cond_4
    :goto_1
    nop

    .line 2024
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 2025
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .locals 11
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 875
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "existingTypes":I
    const/4 v2, 0x0

    .line 878
    .local v2, "visibleTypes":I
    filled-new-array {v1}, [I

    move-result-object v3

    .line 879
    .local v3, "cancelledUserAnimationTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 880
    new-instance v6, Landroid/view/InsetsSource;

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 881
    .local v6, "source":Landroid/view/InsetsSource;
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    .line 882
    .local v7, "type":I
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v8

    .line 883
    .local v8, "animationType":I
    iget-object v9, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 884
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v9, :cond_0

    .line 885
    invoke-virtual {v9, v6, v8}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_1

    .line 887
    :cond_0
    iget-object v10, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v10, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 889
    :goto_1
    or-int/2addr v0, v7

    .line 890
    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 891
    or-int/2addr v2, v7

    .line 879
    .end local v6    # "source":Landroid/view/InsetsSource;
    .end local v7    # "type":I
    .end local v8    # "animationType":I
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 896
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v4

    not-int v5, v0

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 898
    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v5, 0x1

    if-eq v4, v2, :cond_4

    .line 899
    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    xor-int/2addr v4, v2

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 900
    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 902
    :cond_3
    iput v2, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 904
    :cond_4
    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v4, v0, :cond_6

    .line 905
    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    xor-int/2addr v4, v0

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 906
    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 908
    :cond_5
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 910
    :cond_6
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v4, p1, v5}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 912
    aget v1, v3, v1

    if-eqz v1, :cond_7

    .line 913
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2262
    return-void
.end method

.method public blacklist applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 9
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipsCallbacks"    # Z
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2031
    const/4 v0, 0x0

    .line 2032
    .local v0, "skipsAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 2033
    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 2036
    .local v1, "imeControl":Landroid/view/InsetsSourceControl;
    if-eqz v1, :cond_1

    .line 2037
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 2038
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    move v6, v0

    goto :goto_1

    .line 2041
    .end local v1    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_1
    move v6, v0

    .end local v0    # "skipsAnim":Z
    .local v6, "skipsAnim":Z
    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v8, p5

    .end local p1    # "types":I
    .end local p2    # "show":Z
    .end local p3    # "fromIme":Z
    .end local p4    # "skipsCallbacks":Z
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v3, "types":I
    .local v4, "show":Z
    .local v5, "fromIme":Z
    .local v7, "skipsCallbacks":Z
    .local v8, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual/range {v2 .. v8}, Landroid/view/InsetsController;->applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2042
    return-void
.end method

.method public blacklist applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 13
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipsAnim"    # Z
    .param p5, "skipsCallbacks"    # Z
    .param p6, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2047
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2050
    const-string v2, "IC.showRequestFromApi"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2051
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2052
    if-nez p3, :cond_0

    .line 2053
    const-string v2, "IC.showRequestFromApiToImeReady"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2056
    :cond_0
    return-void

    .line 2059
    :cond_1
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v5

    .line 2060
    .local v5, "hasAnimationCallbacks":Z
    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 2061
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v7

    const/4 v2, 0x1

    if-nez p4, :cond_3

    iget-boolean v4, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v2

    :goto_1
    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 2062
    const/16 v6, -0x50

    invoke-interface {v4, v6}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v9

    iget-object v10, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v11, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move v6, p1

    move v4, p2

    invoke-direct/range {v3 .. v11}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V

    move v12, v5

    .line 2067
    .end local v5    # "hasAnimationCallbacks":Z
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    .local v12, "hasAnimationCallbacks":Z
    nop

    .line 2070
    nop

    .line 2071
    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    if-eqz v12, :cond_5

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    move v9, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v2

    .line 2067
    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 2074
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 1
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1787
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1788
    return-void
.end method

.method public blacklist calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "isScreenRound"    # Z
    .param p2, "windowType"    # I
    .param p3, "activityType"    # I
    .param p4, "legacySoftInputMode"    # I
    .param p5, "legacyWindowFlags"    # I
    .param p6, "legacySystemUiFlags"    # I

    .line 924
    iput p2, p0, Landroid/view/InsetsController;->mWindowType:I

    .line 925
    iput p3, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 926
    iput p4, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 927
    iput p5, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 928
    move/from16 v6, p6

    iput v6, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 929
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v7, p2

    move v8, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 932
    iget-object v0, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "activityType"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 940
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "windowType":I
    .end local p2    # "activityType":I
    .end local p3    # "softInputMode":I
    .end local p4    # "windowFlags":I
    .local v2, "windowType":I
    .local v3, "activityType":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist cancelExistingAnimations()V
    .locals 1

    .line 2081
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 2082
    return-void
.end method

.method public blacklist computeUserAnimatingTypes()I
    .locals 4

    .line 1967
    const/4 v0, 0x0

    .line 1968
    .local v0, "animatingTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1969
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1970
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v0, v2

    .line 1968
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1973
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 10
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1317
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    .line 1320
    return-void
.end method

.method public blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
    .locals 15
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I
    .param p9, "fromPredictiveBack"    # Z

    .line 1328
    move/from16 v1, p1

    move/from16 v11, p9

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v11, :cond_0

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1329
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    goto :goto_0

    .line 1335
    :cond_0
    if-eqz p4, :cond_1

    .line 1336
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1338
    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1336
    const-string v4, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1341
    :cond_1
    new-instance v6, Landroid/view/InsetsController$4;

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-direct {v6, p0, v12, v13, v14}, Landroid/view/InsetsController$4;-><init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V

    .line 1352
    .local v6, "spec":Landroid/view/InsetsAnimationSpec;
    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1353
    invoke-direct {p0, v1, v11}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(IZ)I

    move-result v8

    .line 1352
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1355
    return-void

    .line 1328
    .end local v6    # "spec":Landroid/view/InsetsAnimationSpec;
    :cond_2
    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    .line 1332
    :goto_0
    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1333
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2136
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2137
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 2135
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2138
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 2139
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsetsController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPredictiveBackImeHideAnimInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2093
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2094
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2095
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2096
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 2097
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2095
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2099
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2100
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .locals 3
    .param p1, "type"    # I

    .line 1935
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1936
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1937
    .local v1, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1935
    .end local v1    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1941
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAppearanceControlled()I
    .locals 1

    .line 2178
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    return v0
.end method

.method blacklist getCancelledForNewAnimationTypes()I
    .locals 1

    .line 1876
    iget v0, p0, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    return v0
.end method

.method public blacklist getHost()Landroid/view/InsetsController$Host;
    .locals 1

    .line 2289
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .locals 1

    .line 1899
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .locals 1

    .line 844
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public blacklist getRequestedVisibleTypes()I
    .locals 1

    .line 840
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1881
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1882
    .local v0, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_0

    .line 1883
    return-object v0

    .line 1885
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_1

    .line 1887
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1888
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1889
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->setId(I)V

    goto :goto_0

    .line 1891
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1893
    :goto_0
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1894
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    .line 835
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 3

    .line 2173
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 1

    .line 2215
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    if-nez v0, :cond_0

    .line 2217
    const/4 v0, 0x1

    return v0

    .line 2219
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public whitelist hide(I)V
    .locals 2
    .param p1, "types"    # I

    .line 1218
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1219
    return-void
.end method

.method public blacklist hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 16
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1224
    move-object/from16 v0, p0

    move/from16 v3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, p1, v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide(ime(), fromIme="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "InsetsController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    if-nez p3, :cond_0

    .line 1228
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1231
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 1228
    const/4 v5, 0x5

    const/16 v6, 0x1c

    invoke-interface {v1, v2, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_0

    .line 1234
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_0
    move-object/from16 v5, p3

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    const-wide/16 v6, 0x8

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    .line 1235
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v8, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1236
    invoke-interface {v8}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 1235
    const-string v9, "InsetsController#hide"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v8, v10}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1237
    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    .line 1239
    :cond_1
    const-string v4, "IC.hideRequestFromApi"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1241
    :goto_1
    const/4 v4, 0x0

    .line 1242
    .local v4, "typesReady":I
    const/4 v6, 0x0

    .line 1243
    .local v6, "hasImeRequestedHidden":Z
    iget-object v7, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v1

    .line 1244
    .local v7, "hadPendingImeControlRequest":Z
    :goto_2
    const/4 v9, 0x1

    .local v9, "type":I
    :goto_3
    const/16 v10, 0x200

    if-gt v9, v10, :cond_f

    .line 1245
    and-int v10, p1, v9

    if-nez v10, :cond_3

    .line 1246
    goto/16 :goto_7

    .line 1248
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    if-ne v9, v10, :cond_4

    move v10, v8

    goto :goto_4

    :cond_4
    move v10, v1

    .line 1249
    .local v10, "isImeAnimation":Z
    :goto_4
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1250
    if-eqz v10, :cond_5

    .line 1254
    iget v11, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    .line 1255
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    const/16 v12, 0x41

    invoke-interface {v11, v5, v12}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1257
    goto/16 :goto_7

    .line 1261
    :cond_5
    invoke-virtual {v0, v9}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v11

    .line 1262
    .local v11, "animationType":I
    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_5

    :cond_6
    move v12, v1

    .line 1263
    .local v12, "requestedVisible":Z
    :goto_5
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v13, :cond_7

    if-nez v12, :cond_7

    .line 1265
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    not-int v15, v9

    and-int/2addr v14, v15

    iput v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 1266
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v13, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    if-nez v13, :cond_7

    .line 1267
    invoke-direct {v0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1270
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_9

    .line 1271
    if-eqz v10, :cond_9

    if-nez v12, :cond_9

    if-ne v11, v14, :cond_9

    .line 1272
    const/4 v6, 0x1

    .line 1275
    if-nez v7, :cond_8

    .line 1276
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1277
    :cond_8
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13, v3, v5}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1281
    :cond_9
    const/16 v13, 0x20

    if-nez v12, :cond_a

    if-eq v11, v14, :cond_d

    :cond_a
    if-eq v11, v8, :cond_d

    if-ne v11, v2, :cond_b

    iget-boolean v14, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz v14, :cond_b

    goto :goto_6

    .line 1292
    :cond_b
    if-eqz v10, :cond_c

    .line 1293
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1296
    :cond_c
    or-int/2addr v4, v9

    goto :goto_7

    .line 1286
    :cond_d
    :goto_6
    if-eqz v10, :cond_e

    .line 1287
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1244
    .end local v10    # "isImeAnimation":Z
    .end local v11    # "animationType":I
    .end local v12    # "requestedVisible":Z
    :cond_e
    :goto_7
    shl-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1298
    .end local v9    # "type":I
    :cond_f
    if-eqz v6, :cond_10

    iget-object v1, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_10

    .line 1301
    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1302
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1305
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 1308
    :cond_10
    const/4 v2, 0x0

    move v1, v4

    .end local v4    # "typesReady":I
    .local v1, "typesReady":I
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1310
    return-void
.end method

.method public blacklist isBehaviorControlled()Z
    .locals 1

    .line 2223
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    return v0
.end method

.method public blacklist isPredictiveBackImeHideAnimInProgress()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    return v0
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 5
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1791
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    .line 1792
    .local v0, "type":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1793
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1794
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1795
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_0

    .line 1796
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1792
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1799
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1800
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1802
    :cond_2
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1805
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1807
    :cond_3
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1758
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1759
    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1761
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1764
    return-void

    .line 1766
    :cond_1
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1767
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1768
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V

    goto :goto_1

    .line 1769
    :cond_2
    if-eqz p2, :cond_3

    .line 1770
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x29

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1772
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    .line 1774
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1778
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1779
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1782
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1783
    return-void
.end method

.method blacklist notifyVisibilityChanged()V
    .locals 1

    .line 1903
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1904
    return-void
.end method

.method blacklist onAnimationStateChanged(IZ)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "running"    # Z

    .line 1856
    const/4 v0, 0x0

    .line 1857
    .local v0, "insetsChanged":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1858
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1859
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1860
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1857
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1863
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1864
    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 1866
    :cond_2
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 21
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 949
    array-length v1, v6

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v6, v2

    .line 950
    .local v3, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_0

    .line 952
    iget-object v4, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 949
    .end local v3    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    :cond_1
    const/4 v1, 0x0

    .line 958
    .local v1, "controllableTypes":I
    const/4 v2, 0x0

    .line 959
    .local v2, "consumedControlCount":I
    const/4 v8, 0x1

    new-array v11, v8, [I

    .line 960
    .local v11, "showTypes":[I
    new-array v12, v8, [I

    .line 961
    .local v12, "hideTypes":[I
    new-array v13, v8, [I

    .line 962
    .local v13, "cancelTypes":[I
    new-array v14, v8, [I

    .line 963
    .local v14, "transientTypes":[I
    const/4 v3, 0x0

    .line 966
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v4, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v8

    move v15, v1

    move v1, v2

    move-object v5, v3

    .end local v2    # "consumedControlCount":I
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "consumedControlCount":I
    .local v4, "i":I
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v15, "controllableTypes":I
    :goto_1
    if-ltz v4, :cond_4

    .line 967
    iget-object v2, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 968
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    sget v3, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v2, v3, :cond_2

    .line 971
    goto :goto_2

    .line 974
    :cond_2
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/InsetsSourceControl;

    .line 975
    .local v10, "control":Landroid/view/InsetsSourceControl;
    if-eqz v10, :cond_3

    .line 976
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    or-int/2addr v15, v2

    .line 977
    add-int/lit8 v1, v1, 0x1

    .line 979
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 980
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v2, v3, :cond_3

    .line 981
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    .line 988
    :cond_3
    invoke-virtual/range {v9 .. v14}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 966
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 992
    .end local v4    # "i":I
    :cond_4
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 993
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 994
    iget-object v3, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/InsetsSourceControl;

    .line 995
    .restart local v10    # "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v9

    .line 996
    invoke-virtual/range {v9 .. v14}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 993
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1000
    .end local v2    # "i":I
    :cond_5
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1002
    iget-object v2, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_6

    .line 1003
    iget-object v3, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v4, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v3, v4}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 1002
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1006
    .end local v2    # "i":I
    :cond_6
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1008
    aget v2, v13, v7

    if-eqz v2, :cond_7

    .line 1009
    aget v2, v13, v7

    invoke-direct {v0, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1014
    :cond_7
    invoke-direct {v0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v9

    .line 1015
    .local v9, "animatingTypes":I
    aget v2, v11, v7

    not-int v3, v9

    and-int/2addr v2, v3

    aput v2, v11, v7

    .line 1016
    aget v2, v12, v7

    not-int v3, v9

    and-int/2addr v2, v3

    aput v2, v12, v7

    .line 1018
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1019
    iget-object v2, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1020
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1021
    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    move/from16 v16, v1

    move-object/from16 v17, v5

    goto/16 :goto_b

    .line 1023
    :cond_8
    aget v2, v11, v7

    if-eqz v2, :cond_9

    .line 1024
    move v2, v1

    .end local v1    # "consumedControlCount":I
    .local v2, "consumedControlCount":I
    aget v1, v11, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v16, v2

    .end local v2    # "consumedControlCount":I
    .local v16, "consumedControlCount":I
    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_5

    .line 1023
    .end local v16    # "consumedControlCount":I
    .restart local v1    # "consumedControlCount":I
    :cond_9
    move/from16 v16, v1

    .line 1027
    .end local v1    # "consumedControlCount":I
    .restart local v16    # "consumedControlCount":I
    :goto_5
    aget v0, v12, v7

    if-eqz v0, :cond_b

    .line 1028
    aget v1, v12, v7

    aget v0, v12, v7

    aget v2, v14, v7

    not-int v2, v2

    and-int/2addr v0, v2

    if-nez v0, :cond_a

    move v4, v8

    goto :goto_6

    :cond_a
    move v4, v7

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    move-object/from16 v17, v5

    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v17, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto/16 :goto_b

    .line 1027
    .end local v17    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v17, v5

    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v17    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto/16 :goto_b

    .line 1037
    .end local v16    # "consumedControlCount":I
    .end local v17    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v1    # "consumedControlCount":I
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_c
    move/from16 v16, v1

    move-object/from16 v17, v5

    .end local v1    # "consumedControlCount":I
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v16    # "consumedControlCount":I
    .restart local v17    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    aget v1, v11, v7

    const/16 v2, 0x2e

    const/4 v3, 0x5

    if-eqz v1, :cond_e

    .line 1039
    aget v1, v11, v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v1, v4

    if-nez v1, :cond_d

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1042
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 1039
    invoke-interface {v1, v8, v3, v2, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    .line 1043
    .local v5, "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_7
    aget v1, v11, v7

    move v4, v3

    const/4 v3, 0x0

    move/from16 v18, v4

    const/4 v4, 0x0

    move/from16 v19, v2

    const/4 v2, 0x1

    move/from16 v20, v7

    move/from16 v10, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_8

    .line 1037
    .end local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_e
    move v10, v3

    move/from16 v20, v7

    move v7, v2

    .line 1046
    :goto_8
    aget v1, v12, v20

    if-eqz v1, :cond_11

    .line 1048
    aget v1, v12, v20

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_f

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v2, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1051
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    .line 1048
    const/4 v3, 0x2

    invoke-interface {v1, v3, v10, v7, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    .line 1052
    .restart local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_9
    aget v1, v12, v20

    aget v2, v12, v20

    aget v3, v14, v20

    not-int v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_10

    move v4, v8

    goto :goto_a

    :cond_10
    move/from16 v4, v20

    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1061
    .end local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_11
    :goto_b
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v1, v15, :cond_13

    .line 1062
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    xor-int/2addr v1, v15

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1063
    iput-boolean v8, v0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1065
    :cond_12
    iput v15, v0, Landroid/view/InsetsController;->mControllableTypes:I

    .line 1068
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1070
    invoke-direct {v0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 1076
    :cond_14
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1077
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 823
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_1

    .line 827
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 829
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 830
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 831
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .locals 5
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 848
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 850
    .local v0, "stateChanged":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    return v1

    .line 855
    :cond_0
    new-instance v3, Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v3, v4, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 856
    .local v3, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 857
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 858
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 860
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v3, v1, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 863
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 864
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v1, p1, v4}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 870
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 871
    return v2
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1
    .param p1, "hasViewFocused"    # Z

    .line 1922
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1923
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    .line 1929
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1930
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 2273
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 2274
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2269
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 2278
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2279
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2280
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2281
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 2282
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 2279
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2285
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 2
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 2144
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2149
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1

    .line 2150
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 2151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2153
    :cond_1
    return-void

    .line 2145
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2147
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 2228
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 2229
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .locals 13
    .param p1, "height"    # I

    .line 2183
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2184
    .local v0, "newFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2185
    .local v1, "source":Landroid/view/InsetsSource;
    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-ne v2, p1, :cond_0

    if-eqz v1, :cond_3

    .line 2186
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2187
    :cond_0
    iput p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 2188
    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2189
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    .line 2190
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 2191
    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    sget v7, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    .line 2192
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v8

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    new-array v7, v3, [I

    new-array v8, v3, [I

    new-array v9, v3, [I

    new-array v10, v3, [I

    .line 2191
    invoke-virtual/range {v5 .. v10}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    goto :goto_0

    .line 2197
    :cond_1
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2198
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/InsetsSourceConsumer;

    .line 2199
    .local v4, "sourceConsumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v4, :cond_2

    .line 2200
    new-array v6, v3, [I

    new-array v7, v3, [I

    new-array v8, v3, [I

    new-array v9, v3, [I

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 2203
    .end local v4    # "sourceConsumer":Landroid/view/InsetsSourceConsumer;
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 2205
    :cond_3
    return-void
.end method

.method public blacklist setPredictiveBackImeHideAnimInProgress(Z)V
    .locals 5
    .param p1, "isInProgress"    # Z

    .line 1081
    iput-boolean p1, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    .line 1082
    if-eqz p1, :cond_1

    .line 1088
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1089
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1090
    .local v2, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 1091
    invoke-interface {v2, v1}, Landroid/view/InsetsAnimationControlRunner;->updateLayoutInsetsDuringAnimation(I)V

    .line 1092
    goto :goto_1

    .line 1088
    .end local v2    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1096
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setRequestedVisibleTypes(II)V
    .locals 4
    .param p1, "visibleTypes"    # I
    .param p2, "mask"    # I

    .line 1946
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    .line 1948
    .local v0, "requestedVisibleTypes":I
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    if-eq v1, v0, :cond_1

    .line 1949
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1950
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    .line 1955
    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->undoPreliminaryClear()V

    .line 1957
    :cond_0
    sget-object v1, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1958
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1957
    const-string v3, "Setting requestedVisibleTypes to %d (was %d)"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1959
    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1961
    :cond_1
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 1
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 2157
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    .line 2158
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2159
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .locals 2
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 2164
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    .line 2167
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v1, v1

    and-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2168
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1
    .param p1, "behavior"    # I

    .line 2209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    .line 2210
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 2211
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1611
    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 1612
    return-void
.end method

.method public whitelist show(I)V
    .locals 2
    .param p1, "types"    # I

    .line 1104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1105
    return-void
.end method

.method public blacklist show(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 12
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1110
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(ime(), fromIme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-nez p3, :cond_0

    .line 1114
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1117
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    .line 1114
    const/4 v3, 0x5

    const/16 v4, 0x1a

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p3

    move-object v7, p3

    goto :goto_0

    .line 1121
    :cond_0
    move-object v7, p3

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v7, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    const-string p3, "IC.showRequestFromApiToImeReady"

    const-wide/16 v2, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1122
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1123
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1122
    const-string v6, "InsetsController#show"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1124
    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1125
    const-string p3, "IC.showRequestFromIme"

    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    .line 1127
    :cond_1
    const-string v4, "IC.showRequestFromApi"

    invoke-static {v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1128
    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1130
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p3

    if-nez p3, :cond_3

    .line 1132
    if-eqz p2, :cond_3

    iget-object p3, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz p3, :cond_3

    .line 1133
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    and-int/2addr p3, p1

    if-eqz p3, :cond_2

    .line 1134
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p3

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p3, v7, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1136
    :cond_2
    invoke-direct {p0, v7}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1137
    return-void

    .line 1143
    :cond_3
    const/4 p3, 0x0

    .line 1144
    .local p3, "typesReady":I
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1145
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    .line 1144
    invoke-virtual {v2, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v8

    .line 1146
    .local v8, "imeVisible":Z
    const/4 v2, 0x1

    move v3, p3

    .end local p3    # "typesReady":I
    .local v2, "type":I
    .local v3, "typesReady":I
    :goto_2
    const/16 p3, 0x200

    if-gt v2, p3, :cond_f

    .line 1147
    and-int p3, p1, v2

    if-nez p3, :cond_4

    .line 1148
    goto/16 :goto_8

    .line 1150
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result p3

    .line 1151
    .local p3, "animationType":I
    iget v4, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v0

    .line 1152
    .local v4, "requestedVisible":Z
    :goto_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    if-ne v2, v5, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v0

    .line 1153
    .local v5, "isIme":Z
    :goto_4
    if-eqz v4, :cond_8

    if-eqz v5, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    const/4 v6, -0x1

    if-ne p3, v6, :cond_8

    move v6, v1

    goto :goto_5

    :cond_8
    move v6, v0

    .line 1155
    .local v6, "alreadyVisible":Z
    :goto_5
    if-nez p3, :cond_9

    move v9, v1

    goto :goto_6

    :cond_9
    move v9, v0

    .line 1156
    .local v9, "alreadyAnimatingShow":Z
    :goto_6
    const/16 v10, 0x20

    if-nez v6, :cond_d

    if-eqz v9, :cond_a

    goto :goto_7

    .line 1168
    :cond_a
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1169
    if-eqz p2, :cond_b

    const/4 v11, 0x2

    if-ne p3, v11, :cond_b

    iget-boolean v11, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-nez v11, :cond_b

    .line 1172
    if-eqz v5, :cond_e

    .line 1173
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_8

    .line 1179
    :cond_b
    if-eqz v5, :cond_c

    .line 1180
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1183
    :cond_c
    or-int/2addr v3, v2

    goto :goto_8

    .line 1162
    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    .line 1163
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1146
    .end local v4    # "requestedVisible":Z
    .end local v5    # "isIme":Z
    .end local v6    # "alreadyVisible":Z
    .end local v9    # "alreadyAnimatingShow":Z
    .end local p3    # "animationType":I
    :cond_e
    :goto_8
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1186
    .end local v2    # "type":I
    :cond_f
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p3

    if-nez p3, :cond_10

    if-eqz p2, :cond_11

    :cond_10
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    and-int/2addr p3, v3

    if-eqz p3, :cond_11

    .line 1188
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p3

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p3, v7, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1190
    :cond_11
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    .end local p2    # "fromIme":Z
    .local v5, "fromIme":Z
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1192
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 8
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 2107
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 2108
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    .end local p2    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .end local p3    # "types":I
    .end local p4    # "animation":Landroid/view/WindowInsetsAnimation;
    .end local p5    # "bounds":Landroid/view/WindowInsetsAnimation$Bounds;
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    .local v4, "types":I
    .local v5, "animation":Landroid/view/WindowInsetsAnimation;
    .local v6, "bounds":Landroid/view/WindowInsetsAnimation$Bounds;
    .local v7, "listener":Landroid/view/WindowInsetsAnimationControlListener;
    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda11;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 2131
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility()V
    .locals 5

    .line 1910
    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_0

    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1912
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int v4, v4

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    .line 1916
    :cond_0
    return-void
.end method
