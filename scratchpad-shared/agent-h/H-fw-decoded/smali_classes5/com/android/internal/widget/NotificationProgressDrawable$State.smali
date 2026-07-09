.class final Lcom/android/internal/widget/NotificationProgressDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field blacklist mChangingConfigurations:I

.field blacklist mDensity:I

.field blacklist mFadedSegmentHeight:F

.field blacklist mPointRadius:F

.field blacklist mPointRectCornerRadius:F

.field blacklist mPointRectInset:F

.field blacklist mSegPointGap:F

.field blacklist mSegSegGap:F

.field blacklist mSegmentCornerRadius:F

.field blacklist mSegmentHeight:F

.field blacklist mSegmentMinWidth:F

.field blacklist mThemeAttrs:[I

.field blacklist mThemeAttrsPoints:[I

.field blacklist mThemeAttrsSegments:[I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 583
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    .line 567
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    .line 568
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    .line 581
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 584
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Lcom/android/internal/widget/NotificationProgressDrawable$State;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 586
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    .line 567
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    .line 568
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    .line 581
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 587
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 588
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    .line 589
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    .line 590
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    .line 591
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 592
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 593
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 594
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 595
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 596
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 598
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    .line 599
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    .line 600
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    .line 602
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p2, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 603
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 604
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    .line 606
    :cond_0
    return-void
.end method

.method private blacklist applyDensityScaling(II)V
    .locals 2
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 609
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 610
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    .line 613
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 614
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    .line 617
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 618
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    .line 621
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 622
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 625
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 626
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 629
    :cond_4
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 630
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 633
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 634
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 637
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 638
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 641
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 642
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 645
    :cond_8
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-nez v0, :cond_1

    .line 676
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 675
    :goto_1
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 650
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 658
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 659
    .local v0, "density":I
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    .local v1, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    goto :goto_0

    .line 662
    .end local v1    # "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    :cond_0
    move-object v1, p0

    .line 665
    .restart local v1    # "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    :goto_0
    new-instance v2, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v2
.end method

.method public blacklist setDensity(I)V
    .locals 1
    .param p1, "targetDensity"    # I

    .line 680
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 681
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 682
    .local v0, "sourceDensity":I
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 684
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    .line 686
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method
