.class public final Lcom/android/internal/widget/NotificationProgressBar;
.super Landroid/widget/ProgressBar;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;,
        Lcom/android/internal/widget/NotificationProgressBar$Point;,
        Lcom/android/internal/widget/NotificationProgressBar$Segment;,
        Lcom/android/internal/widget/NotificationProgressBar$Part;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FADED_OPACITY:F = 0.5f

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationProgressBar"


# instance fields
.field private blacklist mAdjustedProgressFraction:F

.field private blacklist mHasTrackerIcon:Z

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

.field private blacklist mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProgressDrawableBounds:Landroid/graphics/Rect;

.field private blacklist mProgressDrawableParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgressFraction:F

.field private blacklist mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

.field private blacklist mTracker:Landroid/graphics/drawable/Drawable;

.field private blacklist mTrackerDrawMatrix:Landroid/graphics/Matrix;

.field private blacklist mTrackerDrawWidth:I

.field private final blacklist mTrackerHeight:I

.field private blacklist mTrackerPos:I

.field private blacklist mTrackerPosIsDirty:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ufFZa-VVsngUmGNJsvVsDhj0jXI(Lcom/android/internal/widget/NotificationProgressBar;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->lambda$setProgressTrackerIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 107
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    .line 87
    iput v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 89
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 90
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    .line 98
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 118
    sget-object v0, Lcom/android/internal/R$styleable;->NotificationProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 120
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->NotificationProgressBar:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/NotificationProgressBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getNotificationProgressDrawable()Lcom/android/internal/widget/NotificationProgressDrawable;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 126
    iget-object p1, v2, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 128
    .local p1, "ex":Ljava/lang/IllegalStateException;
    const-string p2, "NotificationProgressBar"

    const-string p3, "Can\'t get NotificationProgressDrawable"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local p1    # "ex":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 134
    .local p1, "tracker":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    .line 138
    const/4 p2, 0x1

    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v2, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    .line 140
    return-void
.end method

.method private blacklist configureTrackerBounds()V
    .locals 10

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-gtz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 295
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 299
    .local v0, "dWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 300
    .local v1, "dHeight":I
    if-lez v0, :cond_5

    if-gtz v1, :cond_2

    goto :goto_1

    .line 303
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    .line 304
    .local v2, "maxDWidth":I
    mul-int/lit8 v3, v0, 0x2

    .line 306
    .local v3, "maxDHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 308
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 310
    .local v5, "dy":F
    const/high16 v6, 0x3f000000    # 0.5f

    if-le v0, v2, :cond_3

    .line 311
    iget v7, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 312
    .local v7, "scale":F
    int-to-float v8, v2

    mul-float/2addr v8, v7

    int-to-float v9, v0

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v4, v8, v6

    .line 313
    int-to-float v6, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    goto :goto_0

    .line 314
    .end local v7    # "scale":F
    :cond_3
    if-le v1, v3, :cond_4

    .line 315
    iget v7, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    .line 316
    .restart local v7    # "scale":F
    int-to-float v8, v3

    mul-float/2addr v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v5, v8, v6

    .line 317
    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    goto :goto_0

    .line 319
    .end local v7    # "scale":F
    :cond_4
    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v7, v6, v7

    .line 320
    .restart local v7    # "scale":F
    int-to-float v6, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 323
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 324
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 325
    return-void

    .line 301
    .end local v2    # "maxDWidth":I
    .end local v3    # "maxDHeight":I
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v7    # "scale":F
    :cond_5
    :goto_1
    return-void
.end method

.method private static blacklist convertToViewParts(Ljava/util/Map;Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/List;
    .locals 7
    .param p3, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation

    .line 832
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    .local p2, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 834
    .local v2, "pos":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Point;

    .line 836
    .local v3, "point":Landroid/app/Notification$ProgressStyle$Point;
    new-instance v4, Lcom/android/internal/widget/NotificationProgressBar$Point;

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/NotificationProgressBar$Point;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    .end local v3    # "point":Landroid/app/Notification$ProgressStyle$Point;
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 840
    .local v3, "seg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v4, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;-><init>(FI)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "seg":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_1
    goto :goto_0

    .line 844
    :cond_2
    return-object v0
.end method

.method private blacklist drawTracker(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 671
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    const/high16 v3, -0x80000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 677
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 680
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPos:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 682
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-lez v1, :cond_2

    .line 683
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    .line 687
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 689
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 691
    return-void
.end method

.method private static blacklist generatePositionToPointMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 887
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 889
    .local v0, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 890
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    goto :goto_0

    .line 893
    :cond_0
    return-object v0
.end method

.method private static blacklist generateSortedPositionSet(Ljava/util/Map;Ljava/util/Map;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 900
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 901
    .local v0, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 903
    return-object v0
.end method

.method private static blacklist generateStartToSegmentMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 869
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/4 v1, 0x0

    .line 873
    .local v1, "currentStart":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 875
    .local v3, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 879
    .end local v3    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_0

    .line 881
    :cond_0
    return-object v0
.end method

.method static blacklist getFadedColor(I)I
    .locals 4
    .param p0, "color"    # I

    .line 859
    nop

    .line 860
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 861
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 862
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 863
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 859
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist getNotificationProgressDrawable()Lcom/android/internal/widget/NotificationProgressDrawable;
    .locals 5

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 187
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_2

    .line 191
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/android/internal/widget/NotificationProgressDrawable;

    if-nez v2, :cond_1

    .line 193
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get NotificationProgressDrawable, retrieved drawable is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 195
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable;

    return-object v2

    .line 188
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getProgressDrawable() doesn\'t return a LayerDrawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getProgressDrawable() returns null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getProgressFraction()F
    .locals 4

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMin()I

    move-result v0

    .line 596
    .local v0, "min":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v1

    .line 597
    .local v1, "max":I
    sub-int v2, v1, v0

    .line 598
    .local v2, "range":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction(II)F

    move-result v3

    return v3
.end method

.method private static blacklist getProgressFraction(II)F
    .locals 2
    .param p0, "progressMax"    # I
    .param p1, "progress"    # I

    .line 602
    if-lez p0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist getSegEndOffset(Lcom/android/internal/widget/NotificationProgressBar$Segment;Lcom/android/internal/widget/NotificationProgressBar$Part;FFFZ)F
    .locals 3
    .param p0, "seg"    # Lcom/android/internal/widget/NotificationProgressBar$Segment;
    .param p1, "nextPart"    # Lcom/android/internal/widget/NotificationProgressBar$Part;
    .param p2, "pointRadius"    # F
    .param p3, "segPointGap"    # F
    .param p4, "segSegGap"    # F
    .param p5, "hasTrackerIcon"    # Z

    .line 968
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 969
    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 970
    .local v1, "nextSeg":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 972
    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    move v0, p4

    :goto_0
    return v0

    .line 974
    :cond_2
    return p4

    .line 977
    .end local v1    # "nextSeg":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_3
    add-float v0, p3, p2

    return v0
.end method

.method private static blacklist getSegStartOffset(Lcom/android/internal/widget/NotificationProgressBar$Part;FF)F
    .locals 1
    .param p0, "prevPart"    # Lcom/android/internal/widget/NotificationProgressBar$Part;
    .param p1, "pointRadius"    # F
    .param p2, "segPointGap"    # F

    .line 962
    instance-of v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 963
    :cond_0
    add-float v0, p1, p2

    return v0
.end method

.method static synthetic blacklist lambda$processModelAndConvertToViewParts$1(ILandroid/app/Notification$ProgressStyle$Point;)Z
    .locals 4
    .param p0, "progressMax"    # I
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;

    .line 772
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    .line 773
    .local v0, "pos":I
    const/4 v1, 0x1

    const-string v2, "NotificationProgressBar"

    if-nez v0, :cond_0

    .line 774
    const-string v3, "Dropping point at start"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v1

    .line 776
    :cond_0
    if-ne v0, p0, :cond_1

    .line 777
    const-string v3, "Dropping point at end"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v1

    .line 780
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic blacklist lambda$setProgressTrackerIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "progressTrackerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static blacklist maybeGetFadedColor(IZ)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "fade"    # Z

    .line 849
    if-nez p1, :cond_0

    return p0

    .line 851
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getFadedColor(I)I

    move-result v0

    return v0
.end method

.method private static blacklist maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;
    .locals 16
    .param p2, "progressFraction"    # F
    .param p3, "isStyledByProgress"    # Z
    .param p4, "progressGap"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;FZF)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1083
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    .local p1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    move-object/from16 v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 1084
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->getEnd()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1087
    :cond_0
    const/4 v1, -0x1

    .line 1088
    .local v1, "iPartFirstSegmentToStyle":I
    const/4 v2, -0x1

    .line 1089
    .local v2, "iPartSegmentToSplit":I
    const/4 v3, 0x0

    .line 1090
    .local v3, "rescaledProgressX":F
    const/4 v4, 0x0

    .line 1091
    .local v4, "startFraction":F
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1092
    .local v5, "nParts":I
    const/4 v6, 0x0

    .local v6, "iPart":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 1093
    move-object/from16 v7, p0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/NotificationProgressBar$Part;

    .line 1094
    .local v8, "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    instance-of v9, v8, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1095
    .local v9, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    cmpl-float v10, v4, p2

    if-nez v10, :cond_1

    .line 1096
    move v1, v6

    .line 1097
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v3

    .line 1098
    goto :goto_1

    .line 1099
    :cond_1
    cmpg-float v10, v4, p2

    if-gez v10, :cond_2

    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    add-float/2addr v10, v4

    cmpg-float v10, p2, v10

    if-gez v10, :cond_2

    .line 1101
    move v2, v6

    .line 1102
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    sub-float v11, p2, v4

    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v12

    div-float/2addr v11, v12

    .line 1104
    invoke-virtual {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->getWidth()F

    move-result v12

    mul-float/2addr v11, v12

    add-float v3, v10, v11

    .line 1105
    goto :goto_1

    .line 1107
    :cond_2
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    add-float/2addr v4, v10

    .line 1092
    .end local v8    # "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v9    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p0

    .line 1110
    .end local v6    # "iPart":I
    :goto_1
    if-nez p3, :cond_5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1112
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v6, "splitDrawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    const/4 v8, 0x0

    .line 1114
    .local v8, "styleRemainingParts":Z
    const/4 v9, 0x0

    .local v9, "iPart":I
    :goto_2
    if-ge v9, v5, :cond_c

    .line 1115
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 1116
    .local v10, "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    instance-of v11, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v11, :cond_6

    move-object v11, v10

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1117
    .local v11, "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getColor()I

    move-result v12

    invoke-static {v12, v8}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v12

    .line 1118
    .local v12, "color":I
    new-instance v13, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1119
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v14

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getEnd()F

    move-result v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;-><init>(FFI)V

    .line 1118
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v11    # "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v12    # "color":I
    :cond_6
    if-ne v9, v1, :cond_7

    const/4 v8, 0x1

    .line 1122
    :cond_7
    instance-of v11, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v11, :cond_b

    move-object v11, v10

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1123
    .local v11, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    if-ne v9, v2, :cond_a

    .line 1124
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    cmpg-float v12, v3, v12

    const/4 v13, 0x1

    if-gtz v12, :cond_8

    .line 1125
    const/4 v8, 0x1

    .line 1126
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v12

    invoke-static {v12, v13}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v12

    .line 1127
    .restart local v12    # "color":I
    new-instance v14, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v15

    .line 1128
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v0

    invoke-direct {v14, v15, v0, v12, v13}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1127
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v12    # "color":I
    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 1130
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_9

    .line 1131
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    sub-float v14, v3, p4

    .line 1132
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v15

    invoke-direct {v0, v12, v14, v15}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFI)V

    .line 1131
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v0

    invoke-static {v0, v13}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v0

    .line 1134
    .local v0, "color":I
    new-instance v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1135
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v14

    invoke-direct {v12, v3, v14, v0, v13}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1134
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    const/4 v0, 0x1

    .line 1138
    .end local v8    # "styleRemainingParts":Z
    .local v0, "styleRemainingParts":Z
    move v8, v0

    goto :goto_3

    .line 1139
    .end local v0    # "styleRemainingParts":Z
    .restart local v8    # "styleRemainingParts":Z
    :cond_9
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    .line 1140
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v13

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v14

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFI)V

    .line 1139
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    const/4 v0, 0x1

    move v8, v0

    .end local v8    # "styleRemainingParts":Z
    .restart local v0    # "styleRemainingParts":Z
    goto :goto_3

    .line 1144
    .end local v0    # "styleRemainingParts":Z
    .restart local v8    # "styleRemainingParts":Z
    :cond_a
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v0

    invoke-static {v0, v8}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v0

    .line 1146
    .local v0, "color":I
    new-instance v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v13

    .line 1147
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v14

    invoke-direct {v12, v13, v14, v0, v8}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1146
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v0    # "color":I
    .end local v10    # "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    .end local v11    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    :cond_b
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 1152
    .end local v9    # "iPart":I
    :cond_c
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;
    .locals 20
    .param p2, "segmentMinWidth"    # F
    .param p3, "pointRadius"    # F
    .param p4, "progressFraction"    # F
    .param p5, "isStyledByProgress"    # Z
    .param p6, "progressGap"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;FFFZF)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
        }
    .end annotation

    .line 995
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    .local p1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 996
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 997
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 998
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 999
    invoke-interface {v5}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v5

    .line 1000
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    const/4 v6, 0x0

    .line 1001
    .local v6, "totalExcessWidth":F
    const/4 v7, 0x0

    .line 1002
    .local v7, "totalPositiveExcessWidth":F
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1003
    .local v9, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    invoke-virtual {v9}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v11

    sub-float v11, v11, p2

    .line 1004
    .local v11, "excessWidth":F
    add-float/2addr v6, v11

    .line 1005
    cmpl-float v10, v11, v10

    if-lez v10, :cond_0

    add-float/2addr v7, v11

    .line 1006
    .end local v9    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v11    # "excessWidth":F
    :cond_0
    goto :goto_0

    .line 1009
    :cond_1
    cmpl-float v8, v6, v7

    if-nez v8, :cond_2

    .line 1010
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 1018
    :cond_2
    cmpg-float v8, v6, v10

    if-ltz v8, :cond_7

    .line 1023
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1024
    .local v8, "nParts":I
    const/4 v9, 0x0

    .line 1025
    .local v9, "startOffset":F
    const/4 v10, 0x0

    .local v10, "iPart":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 1026
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 1027
    .local v11, "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    instance-of v12, v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v12, :cond_4

    move-object v12, v11

    check-cast v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1028
    .local v12, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v13

    .line 1030
    .local v13, "origDrawableSegmentWidth":F
    move/from16 v14, p2

    .line 1033
    .local v14, "drawableSegmentWidth":F
    cmpl-float v15, v13, p2

    if-lez v15, :cond_3

    .line 1034
    sub-float v15, v13, p2

    mul-float/2addr v15, v6

    div-float/2addr v15, v7

    add-float/2addr v14, v15

    .line 1039
    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v15

    sub-float v15, v14, v15

    .line 1042
    .local v15, "widthDiff":F
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v16

    move-object/from16 v17, v5

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .local v17, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    add-float v5, v16, v9

    invoke-virtual {v12, v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->setStart(F)V

    .line 1043
    nop

    .line 1044
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v5

    add-float/2addr v5, v13

    add-float/2addr v5, v15

    .line 1043
    invoke-virtual {v12, v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->setEnd(F)V

    .line 1049
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1050
    .local v5, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->getWidth()F

    move-result v16

    .line 1051
    .local v16, "origSegmentWidth":F
    invoke-static {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v18

    move/from16 v19, v6

    .end local v6    # "totalExcessWidth":F
    .local v19, "totalExcessWidth":F
    add-float v6, v18, v9

    invoke-static {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 1052
    invoke-static {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v6

    add-float v6, v6, v16

    add-float/2addr v6, v15

    invoke-static {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 1055
    add-float/2addr v9, v15

    .line 1056
    .end local v5    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    .end local v13    # "origDrawableSegmentWidth":F
    .end local v14    # "drawableSegmentWidth":F
    .end local v15    # "widthDiff":F
    .end local v16    # "origSegmentWidth":F
    goto :goto_2

    .end local v12    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v19    # "totalExcessWidth":F
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v6    # "totalExcessWidth":F
    :cond_4
    move-object/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v6    # "totalExcessWidth":F
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v19    # "totalExcessWidth":F
    instance-of v5, v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v5, :cond_5

    move-object v5, v11

    check-cast v5, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1057
    .local v5, "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->setStart(F)V

    .line 1058
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v6

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v12, v12, p3

    add-float/2addr v6, v12

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->setEnd(F)V

    .line 1025
    .end local v5    # "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v11    # "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v17

    move/from16 v6, v19

    goto :goto_1

    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v19    # "totalExcessWidth":F
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v6    # "totalExcessWidth":F
    :cond_6
    move-object/from16 v17, v5

    .line 1062
    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v10    # "iPart":I
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1019
    .end local v8    # "nParts":I
    .end local v9    # "startOffset":F
    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    :cond_7
    move-object/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v6    # "totalExcessWidth":F
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v19    # "totalExcessWidth":F
    new-instance v5, Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;

    const-string v6, "Not enough width to satisfy the minimum width for segments."

    invoke-direct {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist onMaybeVisualProgressChanged()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction()F

    move-result v0

    .line 366
    .local v0, "progressFraction":F
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    return-void

    .line 368
    :cond_0
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 371
    return-void
.end method

.method public static blacklist processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;
    .locals 8
    .param p2, "progress"    # I
    .param p3, "progressMax"    # I
    .param p4, "totalWidth"    # F
    .param p5, "segSegGap"    # F
    .param p6, "segPointGap"    # F
    .param p7, "pointRadius"    # F
    .param p8, "hasTrackerIcon"    # Z
    .param p9, "segmentMinWidth"    # F
    .param p10, "isStyledByProgress"    # Z
    .param p11, "trackerDrawWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;IIFFFFZFZI)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
        }
    .end annotation

    .line 1175
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-static/range {p0 .. p3}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 1177
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;

    move-result-object v7

    .line 1179
    .local v7, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    nop

    .line 1180
    invoke-static {p3, p2}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction(II)F

    move-result v4

    .line 1181
    if-eqz p8, :cond_0

    const/4 v1, 0x0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p5

    .line 1179
    :goto_0
    move v3, p7

    move/from16 v2, p9

    move/from16 v5, p10

    move-object v1, v7

    .end local v7    # "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    .local v1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;
    .locals 6
    .param p2, "progress"    # I
    .param p3, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation

    .line 742
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 746
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 747
    .local v0, "totalLength":I
    if-ne p3, v0, :cond_5

    .line 751
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 752
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    .line 753
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 756
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "length":I
    goto :goto_0

    .line 754
    .restart local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .restart local v3    # "length":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid segment length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "length":I
    :cond_1
    if-ltz p2, :cond_4

    if-gt p2, p3, :cond_4

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 764
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    .line 765
    .local v3, "pos":I
    if-ltz v3, :cond_2

    if-gt v3, p3, :cond_2

    .line 768
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "pos":I
    goto :goto_1

    .line 766
    .restart local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .restart local v3    # "pos":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Point position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "pos":I
    :cond_3
    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 783
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar;->generateStartToSegmentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 785
    .local v1, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    invoke-static {p1}, Lcom/android/internal/widget/NotificationProgressBar;->generatePositionToPointMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 787
    .local v2, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->generateSortedPositionSet(Ljava/util/Map;Ljava/util/Map;)Ljava/util/SortedSet;

    move-result-object v3

    .line 790
    .local v3, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v1, v3, p3}, Lcom/android/internal/widget/NotificationProgressBar;->splitSegmentsByPoints(Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/Map;

    move-result-object v4

    .line 793
    .local v4, "startToSplitSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    invoke-static {v4, v2, v3, p3}, Lcom/android/internal/widget/NotificationProgressBar;->convertToViewParts(Ljava/util/Map;Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 759
    .end local v1    # "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .end local v2    # "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    .end local v3    # "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v4    # "startToSplitSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid progressMax : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    .end local v0    # "totalLength":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of segments shouldn\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;
    .locals 20
    .param p1, "totalWidth"    # F
    .param p2, "segSegGap"    # F
    .param p3, "segPointGap"    # F
    .param p4, "pointRadius"    # F
    .param p5, "hasTrackerIcon"    # Z
    .param p6, "trackerDrawWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;FFFFZI)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation

    .line 918
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    move-object/from16 v0, p0

    move/from16 v3, p4

    move/from16 v7, p6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 920
    .local v8, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    int-to-float v1, v7

    sub-float v9, p1, v1

    .line 923
    .local v9, "available":F
    int-to-float v1, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    .line 925
    .local v1, "x":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 926
    .local v11, "nParts":I
    const/4 v2, 0x0

    move v12, v1

    move v13, v2

    .end local v1    # "x":F
    .local v12, "x":F
    .local v13, "iPart":I
    :goto_0
    if-ge v13, v11, :cond_4

    .line 927
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/widget/NotificationProgressBar$Part;

    .line 928
    .local v14, "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    const/4 v1, 0x0

    if-nez v13, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v13, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressBar$Part;

    :goto_1
    move-object v15, v2

    .line 929
    .local v15, "prevPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    add-int/lit8 v2, v13, 0x1

    if-ne v2, v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v13, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Part;

    :goto_2
    move-object v2, v1

    .line 930
    .local v2, "nextPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    instance-of v1, v14, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v1, :cond_2

    move-object v1, v14

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 931
    .local v1, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v4

    mul-float v16, v4, v9

    .line 933
    .local v16, "segWidth":F
    move/from16 v4, p3

    invoke-static {v15, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->getSegStartOffset(Lcom/android/internal/widget/NotificationProgressBar$Part;FF)F

    move-result v17

    .line 934
    .local v17, "startOffset":F
    add-float v5, v12, v17

    .line 937
    .local v5, "start":F
    move/from16 v6, p5

    move/from16 v18, v10

    move v10, v5

    move/from16 v5, p2

    .end local v5    # "start":F
    .local v10, "start":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->getSegEndOffset(Lcom/android/internal/widget/NotificationProgressBar$Segment;Lcom/android/internal/widget/NotificationProgressBar$Part;FFFZ)F

    move-result v19

    .line 939
    .local v19, "endOffset":F
    add-float v3, v12, v16

    sub-float v3, v3, v19

    .line 941
    .local v3, "end":F
    new-instance v4, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Segment;)I

    move-result v5

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v6

    invoke-direct {v4, v10, v3, v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-static {v1, v12}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 944
    add-float v4, v12, v16

    invoke-static {v1, v4}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 948
    add-float v12, v12, v16

    .line 949
    .end local v3    # "end":F
    .end local v10    # "start":F
    .end local v16    # "segWidth":F
    .end local v17    # "startOffset":F
    .end local v19    # "endOffset":F
    goto :goto_3

    .end local v1    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_2
    move/from16 v18, v10

    instance-of v1, v14, Lcom/android/internal/widget/NotificationProgressBar$Point;

    if-eqz v1, :cond_3

    move-object v1, v14

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Point;

    .line 950
    .local v1, "point":Lcom/android/internal/widget/NotificationProgressBar$Point;
    mul-float v3, p4, v18

    .line 951
    .local v3, "pointWidth":F
    sub-float v4, v12, p4

    .line 952
    .local v4, "start":F
    add-float v5, v12, p4

    .line 954
    .local v5, "end":F
    new-instance v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Point;->-$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Point;)I

    move-result v10

    invoke-direct {v6, v4, v5, v10}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;-><init>(FFI)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    .end local v1    # "point":Lcom/android/internal/widget/NotificationProgressBar$Point;
    .end local v2    # "nextPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v3    # "pointWidth":F
    .end local v4    # "start":F
    .end local v5    # "end":F
    .end local v14    # "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v15    # "prevPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p4

    move/from16 v10, v18

    goto/16 :goto_0

    .line 958
    .end local v13    # "iPart":I
    :cond_4
    return-object v8
.end method

.method private blacklist setTracker(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "tracker"    # Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 237
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMirrorForRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressBar;->trackerSizeChanged(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 250
    .local v1, "trackerSizeChanged":Z
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 252
    .local v0, "hasTrackerIcon":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    if-eq v2, v0, :cond_5

    .line 253
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    .line 254
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 256
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressModel;->isStyledByProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 261
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->configureTrackerBounds()V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->updateTrackerAndBarPos(II)V

    .line 266
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->requestLayout()V

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 270
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 275
    :cond_7
    return-void
.end method

.method private blacklist setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "tracker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "progressFraction"    # F
    .param p4, "offsetY"    # I

    .line 615
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 616
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 617
    .local v3, "trackerWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 618
    .local v4, "trackerHeight":I
    iget v5, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    sub-int/2addr v2, v5

    .line 620
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 623
    .local v5, "trackerPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 625
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 626
    .local v7, "top":I
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 627
    .local v6, "bottom":I
    goto :goto_0

    .line 628
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    move/from16 v7, p4

    .line 629
    .restart local v7    # "top":I
    add-int v6, v1, v4

    .line 632
    .restart local v6    # "bottom":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->getMirrorForRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    sub-int v8, v2, v5

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    iput v8, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPos:I

    .line 633
    const/4 v8, 0x0

    .line 634
    .local v8, "left":I
    add-int/lit8 v9, v3, 0x0

    .line 636
    .local v9, "right":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 637
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 638
    iget v11, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    .line 639
    .local v11, "bkgOffsetX":I
    iget v12, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    .line 640
    .local v12, "bkgOffsetY":I
    add-int/lit8 v13, v11, 0x0

    add-int v14, v7, v12

    add-int v15, v9, v11

    add-int v1, v6, v12

    invoke-virtual {v10, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 645
    .end local v11    # "bkgOffsetX":I
    .end local v12    # "bkgOffsetY":I
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v11, p2

    invoke-virtual {v11, v1, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 647
    iput-boolean v1, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 648
    return-void
.end method

.method private static blacklist splitSegmentsByPoints(Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/Map;
    .locals 8
    .param p2, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 803
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 804
    .local v0, "prevSegStart":I
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 805
    .local v2, "pos":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 808
    goto :goto_0

    .line 811
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 812
    .local v3, "prevSeg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v4, Landroid/app/Notification$ProgressStyle$Segment;

    .line 813
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    .line 814
    .local v4, "leftSeg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v5, Landroid/app/Notification$ProgressStyle$Segment;

    .line 815
    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v5

    .line 817
    .local v5, "rightSeg":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-interface {p0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 821
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "prevSeg":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v4    # "leftSeg":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v5    # "rightSeg":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_0

    .line 823
    :cond_3
    return-object p0
.end method

.method private static blacklist trackerSizeChanged(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p0, "newTracker"    # Landroid/graphics/drawable/Drawable;
    .param p1, "oldTracker"    # Landroid/graphics/drawable/Drawable;

    .line 279
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 280
    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 281
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    .line 283
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 284
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 283
    :cond_4
    return v0
.end method

.method private blacklist updateDrawableParts()V
    .locals 24

    .line 432
    move-object/from16 v1, p0

    const-string v2, "NotificationProgressBar"

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 435
    :cond_1
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v7, v0

    .line 436
    .local v7, "width":F
    const/4 v15, 0x0

    cmpl-float v0, v7, v15

    if-nez v0, :cond_3

    .line 437
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 442
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 444
    :cond_2
    return-void

    .line 447
    :cond_3
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getSegSegGap()F

    move-result v8

    .line 448
    .local v8, "segSegGap":F
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getSegPointGap()F

    move-result v9

    .line 449
    .local v9, "segPointGap":F
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getPointRadius()F

    move-result v10

    .line 450
    .local v10, "pointRadius":F
    iget-object v3, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    move v5, v8

    .end local v8    # "segSegGap":F
    .local v5, "segSegGap":F
    iget-boolean v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    move v6, v9

    .end local v9    # "segPointGap":F
    .local v6, "segPointGap":F
    iget v9, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    move v4, v7

    move v7, v10

    .end local v10    # "pointRadius":F
    .local v4, "width":F
    .local v7, "pointRadius":F
    invoke-static/range {v3 .. v9}, Lcom/android/internal/widget/NotificationProgressBar;->processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;

    move-result-object v0

    move v7, v4

    .end local v4    # "width":F
    .local v7, "width":F
    .restart local v10    # "pointRadius":F
    iput-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    .line 460
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getSegmentMinWidth()F

    move-result v12

    .line 461
    .local v12, "segmentMinWidth":F
    invoke-direct {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction()F

    move-result v20

    .line 462
    .local v20, "progressFraction":F
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->isStyledByProgress()Z

    move-result v13

    .line 464
    .local v13, "isStyledByProgress":Z
    iget-boolean v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    if-eqz v0, :cond_4

    move/from16 v22, v15

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getSegSegGap()F

    move-result v0

    move/from16 v22, v0

    .line 465
    .local v22, "progressGap":F
    :goto_0
    const/4 v3, 0x0

    .line 467
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;
    :try_end_0
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v19, v10

    move/from16 v18, v12

    move/from16 v21, v13

    .end local v10    # "pointRadius":F
    .end local v12    # "segmentMinWidth":F
    .end local v13    # "isStyledByProgress":Z
    .local v18, "segmentMinWidth":F
    .local v19, "pointRadius":F
    .local v21, "isStyledByProgress":Z
    :try_start_1
    invoke-static/range {v16 .. v22}, Lcom/android/internal/widget/NotificationProgressBar;->maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v18    # "segmentMinWidth":F
    .end local v19    # "pointRadius":F
    .end local v21    # "isStyledByProgress":Z
    .restart local v10    # "pointRadius":F
    .restart local v12    # "segmentMinWidth":F
    .restart local v13    # "isStyledByProgress":Z
    move-object v3, v0

    .line 478
    move-object/from16 v16, v3

    goto :goto_2

    .line 476
    .end local v10    # "pointRadius":F
    .end local v12    # "segmentMinWidth":F
    .end local v13    # "isStyledByProgress":Z
    .restart local v18    # "segmentMinWidth":F
    .restart local v19    # "pointRadius":F
    .restart local v21    # "isStyledByProgress":Z
    :catch_0
    move-exception v0

    move/from16 v12, v18

    move/from16 v10, v19

    move/from16 v13, v21

    .end local v18    # "segmentMinWidth":F
    .end local v19    # "pointRadius":F
    .end local v21    # "isStyledByProgress":Z
    .restart local v10    # "pointRadius":F
    .restart local v12    # "segmentMinWidth":F
    .restart local v13    # "isStyledByProgress":Z
    goto :goto_1

    :catch_1
    move-exception v0

    .line 477
    .local v0, "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    :goto_1
    const-string v4, "Failed to stretch and rescale segments"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v16, v3

    .line 480
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    .local v16, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :goto_2
    const/4 v3, 0x0

    .line 481
    .local v3, "fallbackSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    if-nez v16, :cond_6

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_6

    .line 482
    const-string v0, "Falling back to single segment"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_2
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 486
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 485
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4
    :try_end_2
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v4, :cond_5

    .line 487
    :try_start_3
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v4
    :try_end_3
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 502
    :catch_2
    move-exception v0

    move/from16 v15, v20

    move/from16 v23, v22

    goto :goto_4

    .line 488
    :cond_5
    :try_start_4
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    .line 484
    :goto_3
    invoke-virtual {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 489
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 491
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v0
    :try_end_4
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_4 .. :try_end_4} :catch_5

    .line 493
    move v9, v6

    .end local v6    # "segPointGap":F
    .restart local v9    # "segPointGap":F
    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v6

    iget-boolean v11, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    iget v14, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I
    :try_end_5
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_5 .. :try_end_5} :catch_4

    .line 489
    move v8, v5

    move/from16 v15, v20

    move/from16 v23, v22

    move v5, v0

    .end local v5    # "segSegGap":F
    .end local v20    # "progressFraction":F
    .end local v22    # "progressGap":F
    .restart local v8    # "segSegGap":F
    .local v15, "progressFraction":F
    .local v23, "progressGap":F
    :try_start_6
    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_6 .. :try_end_6} :catch_3

    move v5, v8

    move v6, v9

    .end local v8    # "segSegGap":F
    .end local v9    # "segPointGap":F
    .restart local v5    # "segSegGap":F
    .restart local v6    # "segPointGap":F
    move-object/from16 v16, v0

    .line 505
    goto :goto_5

    .line 502
    .end local v5    # "segSegGap":F
    .end local v6    # "segPointGap":F
    .restart local v8    # "segSegGap":F
    .restart local v9    # "segPointGap":F
    :catch_3
    move-exception v0

    move v5, v8

    move v6, v9

    .end local v8    # "segSegGap":F
    .end local v9    # "segPointGap":F
    .restart local v5    # "segSegGap":F
    .restart local v6    # "segPointGap":F
    goto :goto_4

    .end local v6    # "segPointGap":F
    .end local v15    # "progressFraction":F
    .end local v23    # "progressGap":F
    .restart local v9    # "segPointGap":F
    .restart local v20    # "progressFraction":F
    .restart local v22    # "progressGap":F
    :catch_4
    move-exception v0

    move v6, v9

    move/from16 v15, v20

    move/from16 v23, v22

    .end local v9    # "segPointGap":F
    .end local v20    # "progressFraction":F
    .end local v22    # "progressGap":F
    .restart local v6    # "segPointGap":F
    .restart local v15    # "progressFraction":F
    .restart local v23    # "progressGap":F
    goto :goto_4

    .end local v15    # "progressFraction":F
    .end local v23    # "progressGap":F
    .restart local v20    # "progressFraction":F
    .restart local v22    # "progressGap":F
    :catch_5
    move-exception v0

    move/from16 v15, v20

    move/from16 v23, v22

    .line 503
    .end local v20    # "progressFraction":F
    .end local v22    # "progressGap":F
    .restart local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .restart local v15    # "progressFraction":F
    .restart local v23    # "progressGap":F
    :goto_4
    const-string v4, "Failed to stretch and rescale segments with single segment fallback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 481
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .end local v15    # "progressFraction":F
    .end local v23    # "progressGap":F
    .restart local v20    # "progressFraction":F
    .restart local v22    # "progressGap":F
    :cond_6
    move/from16 v15, v20

    move/from16 v23, v22

    .line 508
    .end local v20    # "progressFraction":F
    .end local v22    # "progressGap":F
    .restart local v15    # "progressFraction":F
    .restart local v23    # "progressGap":F
    :goto_5
    if-nez v16, :cond_9

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 509
    const-string v0, "Falling back to single segment and no points"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-nez v3, :cond_8

    .line 511
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 513
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 512
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    if-nez v4, :cond_7

    .line 514
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v4

    goto :goto_6

    .line 515
    :cond_7
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    .line 511
    :goto_6
    invoke-virtual {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 518
    :cond_8
    nop

    .line 520
    :try_start_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 521
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v0
    :try_end_7
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_7 .. :try_end_7} :catch_8

    .line 522
    move v9, v6

    .end local v6    # "segPointGap":F
    .restart local v9    # "segPointGap":F
    :try_start_8
    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v6

    iget-boolean v11, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    iget v14, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I
    :try_end_8
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_8 .. :try_end_8} :catch_7

    .line 518
    move v8, v5

    move v5, v0

    .end local v5    # "segSegGap":F
    .restart local v8    # "segSegGap":F
    :try_start_9
    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;

    move-result-object v0
    :try_end_9
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_9 .. :try_end_9} :catch_6

    move v5, v8

    move v6, v9

    .end local v8    # "segSegGap":F
    .end local v9    # "segPointGap":F
    .restart local v5    # "segSegGap":F
    .restart local v6    # "segPointGap":F
    move-object/from16 v16, v0

    .line 535
    goto :goto_8

    .line 531
    .end local v5    # "segSegGap":F
    .end local v6    # "segPointGap":F
    .restart local v8    # "segSegGap":F
    .restart local v9    # "segPointGap":F
    :catch_6
    move-exception v0

    move v5, v8

    move v6, v9

    .end local v8    # "segSegGap":F
    .end local v9    # "segPointGap":F
    .restart local v5    # "segSegGap":F
    .restart local v6    # "segPointGap":F
    goto :goto_7

    .end local v6    # "segPointGap":F
    .restart local v9    # "segPointGap":F
    :catch_7
    move-exception v0

    move v6, v9

    .end local v9    # "segPointGap":F
    .restart local v6    # "segPointGap":F
    goto :goto_7

    :catch_8
    move-exception v0

    .line 532
    .restart local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    :goto_7
    const-string v4, "Failed to stretch and rescale segments with single segments and no points"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    :cond_9
    :goto_8
    if-nez v16, :cond_a

    .line 539
    const-string v0, "Falling back to no stretching and rescaling"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    move/from16 v4, v23

    .end local v23    # "progressGap":F
    .local v4, "progressGap":F
    invoke-static {v0, v2, v15, v13, v4}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_9

    .line 538
    .end local v4    # "progressGap":F
    .restart local v23    # "progressGap":F
    :cond_a
    move/from16 v4, v23

    .end local v23    # "progressGap":F
    .restart local v4    # "progressGap":F
    move-object/from16 v0, v16

    .line 549
    .end local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :goto_9
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->setStart(F)V

    .line 550
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->setEnd(F)V

    .line 555
    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 556
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 557
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v2, v8

    iget v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    div-float/2addr v2, v8

    iput v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    .line 558
    return-void
.end method

.method private blacklist updateTrackerAndBarPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 561
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 562
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    .local v1, "bar":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 567
    .local v2, "tracker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 568
    .local v3, "barHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    .line 569
    :cond_0
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-gtz v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    :goto_0
    nop

    .line 574
    .local v5, "trackerHeight":I
    if-le v5, v3, :cond_2

    .line 575
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 576
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 577
    .local v7, "barOffsetY":I
    nop

    .line 578
    .local v6, "trackerOffsetY":I
    goto :goto_1

    .line 579
    .end local v6    # "trackerOffsetY":I
    .end local v7    # "barOffsetY":I
    :cond_2
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 580
    .local v6, "offsetHeight":I
    move v7, v6

    .line 581
    .restart local v7    # "barOffsetY":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 584
    .local v6, "trackerOffsetY":I
    :goto_1
    if-eqz v1, :cond_3

    .line 585
    iget v8, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 586
    .local v8, "barWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 589
    .end local v8    # "barWidth":I
    :cond_3
    if-eqz v2, :cond_4

    .line 590
    iget v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    invoke-direct {p0, p1, v2, v4, v6}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 592
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 399
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 404
    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    .line 389
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 392
    .local v0, "tracker":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 714
    const-class v0, Lcom/android/internal/widget/NotificationProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 380
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 385
    :cond_0
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 661
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 664
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->drawTracker(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 660
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public blacklist onDrawableBoundsChanged()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 417
    .local v0, "progressDrawableBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 424
    return-void
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 695
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 698
    .local v1, "trackerHeight":I
    :goto_0
    const/4 v3, 0x0

    .line 699
    .local v3, "dw":I
    const/4 v4, 0x0

    .line 700
    .local v4, "dh":I
    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMinWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMinHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 703
    .end local v4    # "dh":I
    .local v5, "dh":I
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 705
    .end local v5    # "dh":I
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .restart local v4    # "dh":I
    :cond_1
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 706
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 708
    invoke-static {v3, p1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->resolveSizeAndState(III)I

    move-result v5

    .line 709
    invoke-static {v4, p2, v2}, Lcom/android/internal/widget/NotificationProgressBar;->resolveSizeAndState(III)I

    move-result v2

    .line 708
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    .line 694
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "trackerHeight":I
    .end local v3    # "dw":I
    .end local v4    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 652
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 657
    :cond_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 719
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 722
    .local v0, "tracker":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 730
    :cond_0
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressBar;->updateTrackerAndBarPos(II)V

    .line 411
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .locals 0
    .param p1, "max"    # I

    monitor-enter p0

    .line 359
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 358
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist setMin(I)V
    .locals 0
    .param p1, "min"    # I

    monitor-enter p0

    .line 350
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 349
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "min":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    monitor-enter p0

    .line 331
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 333
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 330
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public whitelist setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 341
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V

    .line 344
    return-void
.end method

.method public blacklist setProgressModel(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 149
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bundle shouldn\'t be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    invoke-static {p1}, Lcom/android/internal/widget/NotificationProgressModel;->fromBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->isIndeterminate()Z

    move-result v0

    .line 153
    .local v0, "isIndeterminate":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminate(Z)V

    .line 155
    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressModel;->getIndeterminateColor()I

    move-result v1

    .line 157
    .local v1, "indeterminateColor":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    .end local v1    # "indeterminateColor":I
    goto :goto_1

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v1

    .line 164
    .local v1, "progress":I
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressModel;->getProgressMax()I

    move-result v2

    .line 166
    .local v2, "progressMax":I
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 167
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v4

    .line 166
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setMax(I)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationProgressBar;->setProgress(I)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 179
    .end local v1    # "progress":I
    .end local v2    # "progressMax":I
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setProgressTrackerIconAsync"
    .end annotation

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 212
    .end local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 214
    .restart local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    .line 215
    return-void
.end method

.method public blacklist setProgressTrackerIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 225
    .end local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 227
    .restart local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/NotificationProgressBar;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

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
