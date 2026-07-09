.class final Landroid/view/NotificationTopLineView$OverflowAdjuster;
.super Ljava/lang/Object;
.source "NotificationTopLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowAdjuster"
.end annotation


# instance fields
.field private blacklist mHeightSpec:I

.field private blacklist mOverflow:I

.field private blacklist mRegrowView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method private constructor blacklist <init>(Landroid/view/NotificationTopLineView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 407
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;)V

    return-void
.end method

.method private blacklist getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 482
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method blacklist adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "targetDivider"    # Landroid/view/View;
    .param p3, "minimumWidth"    # I

    .line 427
    iget v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-lez v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 431
    .local v0, "oldWidth":I
    if-gt v0, p3, :cond_1

    .line 432
    return-object p0

    .line 435
    :cond_1
    iget v2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 436
    .local v2, "newSize":I
    if-nez p3, :cond_2

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v3}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eq v3, p1, :cond_2

    .line 440
    const/4 v2, 0x0

    .line 443
    :cond_2
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 444
    .local v4, "childWidthSpec":I
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 445
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v6, v0, v2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 447
    if-nez v2, :cond_3

    .line 448
    iget-object v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v5}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 450
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 451
    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v1}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 453
    .local v1, "oldDividerWidth":I
    const/4 v5, 0x0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 454
    .local v5, "dividerWidthSpec":I
    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 455
    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 458
    .end local v1    # "oldDividerWidth":I
    .end local v5    # "dividerWidthSpec":I
    :cond_3
    iget v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-gez v1, :cond_4

    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 461
    .local v1, "regrowCurrentSize":I
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v5, v1, v5

    .line 462
    .local v5, "maxSize":I
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 463
    .local v3, "regrowWidthSpec":I
    iget-object v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    iget v7, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    .line 464
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 465
    return-object p0

    .line 468
    .end local v1    # "regrowCurrentSize":I
    .end local v3    # "regrowWidthSpec":I
    .end local v5    # "maxSize":I
    :cond_4
    if-eqz v2, :cond_5

    .line 471
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 473
    :cond_5
    return-object p0

    .line 428
    .end local v0    # "oldWidth":I
    .end local v2    # "newSize":I
    .end local v4    # "childWidthSpec":I
    :cond_6
    :goto_0
    return-object p0
.end method

.method blacklist finish()V
    .locals 1

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 478
    return-void
.end method

.method blacklist resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .locals 1
    .param p1, "overflow"    # I
    .param p2, "heightSpec"    # I

    .line 413
    iput p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 414
    iput p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 416
    return-object p0
.end method
