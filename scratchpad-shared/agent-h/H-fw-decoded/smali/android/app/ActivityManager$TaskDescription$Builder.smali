.class public final Landroid/app/ActivityManager$TaskDescription$Builder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mIconRes:I

.field private mLabel:Ljava/lang/String;

.field private mNavigationBarColor:I

.field private mPrimaryColor:I

.field private mStatusBarColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1870
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1872
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1873
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1874
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1875
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ActivityManager$TaskDescription;
    .locals 17

    .line 1951
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1952
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 1953
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    iget v5, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iget v6, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iget v7, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iget v8, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-direct/range {v2 .. v16}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    return-object v2
.end method

.method public setBackgroundColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1919
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1920
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "iconRes"    # I

    .line 1896
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1897
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 1884
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1885
    return-object p0
.end method

.method public setNavigationBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1941
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    .line 1942
    return-object p0
.end method

.method public setPrimaryColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1907
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1908
    return-object p0
.end method

.method public setStatusBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1930
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1931
    return-object p0
.end method
