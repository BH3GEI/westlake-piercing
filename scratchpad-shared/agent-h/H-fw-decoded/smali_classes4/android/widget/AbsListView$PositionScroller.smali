.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7809
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7810
    invoke-static {p1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 7811
    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .line 8003
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8004
    .local v3, "firstPos":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 8005
    .local v4, "childCount":I
    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    .line 8006
    .local v5, "lastPos":I
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 8007
    .local v6, "paddedTop":I
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 8009
    .local v7, "paddedBottom":I
    if-lt v1, v3, :cond_0

    if-le v1, v5, :cond_1

    .line 8010
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scrollToVisible called with targetPos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not visible ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AbsListView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8013
    :cond_1
    if-lt v2, v3, :cond_2

    if-le v2, v5, :cond_3

    .line 8015
    :cond_2
    const/4 v2, -0x1

    .line 8018
    .end local p2    # "boundPos":I
    .local v2, "boundPos":I
    :cond_3
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8019
    .local v8, "targetChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 8020
    .local v9, "targetTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 8021
    .local v10, "targetBottom":I
    const/4 v11, 0x0

    .line 8023
    .local v11, "scrollBy":I
    if-le v10, v7, :cond_4

    .line 8024
    sub-int v11, v10, v7

    .line 8026
    :cond_4
    if-ge v9, v6, :cond_5

    .line 8027
    sub-int v11, v9, v6

    .line 8030
    :cond_5
    if-nez v11, :cond_6

    .line 8031
    return-void

    .line 8034
    :cond_6
    if-ltz v2, :cond_8

    .line 8035
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 8036
    .local v12, "boundChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 8037
    .local v13, "boundTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 8038
    .local v14, "boundBottom":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 8040
    .local v15, "absScroll":I
    if-gez v11, :cond_7

    add-int v1, v14, v15

    if-le v1, v7, :cond_7

    .line 8042
    sub-int v1, v14, v7

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "boundPos":I
    .local v16, "boundPos":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_0

    .line 8040
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_7
    move/from16 v16, v2

    .line 8043
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    if-lez v11, :cond_9

    sub-int v1, v13, v15

    if-ge v1, v6, :cond_9

    .line 8045
    sub-int v1, v13, v6

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_0

    .line 8034
    .end local v12    # "boundChild":Landroid/view/View;
    .end local v13    # "boundTop":I
    .end local v14    # "boundBottom":I
    .end local v15    # "absScroll":I
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_8
    move/from16 v16, v2

    .line 8049
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    :cond_9
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8050
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 22

    .line 8059
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 8060
    .local v1, "listHeight":I
    iget-object v2, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8062
    .local v2, "firstPos":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .local v18, "listHeight":I
    goto/16 :goto_7

    .line 8194
    .end local v18    # "listHeight":I
    .restart local v1    # "listHeight":I
    :pswitch_0
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v2, :cond_0

    .line 8196
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8197
    return-void

    .line 8200
    :cond_0
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8202
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8204
    .local v3, "childCount":I
    if-gtz v3, :cond_1

    .line 8205
    return-void

    .line 8208
    :cond_1
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8209
    .local v6, "position":I
    add-int v7, v2, v3

    sub-int/2addr v7, v5

    .line 8213
    .local v7, "lastPos":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8214
    .local v8, "firstChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 8215
    .local v9, "firstChildHeight":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 8216
    .local v10, "lastChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 8217
    .local v11, "lastChildHeight":I
    int-to-float v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v12, :cond_2

    move v12, v14

    goto :goto_0

    .line 8218
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    int-to-float v15, v9

    div-float/2addr v12, v15

    :goto_0
    nop

    .line 8219
    .local v12, "firstPositionVisiblePart":F
    int-to-float v15, v11

    cmpl-float v13, v15, v13

    if-nez v13, :cond_3

    move v13, v14

    goto :goto_1

    .line 8221
    :cond_3
    iget-object v13, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 8220
    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v15, v11

    div-float/2addr v13, v15

    :goto_1
    nop

    .line 8223
    .local v13, "lastPositionVisiblePart":F
    const/4 v15, 0x0

    .line 8224
    .local v15, "viewTravelCount":F
    if-ge v6, v2, :cond_4

    .line 8225
    sub-int v4, v2, v6

    int-to-float v4, v4

    sub-float v17, v14, v12

    add-float v4, v4, v17

    add-float v15, v4, v14

    goto :goto_2

    .line 8226
    :cond_4
    if-le v6, v7, :cond_5

    .line 8227
    sub-int v4, v6, v7

    int-to-float v4, v4

    sub-float v17, v14, v13

    add-float v15, v4, v17

    .line 8231
    :cond_5
    :goto_2
    int-to-float v4, v3

    div-float v4, v15, v4

    .line 8233
    .local v4, "screenTravelCount":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 8234
    .local v5, "modifier":F
    if-ge v6, v2, :cond_6

    .line 8235
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    .line 8236
    .local v14, "distance":I
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget v1, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 8237
    .local v1, "duration":I
    move/from16 v19, v3

    .end local v3    # "childCount":I
    .local v19, "childCount":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "screenTravelCount":F
    .local v20, "screenTravelCount":F
    invoke-virtual {v3, v14, v1, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8238
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8239
    .end local v1    # "duration":I
    .end local v14    # "distance":I
    goto/16 :goto_7

    .end local v18    # "listHeight":I
    .end local v19    # "childCount":I
    .end local v20    # "screenTravelCount":F
    .local v1, "listHeight":I
    .restart local v3    # "childCount":I
    .restart local v4    # "screenTravelCount":F
    :cond_6
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v1    # "listHeight":I
    .end local v3    # "childCount":I
    .end local v4    # "screenTravelCount":F
    .restart local v18    # "listHeight":I
    .restart local v19    # "childCount":I
    .restart local v20    # "screenTravelCount":F
    if-le v6, v7, :cond_7

    .line 8240
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 8241
    .local v1, "distance":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 8242
    .local v3, "duration":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v4, v1, v3, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8243
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8244
    .end local v1    # "distance":I
    .end local v3    # "duration":I
    goto/16 :goto_7

    .line 8246
    :cond_7
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v3, v6, v2

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 8247
    .local v1, "targetTop":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int v3, v1, v3

    .line 8248
    .local v3, "distance":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v4, v4

    .line 8249
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v1

    .end local v1    # "targetTop":I
    .local v21, "targetTop":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v14, v1

    mul-float/2addr v4, v14

    float-to-int v1, v4

    .line 8250
    .local v1, "duration":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v16, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    .end local v5    # "modifier":F
    .local v16, "modifier":F
    invoke-virtual {v4, v3, v1, v5, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8252
    .end local v1    # "duration":I
    .end local v3    # "distance":I
    .end local v21    # "targetTop":I
    goto/16 :goto_7

    .line 8159
    .end local v6    # "position":I
    .end local v7    # "lastPos":I
    .end local v8    # "firstChild":Landroid/view/View;
    .end local v9    # "firstChildHeight":I
    .end local v10    # "lastChild":Landroid/view/View;
    .end local v11    # "lastChildHeight":I
    .end local v12    # "firstPositionVisiblePart":F
    .end local v13    # "lastPositionVisiblePart":F
    .end local v15    # "viewTravelCount":F
    .end local v16    # "modifier":F
    .end local v18    # "listHeight":I
    .end local v19    # "childCount":I
    .end local v20    # "screenTravelCount":F
    .local v1, "listHeight":I
    :pswitch_1
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 8160
    .local v1, "lastViewIndex":I
    if-gez v1, :cond_8

    .line 8161
    return-void

    .line 8163
    :cond_8
    add-int v3, v2, v1

    .line 8165
    .local v3, "lastPos":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v4, :cond_9

    .line 8167
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8168
    return-void

    .line 8171
    :cond_9
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8172
    .local v4, "lastView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8173
    .local v5, "lastViewHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 8174
    .local v6, "lastViewTop":I
    sub-int v7, v18, v6

    .line 8175
    .local v7, "lastViewPixelsShowing":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8176
    .local v8, "extraScroll":I
    iput v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8177
    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v3, v9, :cond_a

    .line 8178
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v10, v7, v8

    neg-int v10, v10

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x1

    invoke-virtual {v9, v10, v11, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8180
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 8182
    :cond_a
    sub-int v9, v18, v8

    .line 8183
    .local v9, "bottom":I
    add-int v10, v6, v5

    .line 8184
    .local v10, "lastViewBottom":I
    if-le v9, v10, :cond_b

    .line 8185
    iget-object v11, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v12, v9, v10

    neg-int v12, v12

    iget v13, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto :goto_3

    .line 8187
    :cond_b
    const/4 v14, 0x0

    iget-object v11, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v11, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8190
    .end local v9    # "bottom":I
    .end local v10    # "lastViewBottom":I
    :goto_3
    goto/16 :goto_7

    .line 8095
    .end local v3    # "lastPos":I
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "lastViewHeight":I
    .end local v6    # "lastViewTop":I
    .end local v7    # "lastViewPixelsShowing":I
    .end local v8    # "extraScroll":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_2
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    const/4 v1, 0x1

    .line 8096
    .local v1, "nextViewIndex":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8098
    .local v3, "childCount":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v4, :cond_10

    const/4 v14, 0x1

    if-le v3, v14, :cond_10

    add-int v4, v2, v3

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v5, :cond_c

    const/4 v14, 0x0

    goto :goto_4

    .line 8103
    :cond_c
    add-int/lit8 v4, v2, 0x1

    .line 8105
    .local v4, "nextPos":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_d

    .line 8107
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8108
    return-void

    .line 8111
    :cond_d
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8112
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 8113
    .local v6, "nextViewHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 8114
    .local v7, "nextViewTop":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8115
    .restart local v8    # "extraScroll":I
    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v4, v9, :cond_e

    .line 8116
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int v10, v6, v7

    sub-int/2addr v10, v8

    const/4 v14, 0x0

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x1

    invoke-virtual {v9, v10, v11, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8119
    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8121
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 8123
    :cond_e
    if-le v7, v8, :cond_f

    .line 8124
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v10, v7, v8

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v9, v10, v11, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_7

    .line 8126
    :cond_f
    const/4 v14, 0x0

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8129
    goto/16 :goto_7

    .line 8098
    .end local v4    # "nextPos":I
    .end local v5    # "nextView":Landroid/view/View;
    .end local v6    # "nextViewHeight":I
    .end local v7    # "nextViewTop":I
    .end local v8    # "extraScroll":I
    :cond_10
    const/4 v14, 0x0

    .line 8100
    :goto_4
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8101
    return-void

    .line 8133
    .end local v3    # "childCount":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_3
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget v1, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v1, :cond_11

    .line 8135
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8136
    return-void

    .line 8139
    :cond_11
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8140
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_12

    .line 8141
    return-void

    .line 8143
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 8144
    .local v3, "firstViewTop":I
    if-lez v2, :cond_13

    .line 8145
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_5

    :cond_13
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 8147
    .local v4, "extraScroll":I
    :goto_5
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v6, v3, v4

    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v8, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v8, :cond_14

    const/4 v14, 0x1

    :cond_14
    const/4 v15, 0x1

    invoke-virtual {v5, v6, v7, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8150
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8152
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v5, :cond_19

    .line 8153
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 8064
    .end local v3    # "firstViewTop":I
    .end local v4    # "extraScroll":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_4
    move/from16 v18, v1

    move v14, v4

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 8065
    .local v1, "lastViewIndex":I
    add-int v3, v2, v1

    .line 8067
    .local v3, "lastPos":I
    if-gez v1, :cond_15

    .line 8068
    return-void

    .line 8071
    :cond_15
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v4, :cond_16

    .line 8073
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8074
    return-void

    .line 8077
    :cond_16
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8078
    .local v4, "lastView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8079
    .local v5, "lastViewHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 8080
    .local v6, "lastViewTop":I
    sub-int v7, v18, v6

    .line 8081
    .local v7, "lastViewPixelsShowing":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mItemCount:I

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_17

    .line 8082
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_6

    :cond_17
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 8084
    .restart local v8    # "extraScroll":I
    :goto_6
    sub-int v9, v5, v7

    add-int/2addr v9, v8

    .line 8085
    .local v9, "scrollBy":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v3, v12, :cond_18

    const/4 v14, 0x1

    :cond_18
    const/4 v15, 0x1

    invoke-virtual {v10, v9, v11, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8087
    iput v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8088
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v3, v10, :cond_19

    .line 8089
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8258
    .end local v1    # "lastViewIndex":I
    .end local v3    # "lastPos":I
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "lastViewHeight":I
    .end local v6    # "lastViewTop":I
    .end local v7    # "lastViewPixelsShowing":I
    .end local v8    # "extraScroll":I
    .end local v9    # "scrollBy":I
    :cond_19
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o start(I)V
    .locals 8
    .param p1, "position"    # I

    .line 7815
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7817
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7819
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7824
    return-void

    .line 7827
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7828
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7830
    return-void

    .line 7833
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7834
    .local v1, "firstPos":I
    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 7837
    .local v2, "lastPos":I
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7838
    .local v4, "clampedPosition":I
    const/16 v5, 0xc8

    const/4 v6, -0x1

    if-ge v4, v1, :cond_2

    .line 7839
    sub-int v7, v1, v4

    add-int/2addr v7, v3

    .line 7840
    .local v7, "viewTravelCount":I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7841
    .end local v7    # "viewTravelCount":I
    :cond_2
    if-le v4, v2, :cond_4

    .line 7842
    sub-int v7, v4, v2

    add-int/2addr v7, v3

    .line 7843
    .restart local v7    # "viewTravelCount":I
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7849
    :goto_0
    if-lez v7, :cond_3

    .line 7850
    div-int/2addr v5, v7

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 7852
    :cond_3
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7854
    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7855
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7856
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7858
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7859
    return-void

    .line 7845
    .end local v7    # "viewTravelCount":I
    :cond_4
    invoke-direct {p0, v4, v6, v5}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7846
    return-void
.end method

.method public greylist-max-o start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 7863
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7865
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 7866
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7867
    return-void

    .line 7870
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 7872
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7877
    return-void

    .line 7880
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7881
    .local v1, "childCount":I
    if-nez v1, :cond_2

    .line 7883
    return-void

    .line 7886
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7887
    .local v2, "firstPos":I
    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 7890
    .local v3, "lastPos":I
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7891
    .local v5, "clampedPosition":I
    const/16 v6, 0xc8

    if-ge v5, v2, :cond_5

    .line 7892
    sub-int v7, v3, p2

    .line 7893
    .local v7, "boundPosFromLast":I
    if-ge v7, v4, :cond_3

    .line 7895
    return-void

    .line 7898
    :cond_3
    sub-int v8, v2, v5

    add-int/2addr v8, v4

    .line 7899
    .local v8, "posTravel":I
    add-int/lit8 v4, v7, -0x1

    .line 7900
    .local v4, "boundTravel":I
    if-ge v4, v8, :cond_4

    .line 7901
    move v9, v4

    .line 7902
    .local v9, "viewTravelCount":I
    const/4 v10, 0x4

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7904
    .end local v9    # "viewTravelCount":I
    :cond_4
    move v9, v8

    .line 7905
    .restart local v9    # "viewTravelCount":I
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7907
    .end local v4    # "boundTravel":I
    .end local v7    # "boundPosFromLast":I
    .end local v8    # "posTravel":I
    :goto_0
    goto :goto_2

    .end local v9    # "viewTravelCount":I
    :cond_5
    if-le v5, v3, :cond_9

    .line 7908
    sub-int v7, p2, v2

    .line 7909
    .local v7, "boundPosFromFirst":I
    if-ge v7, v4, :cond_6

    .line 7911
    return-void

    .line 7914
    :cond_6
    sub-int v8, v5, v3

    add-int/2addr v8, v4

    .line 7915
    .restart local v8    # "posTravel":I
    add-int/lit8 v9, v7, -0x1

    .line 7916
    .local v9, "boundTravel":I
    if-ge v9, v8, :cond_7

    .line 7917
    move v4, v9

    .line 7918
    .local v4, "viewTravelCount":I
    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 7920
    .end local v4    # "viewTravelCount":I
    :cond_7
    move v10, v8

    .line 7921
    .local v10, "viewTravelCount":I
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v9, v10

    .line 7923
    .end local v7    # "boundPosFromFirst":I
    .end local v8    # "posTravel":I
    .end local v10    # "viewTravelCount":I
    .local v9, "viewTravelCount":I
    :goto_1
    nop

    .line 7928
    :goto_2
    if-lez v9, :cond_8

    .line 7929
    div-int/2addr v6, v9

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_3

    .line 7931
    :cond_8
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7933
    :goto_3
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7934
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7935
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7937
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7938
    return-void

    .line 7924
    .end local v9    # "viewTravelCount":I
    :cond_9
    invoke-direct {p0, v5, p2, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7925
    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 7942
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 7943
    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 7947
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7949
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7951
    move v0, p2

    .line 7952
    .local v0, "postOffset":I
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7957
    return-void

    .line 7960
    .end local v0    # "postOffset":I
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7961
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7963
    return-void

    .line 7966
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 7968
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7969
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 7970
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7971
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7972
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7974
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7975
    .local v4, "firstPos":I
    add-int v5, v4, v0

    sub-int/2addr v5, v2

    .line 7978
    .local v5, "lastPos":I
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v6, v4, :cond_2

    .line 7979
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v2, v4, v2

    .local v2, "viewTravelCount":I
    goto :goto_0

    .line 7980
    .end local v2    # "viewTravelCount":I
    :cond_2
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v6, v5, :cond_4

    .line 7981
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v2, v5

    .line 7990
    .restart local v2    # "viewTravelCount":I
    :goto_0
    int-to-float v3, v2

    int-to-float v6, v0

    div-float/2addr v3, v6

    .line 7991
    .local v3, "screenTravelCount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 7992
    move v6, p3

    goto :goto_1

    :cond_3
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7993
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7995
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7996
    return-void

    .line 7984
    .end local v2    # "viewTravelCount":I
    .end local v3    # "screenTravelCount":F
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 7985
    .local v1, "targetTop":I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v1, p2

    invoke-virtual {v6, v7, p3, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7986
    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    .line 8054
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8055
    return-void
.end method
