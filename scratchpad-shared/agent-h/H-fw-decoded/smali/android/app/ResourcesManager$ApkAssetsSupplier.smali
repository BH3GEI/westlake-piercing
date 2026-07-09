.class public Landroid/app/ResourcesManager$ApkAssetsSupplier;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApkAssetsSupplier"
.end annotation


# instance fields
.field final mLocalCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ResourcesManager;


# direct methods
.method protected constructor <init>(Landroid/app/ResourcesManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ResourcesManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 274
    iput-object p1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .locals 2
    .param p1, "apkKey"    # Landroid/app/ResourcesManager$ApkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    .line 284
    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    if-nez v0, :cond_0

    .line 285
    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p1}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 286
    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-object v0
.end method
