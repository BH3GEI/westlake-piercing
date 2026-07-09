.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ApkAssets$FormatType;,
        Landroid/content/res/ApkAssets$PropertyFlags;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FORMAT_APK:I = 0x0

.field private static final FORMAT_ARSC:I = 0x2

.field private static final FORMAT_DIR:I = 0x3

.field private static final FORMAT_IDMAP:I = 0x1

.field public static final PROPERTY_DISABLE_INCREMENTAL_HARDENING:I = 0x10

.field public static final PROPERTY_DYNAMIC:I = 0x2

.field public static final PROPERTY_LOADER:I = 0x4

.field public static final PROPERTY_ONLY_OVERLAYABLES:I = 0x20

.field private static final PROPERTY_OVERLAY:I = 0x8

.field public static final PROPERTY_SYSTEM:I = 0x1

.field private static final UPTODATE_ALWAYS_TRUE:I = 0x2

.field private static final UPTODATE_FALSE:I = 0x0

.field private static final UPTODATE_TRUE:I = 0x1


# instance fields
.field private final mAssets:Landroid/content/res/loader/AssetsProvider;

.field private final mFlags:I

.field private final mIsOverlay:Z

.field private mName:Ljava/lang/String;

.field private mNativePtr:J

.field private mPreviousUpToDateResult:I

.field private mStringBlock:Landroid/content/res/StringBlock;


# direct methods
.method private constructor <init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .param p4, "name"    # Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 354
    iput p2, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 355
    iput-object p3, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 356
    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    .line 358
    return-void
.end method

.method private constructor <init>(ILandroid/content/res/loader/AssetsProvider;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 347
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 348
    invoke-static {p1, p2}, Landroid/content/res/ApkAssets;->nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 350
    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p4, p5, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 330
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/ApkAssets;->nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 333
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 334
    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .param p8, "flags"    # I
    .param p9, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1, p8, p9, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 340
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    invoke-static/range {p1 .. p9}, Landroid/content/res/ApkAssets;->nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 343
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 344
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 323
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 324
    return-void
.end method

.method private static intervalMs(JJ)D
    .locals 4
    .param p0, "beginNs"    # J
    .param p2, "endNs"    # J

    .line 439
    sub-long v0, p2, p0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 1
    .param p0, "flags"    # I
    .param p1, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 315
    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ApkAssets;-><init>(ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "friendlyName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "assets":Landroid/content/res/loader/AssetsProvider;
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "friendlyName":Ljava/lang/String;
    .local v4, "flags":I
    .local v5, "assets":Landroid/content/res/loader/AssetsProvider;
    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 3
    .param p0, "idmapPath"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "friendlyName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "assets":Landroid/content/res/loader/AssetsProvider;
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "friendlyName":Ljava/lang/String;
    .local v4, "flags":I
    .local v5, "assets":Landroid/content/res/loader/AssetsProvider;
    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method private static native nativeDefinesOverlayable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native nativeGetDebugName(J)Ljava/lang/String;
.end method

.method private static native nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeGetStringBlock(J)J
.end method

.method private static native nativeIsUpToDate(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J
.end method

.method private static native nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    .line 506
    :cond_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    .line 507
    iput-wide v2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 509
    :cond_1
    monitor-exit p0

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public definesOverlayable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDefinesOverlayable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "debugName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assetPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->close()V

    .line 495
    return-void
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 2

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAssetsProvider()Landroid/content/res/loader/AssetsProvider;
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 4

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "<destroyed>"

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetDebugName(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .locals 2
    .param p1, "overlayableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStringFromPool(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "idx"    # I

    .line 376
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isForLoader()Z
    .locals 1

    .line 387
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverlay()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    return v0
.end method

.method public isSharedLib()Z
    .locals 1

    .line 480
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystem()Z
    .locals 2

    .line 476
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUpToDate()Z
    .locals 5

    .line 450
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 451
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 456
    :cond_1
    monitor-enter p0

    .line 458
    :try_start_0
    iget-wide v3, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)I

    move-result v0

    .line 460
    .local v0, "res":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    iput v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 472
    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 460
    .end local v0    # "res":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    .line 411
    .local v0, "nativeXmlPtr":J
    new-instance v2, Landroid/content/res/XmlBlock;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 412
    .local v2, "block":Landroid/content/res/XmlBlock;
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_0

    .line 418
    nop

    .line 419
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 418
    return-object v3

    .line 416
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "block.newParser() returned a null parser"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "nativeXmlPtr":J
    .restart local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_0
    throw v3

    .line 420
    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
