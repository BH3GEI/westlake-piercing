.class public Landroid/content/pm/overlay/OverlayPaths$Builder;
.super Ljava/lang/Object;
.source "OverlayPaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/overlay/OverlayPaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mPaths:Landroid/content/pm/overlay/OverlayPaths;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths;-><init>(Landroid/content/pm/overlay/OverlayPaths-IA;)V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/overlay/OverlayPaths;)V
    .locals 2
    .param p1, "base"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths;-><init>(Landroid/content/pm/overlay/OverlayPaths-IA;)V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 55
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    return-void
.end method

.method private static addUniquePath(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .locals 3
    .param p1, "other"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 84
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_1

    .line 86
    :cond_1
    return-object p0
.end method

.method public addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .locals 1
    .param p1, "overlayPath"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .locals 1
    .param p1, "idmapPath"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object p0
.end method

.method public build()Landroid/content/pm/overlay/OverlayPaths;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object v0
.end method
