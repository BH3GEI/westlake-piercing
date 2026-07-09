.class Landroid/app/Notification$TemplateBindResult$MarginSet;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$TemplateBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarginSet"
.end annotation


# instance fields
.field private mValueIfGone:F

.field private mValueIfVisible:F

.field final synthetic this$0:Landroid/app/Notification$TemplateBindResult;


# direct methods
.method private constructor <init>(Landroid/app/Notification$TemplateBindResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 14647
    iput-object p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .line 14657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 14658
    return-void
.end method

.method public applyToView(Landroid/widget/RemoteViews;IF)V
    .locals 5
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "extraMarginDp"    # F

    .line 14662
    invoke-virtual {p0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->getDpValue()F

    move-result v0

    add-float/2addr v0, p3

    .line 14663
    .local v0, "marginEndDp":F
    const/4 v1, 0x1

    const v2, 0x102042b

    if-ne p2, v2, :cond_0

    .line 14664
    const-string/jumbo v3, "setTopLineExtraMarginEndDp"

    invoke-virtual {p1, v2, v3, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_1

    .line 14666
    :cond_0
    const v2, 0x1020568

    const/4 v3, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x1020246

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 14682
    :cond_1
    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_1

    .line 14667
    :cond_2
    :goto_0
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    .line 14674
    const-string/jumbo v2, "setImageEndMarginDp"

    iget v4, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    invoke-virtual {p1, p2, v2, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 14675
    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    const-string/jumbo v4, "setHasImage"

    invoke-virtual {p1, p2, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 14679
    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 14685
    :goto_1
    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v2, :cond_3

    .line 14686
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    add-float/2addr v2, p3

    .line 14687
    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v2

    .line 14686
    const v3, 0x1020564

    invoke-virtual {p1, p2, v3, v2}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 14689
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    add-float/2addr v2, p3

    .line 14690
    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 14689
    const v2, 0x1020563

    invoke-virtual {p1, p2, v2, v1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 14693
    :cond_3
    return-void

    .line 14668
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programming error: `text` and `big_text` use ImageFloatingTextView which can either show a margin or not; thus mValueIfGone must be 0, but it was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDpValue()F
    .locals 1

    .line 14696
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    :goto_0
    return v0
.end method

.method public setValues(FF)V
    .locals 0
    .param p1, "valueIfGone"    # F
    .param p2, "valueIfVisible"    # F

    .line 14652
    iput p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    .line 14653
    iput p2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    .line 14654
    return-void
.end method
