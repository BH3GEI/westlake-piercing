.class public final Landroid/app/wallpaper/WallpaperDescription$Builder;
.super Ljava/lang/Object;
.source "WallpaperDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaper/WallpaperDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mContent:Landroid/os/PersistableBundle;

.field private mContextDescription:Ljava/lang/CharSequence;

.field private mContextUri:Landroid/net/Uri;

.field private mCropHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mSampleSize:F

.field private mThumbnail:Landroid/net/Uri;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$36Y_d4EmFtzzpojxL_CIFWSJTiE(Landroid/app/wallpaper/WallpaperDescription$Builder;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->lambda$setCropHints$0(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    .line 391
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    .line 392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    .line 397
    return-void
.end method

.method private synthetic lambda$setCropHints$0(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 519
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/wallpaper/WallpaperDescription;
    .locals 12

    .line 554
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mThumbnail:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    iget-object v6, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextDescription:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    iget-object v9, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    iget v10, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;FLandroid/app/wallpaper/WallpaperDescription-IA;)V

    return-object v0
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 411
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mComponent:Landroid/content/ComponentName;

    .line 412
    return-object p0
.end method

.method public setContent(Landroid/os/PersistableBundle;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "content"    # Landroid/os/PersistableBundle;

    .line 499
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContent:Landroid/os/PersistableBundle;

    .line 500
    return-object p0
.end method

.method public setContextDescription(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "contextDescription"    # Ljava/lang/CharSequence;

    .line 483
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextDescription:Ljava/lang/CharSequence;

    .line 484
    return-object p0
.end method

.method public setContextUri(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "contextUri"    # Landroid/net/Uri;

    .line 472
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mContextUri:Landroid/net/Uri;

    .line 473
    return-object p0
.end method

.method public setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 533
    .local p1, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 534
    return-object p0
.end method

.method public setCropHints(Ljava/util/Map;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 517
    .local p1, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mCropHints:Landroid/util/SparseArray;

    .line 518
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/wallpaper/WallpaperDescription$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpaper/WallpaperDescription$Builder;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 520
    return-object p0
.end method

.method public setDescription(Ljava/util/List;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/app/wallpaper/WallpaperDescription$Builder;"
        }
    .end annotation

    .line 460
    .local p1, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mDescription:Ljava/util/List;

    .line 461
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 426
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mId:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public setSampleSize(F)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "sampleSize"    # F

    .line 547
    iput p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mSampleSize:F

    .line 548
    return-object p0
.end method

.method public setThumbnail(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "thumbnail"    # Landroid/net/Uri;

    .line 437
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mThumbnail:Landroid/net/Uri;

    .line 438
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 448
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 449
    return-object p0
.end method
