.class public Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.super Landroid/widget/FrameLayout;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    }
.end annotation


# static fields
.field static final blacklist USE_VIEW_AREA_CLICK:Z = true

.field private static final blacklist sScaleOutput:[F


# instance fields
.field blacklist mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

.field blacklist mActionDownPoint:Landroid/graphics/Point;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mCount:I

.field blacklist mDebug:I

.field blacklist mDensity:F

.field private blacklist mDisable:Z

.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field private blacklist mDuration:J

.field private blacklist mEvalTime:Z

.field private blacklist mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field blacklist mHasClickAreas:Z

.field blacklist mInActionDown:Z

.field private blacklist mLastAnimationTime:F

.field blacklist mLastFrameDelay:J

.field blacklist mMaxFrameDelay:J

.field blacklist mMaxFrameRate:F

.field blacklist mStart:J

.field blacklist mTheme:I

.field private blacklist mTime:J

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$Z3dA_R8piEJh61-5GhhQyrDo68U(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 444
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->sScaleOutput:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 46
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 48
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 50
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 51
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 52
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 55
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 56
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 57
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 60
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 336
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 473
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 474
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 475
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 46
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 48
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 50
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 51
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 52
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 55
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 56
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 57
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 60
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 336
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 473
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 474
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 475
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 77
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 46
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 48
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 50
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 51
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 52
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 55
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 56
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 57
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 60
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 336
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 473
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 474
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 475
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 84
    return-void
.end method

.method private blacklist drawDisable(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 558
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 559
    .local v0, "rect":Landroid/graphics/Rect;
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 560
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 561
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 562
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v2

    .line 564
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v3

    .line 566
    .local v3, "h":I
    const-string/jumbo v4, "\u26a0"

    .line 567
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 569
    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    .line 570
    .local v5, "x":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    .line 572
    .local v7, "y":F
    invoke-virtual {p1, v4, v5, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 573
    return-void
.end method

.method static synthetic blacklist lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;ILjava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 325
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 3
    .param p1, "area"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    .param p2, "view1"    # Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    return-void
.end method

.method private blacklist updateClickAreas()V
    .locals 11

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 138
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClickAreas()Ljava/util/Set;

    move-result-object v1

    .line 140
    .local v1, "clickAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    .line 141
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 142
    .local v3, "area":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    new-instance v5, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v7, v4, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v0

    .line 146
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v8

    .line 147
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getContentDescription()Ljava/lang/String;

    move-result-object v9

    .line 148
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;-><init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v5, "viewArea":Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->width()F

    move-result v4

    float-to-int v4, v4

    .line 150
    .local v4, "w":I
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->height()F

    move-result v6

    float-to-int v6, v6

    .line 151
    .local v6, "h":I
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v7, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 153
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 154
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getLeft()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getTop()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    new-instance v8, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .end local v3    # "area":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    .end local v4    # "w":I
    .end local v5    # "viewArea":Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;
    .end local v6    # "h":I
    .end local v7    # "param":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 164
    .end local v1    # "clickAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;

    .line 322
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V

    .line 326
    return-void
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 2
    .param p1, "shaderControl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 302
    return-void
.end method

.method public blacklist clearLocalBitmap(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 261
    :cond_0
    return-void
.end method

.method public blacklist clearLocalFloat(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedFloatOverride(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 247
    :cond_0
    return-void
.end method

.method public blacklist clearLocalInt(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedIntegerOverride(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 233
    :cond_0
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedStringOverride(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 219
    :cond_0
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .locals 6

    .line 484
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 486
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 489
    .local v0, "avg":D
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 490
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    .line 491
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 493
    :cond_1
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    return-object v0
.end method

.method public blacklist getTheme()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return v0
.end method

.method public blacklist hasSensorListeners([I)I
    .locals 3
    .param p1, "ids"    # [I

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "count":I
    const/16 v1, 0x11

    .local v1, "id":I
    :goto_0
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->hasListener(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .local v2, "count":I
    aput v1, p1, v0

    move v0, v2

    .line 265
    .end local v2    # "count":I
    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "id":I
    :cond_1
    return v0
.end method

.method public blacklist isDraggable()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v0

    return v0
.end method

.method public blacklist measureDimension(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "intrinsicSize"    # I

    .line 428
    move v0, p2

    .line 429
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 430
    .local v1, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 431
    .local v2, "size":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 433
    :sswitch_0
    move v0, v2

    .line 434
    goto :goto_0

    .line 439
    :sswitch_1
    move v0, p2

    goto :goto_0

    .line 436
    :sswitch_2
    invoke-static {v2, p2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 437
    nop

    .line 441
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 498
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    if-eqz v0, :cond_1

    .line 503
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->drawDisable(Landroid/graphics/Canvas;)V

    .line 504
    return-void

    .line 508
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    .line 510
    .local v1, "start":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v4

    .line 511
    .local v3, "animationTime":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationTime(F)V

    .line 512
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 513
    iget v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    sub-float v4, v3, v4

    .line 514
    .local v4, "loopTime":F
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 515
    iput v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 516
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 517
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    .line 518
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 520
    .local v5, "density":F
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useCanvas(Landroid/graphics/Canvas;)V

    .line 521
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 522
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 523
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 524
    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v6, v0, :cond_3

    .line 525
    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 526
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x3b9aca00

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 527
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 529
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 532
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->needsRepaint()I

    move-result v6

    .line 533
    .local v6, "nextFrame":I
    if-lez v6, :cond_5

    .line 534
    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    int-to-long v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 535
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v7, :cond_4

    .line 536
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-wide v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 538
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useChoreographer()Z

    move-result v7

    if-nez v7, :cond_6

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    goto :goto_1

    .line 542
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v7, :cond_6

    .line 543
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v7, v8}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 546
    :cond_6
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz v7, :cond_7

    .line 547
    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    .line 548
    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v1    # "start":J
    .end local v3    # "animationTime":F
    .end local v4    # "loopTime":F
    .end local v5    # "density":F
    .end local v6    # "nextFrame":I
    :cond_7
    goto :goto_2

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getLastOpCount()I

    .line 552
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 555
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 448
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v0

    .line 453
    .local v0, "preWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v1

    .line 454
    .local v1, "preHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getWidth()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v2

    .line 455
    .local v2, "w":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getHeight()I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v3

    .line 464
    .local v3, "h":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setMeasuredDimension(II)V

    .line 465
    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_2

    .line 466
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    .line 468
    :cond_2
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 340
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 341
    .local v1, "action":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 342
    .local v2, "pointerId":I
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v3, :cond_0

    .line 343
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/16 v4, 0x3e8

    const/16 v5, 0x1d

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    .line 411
    return v7

    .line 367
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 368
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v8

    .line 369
    .local v8, "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 371
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 372
    .local v12, "dx":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 373
    .local v13, "dy":F
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 375
    return v6

    .line 377
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    :cond_1
    return v7

    .line 396
    .end local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    if-eqz v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 399
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v4

    .line 398
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 400
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v3

    .line 402
    .local v3, "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z

    move-result v4

    .line 403
    .local v4, "repaint":Z
    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 407
    .end local v3    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v4    # "repaint":Z
    :cond_2
    return v6

    .line 409
    :cond_3
    return v7

    .line 380
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->performClick()Z

    .line 382
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v8

    .line 383
    .restart local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 385
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v7

    .line 384
    invoke-virtual {v3, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 386
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 387
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 388
    .restart local v12    # "dx":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 389
    .restart local v13    # "dy":F
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 391
    return v6

    .line 393
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    :cond_4
    return v7

    .line 347
    .end local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 348
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 349
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v3

    .line 350
    .restart local v3    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 352
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v7

    .line 351
    invoke-virtual {v4, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 353
    iput-boolean v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 354
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 355
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 357
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 359
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 360
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 362
    return v6

    .line 364
    :cond_6
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_1

    .line 130
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    .line 133
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    .line 177
    return-void
.end method

.method public whitelist performClick()Z
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 421
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 422
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "colorValue"    # I

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 5
    .param p1, "value"    # I

    .line 87
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-eq v0, p1, :cond_3

    .line 88
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setDebug(Z)V

    .line 90
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 99
    :cond_3
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 3
    .param p1, "value"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 102
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v1, 0x1d

    const v2, -0x800001

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getProperty(S)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    .local v0, "fps":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 117
    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 119
    :cond_0
    return-void
.end method

.method public blacklist setExternalFloat(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 281
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 168
    return-void
.end method

.method public blacklist setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Landroid/graphics/Bitmap;

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 254
    :cond_0
    return-void
.end method

.method public blacklist setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Float;

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedFloatOverride(Ljava/lang/String;F)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 240
    :cond_0
    return-void
.end method

.method public blacklist setLocalInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # I

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedIntegerOverride(Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 226
    :cond_0
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 212
    :cond_0
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0
    .param p1, "theme"    # I

    .line 333
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 334
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 311
    return-void
.end method
