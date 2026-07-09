.class public Landroid/app/Notification$ProgressStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle$Segment;,
        Landroid/app/Notification$ProgressStyle$Point;
    }
.end annotation


# static fields
.field private static final DEFAULT_PROGRESS_MAX:I = 0x64

.field private static final KEY_ELEMENT_COLOR:Ljava/lang/String; = "colorInt"

.field private static final KEY_ELEMENT_ID:Ljava/lang/String; = "id"

.field private static final KEY_POINT_POSITION:Ljava/lang/String; = "position"

.field private static final KEY_SEGMENT_LENGTH:Ljava/lang/String; = "length"

.field private static final MAX_PROGRESS_POINT_LIMIT:I = 0x4

.field private static final MAX_PROGRESS_SEGMENT_LIMIT:I = 0xa


# instance fields
.field private mEndIcon:Landroid/graphics/drawable/Icon;

.field private mIndeterminate:Z

.field private mIsStyledByProgress:Z

.field private mProgress:I

.field private mProgressPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIcon:Landroid/graphics/drawable/Icon;

.field private mTrackerIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11275
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 11285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11288
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return-void
.end method

.method public static getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 11841
    .local p0, "progressPoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11842
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11844
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 11845
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    if-gez v3, :cond_0

    .line 11846
    goto :goto_1

    .line 11849
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11850
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "position"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11851
    const-string/jumbo v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11852
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11854
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11843
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11858
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 11866
    .local p0, "pointBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11868
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$ProgressStyle$Point;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11869
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11870
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11871
    .local v2, "pointBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 11872
    .local v3, "position":I
    if-gez v3, :cond_0

    .line 11873
    goto :goto_1

    .line 11875
    :cond_0
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 11876
    .local v4, "id":I
    const-string v5, "colorInt"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 11878
    .local v5, "color":I
    new-instance v6, Landroid/app/Notification$ProgressStyle$Point;

    invoke-direct {v6, v3}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {v6, v4}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    .line 11879
    .local v6, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11869
    .end local v2    # "pointBundle":Landroid/os/Bundle;
    .end local v3    # "position":I
    .end local v4    # "id":I
    .end local v5    # "color":I
    .end local v6    # "point":Landroid/app/Notification$ProgressStyle$Point;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11883
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 11790
    .local p0, "progressSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11791
    .local v0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11793
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 11794
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    if-gtz v3, :cond_0

    .line 11795
    goto :goto_1

    .line 11798
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11799
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "length"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11800
    const-string/jumbo v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11801
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11803
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11792
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11807
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 11815
    .local p0, "segmentBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11816
    .local v0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$ProgressStyle$Segment;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11817
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11818
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11819
    .local v2, "segmentBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "length"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 11820
    .local v3, "length":I
    if-gtz v3, :cond_0

    .line 11821
    goto :goto_1

    .line 11824
    :cond_0
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 11825
    .local v4, "id":I
    const-string v5, "colorInt"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 11827
    .local v5, "color":I
    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v3}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 11828
    invoke-virtual {v6, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    .line 11830
    .local v6, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11817
    .end local v2    # "segmentBundle":Landroid/os/Bundle;
    .end local v3    # "length":I
    .end local v4    # "id":I
    .end local v5    # "color":I
    .end local v6    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11834
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;
    .locals 2
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;
    .param p2, "bg"    # I
    .param p3, "defaultColor"    # I

    .line 12006
    new-instance v0, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 12007
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v1

    invoke-static {v1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 12006
    return-object v0
.end method

.method public static sanitizeProgressColor(III)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "defaultColor"    # I

    .line 12022
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p0

    .line 12021
    :goto_0
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v0, p1, v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$smensureColorContrast(IID)I

    move-result v0

    return v0
.end method

.method private sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 2
    .param p1, "segment"    # Landroid/app/Notification$ProgressStyle$Segment;
    .param p2, "bg"    # I
    .param p3, "defaultColor"    # I

    .line 11998
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 11999
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 12000
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v1

    invoke-static {v1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 11998
    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11657
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 11658
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11659
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11658
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11660
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11661
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11660
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11663
    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11664
    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11665
    const-string v0, "android.progressMax"

    invoke-virtual {p0}, Landroid/app/Notification$ProgressStyle;->getProgressMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11666
    const-string v0, "android.styledByProgress"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11668
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressTrackerIcon"

    if-eqz v0, :cond_0

    .line 11669
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 11671
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11674
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressStartIcon"

    if-eqz v0, :cond_1

    .line 11675
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 11677
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11680
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressEndIcon"

    if-eqz v0, :cond_2

    .line 11681
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 11683
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11685
    :goto_2
    return-void
.end method

.method public addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;
    .locals 3
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;

    .line 11431
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11434
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    const-string v1, "Notification"

    if-lez v0, :cond_1

    .line 11435
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11437
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    .line 11438
    const-string v0, "Progress points limit is reached. First4 points will be rendered."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11443
    :cond_1
    const-string v0, "Dropped the point. The position is a negative or zero integer."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11446
    :cond_2
    :goto_0
    return-object p0
.end method

.method public addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;
    .locals 2
    .param p1, "segment"    # Landroid/app/Notification$ProgressStyle$Segment;

    .line 11374
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11377
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 11378
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11380
    :cond_1
    const-string v0, "Notification"

    const-string v1, "Dropped the segment. The length is not a positive integer."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11383
    :goto_0
    return-object p0
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 6
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 11306
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 11310
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$ProgressStyle;

    .line 11315
    .local v1, "progressStyle":Landroid/app/Notification$ProgressStyle;
    iget-boolean v2, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v1, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11316
    return v0

    .line 11318
    :cond_1
    const/4 v2, 0x0

    .line 11319
    .local v2, "nonIndeterminateCheckResult":Z
    iget-boolean v3, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 11320
    iget v3, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v1, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11321
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v5, v1, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11322
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11323
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11324
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v0

    :goto_1
    move v2, v3

    .line 11327
    :cond_4
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v1, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11328
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    :goto_2
    nop

    .line 11327
    :goto_3
    return v0

    .line 11307
    .end local v1    # "progressStyle":Landroid/app/Notification$ProgressStyle;
    .end local v2    # "nonIndeterminateCheckResult":Z
    :cond_7
    :goto_4
    return v0
.end method

.method public createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;
    .locals 9
    .param p1, "defaultProgressColor"    # I
    .param p2, "backgroundColor"    # I

    .line 11892
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11894
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11895
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle$Segment;->-$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I

    move-result v0

    .local v0, "indeterminateColor":I
    goto :goto_0

    .line 11897
    .end local v0    # "indeterminateColor":I
    :cond_0
    move v0, p1

    .line 11900
    .restart local v0    # "indeterminateColor":I
    :goto_0
    new-instance v1, Lcom/android/internal/widget/NotificationProgressModel;

    .line 11901
    invoke-static {v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    .line 11903
    .end local v0    # "indeterminateColor":I
    .local v1, "model":Lcom/android/internal/widget/NotificationProgressModel;
    goto/16 :goto_c

    .line 11905
    .end local v1    # "model":Lcom/android/internal/widget/NotificationProgressModel;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 11906
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/4 v0, 0x0

    .line 11907
    .local v0, "totalLength":I
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    .end local v0    # "totalLength":I
    .local v4, "totalLength":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    .line 11908
    .local v5, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    .line 11909
    .local v6, "length":I
    if-gtz v6, :cond_2

    goto :goto_1

    .line 11912
    :cond_2
    :try_start_0
    invoke-static {v4, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    move v4, v0

    .line 11913
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11919
    nop

    .line 11920
    .end local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v6    # "length":I
    goto :goto_1

    .line 11915
    .restart local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .restart local v6    # "length":I
    :catch_0
    move-exception v0

    .line 11916
    .local v0, "e":Ljava/lang/ArithmeticException;
    const/16 v4, 0x64

    .line 11917
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 11918
    nop

    .line 11923
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    .end local v5    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v6    # "length":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11924
    const/16 v4, 0x64

    .line 11925
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-direct {p0, v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_5

    .line 11927
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_8

    .line 11930
    const/4 v0, 0x1

    .line 11931
    .local v0, "allSameColor":Z
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v2

    .line 11933
    .local v2, "firstSegmentColor":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 11934
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    if-eq v6, v2, :cond_5

    .line 11935
    const/4 v0, 0x0

    .line 11936
    goto :goto_3

    .line 11933
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 11941
    .end local v5    # "i":I
    :cond_6
    :goto_3
    new-instance v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v5, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 11944
    .local v5, "singleSegment":Landroid/app/Notification$ProgressStyle$Segment;
    if-eqz v0, :cond_7

    move v6, v2

    goto :goto_4

    .line 11945
    :cond_7
    move v6, v1

    .line 11944
    :goto_4
    invoke-virtual {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    .line 11947
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 11948
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11954
    .end local v0    # "allSameColor":Z
    .end local v2    # "firstSegmentColor":I
    .end local v5    # "singleSegment":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_8
    move v0, v4

    .end local v4    # "totalLength":I
    .local v0, "totalLength":I
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11955
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Point;

    .line 11956
    .local v5, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v6

    .line 11959
    .local v6, "position":I
    if-lez v6, :cond_9

    if-lt v6, v0, :cond_a

    goto :goto_6

    .line 11960
    :cond_a
    invoke-direct {p0, v5, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11961
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 11962
    goto :goto_7

    .line 11964
    .end local v5    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v6    # "position":I
    :cond_b
    goto :goto_6

    .line 11969
    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_d

    .line 11970
    const/4 v2, 0x0

    move v7, v2

    .local v2, "segmentsFallbackColor":I
    goto :goto_b

    .line 11973
    .end local v2    # "segmentsFallbackColor":I
    :cond_d
    const/4 v2, 0x1

    .line 11974
    .local v2, "allSameColor":Z
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    .line 11975
    .local v5, "firstSegmentColor":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 11976
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v7}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v7

    if-eq v7, v5, :cond_e

    .line 11977
    const/4 v2, 0x0

    .line 11978
    goto :goto_9

    .line 11975
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 11983
    .end local v6    # "i":I
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    move v6, v1

    goto :goto_a

    .line 11984
    :cond_10
    invoke-static {v1, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result v6

    :goto_a
    move v7, v6

    .line 11988
    .end local v2    # "allSameColor":Z
    .end local v5    # "firstSegmentColor":I
    .local v7, "segmentsFallbackColor":I
    :goto_b
    new-instance v2, Lcom/android/internal/widget/NotificationProgressModel;

    iget v5, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    int-to-long v5, v5

    .line 11989
    invoke-static {v5, v6, v1, v0}, Ljava/lang/Math;->clamp(JII)I

    move-result v5

    iget-boolean v6, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    move-object v1, v2

    .line 11992
    .end local v0    # "totalLength":I
    .end local v3    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    .end local v7    # "segmentsFallbackColor":I
    .restart local v1    # "model":Lcom/android/internal/widget/NotificationProgressModel;
    :goto_c
    return-object v1
.end method

.method public displayCustomViewInline()Z
    .locals 1

    .line 11713
    const/4 v0, 0x1

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 11454
    iget v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    return v0
.end method

.method public getProgressEndIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 11596
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getProgressMax()I
    .locals 9

    .line 11474
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11475
    .local v0, "progressSegment":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/16 v1, 0x64

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 11478
    :cond_0
    const/4 v2, 0x0

    .line 11479
    .local v2, "progressMax":I
    const/4 v3, 0x0

    .line 11480
    .local v3, "validSegmentCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 11481
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    .line 11482
    .local v5, "segmentLength":I
    if-lez v5, :cond_1

    .line 11484
    :try_start_0
    invoke-static {v2, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11485
    .end local v2    # "progressMax":I
    .local v6, "progressMax":I
    add-int/lit8 v3, v3, 0x1

    .line 11490
    move v2, v6

    goto :goto_1

    .line 11486
    .end local v6    # "progressMax":I
    .restart local v2    # "progressMax":I
    :catch_0
    move-exception v6

    .line 11487
    .local v6, "e":Ljava/lang/ArithmeticException;
    const-string v7, "Notification"

    const-string v8, "Notification.ProgressStyle segment total overflowed."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11489
    return v1

    .line 11480
    .end local v5    # "segmentLength":I
    .end local v6    # "e":Ljava/lang/ArithmeticException;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11494
    .end local v4    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 11495
    return v1

    .line 11498
    :cond_3
    return v2

    .line 11476
    .end local v2    # "progressMax":I
    .end local v3    # "validSegmentCount":I
    :cond_4
    :goto_2
    return v1
.end method

.method public getProgressPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 11394
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    return-object v0
.end method

.method public getProgressSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 11343
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    return-object v0
.end method

.method public getProgressStartIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 11578
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getProgressTrackerIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 11558
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public isProgressIndeterminate()Z
    .locals 1

    .line 11508
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    return v0
.end method

.method public isStyledByProgress()Z
    .locals 1

    .line 11533
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 11720
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 11721
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11723
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11725
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeExpandedContentView()Landroid/widget/RemoteViews;
    .locals 8

    .line 11744
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 11745
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11746
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11747
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11748
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11751
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 11755
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x1020438

    if-eqz v2, :cond_0

    .line 11756
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11757
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_0

    .line 11759
    :cond_0
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11762
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020437

    if-eqz v2, :cond_1

    .line 11763
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11764
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_1

    .line 11766
    :cond_1
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11769
    :goto_1
    const v2, 0x102000d

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11771
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v3

    .line 11772
    .local v3, "backgroundColor":I
    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 11773
    .local v4, "defaultProgressColor":I
    invoke-virtual {p0, v4, v3}, Landroid/app/Notification$ProgressStyle;->createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v5

    .line 11775
    .local v5, "model":Lcom/android/internal/widget/NotificationProgressModel;
    nop

    .line 11776
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressModel;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 11775
    const-string/jumbo v7, "setProgressModel"

    invoke-virtual {v1, v2, v7, v6}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 11778
    const-string/jumbo v6, "setProgressTrackerIcon"

    iget-object v7, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 11782
    return-object v1
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 11732
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 11733
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11735
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 11737
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public purgeResources()V
    .locals 1

    .line 11614
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 11615
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 11616
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11618
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 11619
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11621
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    .line 11622
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11624
    :cond_2
    return-void
.end method

.method public reduceImageSizes(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 11631
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 11633
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11635
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 11636
    const v1, 0x10502c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 11637
    .local v1, "progressIconSize":I
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_0

    .line 11638
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11640
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_1

    .line 11641
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11643
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_2

    .line 11644
    const v2, 0x10502cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11646
    .local v2, "progressTrackerWidth":I
    const v3, 0x10502cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 11648
    .local v3, "progressTrackerHeight":I
    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11650
    .end local v2    # "progressTrackerWidth":I
    .end local v3    # "progressTrackerHeight":I
    :cond_2
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11692
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 11693
    const-class v0, Landroid/os/Bundle;

    .line 11694
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11693
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11695
    const-string v0, "android.progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11696
    const-string v0, "android.progressIndeterminate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 11697
    const-string v0, "android.styledByProgress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11698
    const-string v0, "android.progressTrackerIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11699
    const-string v0, "android.progressStartIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 11700
    const-string v0, "android.progressEndIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11701
    const-class v0, Landroid/os/Bundle;

    .line 11702
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11701
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11703
    return-void
.end method

.method public setProgress(I)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "progress"    # I

    .line 11465
    iput p1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 11466
    return-object p0
.end method

.method public setProgressEndIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "endIcon"    # Landroid/graphics/drawable/Icon;

    .line 11605
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 11606
    return-object p0
.end method

.method public setProgressIndeterminate(Z)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "indeterminate"    # Z

    .line 11524
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 11525
    return-object p0
.end method

.method public setProgressPoints(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 11406
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 11409
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$ProgressStyle$Point;

    .line 11412
    .local v1, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {p0, v1}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    .line 11413
    .end local v1    # "point":Landroid/app/Notification$ProgressStyle$Point;
    goto :goto_0

    .line 11414
    :cond_1
    return-object p0
.end method

.method public setProgressSegments(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 11355
    .local p1, "progressSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 11358
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$ProgressStyle$Segment;

    .line 11360
    .local v1, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {p0, v1}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    .line 11361
    .end local v1    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_0

    .line 11362
    :cond_1
    return-object p0
.end method

.method public setProgressStartIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "startIcon"    # Landroid/graphics/drawable/Icon;

    .line 11587
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 11588
    return-object p0
.end method

.method public setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "trackerIcon"    # Landroid/graphics/drawable/Icon;

    .line 11569
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 11570
    return-object p0
.end method

.method public setStyledByProgress(Z)Landroid/app/Notification$ProgressStyle;
    .locals 0
    .param p1, "enabled"    # Z

    .line 11548
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 11549
    return-object p0
.end method
