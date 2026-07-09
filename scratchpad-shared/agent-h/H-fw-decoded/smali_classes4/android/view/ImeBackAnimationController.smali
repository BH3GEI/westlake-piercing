.class public Landroid/view/ImeBackAnimationController;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# static fields
.field private static final blacklist BACK_GESTURE:Landroid/view/animation/Interpolator;

.field private static final blacklist EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist PEEK_FRACTION:F = 0.1f

.field private static final blacklist POST_COMMIT_CANCEL_DURATION_MS:I = 0x32

.field private static final blacklist POST_COMMIT_DURATION_MS:I = 0xc8

.field private static final blacklist STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackAnimationController"


# instance fields
.field private final blacklist mInsetsController:Landroid/view/InsetsController;

.field private blacklist mIsPreCommitAnimationInProgress:Z

.field private blacklist mLastProgress:F

.field private blacklist mPostCommitAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mStartRootScrollY:I

.field private blacklist mTriggerBack:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method public static synthetic blacklist $r8$lambda$k6hhw-kcx_rhv-_zA6i_ff-iUwA(Landroid/view/ImeBackAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F
    .locals 0

    iget p0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V
    .locals 0

    iput p1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Landroid/view/animation/BackGestureInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BackGestureInterpolator;-><init>()V

    sput-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InsetsController;)V
    .locals 1
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "insetsController"    # Landroid/view/InsetsController;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 64
    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 67
    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 68
    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    .line 71
    iput-object p2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    .line 72
    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 73
    return-void
.end method

.method private blacklist isAdjustPan()Z
    .locals 2

    .line 273
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isBackAnimationAllowed()Z
    .locals 3

    .line 255
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 256
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 259
    return v2

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-nez v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 266
    :cond_3
    return v2
.end method

.method private blacklist isHideAnimationInProgress()Z
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 189
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    .line 194
    :goto_0
    return-void
.end method

.method private blacklist notifyHideIme()V
    .locals 5

    .line 223
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x34

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 232
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    .line 233
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 234
    return-void
.end method

.method private blacklist reset()V
    .locals 2

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 238
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 241
    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 242
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, v0}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    .line 243
    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    .line 244
    return-void
.end method

.method private blacklist resetPostCommitAnimator()V
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 251
    :cond_0
    return-void
.end method

.method private blacklist setInterpolatedProgress(F)V
    .locals 8
    .param p1, "progress"    # F

    .line 163
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    .line 165
    .local v0, "hiddenY":F
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    .line 166
    .local v1, "shownY":F
    sub-float v2, v1, v0

    .line 167
    .local v2, "imeHeight":F
    mul-float v3, p1, v2

    sub-float v3, v2, v3

    float-to-int v3, v3

    .line 168
    .local v3, "newY":I
    iget v4, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    .line 169
    iget-object v4, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget v6, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    int-to-float v6, v6

    sub-float v7, v5, p1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewRootImpl;->setScrollY(I)V

    .line 171
    :cond_0
    iget-object v4, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    invoke-interface {v4, v6, v5, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 174
    .end local v0    # "hiddenY":F
    .end local v1    # "shownY":F
    .end local v2    # "imeHeight":F
    .end local v3    # "newY":I
    :cond_1
    return-void
.end method

.method private blacklist setPreCommitProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 158
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    .line 160
    return-void
.end method

.method private blacklist startPostCommitAnim(Z)V
    .locals 6
    .param p1, "triggerBack"    # Z

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 178
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 182
    :cond_0
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 183
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 184
    .local v1, "targetProgress":F
    :goto_0
    sget-object v2, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 185
    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v2, 0x1

    aput v1, v3, v2

    .line 184
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 186
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 187
    if-eqz p1, :cond_2

    sget-object v4, Landroid/view/ImeBackAnimationController;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v4, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 186
    :goto_1
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeBackAnimationController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/ImeBackAnimationController$2;

    invoke-direct {v4, p0, p1}, Landroid/view/ImeBackAnimationController$2;-><init>(Landroid/view/ImeBackAnimationController;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 211
    if-eqz p1, :cond_3

    const-wide/16 v4, 0xc8

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x32

    .line 210
    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    if-eqz p1, :cond_4

    .line 214
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v3, v2}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    .line 215
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    .line 217
    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 218
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 220
    :cond_4
    return-void

    .line 179
    .end local v1    # "targetProgress":F
    :cond_5
    :goto_3
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 180
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ImeBackAnimationController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTriggerBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPreCommitAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mStartRootScrollY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBackAnimationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isAdjustPan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHideAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method blacklist isAnimationInProgress()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

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

.method public whitelist onBackCancelled()V
    .locals 1

    .line 135
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    .line 137
    return-void
.end method

.method public whitelist onBackInvoked()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    .line 149
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    .line 155
    :cond_2
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 129
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 130
    iget v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    .line 131
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .locals 11
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 77
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "ImeBackAnimationController"

    const-string v1, "onBackStarted -> not playing predictive back animation due to softinput mode adjustResize AND no animation callback registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 91
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_2

    .line 95
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    .line 97
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    new-instance v4, Landroid/view/ImeBackAnimationController$1;

    invoke-direct {v4, p0}, Landroid/view/ImeBackAnimationController$1;-><init>(Landroid/view/ImeBackAnimationController;)V

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    .line 125
    return-void
.end method
