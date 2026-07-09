.class public final Landroid/hardware/display/DisplayTopology;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MAX_GAP:F = 5.0f

.field private static final blacklist TAG:Ljava/lang/String; = "DisplayTopology"


# instance fields
.field private blacklist mPrimaryDisplayId:I

.field private blacklist mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    nop

    .line 73
    new-instance v0, Landroid/hardware/display/DisplayTopology$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .locals 2
    .param p1, "root"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p2, "primaryDisplayId"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 127
    iput-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 128
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 134
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 137
    :cond_0
    iput p2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 144
    sget-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 145
    return-void
.end method

.method private blacklist addDisplay(IFFZ)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "shouldLog"    # Z

    .line 602
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    if-nez v0, :cond_4

    .line 606
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const-string v6, "DisplayTopology"

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iput-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 608
    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 609
    if-eqz p4, :cond_3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First display added: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v7, ", parent ID: "

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float v2, p2, v2

    sub-float v5, v0, v2

    .line 615
    .local v5, "offset":F
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 616
    .local v0, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    if-eqz p4, :cond_1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second display added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v5    # "offset":F
    :cond_1
    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 623
    .local v8, "rightMostDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 625
    .local v0, "newDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    if-eqz p4, :cond_3

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v0    # "newDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v8    # "rightMostDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_3
    :goto_0
    return-void

    .line 603
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DisplayTopology: attempting to add a display that already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist allNodesIdMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    .line 845
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 846
    .local v0, "pend":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v1, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 850
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 851
    .local v2, "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 853
    .end local v2    # "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    return-object v1
.end method

.method private blacklist clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .locals 5
    .param p1, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 863
    if-nez p1, :cond_0

    .line 864
    return-void

    .line 866
    :cond_0
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 867
    .local v1, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 869
    :cond_1
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 870
    :cond_2
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_2

    .line 868
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 872
    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 873
    .end local v1    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 874
    :cond_5
    return-void
.end method

.method public static blacklist dpToPx(FI)F
    .locals 2
    .param p0, "dp"    # F
    .param p1, "dpi"    # I

    .line 103
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static blacklist findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "startingNode"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 667
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 668
    return-object v0

    .line 670
    :cond_0
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-ne v1, p0, :cond_1

    .line 671
    return-object p1

    .line 673
    :cond_1
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 674
    .local v2, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {p0, v2}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    .line 675
    .local v3, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-eqz v3, :cond_2

    .line 676
    return-object v3

    .line 678
    .end local v2    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v3    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_2
    goto :goto_0

    .line 679
    :cond_3
    return-object v0
.end method

.method private blacklist findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;
    .locals 6
    .param p1, "bounds1"    # Landroid/graphics/RectF;
    .param p2, "bounds2"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v0, "placements":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 739
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 740
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 743
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 747
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 748
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 751
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_3
    return-object v0
.end method

