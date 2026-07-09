.class public Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;
.super Ljava/lang/Object;
.source "AndroidPackageSplitImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackageSplit;


# instance fields
.field private final blacklist mClassLoaderName:Ljava/lang/String;

.field private blacklist mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mRevisionCode:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "revisionCode"    # I
    .param p4, "flags"    # I
    .param p5, "classLoaderName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    nop

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    .line 49
    iput p4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    .line 50
    iput-object p5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 98
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 99
    .local v1, "that":Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;
    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    iget v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    iget v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    .line 101
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 103
    .local v3, "fieldsEqual":Z
    :goto_0
    if-nez v3, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    return v2

    .line 108
    :cond_4
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 109
    iget-object v5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 110
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 111
    return v2

    .line 108
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "index":I
    :cond_6
    return v0
.end method

.method public blacklist fillDependencies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot fill split dependencies more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 123
    .local v0, "dependenciesHash":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 123
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "index":I
    :cond_1
    return v0
.end method

.method public blacklist isHasCode()Z
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
