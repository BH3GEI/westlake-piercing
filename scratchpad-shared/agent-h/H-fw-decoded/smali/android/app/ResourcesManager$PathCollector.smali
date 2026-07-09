.class Landroid/app/ResourcesManager$PathCollector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathCollector"
.end annotation


# instance fields
.field public final libsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final orderedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final orderedOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final originalKey:Landroid/content/res/ResourcesKey;

.field public final overlaysSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/ResourcesKey;)V
    .locals 1
    .param p1, "original"    # Landroid/content/res/ResourcesKey;

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1648
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    .line 1649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1650
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    .line 1668
    iput-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    .line 1669
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 1672
    :cond_0
    return-void
.end method

.method static appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1661
    .local p1, "uniquePaths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "orderedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    return-void

    .line 1662
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1663
    aget-object v2, p0, v0

    invoke-static {v2, p1, p2}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1665
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method static appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1654
    .local p1, "uniquePaths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "orderedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    :cond_0
    return-void
.end method


# virtual methods
.method public appendKey(Landroid/content/res/ResourcesKey;)V
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1675
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1676
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1677
    return-void
.end method

.method collectedKey()Landroid/content/res/ResourcesKey;
    .locals 11

    .line 1692
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1693
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v1, v1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1694
    :goto_0
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v3, v3, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 1695
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v6, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1696
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget v5, v5, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1697
    :goto_2
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v7, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v7, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 1698
    :goto_3
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v8, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v8, v8, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1699
    :goto_4
    iget-object v9, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v2, v2, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    :goto_5
    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1692
    return-object v0
.end method

.method isSameAsOriginal()Z
    .locals 4

    .line 1680
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1681
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1683
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1685
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1686
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1688
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    :cond_5
    goto :goto_1

    :cond_6
    move v1, v2

    .line 1683
    :goto_1
    return v1
.end method
