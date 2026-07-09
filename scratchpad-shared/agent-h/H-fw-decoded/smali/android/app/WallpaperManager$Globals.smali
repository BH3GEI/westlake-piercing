.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

.field private mColorCallbackRegistered:Z

.field private final mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainLooperHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/IWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$Ng8UFjjVrgNJHwlYbAWyESmpli0(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager$Globals;->lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method constructor <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 562
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 546
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 548
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 563
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 564
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 565
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 566
    return-void
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "hardware"    # Z
    .param p5, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 846
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 847
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-object v1

    .line 852
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 853
    .local v7, "params":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.getWallpaperWithFeature_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 854
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 854
    const/4 v9, 0x1

    move-object v5, p0

    move v6, p2

    move v8, p3

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .local v6, "which":I
    .local v8, "userId":I
    :try_start_1
    invoke-interface/range {v2 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 857
    .local p2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 859
    if-nez p2, :cond_1

    .line 860
    return-object v1

    .line 862
    :cond_1
    :try_start_2
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 863
    .local p3, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 864
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {v2, p4, p5}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v0, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 872
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 864
    return-object v2

    .line 862
    .end local v0    # "src":Landroid/graphics/ImageDecoder$Source;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "which":I
    .end local v7    # "params":Landroid/os/Bundle;
    .end local v8    # "userId":I
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "hardware":Z
    .end local p5    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 872
    .end local p3    # "is":Ljava/io/InputStream;
    .restart local v6    # "which":I
    .restart local v7    # "params":Landroid/os/Bundle;
    .restart local v8    # "userId":I
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "hardware":Z
    .restart local p5    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_0
    move-exception v0

    move-object p3, v0

    .line 873
    .local p3, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t decode file"

    invoke-static {v0, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 877
    nop

    .line 878
    .end local v7    # "params":Landroid/os/Bundle;
    .end local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "e":Ljava/lang/Throwable;
    return-object v1

    .line 875
    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v6    # "which":I
    .end local v8    # "userId":I
    .local p2, "which":I
    .local p3, "userId":I
    :catch_2
    move-exception v0

    move v6, p2

    move v8, p3

    move-object p2, v0

    .line 876
    .end local p3    # "userId":I
    .restart local v6    # "which":I
    .restart local v8    # "userId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method private getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.getDefaultWallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 884
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 885
    :cond_0
    const/4 v0, 0x0

    .line 886
    const-string v1, "WPMS.openDefaultWallpaper"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 887
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 889
    if-eqz v1, :cond_1

    .line 890
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 891
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v3, "WPMS.decodeStream"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 892
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 893
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 897
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_1

    .line 887
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "which":I
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 895
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "which":I
    :catch_0
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t decode stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    monitor-enter p0

    .line 900
    :try_start_5
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 901
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 902
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 903
    return-object v0

    .line 901
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private isStaticWallpaper(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 912
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_0

    .line 917
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isStaticWallpaper(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 913
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 866
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 868
    if-eqz p1, :cond_0

    .line 869
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 871
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .locals 2
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 687
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 689
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    if-eqz v1, :cond_0

    .line 691
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 693
    :cond_0
    return-void

    .line 689
    .end local v1    # "stillExists":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .locals 1
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 661
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .locals 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 605
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 606
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 607
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 608
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_0

    .line 609
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 610
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    goto :goto_3

    .line 616
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .local v3, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v4, "which":I
    .local v5, "userId":I
    .local v6, "displayId":I
    :try_start_3
    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 621
    goto :goto_2

    .line 618
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "which":I
    .end local v5    # "userId":I
    .end local v6    # "displayId":I
    .restart local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catch_1
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object p2, v0

    .line 620
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .restart local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v4    # "which":I
    .restart local v5    # "userId":I
    .restart local v6    # "displayId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Can\'t register for local color updates"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit p0

    .line 623
    return-void

    .line 622
    .end local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "which":I
    .end local v5    # "userId":I
    .end local v6    # "displayId":I
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catchall_1
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .restart local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v4    # "which":I
    .restart local v5    # "userId":I
    .restart local v6    # "displayId":I
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 588
    monitor-enter p0

    .line 589
    :try_start_0
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 591
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    monitor-exit p0

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method forgetLoadedWallpaper()V
    .locals 1

    .line 838
    monitor-enter p0

    .line 839
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 840
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 841
    monitor-exit p0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 699
    invoke-static {p1}, Landroid/app/WallpaperManager;->-$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V

    .line 702
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 703
    :catch_0
    move-exception v0

    .line 706
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWallpaperChanged()V
    .locals 0

    .line 574
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 575
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 8
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 677
    monitor-enter p0

    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v4, v1

    .line 679
    .local v4, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    .line 680
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 681
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_1

    .line 695
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    goto :goto_2

    .line 683
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    :cond_0
    :goto_1
    :try_start_2
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .local v5, "colors":Landroid/app/WallpaperColors;
    .local v6, "which":I
    .local v7, "userId":I
    :try_start_3
    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    move-object p1, v5

    move p2, v6

    move p3, v7

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    goto :goto_0

    .line 695
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    .end local v6    # "which":I
    .end local v7    # "userId":I
    .restart local p1    # "colors":Landroid/app/WallpaperColors;
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    :cond_1
    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .restart local v5    # "colors":Landroid/app/WallpaperColors;
    .restart local v6    # "which":I
    .restart local v7    # "userId":I
    monitor-exit p0

    .line 696
    return-void

    .line 695
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    .end local v6    # "which":I
    .end local v7    # "userId":I
    .restart local p1    # "colors":Landroid/app/WallpaperColors;
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .restart local v5    # "colors":Landroid/app/WallpaperColors;
    .restart local v6    # "which":I
    .restart local v7    # "userId":I
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 727
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 729
    :try_start_0
    const-string v0, "WPMS.isWallpaperSupported"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 731
    nop

    .line 736
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 731
    return-object v1

    .line 736
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 737
    goto :goto_1

    .line 736
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 737
    throw v0

    .line 739
    :cond_1
    :goto_1
    monitor-enter p0

    .line 740
    :try_start_2
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-virtual {v0, p4, p3}, Landroid/app/WallpaperManager$CachedWallpaper;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 741
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v0, v0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    .line 780
    :catchall_1
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    goto/16 :goto_8

    .line 744
    :cond_2
    :try_start_4
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 745
    const/4 v2, 0x0

    .line 747
    .local v2, "currentWallpaper":Landroid/graphics/Bitmap;
    :try_start_5
    const-string v0, "WPMS.getCurrentWallpaperLocked"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 748
    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local v4, "context":Landroid/content/Context;
    .local v5, "which":I
    .local v6, "userId":I
    .local v7, "hardware":Z
    .local v8, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :try_start_6
    invoke-direct/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v2, p1

    .line 774
    :goto_2
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 775
    goto/16 :goto_5

    .line 752
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 750
    :catch_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    .line 774
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catchall_2
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    goto/16 :goto_7

    .line 752
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_3
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .line 759
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_3
    const-wide/32 p3, 0xe4ad173

    :try_start_8
    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 760
    const-wide/32 p3, 0xe2815da

    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-nez p3, :cond_3

    .line 761
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "No permission to access wallpaper, returning default wallpaper to avoid crashing legacy app."

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 p3, 0x1

    invoke-direct {p0, v4, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 774
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 763
    return-object p3

    .line 766
    :cond_3
    :try_start_a
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p4, 0x1b

    if-ge p3, p4, :cond_4

    .line 767
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 771
    :cond_4
    nop

    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p2    # "returnDefault":Z
    throw p1

    .line 750
    .restart local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .local p1, "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_4
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .line 751
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local p1, "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Out of memory loading the current wallpaper: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 776
    .end local p1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    if-eqz v2, :cond_5

    .line 777
    :try_start_b
    new-instance p1, Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-direct {p1, v2, v6, v5}, Landroid/app/WallpaperManager$CachedWallpaper;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object p1, v3, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 778
    monitor-exit p0

    return-object v2

    .line 780
    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    :cond_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 781
    if-nez p2, :cond_7

    const/4 p1, 0x2

    if-ne v5, p1, :cond_6

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    .line 784
    :cond_6
    return-object v1

    .line 782
    :cond_7
    :goto_6
    invoke-direct {p0, v4, v5}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 774
    .restart local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v0

    move-object p1, v0

    :goto_7
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 775
    nop

    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p2    # "returnDefault":Z
    throw p1

    .line 780
    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .local p1, "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catchall_4
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_8
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 711
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local v1, "context":Landroid/content/Context;
    .local v2, "returnDefault":Z
    .local v3, "which":I
    .local v6, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 790
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1

    .line 792
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 797
    :cond_0
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 800
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 801
    .local v8, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 802
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 803
    .local v5, "params":Landroid/os/Bundle;
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 804
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 803
    const/4 v7, 0x1

    move-object v3, p0

    move v4, p3

    move/from16 v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v0

    .line 807
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    .line 808
    :try_start_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 809
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 810
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v9, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 811
    new-instance v2, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v2

    .end local v8    # "dimensions":Landroid/graphics/Rect;
    .local v2, "dimensions":Landroid/graphics/Rect;
    goto :goto_2

    .line 803
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "dimensions":Landroid/graphics/Rect;
    .restart local v8    # "dimensions":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "params":Landroid/os/Bundle;
    .end local v8    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    :cond_2
    :goto_1
    throw v2

    .line 813
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v8    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 817
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_3

    .line 815
    :catch_1
    move-exception v0

    goto :goto_3

    .line 813
    :catch_2
    move-exception v0

    .line 814
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "peek wallpaper dimensions failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    nop

    .line 818
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "params":Landroid/os/Bundle;
    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 820
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    if-nez p2, :cond_6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    .line 821
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 822
    :cond_6
    invoke-static {p1, p3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 823
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_7

    .line 825
    :try_start_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 826
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    invoke-static {v2, v9, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 828
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v5, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v5

    .line 830
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 831
    goto :goto_4

    .line 830
    :catchall_2
    move-exception v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 831
    throw v0

    .line 834
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_7
    :goto_4
    return-object v8

    .line 818
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .locals 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v1, v0

    .line 630
    .local v1, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v5, p2

    move v6, p3

    move v7, p4

    goto/16 :goto_4

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 634
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 635
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_1
    goto :goto_0

    .line 648
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_0
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_5

    .line 638
    .restart local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 640
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .local v5, "which":I
    .local v6, "userId":I
    .local v7, "displayId":I
    :try_start_3
    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 644
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 638
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :cond_3
    move v5, p2

    move v6, p3

    move v7, p4

    .line 647
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_1
    goto :goto_3

    .line 644
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :catch_1
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object p2, v0

    .line 646
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Can\'t unregister for local color updates"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-exit p0

    .line 649
    return-void

    .line 630
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .local p2, "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :cond_4
    move v5, p2

    move v6, p3

    move v7, p4

    .line 631
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_4
    monitor-exit p0

    return-void

    .line 648
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :catchall_1
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 663
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