.method private static blacklist findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;
    .locals 8
    .param p0, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p1, "xPos"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 640
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 644
    .local v2, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 649
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :pswitch_0
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    add-float/2addr v3, p1

    .local v3, "childXPos":F
    goto :goto_1

    .line 647
    .end local v3    # "childXPos":F
    :pswitch_1
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    .restart local v3    # "childXPos":F
    goto :goto_1

    .line 645
    .end local v3    # "childXPos":F
    :pswitch_2
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    .line 653
    .restart local v3    # "childXPos":F
    :goto_1
    invoke-static {v2, v3}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v4

    .line 655
    .local v4, "childResult":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 656
    new-instance v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    .line 658
    .end local v2    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v3    # "childXPos":F
    .end local v4    # "childResult":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    :cond_0
    goto :goto_0

    .line 659
    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist floatEquals(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 841
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V
    .locals 9
    .param p3, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "FFI)V"
        }
    .end annotation

    .line 696
    .local p0, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .local p1, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .local p2, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-nez p3, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    if-eqz p0, :cond_1

    .line 700
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float/2addr v1, p4

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    add-float/2addr v2, p5

    invoke-direct {v0, p4, p5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_1
    if-eqz p1, :cond_2

    .line 703
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_2
    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 706
    .local v5, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-eqz p2, :cond_3

    .line 707
    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_3
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-nez v1, :cond_4

    .line 710
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    sub-float v6, p4, v1

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float v7, p5, v1

    add-int/lit8 v8, p6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v2, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .local v3, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .local v4, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    .line 712
    .end local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    .line 713
    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    .line 715
    :cond_5
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    .line 716
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    sub-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    .line 718
    :cond_6
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_7

    .line 719
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 722
    .end local v5    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_7
    :goto_1
    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    .line 723
    .end local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_8
    return-void
.end method

.method static synthetic blacklist lambda$getGraph$2(Landroid/util/SparseArray;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 5
    .param p0, "bounds"    # Landroid/util/SparseArray;
    .param p1, "displayId1"    # Ljava/lang/Integer;
    .param p2, "displayId2"    # Ljava/lang/Integer;

    .line 768
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 769
    .local v0, "bounds1":Landroid/graphics/RectF;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 771
    .local v1, "bounds2":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 772
    .local v2, "compareX":I
    if-eqz v2, :cond_0

    .line 773
    return v2

    .line 775
    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    return v3
.end method

.method static synthetic blacklist lambda$normalize$0(Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 9
    .param p0, "depths"    # Ljava/util/Map;
    .param p1, "bounds"    # Ljava/util/Map;
    .param p2, "d1"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p3, "d2"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 392
    if-ne p2, p3, :cond_0

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 397
    .local v0, "compareDepths":I
    if-eqz v0, :cond_1

    .line 398
    return v0

    .line 401
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 402
    .local v1, "bounds1":Landroid/graphics/RectF;
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 403
    .local v2, "bounds2":Landroid/graphics/RectF;
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    .line 404
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    .line 403
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    return v3
.end method

.method static synthetic blacklist lambda$normalize$1(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 2
    .param p0, "d1"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p1, "d2"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 515
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static blacklist pxToDp(FI)F
    .locals 2
    .param p0, "px"    # F
    .param p1, "dpi"    # I

    .line 93
    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist addDisplay(IFF)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFFZ)V

    .line 173
    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology;
    .locals 3

    .line 527
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 528
    .local v0, "rootCopy":Landroid/hardware/display/DisplayTopology$TreeNode;
    :goto_0
    new-instance v1, Landroid/hardware/display/DisplayTopology;

    iget v2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, v2}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 565
    const-string v0, "DisplayTopology:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 568
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrimaryDisplayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v1, "Topology tree:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 575
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 576
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 578
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 582
    instance-of v0, p1, Landroid/hardware/display/DisplayTopology;

    if-nez v0, :cond_0

    .line 583
    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAbsoluteBounds()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 539
    .local v1, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    iget-object v4, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 541
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 542
    .local v0, "boundsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 543
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 544
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 545
    :cond_0
    return-object v0
.end method

.method public blacklist getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;
    .locals 21
    .param p1, "densityPerDisplay"    # Landroid/util/SparseIntArray;

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->getAbsoluteBounds()Landroid/util/SparseArray;

    move-result-object v2

    .line 767
    .local v2, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    new-instance v3, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    .line 777
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    .local v4, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 779
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 781
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 783
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 785
    .local v5, "adjacentDisplaysPerId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 786
    .local v7, "id":I
    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    .line 787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot construct graph, no density for display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DisplayTopology"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v6, 0x0

    return-object v6

    .line 790
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 791
    .end local v7    # "id":I
    goto :goto_1

    .line 794
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 795
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 796
    .local v7, "displayId1":I
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 797
    .local v8, "bounds1":Landroid/graphics/RectF;
    nop

    .line 798
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 800
    .local v9, "adjacentDisplays1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 801
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 802
    .local v11, "displayId2":I
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    .line 803
    .local v12, "bounds2":Landroid/graphics/RectF;
    nop

    .line 804
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 806
    .local v13, "adjacentDisplays2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    invoke-direct {v0, v8, v12}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v14

    .line 807
    .local v14, "placements1":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    invoke-direct {v0, v12, v8}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v15

    .line 808
    .local v15, "placements2":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .local v18, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    move-object/from16 v2, v17

    check-cast v2, Landroid/util/Pair;

    .line 809
    .local v2, "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v17, v3

    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .local v17, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    move-object/from16 v19, v4

    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 810
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v20, v6

    .end local v6    # "i":I
    .local v20, "i":I
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v3, v11, v4, v6}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    .line 809
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v2    # "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_4

    .line 812
    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "i":I
    .local v2, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "i":I
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "i":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 813
    .local v3, "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    new-instance v4, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 814
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v16, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v4, v7, v6, v2}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    .line 813
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    .end local v3    # "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v2, v16

    goto :goto_5

    .line 816
    :cond_4
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 818
    goto :goto_6

    .line 800
    .end local v11    # "displayId2":I
    .end local v12    # "bounds2":Landroid/graphics/RectF;
    .end local v13    # "adjacentDisplays2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    .end local v14    # "placements1":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    .end local v15    # "placements2":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto/16 :goto_3

    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "i":I
    .restart local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 794
    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .end local v7    # "displayId1":I
    .end local v8    # "bounds1":Landroid/graphics/RectF;
    .end local v9    # "adjacentDisplays1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    .end local v10    # "j":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "i":I
    :goto_6
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    .end local v20    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_2

    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 823
    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 824
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 825
    .local v2, "nodes":[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, v2

    if-ge v3, v4, :cond_8

    .line 826
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 827
    .local v4, "displayId":I
    new-instance v6, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 828
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-direct {v6, v4, v7, v8}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;-><init>(II[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;)V

    aput-object v6, v2, v3

    .line 825
    .end local v4    # "displayId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 831
    .end local v3    # "i":I
    :cond_8
    new-instance v3, Landroid/hardware/display/DisplayTopologyGraph;

    iget v4, v0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v3, v4, v2}, Landroid/hardware/display/DisplayTopologyGraph;-><init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V

    return-object v3
.end method

.method public blacklist getPrimaryDisplayId()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return v0
.end method

.method public blacklist getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 590
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist normalize()V
    .locals 22

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 384
    .local v2, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v3, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v4, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v5, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 391
    new-instance v1, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 406
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    .local v5, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 409
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 410
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 411
    .local v7, "targetDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v8, 0x0

    .line 412
    .local v8, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v9, 0x0

    .line 413
    .local v9, "lastOffsetX":F
    const/4 v10, 0x0

    .line 415
    .local v10, "lastOffsetY":F
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v6, :cond_9

    .line 416
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v15, v16

    check-cast v15, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 417
    .local v15, "sourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/graphics/RectF;

    .line 418
    .local v13, "sourceBounds":Landroid/graphics/RectF;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/graphics/RectF;

    .line 420
    .local v12, "targetBounds":Landroid/graphics/RectF;
    invoke-static {v13, v12}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 421
    move-object/from16 v20, v1

    goto/16 :goto_5

    .line 426
    :cond_1
    iget v14, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v17

    if-ltz v14, :cond_2

    .line 427
    iget v14, v13, Landroid/graphics/RectF;->right:F

    iget v0, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v0

    goto :goto_2

    .line 428
    :cond_2
    iget v0, v13, Landroid/graphics/RectF;->left:F

    iget v14, v12, Landroid/graphics/RectF;->right:F

    sub-float v14, v0, v14

    :goto_2
    nop

    .line 429
    .local v14, "offsetX":F
    iget v0, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v17

    if-ltz v0, :cond_3

    .line 430
    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    sub-float v0, v17, v0

    goto :goto_3

    .line 431
    :cond_3
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v17, v0

    :goto_3
    nop

    .line 432
    .local v0, "offsetY":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpg-float v17, v17, v20

    if-gtz v17, :cond_6

    .line 433
    move/from16 v17, v0

    .end local v0    # "offsetY":F
    .local v17, "offsetY":F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v14

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 434
    iget v0, v12, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v14

    iput v0, v12, Landroid/graphics/RectF;->right:F

    .line 436
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    move-object/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v20, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-eq v0, v1, :cond_4

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 438
    :cond_4
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    add-float/2addr v0, v14

    invoke-static {v7, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 440
    :cond_5
    const/4 v0, 0x0

    .end local v17    # "offsetY":F
    .restart local v0    # "offsetY":F
    goto :goto_4

    .line 442
    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_6
    move/from16 v17, v0

    move-object/from16 v20, v1

    .end local v0    # "offsetY":F
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v17    # "offsetY":F
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float v0, v0, v17

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 443
    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    add-float v0, v0, v17

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    .line 445
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 447
    :cond_7
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    add-float v0, v0, v17

    invoke-static {v7, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 449
    :cond_8
    const/4 v14, 0x0

    move/from16 v0, v17

    .line 452
    .end local v17    # "offsetY":F
    .restart local v0    # "offsetY":F
    :goto_4
    move-object v1, v15

    .line 453
    .end local v8    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v1, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    move v8, v14

    .line 454
    .end local v9    # "lastOffsetX":F
    .local v8, "lastOffsetX":F
    move v9, v0

    move v10, v9

    move v9, v8

    move-object v8, v1

    .line 415
    .end local v0    # "offsetY":F
    .end local v1    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v12    # "targetBounds":Landroid/graphics/RectF;
    .end local v13    # "sourceBounds":Landroid/graphics/RectF;
    .end local v14    # "offsetX":F
    .end local v15    # "sourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v8, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v9    # "lastOffsetX":F
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_1

    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_9
    move-object/from16 v20, v1

    const/4 v1, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x3

    .line 459
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .end local v11    # "j":I
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-nez v8, :cond_a

    .line 461
    goto/16 :goto_9

    .line 463
    :cond_a
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 464
    .local v0, "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-ne v0, v8, :cond_b

    .line 468
    goto/16 :goto_9

    .line 471
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 472
    .local v11, "childBounds":Landroid/graphics/RectF;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    .line 474
    .local v12, "parentBounds":Landroid/graphics/RectF;
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v13

    const-string v14, "Unexpected value: "

    packed-switch v13, :pswitch_data_0

    .line 479
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :pswitch_0
    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_6

    .line 476
    :pswitch_1
    iget v13, v12, Landroid/graphics/RectF;->right:F

    iget v15, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_6

    .line 477
    :pswitch_2
    iget v13, v12, Landroid/graphics/RectF;->top:F

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_6

    .line 475
    :pswitch_3
    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v15, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    .line 479
    :goto_6
    nop

    .line 483
    .local v13, "areTouching":Z
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    const/16 v16, 0x0

    const v21, 0x38d1b717    # 1.0E-4f

    packed-switch v15, :pswitch_data_1

    .line 490
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :pswitch_4
    iget v14, v11, Landroid/graphics/RectF;->right:F

    add-float v14, v14, v21

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_c

    iget v14, v11, Landroid/graphics/RectF;->left:F

    iget v15, v12, Landroid/graphics/RectF;->right:F

    add-float v15, v15, v21

    cmpg-float v14, v14, v15

    if-gez v14, :cond_c

    move v14, v1

    goto :goto_7

    :cond_c
    move/from16 v14, v16

    goto :goto_7

    .line 485
    :pswitch_5
    iget v14, v11, Landroid/graphics/RectF;->bottom:F

    add-float v14, v14, v21

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_d

    iget v14, v11, Landroid/graphics/RectF;->top:F

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    add-float v15, v15, v21

    cmpg-float v14, v14, v15

    if-gez v14, :cond_d

    move v14, v1

    goto :goto_7

    :cond_d
    move/from16 v14, v16

    .line 490
    :goto_7
    and-int/2addr v13, v14

    .line 494
    if-nez v13, :cond_11

    .line 496
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 497
    nop

    .line 498
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    .line 499
    .local v14, "lastIntersectingSourceDisplayBounds":Landroid/graphics/RectF;
    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    cmpl-float v15, v9, v17

    if-eqz v15, :cond_f

    .line 502
    cmpl-float v1, v9, v17

    if-lez v1, :cond_e

    move/from16 v1, v18

    goto :goto_8

    :cond_e
    move/from16 v1, v16

    :goto_8
    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 503
    iget v1, v11, Landroid/graphics/RectF;->top:F

    iget v15, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v15

    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_9

    .line 505
    :cond_f
    cmpl-float v15, v10, v17

    if-eqz v15, :cond_11

    .line 506
    cmpl-float v15, v10, v17

    if-lez v15, :cond_10

    move/from16 v1, v19

    :cond_10
    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 507
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v15, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v15

    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 409
    .end local v0    # "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "targetDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v8    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v9    # "lastOffsetX":F
    .end local v10    # "lastOffsetY":F
    .end local v11    # "childBounds":Landroid/graphics/RectF;
    .end local v12    # "parentBounds":Landroid/graphics/RectF;
    .end local v13    # "areTouching":Z
    .end local v14    # "lastIntersectingSourceDisplayBounds":Landroid/graphics/RectF;
    :cond_11
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_0

    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_12
    move-object/from16 v20, v1

    .line 514
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .end local v6    # "i":I
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;-><init>()V

    .line 517
    .local v0, "idComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 518
    .local v6, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 519
    .end local v6    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_a

    .line 520
    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist rearrange(Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p1, "newPos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/graphics/PointF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v2, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, "availableParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v3, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    .line 259
    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;->allNodesIdMap()Ljava/util/Map;

    move-result-object v3

    .line 263
    .local v3, "needsParent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 267
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 268
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 269
    .local v5, "n":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 270
    .end local v5    # "n":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 272
    :cond_1
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 286
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 287
    .local v4, "bestDist":D
    const/4 v6, 0x0

    .local v6, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v7, 0x0

    .line 289
    .local v7, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 290
    .local v9, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 291
    .local v10, "childPos":Landroid/graphics/PointF;
    iget v11, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v12

    add-float/2addr v11, v12

    .line 292
    .local v11, "childRight":F
    iget v12, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v13

    add-float/2addr v12, v13

    .line 293
    .local v12, "childBottom":F
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 294
    .local v14, "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 295
    .local v15, "parentPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v16

    add-float v0, v0, v16

    .line 296
    .local v0, "parentRight":F
    move-wide/from16 v16, v4

    .end local v4    # "bestDist":D
    .local v16, "bestDist":D
    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    .line 303
    .local v4, "parentBottom":F
    nop

    .line 304
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v18, v0

    .end local v0    # "parentRight":F
    .local v18, "parentRight":F
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v19, v5

    iget v5, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v5, v19, v0

    .line 305
    .local v5, "xOverlap":F
    nop

    .line 306
    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v20, v4

    .end local v4    # "parentBottom":F
    .local v20, "parentBottom":F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v19, v0

    .line 311
    .local v0, "yOverlap":F
    cmpl-float v4, v5, v0

    if-lez v4, :cond_3

    .line 323
    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    move/from16 v19, v0

    .end local v0    # "yOverlap":F
    .local v19, "yOverlap":F
    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v5

    .line 324
    .local v0, "xDeviation":F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    .end local v0    # "xDeviation":F
    .local v21, "xDeviation":F
    iget v0, v15, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2

    .line 325
    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v0, v12, v0

    .line 326
    .local v0, "yDeviation":F
    const/4 v4, 0x1

    .local v4, "pos":I
    goto :goto_4

    .line 328
    .end local v0    # "yDeviation":F
    .end local v4    # "pos":I
    :cond_2
    iget v0, v10, Landroid/graphics/PointF;->y:F

    sub-float v0, v20, v0

    .line 329
    .restart local v0    # "yDeviation":F
    const/4 v4, 0x3

    .line 331
    .restart local v4    # "pos":I
    :goto_4
    move/from16 v22, v0

    .end local v0    # "yDeviation":F
    .local v22, "yDeviation":F
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v0, v23, v0

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v21

    move/from16 v21, v28

    move-object/from16 v28, v6

    move v6, v4

    move/from16 v4, v22

    move-object/from16 v22, v28

    .local v0, "offset":F
    goto :goto_6

    .line 333
    .end local v4    # "pos":I
    .end local v19    # "yOverlap":F
    .end local v21    # "xDeviation":F
    .end local v22    # "yDeviation":F
    .local v0, "yOverlap":F
    :cond_3
    move/from16 v19, v0

    .end local v0    # "yOverlap":F
    .restart local v19    # "yOverlap":F
    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v0

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v0, v19

    .line 334
    .local v0, "yDeviation":F
    iget v4, v10, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .end local v0    # "yDeviation":F
    .local v21, "yDeviation":F
    iget v0, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    .line 335
    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v0, v11, v0

    .line 336
    .local v0, "xDeviation":F
    const/4 v4, 0x0

    .restart local v4    # "pos":I
    goto :goto_5

    .line 338
    .end local v0    # "xDeviation":F
    .end local v4    # "pos":I
    :cond_4
    iget v0, v10, Landroid/graphics/PointF;->x:F

    sub-float v0, v18, v0

    .line 339
    .restart local v0    # "xDeviation":F
    const/4 v4, 0x2

    .line 341
    .restart local v4    # "pos":I
    :goto_5
    move/from16 v22, v0

    .end local v0    # "xDeviation":F
    .local v22, "xDeviation":F
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v0, v23, v0

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v22

    move-object/from16 v22, v6

    move v6, v4

    move/from16 v4, v21

    move/from16 v21, v28

    .line 344
    .restart local v0    # "xDeviation":F
    .local v4, "yDeviation":F
    .local v5, "offset":F
    .local v6, "pos":I
    .local v21, "xOverlap":F
    .local v22, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    :goto_6
    move-object/from16 v24, v7

    move-object/from16 v23, v8

    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v24, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    float-to-double v7, v0

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .end local v9    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v10    # "childPos":Landroid/graphics/PointF;
    .local v25, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v26, "childPos":Landroid/graphics/PointF;
    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 345
    .local v7, "dist":D
    cmpl-double v9, v7, v16

    if-ltz v9, :cond_5

    .line 346
    move-object/from16 v0, p0

    move-wide/from16 v4, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto/16 :goto_3

    .line 349
    :cond_5
    move-wide v9, v7

    .line 350
    .end local v16    # "bestDist":D
    .local v9, "bestDist":D
    move-object/from16 v16, v25

    .line 351
    .end local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v16, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v17, v14

    .line 354
    .end local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v17, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move/from16 v27, v0

    move-object/from16 v0, v16

    .end local v16    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v0, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v27, "xDeviation":F
    invoke-static {v0, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 355
    invoke-static {v0, v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 356
    .end local v4    # "yDeviation":F
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    .end local v7    # "dist":D
    .end local v14    # "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v15    # "parentPos":Landroid/graphics/PointF;
    .end local v18    # "parentRight":F
    .end local v19    # "yOverlap":F
    .end local v20    # "parentBottom":F
    .end local v21    # "xOverlap":F
    .end local v27    # "xDeviation":F
    move-object v6, v0

    move-wide v4, v9

    move-object/from16 v7, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 293
    .end local v0    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v17    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v25    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v26    # "childPos":Landroid/graphics/PointF;
    .local v4, "bestDist":D
    .local v6, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v7, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v9, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v10    # "childPos":Landroid/graphics/PointF;
    :cond_6
    move-wide/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 357
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v9    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v10    # "childPos":Landroid/graphics/PointF;
    .end local v11    # "childRight":F
    .end local v12    # "childBottom":F
    .local v16, "bestDist":D
    .restart local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 359
    .end local v16    # "bestDist":D
    .end local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v4    # "bestDist":D
    .restart local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_7
    nop

    .line 361
    invoke-virtual {v7, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 362
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 365
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 363
    .restart local v4    # "bestDist":D
    .restart local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "child not in pending set! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 371
    return-void

    .line 264
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newPos has wrong number of entries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeDisplay(I)Z
    .locals 6
    .param p1, "displayId"    # I

    .line 208
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 214
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 216
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 217
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 218
    .local v2, "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 219
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v5

    invoke-direct {p0, v3, v4, v5, v1}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFFZ)V

    .line 221
    :cond_1
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 222
    .end local v2    # "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 224
    :cond_2
    iget v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    const-string v2, "DisplayTopology"

    if-ne v1, p1, :cond_4

    .line 225
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    iput v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_1

    .line 228
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 230
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary display with ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " removed, new primary display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 233
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " removed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 595
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 596
    .local v0, "out":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 597
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    .line 598
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist updateDisplay(IFF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 184
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 185
    .local v0, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 188
    :cond_0
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p2}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p3}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    return v1

    .line 191
    :cond_1
    invoke-static {v0, p2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 192
    invoke-static {v0, p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 193
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updated, new width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayTopology"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 555
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 556
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    return-void
.end method
