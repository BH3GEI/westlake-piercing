.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.super Ljava/lang/Object;
.source "DataMap.java"


# instance fields
.field public final blacklist mIds:[I

.field public final blacklist mNames:[Ljava/lang/String;

.field public final blacklist mTypes:[B


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[B[I)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "types"    # [B
    .param p3, "ids"    # [I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    .line 28
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getId(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 40
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    return v0

    .line 38
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getType(I)B
    .locals 1
    .param p1, "pos"    # I

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte v0, v0, p1

    return v0
.end method
