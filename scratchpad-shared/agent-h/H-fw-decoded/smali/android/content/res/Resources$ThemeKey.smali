.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void
.end method

.method private findValue(IZ)I
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 2030
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v0, v1, :cond_1

    .line 2031
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p2, :cond_0

    .line 2032
    return v0

    .line 2030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2035
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private moveToLast(I)V
    .locals 6
    .param p1, "index"    # I

    .line 2039
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2042
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v0, v0, p1

    .line 2043
    .local v0, "id":I
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, p1

    .line 2044
    .local v1, "force":Z
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2045
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v3, v3, -0x1

    aput v0, v2, v3

    .line 2046
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2047
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v3, v3, -0x1

    aput-boolean v1, v2, v3

    .line 2048
    return-void

    .line 2040
    .end local v0    # "id":I
    .end local v1    # "force":Z
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 2051
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2052
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2055
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    .line 2056
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2062
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->findValue(IZ)I

    move-result v0

    .line 2063
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 2064
    invoke-direct {p0, v0}, Landroid/content/res/Resources$ThemeKey;->moveToLast(I)V

    goto :goto_0

    .line 2066
    :cond_2
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2067
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2068
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2069
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p2

    iput v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2071
    :goto_0
    return-void
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .line 2120
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 2121
    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2122
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2123
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2124
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2125
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2092
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2093
    return v0

    .line 2096
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2100
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    .line 2101
    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v3, v4, :cond_2

    .line 2102
    return v1

    .line 2105
    :cond_2
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2106
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 2107
    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v5, v4

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v4

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v6, v6, v4

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 2106
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2108
    :cond_4
    :goto_1
    return v1

    .line 2112
    .end local v4    # "i":I
    :cond_5
    return v0

    .line 2097
    .end local v2    # "t":Landroid/content/res/Resources$ThemeKey;
    .end local v3    # "N":I
    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 2087
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    .line 2079
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2080
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Z

    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2081
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2082
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2083
    return-void
.end method
